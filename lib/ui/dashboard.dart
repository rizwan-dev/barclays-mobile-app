import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  static List<String> grideOptions = [
    "Account",
    "Credit Cards",
    "FD/RD",
    "Loans",
    "UPI",
    "Grab Deals",
    "Mutual Funds",
    "Demat",
    "Forex Cards"
  ];
  static List<IconData> grideIcons = [
    Icons.account_balance,
    Icons.credit_card,
    Icons.fiber_dvr,
    Icons.add_shopping_cart,
    Icons.border_horizontal,
    Icons.grade,
    Icons.account_box,
    Icons.account_circle,
    Icons.card_giftcard
  ];

  final Color color;

  DashboardWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(8.0),
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 5.0,
        children: List.generate(9, (int index) {
          return Card(
            color: Color(0xffebe9e7),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(grideIcons[index]),
                  new Padding(padding: EdgeInsets.all(2.0)),
                  new Text(grideOptions[index],
                      style: TextStyle(color: Colors.black87, fontSize: 15))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _myListView(BuildContext context) {
    // the Expanded widget lets the columns share the space
    Widget column = Expanded(
      child: Column(
        // align the text to the left instead of centered
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Title',
            style: TextStyle(fontSize: 16),
          ),
          Text('subtitle'),
        ],
      ),
    );

    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                column,
                column,
              ],
            ),
          ),
        );
      },
    );
  }
}
