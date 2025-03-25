import 'package:flutter/material.dart';
import 'package:karoke_main/presentation/view/dashboard/dashboard_view.dart';

import '../../../utils/appColors/app_colors.dart';
import '../../../utils/strings/app_assets.dart';
import '../../../utils/typography/typography.dart';
import '../login/screens/widgets/custom_button.dart';

class TrialView extends StatelessWidget {
  static const String id = '/trial-view';

  const TrialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.trialPhoto),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('7 DAYS FREE', style: poppinsBold.copyWith(fontSize: 26)),
            Text('VIP ACCESS', style: poppinsBold.copyWith(fontSize: 46)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'THAN ', style: poppinsRegular.copyWith(fontSize: 13)),
                  TextSpan(text: '\$11.99/', style: poppinsBold.copyWith(fontSize: 13)),
                  TextSpan(text: ' MONTH WITH 500 COINS', style: poppinsRegular.copyWith(fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.check, color: Colors.white),
                      const SizedBox(width: 10),
                      Text(
                        '90 days free VIP access including 3000 coins'.toUpperCase(),
                        style: poppinsRegular.copyWith(fontSize: 8),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.check, color: Colors.white),
                      const SizedBox(width: 10),
                      Text(
                        'Ad-free'.toUpperCase(),
                        style: poppinsRegular.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 200,
              height: 43,
              child: CustomElevatedButton(
                backgroundColor: ColorPalette.secondaryAppColor,
                radius: 15,
                title: '7 day’s free trial'.toUpperCase(),
                textStyle: poppinsBold.copyWith(fontSize: 12, color: ColorPalette.primaryAppColor),
                onPressed: () {
                //  Navigator.pushNamed(context, PurchaseView.id);
                },
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardView(),));
                //Navigator.pushNamed(context, DashboardView.id);
              },
              child: Text(
                'No,thanks'.toUpperCase(),
                style: poppinsBold.copyWith(fontSize: 10),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
