import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recording/model/song_model.dart';
import 'package:recording/res/app_colors.dart';

showCustomSnackBar({required String title, required String message}) {
  Get.snackbar(
    title,
    message,
    icon: const Icon(Icons.info_outline, color: Colors.white),
    backgroundColor: ColorPalette.primaryColor,
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
    duration: const Duration(seconds: 3),
  );
}

List<SongModel> songs = [
  SongModel(
    title: 'When You Say Nothing At Al',
    subTitle: 'When You Say Nothing At Al',
    url: 'https://www.youtube.com/watch?v=UXh08hvQNQw',
  ),
  SongModel(
    title: "NOTHING'S GONNA STOP US NOW",
    subTitle: "NOTHING'S GONNA STOP US NOW",
    url: 'https://www.youtube.com/watch?v=EdPjX0BAs58',
  ),
  SongModel(
    title: 'Imagine Dragons - Believer',
    subTitle: 'Imagine Dragons',
    url: 'https://www.youtube.com/watch?v=sfbCZw_c2Zs',
  ),
  SongModel(
    title: 'Just Another Woman In Love by Anne Murray ',
    subTitle: 'Just Another Woman',
    url: 'https://www.youtube.com/watch?v=AFC-fC8Zb10',
  ),
  SongModel(
    title: 'Zara Zara Unplugged Karaoke',
    subTitle: 'Zara Zara',
    url: 'https://www.youtube.com/watch?v=yzWNDSU1TQc',
  ),
  SongModel(
    title: 'ALL OF ME - JOHN LEGEND',
    subTitle: 'ALL OF ME',
    url: 'https://www.youtube.com/watch?v=I1t91yqGX20',
  ),
  SongModel(
    title: 'Karaoke Version/ ZOMBIE _ CRANBERRIES',
    subTitle: 'ZOMBIE',
    url: 'https://www.youtube.com/watch?v=-PNn7BkGLBQ',
  ),
  SongModel(
    title: 'Abba - Dancing Queen',
    subTitle: 'Abba',
    url: 'https://www.youtube.com/watch?v=2xyoo8kV2aI',
  ),
  SongModel(
    title: 'My Heart Will Go On - Céline Dion',
    subTitle: 'My Heart Will Go On',
    url: 'https://www.youtube.com/watch?v=kXTkjMdgf7Q',
  ),
  SongModel(
    title: 'Rema ft Selena Gomez, Calm down',
    subTitle: 'Calm down',
    url: 'https://www.youtube.com/watch?v=3JpmXq7jB_w',
  ),
  SongModel(
    title: 'Celine Dion ( THE POWER OF LOVE ) ',
    subTitle: 'THE POWER OF LOVE',
    url: 'https://www.youtube.com/watch?v=s67Stiz8ryc',
  ),
  SongModel(
    title: 'Kesariya Karaoke',
    subTitle: 'Kesariya',
    url: 'https://www.youtube.com/watch?v=RbtKs0n5RJQ',
  ),
  SongModel(
    title: 'Kaise Hua(Kabir Singh) Karaoke',
    subTitle: 'Kaise Hua',
    url: 'https://www.youtube.com/watch?v=PPe-ABlK1Lo',
  ),
  SongModel(
    title: 'Shalala Lala - Vengaboys',
    subTitle: 'Shalala Lala',
    url: 'https://www.youtube.com/watch?v=j68T3BJkpv4',
  ),
  SongModel(
    title: 'Perfect By Ed Sheeran',
    subTitle: 'Perfect',
    url: 'https://www.youtube.com/watch?v=y-ese2XE_Lo',
  ),
  SongModel(
    title: 'Night Changes - One Direction',
    subTitle: 'Night Changes',
    url: 'https://www.youtube.com/watch?v=Ilo5-JaJYw4',
  ),
  SongModel(
    title: 'Someone you loved - Lewis Capaldi ',
    subTitle: 'Someone you loved',
    url: 'https://www.youtube.com/watch?v=BA2g8va8qwA',
  ),
  SongModel(
    title: 'You Are The Reason - Calum Scott ',
    subTitle: 'You Are The Reason',
    url: 'https://www.youtube.com/watch?v=oeaPNhtqktQ',
  ),
  SongModel(
    title: 'UNTIL I FOUND YOU - Stephen Sanchez & Em Beihold',
    subTitle: 'UNTIL I FOUND YOU',
    url: 'https://www.youtube.com/watch?v=4uaYKf5Yd_k',
  ),
  SongModel(
    title: 'Cupid - Fifty Fifty (Twin Ver.)',
    subTitle: 'Cupid',
    url: 'https://www.youtube.com/watch?v=6q52cMA-Wvg',
  ),
  SongModel(
    title: 'FLOWERS - Miley Cyrus',
    subTitle: 'FLOWERS',
    url: 'https://www.youtube.com/watch?v=1OXCLEoq5sE',
  ),
  SongModel(
    title: 'Sia - Unstoppable',
    subTitle: 'Unstoppable',
    url: 'https://www.youtube.com/watch?v=Os1yZi0DM4c',
  ),
  SongModel(
    title: 'Chahun Main Ya Naa Karaoke ',
    subTitle: 'Chahun Main Ya Naa',
    url: 'https://www.youtube.com/watch?v=Et5ZZYlDt30',
  ),
  SongModel(
    title: 'Lag Ja Gale Karaoke Version',
    subTitle: 'Lag Ja Gale',
    url: 'https://www.youtube.com/watch?v=EdYdAFYQVkE',
  ),
  SongModel(
    title: 'Apna Bana Le - Bhediya',
    subTitle: 'Apna Bana Le',
    url: 'https://www.youtube.com/watch?v=78iQIlwX1D4',
  ),
  SongModel(
    title: 'Kahani Suno 2.0 Clean Karaoke',
    subTitle: 'Kahani Suno',
    url: 'https://www.youtube.com/watch?v=mNDaUBHR6zc',
  ),
  SongModel(
    title: "KAUN TUJHE YUN Karaoke ",
    subTitle: 'KAUN TUJHE YUN',
    url: 'https://www.youtube.com/watch?v=O0Ww71XgsdU',
  ),
  SongModel(
    title: 'Janam Janam Janam Saath Chalna Yunhi ',
    subTitle: 'Janam Janam',
    url: 'https://www.youtube.com/watch?v=opfh8DVkMao',
  ),
];

String getMonthName(int month) {
  switch (month) {
    case 1:
      return 'Jan';
    case 2:
      return 'Feb';
    case 3:
      return 'Mar';
    case 4:
      return 'Apr';
    case 5:
      return 'May';
    case 6:
      return 'Jun';
    case 7:
      return 'Jul';
    case 8:
      return 'Aug';
    case 9:
      return 'Sep';
    case 10:
      return 'Oct';
    case 11:
      return 'Nov';
    case 12:
      return 'Dec';
    default:
      return '';
  }
}
