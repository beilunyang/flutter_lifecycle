import 'package:flutter/material.dart';

class Fab extends StatefulWidget {
  var _onPress;

  Fab({ onPress }) : _onPress = onPress;

  @override
  _FabState createState() => _FabState(onPress: _onPress);

}

class _FabState extends State<Fab> {
  var onPress;

  _FabState({ this.onPress });

  @override
  void initState() {
    super.initState();
    print('fab initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('fab didChangeDependencies');
  }

  @override
  void didUpdateWidget(Fab oldWidget) {
    // 父widget重新build后，子widget就一定会触发didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('fab didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('fab deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('fab dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('fab build');
    return FloatingActionButton(
      onPressed: onPress,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}