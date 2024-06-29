import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:odooadmin/Data/networkapi.dart';
import 'package:odooadmin/Data/url.dart';
import 'package:odooadmin/constant/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController
{


    NetworkApiServices networkApiServices = NetworkApiServices();

    Future<Map> getAllCrime(BuildContext context)
    async {

          var data;

        SharedPreferences preferences = await SharedPreferences.getInstance();
        String token = preferences.getString("token")??"";

        await networkApiServices.getApi(Url.getallcrime,{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization':'$token',
        }).then((value) {

          data = value;

          if(value['result']==true) {


                 showSnackBar(message: value['message'], context: context);

              }
          else
              {
                  showSnackBar(message: value['message'], context:context );
              }
        },);

        print(data);
        return data;

    }
}