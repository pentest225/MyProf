import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:myprofmobil/providers/auth/models/user.dart';
// import 'package:myprofmobil/providers/auth/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final GoogleSignIn _googleSignIn;

  static const baseUrl = 'https://myprof.ci';
  static const KEY_USER = 'KEY_USER_YOUSS_PATRICK_ESTHER';
  User _user;

  ///
  ///CONSTRUCTOR
  ///
  UserRepository({FirebaseAuth firebaseAuth, GoogleSignIn googleSignIn})
      : _googleSignIn = googleSignIn ?? GoogleSignIn();

  ///
  /// SIGN IN GOOGLE
  ///

  Future< /*FirebaseUser*/ Map<String, dynamic>> signInWithGoogle() async {
    // get account
    GoogleSignInAccount account = await _googleSignIn.signIn().catchError((error) {
      return {};
    });

    print("account : $account");
    print("account : ${account.id}");
    print("account : ${account.email}");
    print("account : ${account.displayName}");
    print("account : ${account.photoUrl}");

    Map<String, dynamic> data = {
      "email": account.email,
      "prenoms": account.displayName.split(" ")[0],
      "nom": account.displayName.split(" ")[1],
      // "reseaux": "google"
    };
    print("Data from Google $data");
    // _user = await googleService(receiveDataOnFormGoogle: data);
    return data;
  }

  Future<User> googleService({dynamic receiveDataOnFormGoogle}) async {
    User userNew;
    await _authenticate(
        url: "$baseUrl/google",
        data: receiveDataOnFormGoogle,
        callback: (responseServer) async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          // _user = User.fromJson(responseServer);
          // prefs.setString(KEY_USER, json.encode(_user.toJson()));
          print('creat and login successfully');
          userNew = _user;
        });
    return userNew;
  }

  Future<void> _authenticate(
      {String url,
      Map<String, dynamic> data,
      int success: 200,
      Function callback}) async {
    try {
      print("Data Auth ");
      print(data);
      final response = await http.post(url, body: data);

      Map<String, dynamic> responseData;
      print("deux");
      print(response.statusCode);
      if (response.statusCode == success) {
        if (response.body.isNotEmpty) {
          responseData = json.decode(response.body);
        } else {
          responseData = {};
        }
        print("deux");
        print(responseData);

        if (responseData["succes"]) {
          print(responseData["succes"].runtimeType);
          await callback(responseData["userpost"]);
        } else if (responseData['succes'] == false) {
          throw HttpException('tu leve l exption que tu desire');
        }
      }
    } catch (error) {
      throw error;
    }
  }

  ///
  /// METHOD : SINGN IN OR LOGIN
  Future<User> login({Map<String, dynamic> receiveDataOnFormLogin}) async {
    User userNew;
    await _authenticate(
        url: "$baseUrl/web/post_connex",
        data: receiveDataOnFormLogin,
        callback: (dynamic responseServer) async {
          print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

          SharedPreferences prefs = await SharedPreferences.getInstance();
          _user = User.fromMap(responseServer);
          prefs.setString(KEY_USER, json.encode(_user.toMap()));
          print('login successfully');
        });
    return userNew;
  }

  ///
  /// METHOD : SINGN UP ou S INSCRIRE
  ///
  Future<void> signup({Map<String, dynamic> receiveDataOnFormLogin}) async {
    await _authenticate(
        url: "${baseUrl}/dashboard/post_registerprof",
        data: receiveDataOnFormLogin,
        callback: (responseServer) async {
          print('inscription reussir');
          print('page connection');
        });
  }

  ///
  /// METHOD : Is_Signed_I
  ///
  Future<bool> isSignedIn() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString(KEY_USER) == null) return false;
    if (!prefs.containsKey(KEY_USER))
      return false;
    else
      return true;
  }

  ///
  /// METHOD : logOutGoogle
  ///
  Future<void> logOutGoogle() async => Future.wait([_googleSignIn.signOut()]);

  Future<void> removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    // prefs.remove(KEY_USER);
  }

  ///
  /// METHOD : GET CURRENT USER
  ///
  Future<User> getUser() async {
    if (await isSignedIn()) {
      final prefs = await SharedPreferences.getInstance();
      var extratData = json.decode(prefs.getString(KEY_USER));
      _user = User.fromMap(extratData);
      return _user;
    }
    return null;
  }
}
