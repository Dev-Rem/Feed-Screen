import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Change to the desired background color
        appBar: CustomAppBar(
          title: "Expenses",
          leftOption: 'Back',
          rightOption: 'Insights',
          backgroundColor: Colors.white,
          leadingWidth: 100,
          titleColor: Colors.black,
          optionsColor: Color.fromARGB(255, 93, 176, 117),
          leftPressed: () => {GoRouter.of(context).go('/congratulationScreen')},
          rightPressed: () => {GoRouter.of(context).go('/insightScreen')},
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      width: double.infinity,
                      height: 260.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 216, 216, 216),
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: generateContainers(4, context),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
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

List<Widget> generateContainers(int count, BuildContext context) {
  List<Widget> containers = [];

  for (int i = 0; i < count; i++) {
    containers.add(Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              height: 180.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Container(
              height: 130.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 93, 176, 117),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Transform.rotate(
          angle: -1.0, // Adjust the angle as needed, in radians
          child: Text(
            'Item',
          ),
        )
      ],
    ));

    containers.add(Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              height: 180.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Container(
              height: 80.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 60, 145, 84),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Transform.rotate(
          angle: -1.0, // Adjust the angle as needed, in radians
          child: Text(
            'Item',
          ),
        )
      ],
    ));
  }

  return containers;
}

List<Widget> generateStatsContainers(int count) {
  List<Widget> containers = [];

  for (int i = 0; i < count; i++) {
    containers.add(
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 93, 176, 117),
                  ),
                ),
                Text(
                  'Item',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
            Text('Statistic')
          ],
        ),
      ),
    );

    containers.add(
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 60, 145, 84),
                  ),
                ),
                Text(
                  'Item',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
            Text('Statistic')
          ],
        ),
      ),
    );
  }

  return containers;
}
