import 'package:flutter/material.dart';
import 'package:furniture_app/views/order_components/order_container.dart';

class DeliveredScreen extends StatelessWidget {
  const DeliveredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return  Scaffold(
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),

                ///#OrderContainer
                const OrderContainer(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.034),
                const OrderContainer(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.034),
                const OrderContainer(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.034),
                const OrderContainer(),
              ],
            ),
          )),
    );
  }
}