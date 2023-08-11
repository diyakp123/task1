abstract class loginEvent {}

// class loginTextChangedEvent extends loginEvent{

//   final String Phone;
//   final String email;
//   final String name;
//   final String country;
//   final String state;
//   final String city;

//   loginTextChangedEvent(this.Phone, this.email, this.name, this.country, this.state, this.city);

// }

class loginPhoneTextChangedEvent extends loginEvent {
  final String phone;
  loginPhoneTextChangedEvent(this.phone);
}

class loginEmailTextChangedEvent extends loginEvent {
  final String email;
  loginEmailTextChangedEvent(this.email);
}

class loginNameTextChangedEvent extends loginEvent {
  final String name;
  loginNameTextChangedEvent(this.name);
}

class loginCountryTextChangedEvent extends loginEvent {
  final String country;
  loginCountryTextChangedEvent(this.country);
}

class loginStateTextChangedEvent extends loginEvent {
  final String state;
  loginStateTextChangedEvent(this.state);
}

class loginCityTextChangedEvent extends loginEvent {
  final String city;
  loginCityTextChangedEvent(this.city);
}

class loginSubmittedEvent extends loginEvent {}
