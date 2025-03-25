import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FBConstants {
  static FirebaseFirestore get fireStore => FirebaseFirestore.instance;

  static FirebaseStorage get fireStorage => FirebaseStorage.instance;

  static FirebaseAuth get fireAuth => FirebaseAuth.instance;
  static const String carDetails = 'car/car_detail.json';
  static const String faq = 'faq/faq.json';
  static const String termCondition = 'terms_and_condition/terms_and_condition.json';
  static const String serviceDetail = 'service_details/service_details.json';
  static const String serviceTime = 'service_time/service_time.json';

  static CollectionReference<Map<String, dynamic>> get userCollection => fireStore.collection('UserData');

  static CollectionReference<Map<String, dynamic>> get coinsCollection => fireStore.collection('CoinsData');

  static CollectionReference<Map<String, dynamic>> get contactCollection => fireStore.collection('Contact');

  static CollectionReference<Map<String, dynamic>> get songsCollection => fireStore.collection('SongsData');

  static CollectionReference<Map<String, dynamic>> get randomChallengeVideoCollection => fireStore.collection('RandomChallengeVideos');

  static CollectionReference<Map<String, dynamic>> get challengeReq => fireStore.collection('ChallengeRequest');

  static CollectionReference<Map<String, dynamic>> get challengeID => fireStore.collection('ChallengeID');

  static CollectionReference<Map<String, dynamic>> get userID => fireStore.collection('UserID');

  static CollectionReference<Map<String, dynamic>> get challengeAudios => fireStore.collection('ChallengeAudios');

  static CollectionReference<Map<String, dynamic>> get challengeVideos => fireStore.collection('ChallengeVideos');

  static CollectionReference<Map<String, dynamic>> get userVideosMapCollection => fireStore.collection('UserVideos');

  static CollectionReference usersCollection = fireStore.collection('UserData');

  static CollectionReference usersVideoCollection = fireStore.collection('UserVideos');

  static CollectionReference<Map<String, dynamic>> get offerCollection => fireStore.collection('Offers');

  static CollectionReference<Map<String, dynamic>> get adminCollection => fireStore.collection('AdminDetails');

  static CollectionReference<Map<String, dynamic>> userCarCollection(String email) =>
      fireStore.collection('UserData').doc(email).collection('CarCollection');

  static CollectionReference<Map<String, dynamic>> userOrderCollection(String email) =>
      fireStore.collection('Orders').doc(email).collection('CarWash');

  static DocumentReference<Map<String, dynamic>> addCarCollection(String email, String name) =>
      fireStore.collection('UserData').doc(email).collection('CarCollection').doc(name);

  static CollectionReference<Map<String, dynamic>> userFeedbackCollection() =>
      fireStore.collection('UserFeedback').doc(fireAuth.currentUser?.email).collection('Feedback');

  static DocumentReference<Map<String, dynamic>> createNewOrder(String email, String id) =>
      fireStore.collection('Orders').doc(email).collection('CarWash').doc('OrderID - FRC$id');

  static DocumentReference<Map<String, dynamic>> get userInfoCollection => fireStore.collection('UserData').doc(fireAuth.currentUser?.email);

  static Reference get carDetailsRef => fireStorage.ref().child(carDetails);

  static Reference get faqRef => fireStorage.ref().child(faq);

  static Reference get tcRef => fireStorage.ref().child(termCondition);

  static Reference get serviceDetailRef => fireStorage.ref().child(serviceDetail);

  static Reference get serviceTimeRef => fireStorage.ref().child(serviceTime);
}
