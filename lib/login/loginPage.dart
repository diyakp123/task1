import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/login/loginblocs/login_bloc.dart';
import 'package:task1/login/loginblocs/login_event.dart';
import 'package:task1/login/loginblocs/login_state.dart';

class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => loginPageState();
}

class loginPageState extends State<loginPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  final _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
          title: Text("Person Detail"),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                key: _formkey,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    if (state is loginPhoneErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (val) {
                      BlocProvider.of<loginBloc>(context).add(
                          loginPhoneTextChangedEvent(phoneController.text));
                    },
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return ("please enter Phone");
                    //   }
                    //   //reg expression for email verification
                    //   if (!RegExp("^[0-9]").hasMatch(value) || value.length != 10) {
                    //     return ("please enter a valid Phone number");
                    //   }
                    //   return null;
                    // },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      LengthLimitingTextInputFormatter(10),
                    ],
                    controller: phoneController,
                    decoration: decor("Enter Your Phone"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    if (state is loginEmailErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      controller: emailController,
                      onChanged: (val) {
                        BlocProvider.of<loginBloc>(context).add(
                            loginEmailTextChangedEvent(emailController.text));
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("please enter email");
                        }

                        if (!value.contains("@")) {
                          return ("enter valid email");
                        }
                        return null;
                      },
                      decoration: decor("Enter your Email")),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    if (state is loginNameErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      onChanged: (val) {
                        BlocProvider.of<loginBloc>(context).add(
                            loginNameTextChangedEvent(nameController.text));
                      },
                      controller: nameController,
                      validator: (value) {
                        // RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return (" name should not be empty");
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                      ],
                      decoration: decor("Name")),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    if (state is loginCountryErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      onChanged: (val) {
                        BlocProvider.of<loginBloc>(context).add(
                            loginCountryTextChangedEvent(
                                countryController.text));
                      },
                      controller: countryController,
                      validator: (value) {
                        // RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return ("Country should not be empty");
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                      ],
                      decoration: decor('country')),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    if (state is loginStateErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      onChanged: (val) {
                        BlocProvider.of<loginBloc>(context).add(
                            loginStateTextChangedEvent(stateController.text));
                      },
                      style: TextStyle(
                          //color: SurvayColors.fontcolor
                          ),
                      controller: stateController,
                      validator: (value) {
                        // RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return ("state should not be empty");
                        }
                        // if (!regex.hasMatch(value)) {
                        //   return ("Enter Valid Password(Min. 6 Character)");
                        // }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                      ],
                      decoration: decor("state")),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    if (state is loginCityErrorState) {
                      return Text(
                        state.errorMessage,
                        style: TextStyle(color: Colors.red),
                      );
                    } else {
                      return Container();
                    }
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      onChanged: (val) {
                        BlocProvider.of<loginBloc>(context).add(
                            loginCityTextChangedEvent(cityController.text));
                      },
                      controller: cityController,
                      validator: (value) {
                        // RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return ("city should not be empty");
                        }
                        // if (!regex.hasMatch(value)) {
                        //   return ("Enter Valid Password(Min. 6 Character)");
                        // }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                      ],
                      decoration: decor("city")),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<loginBloc, loginState>(builder: (context, state) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        ));
                  })
                ],
              ),
            ),
          ),
        ));
  }

  InputDecoration decor(String hint) {
    return InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.all(15),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Color.fromARGB(255, 128, 128, 128), width: 0.5)),
      border: OutlineInputBorder(),
      hintText: hint.isEmpty ? "" : hint,
      hintStyle: TextStyle(
        color: Color.fromARGB(255, 128, 128, 128),
      ),
    );
  }
}
