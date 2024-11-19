import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../utils/list.dart';
import '../video/video_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return VideoScreen(
                  video: videoList[index]['video'],
                  username: videoList[index]['username'],
                  comments: videoList[index]['comments'],
                  likes: videoList[index]['likes'],
                );
              },
              itemCount: videoList.length,
              scrollDirection: Axis.vertical,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.add_box,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.inbox,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.white,
              size: screenWidth * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
