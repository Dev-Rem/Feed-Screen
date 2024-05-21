import 'package:feed_screen/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BlogPostWidget extends StatefulWidget {
  const BlogPostWidget({super.key});

  @override
  State<BlogPostWidget> createState() => _BlogPostWidgetState();
}

class _BlogPostWidgetState extends State<BlogPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to the desired background color
      appBar: CustomAppBar(
        title: "Blog Post",
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
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[200]),
            ),
            SizedBox(height: 20.0),
            DefaultTextStyle(
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              child: Text('Post Title Here...'),
            ),
            SizedBox(height: 10.0),
            DefaultTextStyle(
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              child: Text('Author'),
            ),
            SizedBox(height: 20.0),
            DefaultTextStyle(
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 95, 95, 95)),
              child: Text(
                  "Labore sunt veniam amet est. Minim nisi dolor eu ad incididunt cillum elit ex ut. Dolore exercitation nulla tempor consequat aliquip occaecat. Nisi id ipsum irure aute. Deserunt sit aute irure quis nulla eu consequat fugiat Lorem sunt magna et consequat labore. Laboris incididunt id Lorem est duis deserunt nisi dolore eiusmod culpa exercitation consectetur.\n\n"
                  "Fugiat do aliqua laboris cillum sint dolor officia adipisicing excepteur fugiat officia. Cupidatat ut elit consequat ea laborum occaecat laborum aute consectetur Lorem exercitation. Lorem anim minim officia aliquip commodo deserunt mollit. Duis deserunt quis cillum voluptate duis ipsum quis incididunt elit excepteur excepteur labore duis cillum. Voluptate sint nulla minim eiusmod in nulla. Ea id ad duis esse adipisicing culpa ex esse ea dolore consequat. Reprehenderit eu minim veniam aliquip do ipsum duis do qui adipisicing aliquip ad occaecat.\n\n"
                  "Enim reprehenderit sunt do do. Ex fugiat nisi sit anim culpa nisi. Non labore fugiat culpa magna. Commodo esse Lorem ex duis do et do. Est laboris cupidatat ad est anim adipisicing sit labore do dolor officia. Fugiat consequat in excepteur reprehenderit id aliquip voluptate sint enim proident aliquip occaecat quis non. Ad nulla aliqua est amet aliqua sint est occaecat amet sunt.\n\n"
                  "Ullamco laborum qui sint officia officia ad Lorem culpa minim voluptate occaecat id duis esse. Ullamco sunt magna consectetur excepteur. Id cupidatat proident ex ad elit laboris. Nulla aute sit occaecat laboris. Laboris minim aliquip exercitation elit commodo ipsum et fugiat sit anim laborum proident cillum laboris.\n\n"
                  "Et cillum tempor esse sit anim et veniam. Tempor magna irure ex ea id fugiat. Ex eu sint tempor quis exercitation amet ut deserunt sit fugiat aliquip nostrud nulla. Eu sunt laborum elit consectetur tempor sunt dolore in sunt reprehenderit voluptate dolore adipisicing. Proident eiusmod reprehenderit quis sint exercitation voluptate non labore. Sunt non sint in Lorem occaecat dolore tempor ipsum et proident sit Lorem ipsum officia"),
            ),
          ],
        ),
      ),
    );
  }
}
