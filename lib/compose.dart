import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ComposeScreen extends StatefulWidget {
  const ComposeScreen({super.key});

  @override
  State<ComposeScreen> createState() => _ComposeScreenState();
}

class _ComposeScreenState extends State<ComposeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          title: "Compose",
          leftOption: 'Back',
          rightOption: '',
          backgroundColor: Colors.white,
          leadingWidth: 90,
          titleColor: Colors.black,
          optionsColor: Color.fromARGB(255, 93, 176, 117),
          leftPressed: () => {GoRouter.of(context).go('/homeScreen')},
          rightPressed: () => {},
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Compose your message here...',
                        hintStyle: TextStyle(color: Colors.grey)),
                    maxLines: null,
                    minLines: null,
                    expands: true,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 55.0,
                child: FilledButton(
                  onPressed: () => {GoRouter.of(context).go('/homeScreen')},
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
            ],
          ),
        ));
  }
}
