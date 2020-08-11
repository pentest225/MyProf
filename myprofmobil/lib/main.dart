import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myprofmobil/screnn/authentification/login/login.dart';
import 'package:myprofmobil/screnn/interface1.dart';
import 'package:myprofmobil/screnn/profil/profil.dart';
import 'package:myprofmobil/screnn/profil/profil_diplome.dart';
import 'package:myprofmobil/screnn/profil/profil_identite.dart';
import 'package:myprofmobil/screnn/profil/profil_information.dart';
import 'package:myprofmobil/screnn/profil/profil_notification.dart';
import 'package:myprofmobil/screnn/profil/profil_password.dart';
import 'package:myprofmobil/screnn/profil/profil_photo.dart';
import 'package:myprofmobil/screnn/profil/profil_suppresion.dart';
import 'package:myprofmobil/providers/annonces/annonces.dart';
import 'package:myprofmobil/providers/specialites/specialites.dart';
import 'package:myprofmobil/screnn/calendarTask1.dart';
import 'package:myprofmobil/screnn/calendarUser.dart';
import 'package:myprofmobil/screnn/demandeList.dart';
import 'package:myprofmobil/screnn/detailleDemande.dart';
import 'package:myprofmobil/screnn/feature_annonce/main_annonce.dart';
import 'package:myprofmobil/screnn/sync.dart';
import 'package:provider/provider.dart';
import 'screnn/categorie.dart';
import 'screnn/firstPage.dart';
import 'screnn/profil/profil_adresse.dart';
import 'screnn/contactPage.dart';
import 'screnn/dashboard.dart';
import 'screnn/home_screen.dart';
import 'screnn/Inscription.dart';
import 'screnn/connexion.dart';
import 'screnn/regis.dart';
import 'screnn/register.dart';
import 'screnn/searchPage.dart';
import 'screnn/demande.dart';
import 'package:myprofmobil/screnn/launcher_screen.dart';
import 'package:myprofmobil/providers/feature_toggle_anim.dart';
import 'screnn/verify.dart';
import 'screnn/dash_user.dart';
import 'screnn/annonceList.dart';
import 'screnn/all_prof.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ToggleBottomSheet(),),
        ChangeNotifierProvider.value(value: Specialites(),),
        ChangeNotifierProvider.value(value: Annonces(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'my Prof ',                        
        initialRoute: LaunchApp.routeName,
        routes: {
          LoginPage.routeName:(context) => LoginPage(),
          LaunchApp.routeName: (context) => LaunchApp(),
          HomeScreen.rooteName: (context) => HomeScreen(),
          DetailleAnnonce.routeName: (context) => DetailleAnnonce(),
          ContactPage.routeName: (context) => ContactPage(),
          Dashboard.routeName: (context) => Dashboard(),
          SearchPage.routeName: (context) => SearchPage(),
          DemandePage.routeName: (context) => DemandePage(),
          Inscription.routeName: (context) => Inscription(),
          Connexion.routeNamed: (context) => Connexion(),
          Syncr.routeName: (context) => Syncr(),
          Verify.routeName: (context) => Verify(),
          Regis.routeName: (context) => Regis(),
          Registered.routeName: (context) => Registered(),
          CategoriePage.routeName: (context) => CategoriePage(),
          AllProf.routeName: (context) => AllProf(),
          FirstPage.routeName: (context) => FirstPage(),
          UserDash.routeName: (context) => UserDash(),
          ProfilAdresse.routeName: (context) => ProfilAdresse(),
          Calendartask1.routeName: (context) => Calendartask1(),
          AnnonceListe.routeName: (context) => AnnonceListe(),
          ProfilPage.routeName: (context) => ProfilPage(),
          ProfilInformations.routeName: (context) => ProfilInformations(),
          ProfilPhoto.routeName: (context) => ProfilPhoto(),
          ProfilDiplome.routeName: (context) => ProfilDiplome(),
          ProfilIdentite.routeName: (context) => ProfilIdentite(),
          ProfilPassword.routeName: (context) => ProfilPassword(),
          ProfilNotification.routeName: (context) => ProfilNotification(),
          ProfilSuppresion.routeName: (context) => ProfilSuppresion(),
          DemandeListe.routeName: (context) => DemandeListe(),
          Calendar.routeName: (context) => Calendar(),
          InterfaceOne.routeName: (context) => InterfaceOne(),
          MainAnnonce.routeName: (context) => MainAnnonce(),
          // profProfil.routeName: (ctx)=>MyHome()
        },
      ),
    );
  }
}
