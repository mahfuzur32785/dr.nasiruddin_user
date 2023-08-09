import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:doc_app/utils/const.dart';

class ApiRequest {

  ///FOR REGISTRATION
  Future<String>fetchUserRegistration(name, phone, address, pass) async {
    String url = "${baseUrl}customer-register";
    var body = {
      "name":name.toString().trim(),
      "phone":phone.toString().trim(),
      "address":address.toString().trim(),
      "password":pass.toString().trim(),
    };
    try {
      Response response = await Dio().post(
        url,
        data: body,
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
      );
      print('hot top fetches data: ${response.data}');
      return response.data['message'];
    } catch (e) {
      print("Something is wrong in catch =======:$e");
    }
    return "Something is wrong";
  }

  ///FOR LOGIN
  Future<String>fetchUserLogin(phone, pass) async {
    String url = "${baseUrl}customer-login";
    var body = {
      "phone":phone.toString().trim(),
      "password":pass.toString().trim(),
    };
    try {
      Response response = await Dio().post(
        url,
        data: body,
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
      );
      print('hot top fetches data: ${response.data}');
      return response.data['message'];
    } catch (e) {
      print("Something is wrong in catch =======:$e");
    }
    return "Something is wrong";
  }


}
