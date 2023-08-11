abstract class loginState {}

class loginInitialState extends loginState {}

class loginValidState extends loginState {}

class loginPhoneValidState extends loginState {}

class loginEmailValidState extends loginState {}

class loginNameValidState extends loginState {}

class loginCountryValidState extends loginState {}

class loginStateValidState extends loginState {}

class loginCityValidState extends loginState {}

class loginPhoneErrorState extends loginState {
  final String errorMessage;
  loginPhoneErrorState(this.errorMessage);
}

class loginEmailErrorState extends loginState {
  final String errorMessage;
  loginEmailErrorState(this.errorMessage);
}

class loginNameErrorState extends loginState {
  final String errorMessage;
  loginNameErrorState(this.errorMessage);
}

class loginCountryErrorState extends loginState {
  final String errorMessage;
  loginCountryErrorState(this.errorMessage);
}

class loginStateErrorState extends loginState {
  final String errorMessage;
  loginStateErrorState(this.errorMessage);
}

class loginCityErrorState extends loginState {
  final String errorMessage;
  loginCityErrorState(this.errorMessage);
}

class loginLoadingState extends loginState {}
