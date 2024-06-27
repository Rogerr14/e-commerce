import 'dart:convert';

import 'package:e_commerce/env/config/config_dev.dart';
import 'package:e_commerce/env/environment.dart';
import 'package:e_commerce/modules/auth/login/model/auth_model.dart';
import 'package:e_commerce/modules/routes.dart';
import 'package:e_commerce/shared/models/general%20response.dart';
import 'package:e_commerce/shared/services/http_interceptor.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class LoguinService {
  // String urlBase = Environment().config!.serviceUrl;
  final urlService = Environment().config?.serviceUrl ?? "no url";
  InterceptorHttp interceptorHttp = InterceptorHttp();

  Future login(BuildContext context, Map<String, String> data) async {
    try {
      GeneralResponse response = await interceptorHttp.request(
          context, 'POST', '$urlService/api/Auth/Login', data);
      if (!response.error) {
       AuthResponseModel 
        authModel = authResponseModelFromJson(jsonEncode(response.data));
        
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }
    } catch (error) {
      return GeneralResponse(message: error.toString(), error: true);
    }
  }
}
