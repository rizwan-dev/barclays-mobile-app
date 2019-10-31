import 'package:barclays_app/model/constant.dart';
import 'package:barclays_app/model/paymentdetails.dart';
import 'package:flutter/material.dart';

class AddPayeePage extends StatelessWidget {
  final PaymentDetails payment;
  bool _isProceedButtonDisabled = true;

  AddPayeePage({Key key, this.payment}) : super(key: key);
  final accountNumberController = TextEditingController();
  final reEnteraccountNumberController = TextEditingController();
  final ifscCodeController = TextEditingController();
  final nameController = TextEditingController();
  final nickNameController = TextEditingController();

  void _todo() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Add Payee"),
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new Text("Account Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  )),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              /*new Text("Account Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  )),*/

              new TextField(
                controller: accountNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Account Number',
                ),
              ),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new TextField(
                keyboardType: TextInputType.number,
                controller: reEnteraccountNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-Enter Account Number',
                ),
              ),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new TextField(
                textCapitalization: TextCapitalization.characters,
                controller: ifscCodeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'IFSC Code',
                ),
              ),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new Text("Payee Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  )),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new TextField(
                controller: nameController,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new TextField(
                controller: nickNameController,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nick Name',
                ),
              ),
              new Padding(
                  padding: EdgeInsets.only(
                top: Consts.padding,
              )),
              new Container(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: new RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Color(0xffebe9e7),
                    disabledTextColor: Colors.black12,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    onPressed: _isProceedButtonDisabled ? null : () => _todo(),
                    child: Text(
                      "Proceed",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ))
            ],
          ),
//        child: Text("Pay to : " + payment.payeeName,
//            style: new TextStyle(fontSize: 20.0, color: Colors.black)),
//      )),
        )));
  }
}
