import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    // Ensure the ProfileController is initialized
    // if (!Get.isRegistered<ProfileController>()) {
    //   Get.put(ProfileController());
    //}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
    // return GetBuilder<AuthController>(builder: (controller) {
    //   // Add null check for profile
    //   ProfileModel? profile = controller.profile;
    //   return Container(
    //     width: double.infinity,
    //     decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
    //     child: GetBuilder<ProfileController>(builder: (profileController) {
    //       return Column(
    //         children: [
    //           const SizedBox(height: 70),
    //           GestureDetector(
    //             onTap: () {
    //               showModalBottomSheet(
    //                 context: context,
    //                 backgroundColor: Colors.transparent,
    //                 isDismissible: false,
    //                 enableDrag: false,
    //                 builder: (ctx) => const LogoutDialog(),
    //               );
    //             },
    //             child: const Padding(
    //               padding: EdgeInsets.only(right: 18),
    //               child: Align(
    //                 alignment: Alignment.centerRight,
    //                 child: Icon(Icons.logout, color: Colors.white, size: 25),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 30),
    //           profile.profileImage != null && profile.profileImage!.isNotEmpty
    //               ? CustomCashedImage(
    //             image: profile.profileImage!,
    //             shape: BoxShape.circle,
    //             width: 75,
    //             height: 75,
    //           )
    //               : const CircleAvatar(
    //             radius: 35,
    //             backgroundImage: AssetImage(AppAssets.profilePicAsset),
    //           ),
    //           const SizedBox(height: 5),
    //           Text(
    //             profile.username == null || profile.username!.isEmpty ? '@username' : '@${profile.username}',
    //             style: poppinsSemiBold.copyWith(fontSize: 17),
    //           ),
    //           const SizedBox(height: 20),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               const SizedBox(width: 20),
    //               Column(
    //                 children: [
    //                   Text(
    //                     '${profile.following?.length ?? 0}',
    //                     style: poppinsSemiBold.copyWith(fontSize: 17),
    //                   ),
    //                   Text(
    //                     'Following',
    //                     style: poppinsRegular.copyWith(fontSize: 13, color: ColorPalette.disableColor),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(width: 30),
    //               Column(
    //                 children: [
    //                   Text(
    //                     '${profile.followers?.length ?? 0}',
    //                     style: poppinsSemiBold.copyWith(fontSize: 17),
    //                   ),
    //                   Text(
    //                     'Followers',
    //                     style: poppinsRegular.copyWith(fontSize: 13, color: ColorPalette.disableColor),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(width: 20),
    //               Column(
    //                 children: [
    //                   Text(
    //                     '${profile.challengesWins?.length ?? 0}',
    //                     style: poppinsSemiBold.copyWith(fontSize: 17),
    //                   ),
    //                   Text(
    //                     'Challenge Wins',
    //                     style: poppinsRegular.copyWith(fontSize: 13, color: ColorPalette.disableColor),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //           const SizedBox(height: 24),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               GestureDetector(
    //                 onTap: () {
    //                   Navigator.pushNamed(context, EditProfileView.id);
    //                 },
    //                 child: Container(
    //                   height: 50,
    //                   width: 200,
    //                   decoration: BoxDecoration(
    //                     border: Border.all(color: Colors.white, width: 1.5),
    //                   ),
    //                   child: Center(
    //                     child: Text(
    //                       'Edit profile',
    //                       style: poppinsSemiBold.copyWith(fontSize: 15),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(width: 5),
    //               Container(
    //                   height: 50,
    //                   width: 50,
    //                   decoration: BoxDecoration(
    //                     border: Border.all(color: Colors.white, width: 1.5),
    //                   ),
    //                   child: const Icon(Icons.bookmark_border, color: Colors.white)),
    //             ],
    //           ),
    //           const SizedBox(height: 20),
    //           TextFormField(
    //             textAlign: TextAlign.center,
    //             decoration: InputDecoration(
    //               hintText: 'Tap to add bio',
    //               hintStyle: poppinsRegular.copyWith(fontSize: 13, color: ColorPalette.disableColor),
    //             ),
    //             style: poppinsRegular.copyWith(fontSize: 13, color: ColorPalette.lightWhite),
    //             controller: controller.editBioCtr,
    //             onFieldSubmitted: (value) {
    //               if (value.isNotEmpty) {
    //                 controller.updateProfile({
    //                   'bio': value,
    //                 });
    //               }
    //             },
    //           ),
    //           const SizedBox(height: 20),
    //           Expanded(
    //             child: profileController.loading
    //                 ? const Center(child: CircularProgressIndicator(color: ColorPalette.primaryAppColor))
    //                 : profileController.challengesVideos.isEmpty
    //                 ? Center(
    //               child: Text(
    //                 'No Videos yet',
    //                 style: poppinsMedium.copyWith(fontSize: 14),
    //               ),
    //             )
    //                 : GridView.builder(
    //               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
    //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                 crossAxisCount: 2,
    //                 crossAxisSpacing: 10,
    //                 mainAxisSpacing: 10,
    //                 childAspectRatio: 1,
    //               ),
    //               itemCount: profileController.challengesVideos.length,
    //               itemBuilder: (context, index) {
    //                 ChallengeVideoModel video = profileController.challengesVideos[index];
    //                 return VideoThumbnailGenerator(
    //                   videoURL: video.videoUrl,
    //                 );
    //               },
    //             ),
    //           )
    //         ],
    //       );
    //     }),
    //   );
    // });
  }
}
