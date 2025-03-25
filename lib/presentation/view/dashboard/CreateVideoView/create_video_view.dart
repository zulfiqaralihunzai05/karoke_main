import 'package:flutter/material.dart';

class CreateVideoView extends StatefulWidget {
  const CreateVideoView({super.key});

  @override
  State<CreateVideoView> createState() => _CreateVideoViewState();
}

class _CreateVideoViewState extends State<CreateVideoView> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final FocusNode searchFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  //  Get.find<SongsController>().getSongsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _key,
      // drawer: DrawerView(scaffoldKey: _key),
      // body: GetBuilder<SongsController>(builder: (songController) {
      //   return Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 16),
      //       child: Column(
      //         children: [
      //           const SizedBox(height: 75),
      //           Row(
      //
      //             children: [
      //               GestureDetector(
      //                 onTap: () {
      //                   _key.currentState!.openDrawer();
      //                 },
      //                 child: const Icon(Icons.menu, color: ColorPalette.disableColor),
      //               ),
      //               const SizedBox(width: 15),
      //               Expanded(
      //                 child: Text(
      //                   'Select a song',
      //                   style: poppinsRegular.copyWith(fontSize: 22),
      //                 ),
      //               ),
      //               //const Icon(Icons.search, color: Colors.white),
      //             ],
      //           ),
      //           const SizedBox(height: 15),
      //           CustomTextField(
      //             hintText: 'Find songs',
      //             radius: 10,
      //             focusNode: searchFocus,
      //             fillColor: ColorPalette.greyColor1.withOpacity(0.5),
      //             outlineColor: Colors.transparent,
      //             prefixIcon: const Icon(Icons.search, color: ColorPalette.disableColor),
      //             onChanged: (value) {
      //               songController.filterSong(value);
      //             },
      //           ),
      //           const SizedBox(height: 32),
      //           Expanded(
      //             child: songController.loading
      //                 ? const Center(
      //                     child: CircularProgressIndicator(color: ColorPalette.secondaryAppColor),
      //                   )
      //                 : songController.filteredSongsList.isEmpty
      //                     ? const EmptyData(title: 'No songs found')
      //                     : ListView.separated(
      //                         padding: EdgeInsets.zero,
      //                         itemBuilder: (context, index) {
      //                           SongDataModel song = songController.filteredSongsList[index];
      //                           return GestureDetector(
      //                             onTap: () {
      //                               searchFocus.unfocus();
      //                               showDialog(
      //                                 context: context,
      //                                 builder: (context) {
      //                                   return AlertDialog(
      //                                     contentPadding: EdgeInsets.zero,
      //                                     content: Container(
      //                                       height: 160,
      //                                       decoration: BoxDecoration(
      //                                         gradient: AppHelperWidgets.bgGradient,
      //                                         borderRadius: BorderRadius.circular(20),
      //                                       ),
      //                                       child: Column(
      //                                         children: [
      //                                           const SizedBox(height: 20),
      //                                           Text(
      //                                             'Select an category',
      //                                             style: poppinsMedium.copyWith(fontSize: 24),
      //                                           ),
      //                                           const SizedBox(height: 40),
      //                                           Row(
      //                                             mainAxisAlignment: MainAxisAlignment.center,
      //                                             children: [
      //                                               CustomElevatedButton(
      //                                                 width: 115,
      //                                                 height: 40,
      //                                                 title: 'Audio',
      //                                                 radius: 30,
      //                                                 backgroundColor: ColorPalette.secondaryAppColor,
      //                                                 textStyle: poppinsMedium.copyWith(fontSize: 20, color: Colors.black),
      //                                                 onPressed: () {
      //                                                   Navigator.pop(context);
      //                                                   songController.setSelectedSong = song;
      //                                                   Navigator.pushNamed(context, RecordAudioView.id);
      //                                                 },
      //                                               ),
      //                                               const SizedBox(width: 15),
      //                                               CustomElevatedButton(
      //                                                 width: 115,
      //                                                 height: 40,
      //                                                 title: 'Video',
      //                                                 radius: 30,
      //                                                 backgroundColor: ColorPalette.secondaryAppColor,
      //                                                 textStyle: poppinsMedium.copyWith(fontSize: 20, color: Colors.black),
      //                                                 onPressed: () {
      //                                                   Navigator.pop(context);
      //                                                   songController.setSelectedSong = song;
      //                                                   Navigator.pushNamed(context, RecordYourVideoView.id);
      //                                                 },
      //                                               ),
      //                                             ],
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                   );
      //                                 },
      //                               );
      //                             },
      //                             child: Row(
      //                               children: [
      //                                 song.songThumbnail != null && song.songThumbnail!.isNotEmpty
      //                                     ? CustomCashedImage(
      //                                         image: song.songThumbnail ?? '',
      //                                         shape: BoxShape.rectangle,
      //                                         width: 80,
      //                                         height: 80,
      //                                       )
      //                                     : Image.asset(AppAssets.songLogoAsset, height: 82, width: 84),
      //                                 const SizedBox(width: 20),
      //                                 Expanded(
      //                                   child: Column(
      //                                     crossAxisAlignment: CrossAxisAlignment.start,
      //                                     children: [
      //                                       Text(
      //                                         song.songName ?? '',
      //                                         overflow: TextOverflow.ellipsis,
      //                                         style: poppinsBold.copyWith(fontSize: 20),
      //                                       ),
      //                                       Text(
      //                                         song.artistName ?? '',
      //                                         style: poppinsBold.copyWith(fontSize: 15, color: ColorPalette.greyColor5),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           );
      //                         },
      //                         separatorBuilder: (context, index) => const SizedBox(height: 10),
      //                         itemCount: songController.filteredSongsList.length,
      //                       ),
      //           )
      //         ],
      //       ),
      //     ),
      //   );
      // }),
    );
  }
}
