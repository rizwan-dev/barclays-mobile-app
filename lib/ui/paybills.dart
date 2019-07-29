import 'package:barclays_app/model/paymentdetails.dart';
import 'package:barclays_app/ui/payment.dart';
import 'package:flutter/material.dart';

import 'dialog/addpayeedialog.dart';

class PaybillsWidget extends StatelessWidget {
  final Color color;
  List payments;

  PaybillsWidget(this.color);

  @override
  Widget build(BuildContext context) {
    payments = getPayments();
//    return Container(color: color, child: _myListView(context));
    return new Scaffold(
        body: Container(color: color, child: _myListView(context)),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(
              Icons.add,
              size: 50,
            ),
            backgroundColor: new Color(0xFFE57373),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => CustomDialog(
                  title: "Add Payee",
                  description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  buttonText: "Okay",
                ),
              );
            }));
  }

  Widget _myListView(BuildContext context) {
    return ListView.builder(
      itemCount: payments.length,
      itemBuilder: (context, index) {
        PaymentDetails payment = payments[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(payment.payeeName[0],
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))),
            title: Text(payment.payeeName),
            subtitle: Text(payment.payeeAccountNumber),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.black, size: 30.0),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentPage(payment: payment)));
            },
          ),
        );
      },
    );
  }

  List getPayments() {
    return [
      PaymentDetails(
          payeeName: "Rizwan",
          payeeAccountNumber: "8768767887",
          amountTransferred: 2200.00,
          date: "17/08/2019"),
      PaymentDetails(
          payeeName: "Rohit",
          payeeAccountNumber: "7987868678",
          amountTransferred: 2400.00,
          date: "15/08/2019"),
      PaymentDetails(
          payeeName: "Omkar",
          payeeAccountNumber: "6876876888",
          amountTransferred: 12200.00,
          date: "10/08/2019"),
      PaymentDetails(
          payeeName: "Gaurav",
          payeeAccountNumber: "67686878",
          amountTransferred: 1200.00,
          date: "11/08/2019")
    ];
  }

  Card makeCard(PaymentDetails payment) => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8.0,
      child: Text(payment.payeeName[0],
          style: new TextStyle(fontSize: 34.0, color: Colors.black)));


}


