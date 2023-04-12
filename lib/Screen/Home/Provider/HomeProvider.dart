import 'package:flutter/material.dart';
import 'package:post_api_call/Utiles/ApiHelper.dart';

class HomeProvider extends ChangeNotifier {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtjob = TextEditingController();


  Future<String> Creat(String name, String job) async {
    ApiHelper apiHelper = ApiHelper();
    String msg = await apiHelper.ApiCall(name, job);

    return msg;
  }
}
