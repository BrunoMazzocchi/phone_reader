import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: LightTheme.backgroundColor,
      ),
        body: SingleChildScrollView(
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
          const Padding(
            padding:  EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
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
                onPressed: () {},
                child: const Text("Login"),
              ),
            ),
          ),
          const Text("Don't have an account?"),
          TextButton(
            onPressed: () {},
            child: const Text("Sign up"),
          ),
        ],
      ),
    ));
  }
}
