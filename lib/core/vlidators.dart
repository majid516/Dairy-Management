class FormValidators {
  //! common validator
  static String? commonValidator(String? value, {required String message}) { 
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    RegExp regExp = RegExp(r'^\d{10}$'); 
    return regExp.hasMatch(phoneNumber);
  }
}
