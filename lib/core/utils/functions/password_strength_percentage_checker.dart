double passwordStrengthPercentageChecker({required String password}) {
    //only one
    final RegExp smallLettersOnlyRegExp = RegExp(r'^[a-z]+$');
    final RegExp capitalLettersOnlyRegExp = RegExp(r'^[A-Z]+$');
    final RegExp numbersOnlyRegExp = RegExp(r'^\d+$');
    //just two
    final RegExp capitalAndSmallLetters = RegExp(r'^(?=.*[a-z])(?=.*[A-Z]).*$');
    final RegExp smallLettersAndNumbersRegExp =
        RegExp(r'^(?=.*[a-z])(?=.*\d).*$');
    final RegExp capitalLettersAndNumbersRegExp =
        RegExp(r'^(?=.*[A-Z])(?=.*\d).*$');
    //All
    final RegExp lettersAndNumbersRegExp =
        RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).*$');

    //check if password has eight letters or more .. and has numbers , capetail and small letters
    if (lettersAndNumbersRegExp.hasMatch(password) && (password.length >= 8)) {
      return 1.00;
    }
    //check if password has eight letters or more .. and has just two types
    else if (capitalAndSmallLetters.hasMatch(password) &&
            (password.length >= 8) ||
        capitalLettersAndNumbersRegExp.hasMatch(password) &&
            (password.length >= 8) ||
        smallLettersAndNumbersRegExp.hasMatch(password) &&
            (password.length >= 8)) {
      return 2 / 3;
    }
    //check if password has eight letters or more .. and has one type only
    else if (smallLettersOnlyRegExp.hasMatch(password) &&
            (password.length >= 8) ||
        capitalLettersOnlyRegExp.hasMatch(password) && (password.length >= 8) ||
        numbersOnlyRegExp.hasMatch(password) && (password.length >= 8)) {
      return 1 / 3;
    }
    //return zero
    else {
      return 0;
    }
  }