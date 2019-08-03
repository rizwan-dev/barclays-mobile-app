import 'package:barclays_app/model/paymentdetails.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final PaymentDetails payment;

  PaymentPage({Key key, this.payment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Fund Transfer"),
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              new Text("FROM",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
              new Card(
                margin: EdgeInsets.only(top: 10.0, bottom: 12.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffebe9e7),
                    child: new Icon(Icons.account_balance),
                  ),
                  title: Text("Rs. 16000",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      )),
                  subtitle: Text(
                    "SAVING BANK A/C\n91201000404040",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: Colors.black87),
                  ),
                ),
              ),
              new Text("TO",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
              new Card(
                child: Container(
//                  padding: const EdgeInsets.all(15.0),
                  child: new Table(
                    border: new TableBorder(
                        horizontalInside: new BorderSide(color: Colors.grey[200], width: 0.5)
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                child: new Text("Payee Name",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                              )
                            ],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                child: new Text(payment.payeeName,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    )),
                              )
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text("Acct No.",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )))
                            ],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text(payment.payeeAccountNumber,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )))
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text("IFSC Code",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )))
                            ],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text(payment.ifscCode,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )))
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text("Branch",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )))
                            ],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text(payment.branch,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )))
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text("Amount",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )))
                            ],
                          ),
                        ),
                        //TODO add TextField
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text(payment.amountTransferred.toString(),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )))
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text("Remark",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )))
                            ],
                          ),
                        ),
                        //TODO add TextField
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: const EdgeInsets.all(15.0),
                                  child: new Text("Dummy",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )))
                            ],
                          ),
                        )
                      ])



                    ],
                  ),
                ),
              )
            ],
          ),
//        child: Text("Pay to : " + payment.payeeName,
//            style: new TextStyle(fontSize: 20.0, color: Colors.black)),
//      )),
        )));
  }
}
