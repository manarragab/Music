

import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:music/main.dart';

class LoginMiddleware  extends GetMiddleware{

@override
RouteSettings? redirect(String? route) {
  if(p!.getString("email") != null && p!.getString("password") != null&& p!.getString("confirmpassword") != null ){
      return RouteSettings(name: "/home");
  }
    return super.redirect(route);
  }





}