import 'package:music/main.dart';

class Saveuserdata {

  Future<bool> saveData(String email, String password,  String confirmpassword) async {
    
    // Safe to use p after checking it's not null
    await p!.setString("email", email);
    await p!.setString("password", password);
    await p!.setString("password", confirmpassword);

return true;
  }
}
