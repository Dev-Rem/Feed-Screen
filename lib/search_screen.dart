import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Change to the desired background color
        appBar: CustomAppBar(
          title: "Search",
          leftOption: '',
          rightOption: '',
          backgroundColor: Colors.white,
          leadingWidth: 60,
          titleColor: Colors.black,
          optionsColor: Color.fromARGB(255, 93, 176, 117),
          leftPressed: () => {},
          rightPressed: () => {},
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search_sharp,
                        color: Color.fromARGB(255, 93, 176, 117),
                        size: 35.0,
                      ),
                      contentPadding: EdgeInsets.only(
                          top: 15.0, left: 20.0, right: 40.0, bottom: 15.0),
                      filled: true,
                      fillColor: Colors.grey[50],
                      hintText: 'Search phrase here...',
                      labelStyle: TextStyle(color: Colors.grey[400]),
                      floatingLabelBehavior:
                          FloatingLabelBehavior.never, // Removed floating label
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.grey), // Adjust border color
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: Text('Previous Search phrase'),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: Text('Previous Search phrase'),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: Text('Previous Search phrase'),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: Text('Previous Search phrase'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
