import 'package:flutter/material.dart';
import '../../../utils/appColors/app_colors.dart';
import '../../../utils/strings/app_assets.dart';
import 'CreateVideoView/create_video_view.dart';
import 'MusicLibraryView/music_library_view.dart';
import 'ProfileView/profile_view.dart';
import 'YouLibraryView/your_library_view.dart';
import 'homeVideoView/home_videolist_view.dart';

class DashboardView extends StatefulWidget {
  static const String id = '/dashboard-view';

  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  // final AuthController controller = Get.find<AuthController>();
  // String uid = FirebaseAuth.instance.currentUser!.uid;

  int _selectedIndex = 2;
  List<Widget> screens = [];

  List<String> icons = [
    AppAssets.yourLibraryAsset,
    AppAssets.createVideoAsset,
    AppAssets.homeAsset,
    AppAssets.profileAsset,
    AppAssets.musicLibraryAsset,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
     // addPostFrameCallback controller.getUserInfo();
     //  Get.find<HomeController>().getAllUsersVideo();
     //  Get.find<ProfileController>().getUserDocs( uid: uid);
    });

    screens = [
      const YourLibraryView(),
      const CreateVideoView(),
      const HomeVideoListScreen(),
      const ProfileView(),
      const MusicLibraryView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          screens[_selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorPalette.lightBlackColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -1),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    5,
                        (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });

                          /// --- Getting the data before calling the screen
                          if (index == 3) {
                           // Get.find<ProfileController>().getAllUsersChallengeVideos();
                          }
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              icons[index],
                              width: 26,
                              height: 26,
                              color: _selectedIndex == index ? Colors.white : ColorPalette.disableColor,
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
