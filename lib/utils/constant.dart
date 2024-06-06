import 'package:get/get.dart';

class AppKeys {
  static const String authToken = 'AuthToken';
  static const String uRole = 'UserRole';
  static const String userDetail = 'userDetail';
  static const String appLanguage = 'appLanguage';
}

class ErrorStrings {
  static String someThingWentWrong = 'some thing went wrong'.tr;
  static String nameReq = 'Name is Required'.tr;
  static String emailReq = 'Email is Required'.tr;
  static String emailInvalid = 'Email is Invalid'.tr;
  static String passwordReq = 'Password is Required'.tr;
  static String passwordContain =
      'contain Capital: small letter & Number & Special';
  static String notEmpty = 'Required'.tr;
  static String passwordStrong = 'Password is not Strong'.tr;
  static String acceptTermAndCondition = 'Accept terms and condition'.tr;
}

final kGoogleApiKey = GetPlatform.isIOS
    ? 'AIzaSyD3VlXnsbuhUopnmUbTcj7vUj9scxtZZK8'
    : "AIzaSyD3VlXnsbuhUopnmUbTcj7vUj9scxtZZK8";
