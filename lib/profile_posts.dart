import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostWidget extends StatelessWidget {
  final String header;
  final String message;
  final String profilePhotoUrl;
  final String timePosted;

  const PostWidget({
    Key? key,
    required this.header,
    required this.message,
    required this.profilePhotoUrl,
    required this.timePosted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {GoRouter.of(context).go('/blogPostScreen')},
      child: Container(
        padding: EdgeInsets.only(top: 10, right: 20),
        height: 80,
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
    );
  }
}
