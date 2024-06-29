import 'package:get/get.dart';
import 'package:odooadmin/Screen/HomeScreen/crime_details_screen.dart';
import 'package:odooadmin/Screen/HomeScreen/home_screen.dart';
import 'package:odooadmin/Screen/HomeScreen/police_details_screen.dart';
import 'package:odooadmin/Screen/HomeScreen/police_verification_screen.dart';
import 'package:odooadmin/Screen/HomeScreen/user_details_screen.dart';
import 'package:odooadmin/Screen/Login_Screen/login_screen.dart';
import 'package:odooadmin/res/Routes/routes_name.dart';

import '../../Screen/SplashScreen/splash_screen.dart';

class satish
{

    static appRoute () => [
        GetPage(name: RoutesName.homeScreen, page: () => HomeScreen(),),

        GetPage(name: RoutesName.loginScreen, page: () => LoginScreen(),),

        GetPage(name: RoutesName.userDetailsScreen, page: () => UserDetailsScreen(),),

        GetPage(name: RoutesName.crimeDetailsScreen, page: () => CrimeDetailsScreen(),),

        GetPage(name: RoutesName.policeDetailsScreen, page: () => PoliceDetailsScreen(),),

        GetPage(name: RoutesName.policeVerificationScreen, page: () => PoliceVerificationScreen(),),

        GetPage(name: RoutesName.splashScreen, page: () => SplashScreen(),),
    ];
}