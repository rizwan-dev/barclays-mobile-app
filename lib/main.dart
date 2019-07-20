import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barclays Mobile',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Barclays Mobile App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> grideOptions = [ "Account", "Credit Cards", "FD/RD", "Loans",
  "UPI", "Grab Deals", "Mutual Funds", "Demat", "Forex Cards"];
  static List<IconData> grideIcons = [ Icons.account_balance, Icons.credit_card, Icons.fiber_dvr, Icons.add_shopping_cart,
  Icons.border_horizontal, Icons.grade, Icons.account_box, Icons.account_circle, Icons.card_giftcard];

  List<Widget> _tabList = [
    Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(8.0),
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 5.0,
        children: List.generate(9, (int index) {
          return
            Card(
            color: Color(0xffebe9e7),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Icon(grideIcons[index]),
                  new Padding(padding: EdgeInsets.all(2.0)),
                  new Text(grideOptions[index], style: TextStyle(color: Colors.black87, fontSize: 15) )
                ],
              ),
            ),
          );
        }),
      ),
    ),
    Container(
      color: Colors.redAccent,
      child: Center(
        child: Text("Coming Soon...", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontSize: 30.0),)
      ),
    ),
    Container(
      color: Colors.lightGreen,
      child: Center(
          child: Text("Coming Soon...", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontSize: 30.0),)
      ),
    ),
    Container(
      color: Colors.yellowAccent,
      child: Center(
          child: Text("Coming Soon...", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black87, fontSize: 30.0),)
      ),
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    body: DefaultTabController(
    length: 4,
    child: Scaffold(
    body: TabBarView(
    children: _tabList,
    ),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab( text: 'Transfer', icon: Icon(Icons.money_off, size: 20.0) ),
          Tab( text: 'Pay Bills', icon: Icon(Icons.account_balance_wallet, size: 20.0) ),
          Tab( text: 'Recharge', icon: Icon(Icons.mobile_screen_share, size: 20.0) ),
          Tab( text: 'Apply', icon: Icon(Icons.text_rotation_angleup, size: 20.0) ),
        ],
        onTap: (currentIndex){
          setState(() {

          });

        },
        labelStyle: TextStyle(fontSize: 13.0),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white30,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.white,
      ),
      backgroundColor: Colors.blue,
    )
    )
    );
  }
}
