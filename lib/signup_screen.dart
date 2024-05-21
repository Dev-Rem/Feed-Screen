import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Sign Up",
        leftOption: 'Back',
        rightOption: 'Login',
        leadingWidth: 60,
        titleColor: Colors.black,
        optionsColor: Color.fromARGB(255, 93, 176, 117),
        backgroundColor: Colors.white,
        leftPressed: () => {GoRouter.of(context).go('/')},
        rightPressed: () => {GoRouter.of(context).go('/loginScreen')},
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
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
                          labelText: 'Name',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey, // Border color
                              width: 0.5, // Adjust border width
                            ),
                          ),
                        ),
                      ),
                    ),
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
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 13.0, right: 5.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _checkbox = !_checkbox;
                              });
                            },
                            child: _checkbox
                                ? Icon(
                                    Icons.check_box,
                                    color: Color.fromARGB(255, 93, 176, 117),
                                  )
                                : Icon(Icons.crop_square_rounded, size: 24.0),
                          ),
                        ),
                        Expanded(
                          // Wrap the Text with Expanded
                          child: Text(
                            'I would like to receive newsletters and other promotional information.',
                            overflow:
                                TextOverflow.clip, // Handle overflow if needed
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 55.0,
                      child: FilledButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Color.fromARGB(255, 93, 176, 117)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
