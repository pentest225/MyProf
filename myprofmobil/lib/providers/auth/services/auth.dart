import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
// import 'package:myprofmobil/providers/auth/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserRepository {
  final GoogleSignIn _googleSignIn;


  static const baseUrl = 'https://youss.nan';
  static const KEY_USER = 'KEY_USER_YOUSS_PATRICK_ESTHER';
  User _user;

  ///
  ///CONSTRUCTOR
  ///
  UserRepository({FirebaseAuth firebaseAuth, GoogleSignIn googleSignIn}):
      _googleSignIn = googleSignIn ?? GoogleSignIn();

  ///
  /// SIGN IN GOOGLE
  /// 
   
  Future</*FirebaseUser*/ User> signInWithGoogle()async{
    // get account 
    GoogleSignInAccount account = await _googleSignIn.signIn();
    
    print("account : $account");
    print("account : ${account.id}");
    print("account : ${account.email}");
    print("account : ${account.displayName}");
    print("account : ${account.photoUrl}");

    Map<String, dynamic> data = {
      "email": account.email,
      "user__last_name" : account.displayName.split(" ")[0],
      "user__first_name" : account.displayName.split(" ")[1],
      "reseaux": "google"
    };
    _user = await googleService(receiveDataOnFormGoogle: data);  
    return _user;
  }

  Future<User> googleService({Map<String, dynamic> receiveDataOnFormGoogle})async{
     User userNew;
    await _authenticate(url: "$baseUrl/google", data: receiveDataOnFormGoogle, callback: ({Map<String, dynamic> responseServer})async{

      SharedPreferences prefs = await SharedPreferences.getInstance();
      // _user = User.fromJson(responseServer);
      // prefs.setString(KEY_USER, json.encode(_user.toJson()));
      print('creat and login successfully');
      userNew = _user;
    });
    return userNew;

  }


  Future<void> _authenticate({String url, Map<String, dynamic> data, int success: 200, Function callback}) async {
    try {
      final response = await http.post(url,body: json.encode(data));

       Map<String, dynamic> responseData;

      if (response.statusCode == success) {
        if(response.body.isNotEmpty){
          responseData = json.decode(response.body);
        }else{
          responseData = {};
        }

        if (responseData["status"]) {
          await callback(data: responseData["user"]);
        } else if (responseData['status'] == false) {
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
    await _authenticate(url: "$baseUrl/loginExemple", data: receiveDataOnFormLogin, callback: ({Map<String, dynamic> responseServer})async{

      SharedPreferences prefs = await SharedPreferences.getInstance();
      // _user = User.fromJson(responseServer);
      // prefs.setString(KEY_USER, json.encode(_user.toJson()));
      userNew = _user;
      print('login successfully');
    });
    return userNew;
  }


  ///
  /// METHOD : SINGN UP ou S INSCRIRE
  ///
  Future<void> signup({Map<String, dynamic> receiveDataOnFormLogin}) async {
    await _authenticate(url: "$baseUrl/signUpExemple", data: receiveDataOnFormLogin, callback: ({Map<String, dynamic> responseServer})async{
      print('inscription reussir');
      print('page connection');
    });
  }

  ///
  /// METHOD : Is_Signed_In
  ///
  Future<bool> isSignedIn() async {
      final prefs = await SharedPreferences.getInstance();
      if (!prefs.containsKey(KEY_USER))
        return false;
      else
        return true;
  }


    ///
    /// METHOD : logOutGoogle
    ///
    Future<void> logOutGoogle()async => 
        Future.wait([_googleSignIn.signOut()]);

    Future logOut()async => null;


    ///
    /// METHOD : GET CURRENT USER
    ///
    Future<User> getUser() async {

      if(await isSignedIn()){
        final prefs = await SharedPreferences.getInstance();
        var extratData = json.decode(prefs.getString(KEY_USER));
        // _user = User(userUsername: extratData['username-fake'], password: extratData['password-fake'] );
        // // OU 
        // _user = User.fromJson(extratData);
        return _user;

      }
      return null;
    }
  }

      

      class User{

      }