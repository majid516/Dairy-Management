class FormValidators {

//! common validator
static String? commonValidator(String? value, {required String massage}){
  if (value == null || value.isEmpty) {
    return massage;
  }
    return null;
}

}