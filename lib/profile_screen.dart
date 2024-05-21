import 'package:feed_screen/overlay.dart';
import 'package:feed_screen/profile_photos.dart';
import 'package:feed_screen/profile_posts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:feed_screen/custom_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  bool _isOverlayVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Profile",
        leftOption: 'Settings',
        rightOption: 'Logout',
        backgroundColor: Color.fromARGB(255, 93, 176, 117),
        leadingWidth: 90,
        titleColor: Colors.white,
        optionsColor: Colors.white,
        leftPressed: () => {GoRouter.of(context).go('/userOptionsScreen')},
        rightPressed: () => {GoRouter.of(context).go('/loginScreen')},
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 93, 176, 117), Colors.white],
                stops: [
                  0.25,
                  0.25
                ], // Adjust the stop to control the color transition
              ),
            ),
          ),
          // Circular profile picture
          Positioned(
              top: MediaQuery.of(context).size.height *
                  0.04, // Adjust the vertical position
              left: MediaQuery.of(context).size.width * 0.38 -
                  50, // Center horizontally

              child: Container(
                height: 200,
                width: 200,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isOverlayVisible = true;
                    });
                  },
                  child: Image.asset('assets/image.png'),
                ),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.26, // Adjust the vertical position
            left: MediaQuery.of(context).size.width * 0.16 -
                50, // Center horizontally
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Victoria Robertson',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                ),
                Text(
                  'A Mantra goes here',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      border: Border.all(
                        color: Color.fromARGB(255, 228, 228, 228),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          child: Container(
                            width: 180.0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              color: _selectedIndex == 0
                                  ? Colors.white
                                  : Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Center(
                              child: Text(
                                'Posts',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: _selectedIndex == 0
                                      ? Color.fromARGB(255, 93, 176, 117)
                                      : Colors.grey[500],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          child: Container(
                            width: 180.0,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              color: _selectedIndex == 1
                                  ? Colors.white
                                  : Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Center(
                              child: Text(
                                'Photos',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: _selectedIndex == 1
                                      ? Color.fromARGB(255, 93, 176, 117)
                                      : Colors.grey[500],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.42, // Adjust the vertical position
            left: MediaQuery.of(context).size.width * 0.12 -
                50, // Center horizontally
            child: _selectedIndex == 0
                ? Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    height: 280,
                    width: 400,
                    child: ListView(
                      children: [
                        PostWidget(
                          header: 'John Doe',
                          message:
                              "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                          profilePhotoUrl: 'assets/profile_photo.jpg',
                          timePosted: '2 hours ago',
                        ),
                        PostWidget(
                          header: 'John Doe',
                          message:
                              "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                          profilePhotoUrl: 'assets/profile_photo.jpg',
                          timePosted: '2 hours ago',
                        ),
                      ],
                    ))
                : Container(
                    padding: EdgeInsets.only(top: 5.0),
                    height: 280,
                    width: 400,
                    child: ListView(
                      children: [
                        PhotoWidget(
                          header: 'John Doe',
                          message:
                              "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                          profilePhotoUrl: 'assets/image.png',
                          timePosted: '2 hours ago',
                        ),
                        PhotoWidget(
                          header: 'John Doe',
                          message:
                              "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                          profilePhotoUrl: 'assets/image.png',
                          timePosted: '2 hours ago',
                        ),
                      ],
                    )),
          ),
          if (_isOverlayVisible)
            FullScreenOverlay(
              onTap: () {
                setState(() {
                  _isOverlayVisible = false;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15),
                    )),
                height: 300,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Drawer Header',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 109, 109, 109),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 55.0,
                        child: FilledButton(
                          onPressed: () =>
                              {GoRouter.of(context).go('/homeScreen')},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Color.fromARGB(255, 93, 176, 117)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                                'Click Me',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 55.0,
                        child: TextButton(
                          onPressed: () =>
                              {GoRouter.of(context).go('/homeScreen')},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                                'Secondary Action',
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
                ),
              ),
            ),
        ],
      ),
    );
  }
}
