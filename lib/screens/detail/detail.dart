import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/video_provider.dart';

Padding infoContainer({
  required BuildContext context,
  required String username,
  required int com,
  required String likes,
  required String video,
}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return Padding(
    padding: EdgeInsets.all(screenWidth * 0.02),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.7,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      username,
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                Text(
                  '   Send with your people....!❤',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.03,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.5,
                ),
                Consumer<LikeProvider>(
                  builder: (context, likeProvider, child) {
                    return GestureDetector(
                      onTap: () {
                        likeProvider.toggleLike();
                      },
                      child: Icon(
                        likeProvider.isLiked
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: screenWidth * 0.075,
                        color: likeProvider.isLiked ? Colors.red : null,
                      ),
                    );
                  },
                ),
                Text(
                  '$likes',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                  size: screenWidth * 0.0825,
                ),
                Text(
                  '$com',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                Transform(
                  transform: Matrix4.rotationZ(5.8),
                  child: InkWell(
                    onTap: () {
                      Provider.of<ShareProvider>(context, listen: false)
                          .shareReel(video);
                    },
                    child: Icon(
                      Icons.send,
                      size: screenWidth * 0.075,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}


List description = [
  'Radhey Radhey ❤️♾',
  '#winter❄⚡🌚 ',
  'Always mahadev 🙌⚜',
  '🙂',
  '',
  'The Trio 😎',
  '😶',
  'Auhhhhhhh....😫',
  'Rakh du...😪',
  'Satyanashh😶',
  'BMW🔥😎',
  '👩‍❤️‍👩😂',
  'Kanha soja sara ❤',
  'Zaalima me kehlai ❤️♾️',
  'Goverdhan girirdhari....',
];