import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to the desired background color
      appBar: CustomAppBar(
        title: "Market",
        leftOption: 'Congrats!',
        rightOption: 'Expenses',
        backgroundColor: Color.fromARGB(255, 93, 176, 117),
        leadingWidth: 100,
        titleColor: Colors.white,
        optionsColor: Colors.white,
        leftPressed: () => {GoRouter.of(context).go('/congratulationScreen')},
        rightPressed: () => {GoRouter.of(context).go('/expenseScreen')},
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 93, 176, 117),
            ),
            width: double.infinity,
            height: 250.0,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    color: Color.fromARGB(255, 93, 176, 117),
                    Icons.play_circle_outline_sharp,
                    size: 100.0,
                  ),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hot deals',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: generateContainers(4),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Trending',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: generateContainers(4)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Discounts',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 200,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: generateContainers(4)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> generateContainers(int count) {
  List<Widget> containers = [];

  for (int i = 0; i < count; i++) {
    containers.add(
      Container(
        width: 120,
        margin: EdgeInsets.only(right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[50],
              ),
            ),
            Text('Item #${i + 1} Name Goes here'),
            Row(
              children: [
                Text(
                  '\$19.99',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  return containers;
}
