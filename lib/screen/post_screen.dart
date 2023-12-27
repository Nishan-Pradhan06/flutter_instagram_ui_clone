import 'package:flutter/material.dart';
import 'package:instagram_bottom_navigation_bar/widget/story_widget.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // StoryWidget(),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(color: Colors.red),

                  child: Image.asset('assets/post/post2.jpg'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.red),

                // child: Image.asset(
                //   'assets/images/profile.jpg',
                //   height: 100,
                //   width: 100,
                // ),
              )
            ],
          )
        ],
      ),
    );
  }
}
