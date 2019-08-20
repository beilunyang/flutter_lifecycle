import 'package:flutter/material.dart';
import 'package:flutter_lifecycle/detail.dart';
import 'package:flutter_lifecycle/widgets/count.dart';
import 'package:flutter_lifecycle/widgets/fab.dart';
import 'package:flutter_lifecycle/widgets/shareData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/detail': (BuildContext context) => DetailPage(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print('main page initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('main page didChangeDependencies');
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('main page didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('main page deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('main page dispose');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.inactive:
        print('appLifeCycleState inactive');
        break;
      case AppLifecycleState.resumed:
        print('appLifeCycleState resumed');
        break;
      case AppLifecycleState.paused:
        print('appLifeCycleState paused');
        break;
      case AppLifecycleState.suspending:
        print('appLifeCycleState suspending');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ShareDataWidget(
        data: _counter,
        child: Count()
      ),
      floatingActionButton: Fab(onPress: _incrementCounter),
    );
  }
}
