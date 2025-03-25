import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/strings/app_assets.dart';

class MusicLibraryView extends StatefulWidget {
  const MusicLibraryView({super.key});

  @override
  State<MusicLibraryView> createState() => _MusicLibraryViewState();
}

class _MusicLibraryViewState extends State<MusicLibraryView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<String> categories = [
    AppAssets.allCategory,
    AppAssets.electroCategory,
    AppAssets.heavyCategory,
    AppAssets.jazzCategory,
    AppAssets.rockCategory,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // drawer: DrawerView(scaffoldKey: _key),
      // body: SingleChildScrollView(
      //   child: Container(
      //     width: double.infinity,
      //     decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const SizedBox(height: 70),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 14),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               GestureDetector(
      //                 onTap: () {
      //                   _key.currentState!.openDrawer();
      //                 },
      //                 child: const Icon(Icons.menu, color: ColorPalette.disableColor),
      //               ),
      //               const Icon(Icons.notifications_none, color: Colors.white),
      //             ],
      //           ),
      //         ),
      //         const SizedBox(height: 18),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 14),
      //           child: CustomTextField(
      //             hintText: 'Find band, artist, genre... ',
      //             radius: 10,
      //             fillColor: ColorPalette.greyColor1.withOpacity(0.5),
      //             outlineColor: Colors.transparent,
      //             prefixIcon: const Icon(Icons.search, color: ColorPalette.disableColor),
      //           ),
      //         ),
      //         const SizedBox(height: 18),
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               ...List.generate(categories.length, (index) {
      //                 return Container(
      //                   width: 125,
      //                   height: 56,
      //                   margin: const EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                     image: DecorationImage(
      //                       image: AssetImage(categories[index]),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 );
      //               })
      //             ],
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 14),
      //           child: Text(
      //             'What’s coming to Barcelona',
      //             style: poppinsSemiBold.copyWith(fontSize: 17),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               ...List.generate(3, (index) {
      //                 return Container(
      //                   width: 323,
      //                   height: 170,
      //                   margin: const EdgeInsets.only(left: 10),
      //                   decoration: const BoxDecoration(
      //                     image: DecorationImage(
      //                       image: AssetImage(AppAssets.upcoming),
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 );
      //               })
      //             ],
      //           ),
      //         ),
      //         const SizedBox(height: 30),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 14),
      //           child: Text(
      //             'Popular',
      //             style: poppinsSemiBold.copyWith(fontSize: 17),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Row(
      //             children: [
      //               ...List.generate(5, (index) {
      //                 return Padding(
      //                   padding: const EdgeInsets.only(left: 10),
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Image.asset(
      //                         AppAssets.popular,
      //                         width: 141,
      //                         height: 212,
      //                       ),
      //                       const SizedBox(height: 10),
      //                       Text(
      //                         'Arctic Monkeys',
      //                         style: poppinsSemiBold.copyWith(fontSize: 13),
      //                       ),
      //                       Text(
      //                         'Parc del Forum, Barcelona',
      //                         style: poppinsRegular.copyWith(fontSize: 11, color: ColorPalette.greyColor2),
      //                       ),
      //                       Text(
      //                         '22/09/2022',
      //                         style: poppinsRegular.copyWith(fontSize: 11, color: ColorPalette.greyColor2),
      //                       ),
      //                     ],
      //                   ),
      //                 );
      //               })
      //             ],
      //           ),
      //         ),
      //         const SizedBox(height: 100),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
