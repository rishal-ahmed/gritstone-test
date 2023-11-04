import 'package:flutter/services.dart' show FilteringTextInputFormatter;

class ValidatorUtils {
  //========== Null Validator ==========
  static String? nullValidator(String? value,
      {Function? validate, bool onlyIf = true}) {
    if (onlyIf) {
      if (value == null || value.isEmpty) {
        return 'This field is required*';
      }
      if (validate != null) return validate();
      return null;
    }
    return null;
  }

  //========== Username Validator ==========
  static String? usernameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required*';
    } else if (value.contains(' ')) {
      return 'Username cannot contain space*';
    }
    return null;
  }

  //========== Number Validator ==========
  String? numberValidator(String? value) {
    if (value == null) {
      return null;
    }
    final n = num.tryParse(value);
    if (n == null) {
      return '"$value" is not a valid number';
    }
    return null;
  }

  //========== Password Validator ==========
  static String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required*';
    }
    if (value.trim().length < 8) {
      return 'Password must be at least 8 characters';
    }
    // Return null if the entered password is valid
    return null;
  }

  //========== Confirm Validator ==========
  static String? confirmPasswordValidator({String? value, String? password}) {
    if (value != password) {
      return 'Password do not match';
    }
    return null;
  }

  //========== Confirm Validator ==========
  static String? changePassword({String? newPassword, String? oldPassword}) {
    if (newPassword == null || newPassword.trim().isEmpty) {
      return 'This field is required*';
    }
    if (newPassword.trim().length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (newPassword == oldPassword) {
      return 'Password must be differ from old password';
    }
    return null;
  }

  //========== GST Validator ==========
  static String? gstValidator(String? value, {bool onlyIf = false}) {
    if (onlyIf) {
      if (value == null || value.isEmpty) {
        return 'This field is required*';
      } else if (value.length != 15) {
        return 'Please enter a valid GST Number';
      }
    }

    return null;
  }

  //========== Phone Number Validator ==========
  static String? phoneValidator(String? value, {Function? validate}) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required*';
    } else if (!RegExp(r'^(?:[+0][1-9])?[0-9]{10}$').hasMatch(value)) {
      if (value.length != 10) {
        return 'Mobile number must 10 digits';
      } else {
        return 'Please enter a valid Phone Number';
      }
    }

    if (validate != null) return validate();

    return null;
  }

  //========== Pincode Validator ==========
  static String? pincodeValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required*';
    } else if (int.tryParse(value) != null) {
      if (value.length != 6) {
        return 'Pincode must 6 digits';
      }
    } else {
      return 'Please enter a valid Pincode';
    }

    return null;
  }

  //========== Email Validator ==========
  static String? emailValidator(String? value, {Function? validate}) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required*';
    } else if (!emailOnly.hasMatch(value)) {
      return 'Please enter a valid Email';
    }

    if (validate != null) return validate();
    return null;
  }

  //Force keyboard to input digits only
  static final List<FilteringTextInputFormatter> digitsOnly = [
    FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
  ];

  //Validating email pattern that user entered
  static final RegExp emailOnly = RegExp(r'\S+@\S+\.\S+');
}
