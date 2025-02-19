import 'package:music/main.dart';

class Confirmuserdata {
  Future<bool> confirmData(String email, String password ) async {

    if(p==null){
      print("Shared pref is null");
    }
    try {
      String? saveEmail = p!.getString("email");
      String? savePassword = p!.getString("password");


      if (saveEmail == null || savePassword == null )  {
        print("email | password | confirm is null");
        return false;
      }

      return saveEmail == email && savePassword == password  ;

    } catch (e) {
      print("Error: $e");
      return false; 
    }
  }
}

