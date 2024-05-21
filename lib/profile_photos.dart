import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

class PhotoWidget extends StatelessWidget {
  final String header;
  final String message;
  final String profilePhotoUrl;
  final String timePosted;

  const PhotoWidget({
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
        padding:
            EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey, // Choose your border color
              width: 0.5, // Choose your border width
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 240,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200]),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200]),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200]),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              header,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5),
            Text(
              message,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 5),
            Text(
              timePosted,
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
