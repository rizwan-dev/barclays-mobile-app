import 'package:flutter/material.dart';
import 'package:barclays_app/ui/dashboard.dart';
import 'package:barclays_app/ui/paybills.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barclays Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Barclays Mobile App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<Widget> _tabList = [
    DashboardWidget(Colors.white),
    PaybillsWidget(Colors.white),
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
