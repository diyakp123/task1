import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/login/loginblocs/login_event.dart';
import 'package:task1/login/loginblocs/login_state.dart';

class loginBloc extends Bloc<loginEvent, loginState> {
  loginBloc() : super(loginInitialState()) {
    on<loginPhoneTextChangedEvent>((event, emit) {
      if (event.phone.length != 10) {
        emit(loginPhoneErrorState("please enter valid phone"));
      } else {
        emit(loginPhoneValidState());
      }
    });

    on<loginEmailTextChangedEvent>((event, emit) {
      if (!event.email.contains("@")) {
        emit(loginEmailErrorState("Please enter valid email"));
      } else {
        emit(loginEmailValidState());
      }
    });

    on<loginNameTextChangedEvent>((event, emit) {
      if (event.name.isEmpty) {
        emit(loginNameErrorState("please enter a name"));
      } else {
        emit(loginNameValidState());
      }
    });

    on<loginCountryTextChangedEvent>((event, emit) {
      if (event.country.isEmpty) {
        emit(loginCountryErrorState("please enter a country"));
      } else {
        emit(loginCountryValidState());
      }
    });

    on<loginStateTextChangedEvent>((event, emit) {
      if (event.state.isEmpty) {
        emit(loginStateErrorState("please enter a state"));
      } else {
        emit(loginStateValidState());
      }
    });

    on<loginCityTextChangedEvent>((event, emit) {
      if (event.city.isEmpty) {
        emit(loginCityErrorState("please enter a city"));
      } else {
        emit(loginCityValidState());
      }
    });

    on<loginSubmittedEvent>((event, emit) {
      emit(loginLoadingState());
    });
  }
}
