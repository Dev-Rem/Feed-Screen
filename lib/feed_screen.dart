import 'package:feed_screen/custom_appbar.dart';
import 'package:feed_screen/profile_photos.dart';
import 'package:feed_screen/profile_posts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to the desired background color
      appBar: CustomAppBar(
        title: "Feed",
        leftOption: '',
        rightOption: 'Compose',
        backgroundColor: Colors.white,
        leadingWidth: 60,
        titleColor: Colors.black,
        optionsColor: Color.fromARGB(255, 93, 176, 117),
        leftPressed: () => {},
        rightPressed: () => {GoRouter.of(context).go('/composeScreen')},
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView(children: generateContainers(7)),
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> generateContainers(int count) {
  List<Widget> containers = [];

  for (int i = 0; i < count; i++) {
    containers.add(
      PostWidget(
        header: 'John Doe',
        message:
            "He'll want to use your yacht, and I don't want this thing smelling like fish.",
        profilePhotoUrl: 'assets/profile_photo.jpg',
        timePosted: '2 hours ago',
      ),
    );
    containers.add(
      PostWidget(
        header: 'John Doe',
        message:
            "He'll want to use your yacht, and I don't want this thing smelling like fish.",
        profilePhotoUrl: 'assets/profile_photo.jpg',
        timePosted: '2 hours ago',
      ),
    );

    containers.add(PhotoWidget(
      header: 'John Doe',
      message:
          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
      profilePhotoUrl: 'assets/profile_photo.jpg',
      timePosted: '2 hours ago',
    ));
  }

  return containers;
}
