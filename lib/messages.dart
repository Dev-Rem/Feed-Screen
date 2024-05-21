import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Change to the desired background color
        appBar: CustomAppBar(
          title: "Messages",
          leftOption: '',
          rightOption: '',
          backgroundColor: Colors.white,
          leadingWidth: 40,
          titleColor: Colors.black,
          optionsColor: Color.fromARGB(255, 93, 176, 117),
          leftPressed: () => {},
          rightPressed: () => {},
        ),
        body: Container(
          child: Column(
            children: generateContainers(
                4, context, 'John Doe', 'Seen 2hrs ago', 'Hello there ...'),
          ),
        ));
  }
}

List<Widget> generateContainers(int count, BuildContext context, String header,
    String timePosted, String message) {
  List<Widget> containers = [];

  for (int i = 0; i < count; i++) {
    containers.add(
      GestureDetector(
        onTap: () => {GoRouter.of(context).go('/chatScreen')},
        child: Container(
          padding: EdgeInsets.only(top: 10, right: 20),
          height: 70,
          width: 400,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey, // Choose your border color
                width: 0.5, // Choose your border width
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            header,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            timePosted,
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.grey[700]),
                          )
                        ],
                      ),
                      Text(
                        message,
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign
                            .left, // Align the message text with the header text
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  return containers;
}
