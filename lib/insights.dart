import 'package:feed_screen/custom_appbar.dart';
import 'package:feed_screen/expenses.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InsightScreen extends StatefulWidget {
  const InsightScreen({super.key});

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Change to the desired background color
        appBar: CustomAppBar(
          title: "Insights",
          leftOption: 'Back',
          rightOption: '',
          backgroundColor: Colors.white,
          leadingWidth: 100,
          titleColor: Colors.black,
          optionsColor: Color.fromARGB(255, 93, 176, 117),
          leftPressed: () => {GoRouter.of(context).go('/expenseScreen')},
          rightPressed: () => {},
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        width: 250.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 93, 176, 117),
                                width: 2.0),
                            left: BorderSide(
                                color: Color.fromARGB(255, 93, 176, 117),
                                width: 2.0),
                          ),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$32.01',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 93, 176, 117),
                                    fontSize: 30.0),
                              ),
                              Text(
                                '70% Spent',
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 12.0),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Expenses',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w600),
                    ),
                    Column(children: generateStatsContainers(4))
                  ],
                ),
              ],
            )));
  }
}
