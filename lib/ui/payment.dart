import 'package:barclays_app/model/paymentdetails.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final PaymentDetails payment;

  PaymentPage({Key key, this.payment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Payment Page"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("Pay to : " + payment.payeeName,
            style: new TextStyle(fontSize: 20.0, color: Colors.black)),
      )),
    );
  }
}
