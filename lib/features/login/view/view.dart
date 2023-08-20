import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_reader/config/theme/light_theme.dart';
import 'package:phone_reader/features/login/bloc/login_bloc.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
                backgroundColor: Colors.transparent,
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is LoginSuccess) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if(state is LoginNeeded) {
            return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/newsLogo1.svg",
                      height: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "News 24",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: usernameEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      controller: passwordEditingController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 45),
                child: SizedBox(
                  width: 206,
                  height: 46,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      context.read<LoginBloc>().add(
                            LoginButtonPressed(
                              usernameEditingController.text,
                              passwordEditingController.text,
                            ),
                          );
                    },
                    child: const Text("Login"),
                  ),
                ),
              ),
              const Text("Don't have an account?"),
              TextButton(
                onPressed: usernameEditingController.text.isNotEmpty &&
                        passwordEditingController.text.isNotEmpty
                    ? () {}
                    : null,
                child: const Text("Sign up"),
              ),
            ],
          ),
        );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

    );
  }
}

  
  
  