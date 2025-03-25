import 'package:flutter/material.dart';

class HomeVideoListScreen extends StatefulWidget {
  const HomeVideoListScreen({
    super.key,
  });

  @override
  HomeVideoListScreenState createState() => HomeVideoListScreenState();
}

class HomeVideoListScreenState extends State<HomeVideoListScreen> {
  final PageController _pageController = PageController();
  int _currentVideoIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int newIndex = _pageController.page!.round();
      if (newIndex != _currentVideoIndex) {
        setState(() {
          _currentVideoIndex = newIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // body: GetBuilder<HomeController>(
      //   builder: (homeController) {
      //     return PageView.builder(
      //       scrollDirection: Axis.vertical,
      //       controller: _pageController,
      //       itemCount: homeController.allUsersVideos.length,
      //       itemBuilder: (context, index) {
      //         return VideoPlayerWidget(
      //           videoData: homeController.allUsersVideos[index],
      //           shouldPlay: index == _currentVideoIndex,
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
