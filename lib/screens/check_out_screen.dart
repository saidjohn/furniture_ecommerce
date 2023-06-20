import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/views/check_out_components/check_out_components.dart';


class CheckOutScreen extends StatelessWidget {
  static const id = "/checkOut";
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        //Text: CHECK-OUT
        title: appBarText(),
        leading: const BackButton(color: Colors.black),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Text: Shipping Address
              Padding(
                padding: const EdgeInsets.only(left: 18.0,),
                child: shipping(),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: editButton(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Container(
              height: height / 6.5,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(8),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: const Color(0xFFEFF0F1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text: Bruno Fernandes
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left: 10),
                    child: brunoFernandes(),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  //Description: Text
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: descriptionTxt(),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Text: Payment
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 20),
                child: paymentText(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: editButton(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Container(
              height: height / 9,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(8),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: const Color(0xFFF0F2F3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      bottom: 22,
                    ),
                    child: Container(
                        height: 38,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset.fromDirection(1),
                              blurRadius: 1,
                              spreadRadius: 1,
                              color: const Color(0xFFF0F2F3),
                            ),
                          ],
                        ),
                        child: SvgIcon.card,
                        ),
                  ),
                  //Text-Card Number
                  cardNumber(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
            child: Container(
              height: height / 5,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.fromDirection(8),
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: const Color(0xFFF0F2F3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Order Text
                        orderText(),
                        //Price 95
                        price1(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Delivery Text
                        deliveryText(),
                        //Price 5
                        price2(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Total text
                        totalText(),
                        //Price 100
                        price3(),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: ElevatedButton(onPressed: () {}, child: submitOrder()),
          )
        ],
      ),
    );
  }
}