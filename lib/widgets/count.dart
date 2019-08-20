import 'package:flutter/material.dart';
import 'package:flutter_lifecycle/widgets/shareData.dart';

class Count extends StatefulWidget {
  const Count({
    Key key,
  }) : super(key: key);

  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  void initState() {
    super.initState();
    print('count initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('count didChangeDependencies');
  }

  @override
  void didUpdateWidget(Count oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('count didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            ShareDataWidget.of(context)?.data.toString(),
            style: Theme.of(context).textTheme.display1,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/detail');
            },
            child: Text('TO DETAIL PAGE'),
          )
        ],
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('count deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('count dispose');
  }
}
