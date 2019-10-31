import 'package:barclays_app/model/constant.dart';
import 'package:barclays_app/model/payeetype.dart';
import 'package:barclays_app/model/paymentdetails.dart';
import 'package:barclays_app/ui/addpayee.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;
  List payments;

  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    payments = getPayments();
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          bottom: Consts.padding,
          left: Consts.padding,
          right: Consts.padding,
        ),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 16.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
            Container(
                color: Colors.white,
                height: 200.0,
                child: _myListView(context)),
          ],
        ));
  }

  Widget _myListView(BuildContext context) {
    return ListView.builder(
      itemCount: payments.length,
      itemBuilder: (context, index) {
        PayeeType payeeType = payments[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.white,
                child:
                    Icon(payeeType.iconData, size: 40.0, color: Colors.black)),
            title: Text(payeeType.type),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.black, size: 30.0),
            onTap: () {
              if(payeeType.type== "Other Bank Payee"){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPayeePage()),
                );
              }
              else{
                Fluttertoast.showToast(
                    msg: "Coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
            },
          ),
        );
      },
    );
  }

  List getPayments() {
    return [
      PayeeType(type: "Barclays Bank Payee", iconData: Icons.account_balance),
      PayeeType(
          type: "Other Bank Payee", iconData: Icons.account_balance_wallet),
      PayeeType(type: "Mobile Payee(P2P)", iconData: Icons.payment),
    ];
  }
}
