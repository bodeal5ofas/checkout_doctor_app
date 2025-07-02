class AppRegex {
  static bool isEmailVailaid(String email) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return emailValid;
  }
  static bool isPhoneNumberVailaid(String phoneNumber) {
    final bool phoneNumberValid = RegExp(
            r'(^(?:[+0]9)?[0-9]{10,12}$)')
        .hasMatch(phoneNumber);
    return phoneNumberValid;
  }
   static bool isPasswordVailaid(String password) {
    final bool passwordValid = RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password);
    return passwordValid;
  }
   // يحتوي على حرف صغير
static bool hasLowerCase(String input) {
  return input.contains(RegExp(r'[a-z]'));
}

// يحتوي على حرف كبير
static bool hasUpperCase(String input) {
  return input.contains(RegExp(r'[A-Z]'));
}

// يحتوي على رقم
static bool hasNumber(String input) {
  return input.contains(RegExp(r'[0-9]'));
}

// يحتوي على حرف خاص مثل @ أو !
static bool hasSpecialChar(String input) {
  return input.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
}

// الطول الأدنى
static bool hasMinLength(String input) {
  return input.length >= 8;
}

}
