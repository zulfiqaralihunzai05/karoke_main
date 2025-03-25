import 'package:flutter/material.dart';

import '../../../../utils/appColors/app_colors.dart';
import '../../../../utils/gradient/app_helper_widget.dart';
import '../../../../utils/strings/app_assets.dart';
import '../../../../utils/typography/typography.dart';
class YourLibraryView extends StatefulWidget {
  const YourLibraryView({super.key});

  @override
  State<YourLibraryView> createState() => _YourLibraryViewState();
}

class _YourLibraryViewState extends State<YourLibraryView> {
  List<String> tabs = [
    'Folders',
    'Playlists',
    'Artists',
    'Albums',
    'Podcasts & Shows',
  ];
  String currentTab = 'Folders';
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
     // drawer: DrawerView(scaffoldKey: _key),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 18, 0),
                          child: Icon(Icons.menu, color: ColorPalette.disableColor),
                        ),
                      ),
                      Text(
                        'Your Library',
                        style: poppinsRegular.copyWith(fontSize: 22),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 18),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 23),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    ...List.generate(
                      tabs.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentTab = tabs[index];
                            });
                          },
                          child: Container(
                            height: 35,
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: tabs[index] == currentTab ? Colors.transparent : Colors.white,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(40),
                              gradient: tabs[index] == currentTab
                                  ? const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xff123579),
                                        Color(0xffEDD530),
                                      ],
                                    )
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                tabs[index],
                                style: poppinsRegular.copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.profilePhoto),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.white, width: 2.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'Your Liked Albums',
                      style: poppinsBold.copyWith(fontSize: 16, color: Colors.white, letterSpacing: 1.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Image.asset(AppAssets.sortAsset, width: 20, height: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Recently added',
                      style: poppinsBold.copyWith(fontSize: 16, color: ColorPalette.lightBlue),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ...List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 18, right: 18),
                  child: Row(
                    children: [
                      Image.asset(AppAssets.songLogoAsset, height: 82, width: 84),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Superache',
                            style: poppinsBold.copyWith(fontSize: 20),
                          ),
                          Text(
                            'Conan Gray',
                            style: poppinsBold.copyWith(fontSize: 15, color: ColorPalette.greyColor5),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
