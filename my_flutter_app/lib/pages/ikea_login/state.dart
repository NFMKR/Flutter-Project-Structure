import 'package:get/get.dart';

class AiLoginState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
  
  // username
  final _username = "".obs;
  set username(value) => _username.value = value;
  get username => _username.value;
  
  // password
  final _password = "".obs;
  set password(value) => _password.value = value;
  get password => _password.value;
}
