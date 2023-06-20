import 'package:flutter/material.dart';
import 'package:furniture_app/screens/shipping_screens/shipping_screen.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/data/database/users.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  static const id = "/profile";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int onPressed = 0;

  @override
  Widget build(BuildContext context) {
    AppLocalizations l10n = AppLocalizations.of(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.search_outlined,
          color: Colors.black,
        ),
        title: Text(
          l10n.profile,
          style: AppTextStyles.merriWeatherBold18,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 30, top: 20, bottom: 20),
              child: Row(
                children: [
                  Image(
                    image: AppImage.person.img,
                    height: 100,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(currentUser!.name,
                                style: AppTextStyles.nunitoSansBold18),
                            SvgIcon.edit,
                          ],
                        ),
                        Text(currentUser!.email,
                            style: AppTextStyles.nunitoSansRegular12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //1-Card
            MyCard(
              titleChild: l10n.myOrders,
              subtitleChild: "Alredy have 10 orders",
            ),
            //2-Card
            MyCard(
              onTap: () {
                Navigator.of(context).pushNamed(ShippingScreen.id);
              },
              titleChild: l10n.shippingAddress,
              subtitleChild: "03 Addresses",
            ),
            //3-Card
            MyCard(
              titleChild: l10n.paymentMethod,
              subtitleChild: "You have 2 cards",
            ),
            //4-Card
            GestureDetector(
              onTap: () {},
              child: MyCard(
                titleChild: l10n.myReviews,
                subtitleChild: "Reviews for 5 items",
              ),
            ),
            //5-Card
            MyCard(
              titleChild: l10n.helpCenter,
              subtitleChild: "FAQ, Contact",
            ),
          ],
        ),
      ),
/*
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            onPressed = index;
          });
        },
        items:  [
          BottomNavigationBarItem(
              icon: onPressed == 0 ? SvgIcon.homeFill: SvgIcon.home,
          label: "",
          backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: onPressed == 1 ? SvgIcon.markerFill : SvgIcon.marker,
              label: ""),
          BottomNavigationBarItem(
              icon: onPressed == 2 ? SvgIcon.bellFill : SvgIcon.bell,
              label: ""),
          BottomNavigationBarItem(
              icon:onPressed == 3 ? SvgIcon.personFill : SvgIcon.person,
              label: ""),
        ],

      ),
*/
    );
  }
}

class MyCard extends StatelessWidget {
  final String titleChild;
  final String subtitleChild;
  final void Function()? onTap;

  const MyCard(
      {Key? key, this.onTap ,required this.titleChild, required this.subtitleChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        height: 80,
        child: ListTile(
          onTap: onTap,
          style: ListTileStyle.list,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              titleChild,
              style: AppTextStyles.nunitoSansBold18,
            ),
          ),
          subtitle: Text(
            subtitleChild,
            style: AppTextStyles.nunitoSansRegular12,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
