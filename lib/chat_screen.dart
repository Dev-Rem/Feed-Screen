import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum BubbleDirection {
  sender,
  receiver,
}

class ChatBubble extends StatelessWidget {
  final String message;
  final BubbleDirection direction;
  final Color color;
  final BorderRadiusGeometry borderRadius;
  final TextStyle textStyle;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.direction,
    this.color = const Color.fromARGB(255, 212, 212, 212),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: direction == BubbleDirection.sender
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        width: 300.0,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Text(
          message,
          style: textStyle,
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to the desired background color
      appBar: CustomAppBar(
        title: "John Doe",
        leftOption: 'Back',
        rightOption: '',
        backgroundColor: Colors.white,
        leadingWidth: 60,
        titleColor: Colors.black,
        optionsColor: Color.fromARGB(255, 93, 176, 117),
        leftPressed: () => {GoRouter.of(context).go('/homeScreen')},
        rightPressed: () => {},
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatBubble(
                  message:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                  direction: BubbleDirection.sender,
                  color: Color.fromARGB(255, 93, 176, 117),
                  textStyle: TextStyle(color: Colors.white),
                ),
                ChatBubble(
                  message:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis.',
                  direction: BubbleDirection.receiver,
                  color: Color.fromARGB(255, 233, 233, 233),
                  textStyle: TextStyle(color: Colors.black),
                ),
                ChatBubble(
                  message:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                  direction: BubbleDirection.sender,
                  color: Color.fromARGB(255, 93, 176, 117),
                  textStyle: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.arrow_circle_up,
                  color: Color.fromARGB(255, 93, 176, 117),
                  size: 40.0,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                filled: true,
                fillColor: Colors.grey[50],
                hintText: 'Message here...',
                labelStyle: TextStyle(color: Colors.grey[400]),
                floatingLabelBehavior:
                    FloatingLabelBehavior.never, // Removed floating label
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                      BorderSide(color: Colors.grey), // Adjust border color
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
