import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserOptionsScreen extends StatefulWidget {
  const UserOptionsScreen({super.key});

  @override
  State<UserOptionsScreen> createState() => _UserOptionsScreenState();
}

class _UserOptionsScreenState extends State<UserOptionsScreen> {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "User Options",
        leftOption: 'Back',
        rightOption: '',
        backgroundColor: Colors.white,
        leadingWidth: 90,
        titleColor: Colors.black,
        optionsColor: Color.fromARGB(255, 93, 176, 117),
        leftPressed: () => {GoRouter.of(context).go('/homeScreen')},
        rightPressed: () => {GoRouter.of(context).go('/loginScreen')},
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Radio option',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Radio(
                    value: 1,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Radio option',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Radio(
                    value: 2,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Radio option',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Radio(
                    value: 3,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Radio option',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Radio(
                    value: 4,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Radio option',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Radio(
                    value: 5,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Radio option',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Radio(
                    value: 6,
                    groupValue: selectedRadio,
                    onChanged: (val) {
                      setSelectedRadio(val!);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
