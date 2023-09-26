mixin ValidationMixin {
  String? validateEmail(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.length < 6) {
      return 'password must contain at least 6 characters';
    }
    return null;
  }
}
