import 'package:flutter/material.dart';
import 'package:feed_screen/custom_appbar.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  // bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Log In",
          leftOption: 'Back',
          rightOption: 'Sign Up',
          leadingWidth: 60,
          backgroundColor: Colors.white,
          titleColor: Colors.black,
          optionsColor: Color.fromARGB(255, 93, 176, 117),
          leftPressed: () => {GoRouter.of(context).go('/')},
          rightPressed: () => {GoRouter.of(context).go('/signupScreen')},
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              filled: true,
                              fillColor: Colors.grey[100],
                              labelText: 'Email', // Changed label to labelText
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .never, // Removed floating label
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey), // Adjust border color
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: TextField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 10.0),
                              filled: true,
                              fillColor: Colors.grey[100],
                              labelText: 'Password',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Text(
                                  _obscureText ? 'Show' : 'Hide',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 93, 176, 117)),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 55.0,
                        child: FilledButton(
                          onPressed: () =>
                              {GoRouter.of(context).go('/homeScreen')},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 93, 176, 117)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Add some space between the icon and text
                              Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () => {},
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 93, 176, 117),
                            ),
                          ))
                    ],
                  )
                ],
              )),
        ));
  }
}
