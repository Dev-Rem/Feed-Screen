import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RateAppScreen extends StatefulWidget {
  const RateAppScreen({super.key});

  @override
  State<RateAppScreen> createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
        leftOption: 'Back',
        rightOption: '',
        backgroundColor: Color.fromARGB(255, 93, 176, 117),
        leadingWidth: 60,
        titleColor: Colors.white,
        optionsColor: Colors.white,
        leftPressed: () => {GoRouter.of(context).go('/congratulationScreen')},
        rightPressed: () => {GoRouter.of(context).go('/')},
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 93, 176, 117)),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            height: MediaQuery.of(context).size.height * 0.52,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star_outlined,
                      color: Color.fromARGB(255, 255, 186, 83),
                      size: 40.0,
                    ),
                    Icon(
                      Icons.star_outlined,
                      color: Color.fromARGB(255, 255, 186, 83),
                      size: 40.0,
                    ),
                    Icon(
                      Icons.star_outlined,
                      color: Color.fromARGB(255, 255, 186, 83),
                      size: 40.0,
                    ),
                    Icon(
                      Icons.star_outlined,
                      color: Color.fromARGB(255, 255, 186, 83),
                      size: 40.0,
                    ),
                    Icon(
                      Icons.star_outlined,
                      color: Color.fromARGB(255, 255, 186, 83),
                      size: 40.0,
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Rate our app',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 120, 119, 119),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 30.0),
                SizedBox(
                  width: double.infinity,
                  height: 51.0,
                  child: FilledButton(
                    onPressed: () {
                      GoRouter.of(context).go('/signupScreen');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromARGB(255, 93, 176, 117)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          'I love it!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 51.0,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          'Don’t like the app? Let us know.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 93, 176, 117),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
