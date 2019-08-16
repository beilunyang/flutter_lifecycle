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
    // 当state对象创建并且加入到tree中时
    super.initState();
    print('fab initState');
  }

  @override
  void didChangeDependencies() {
    // initState调用后，didChangeDependencies会立即调用
    super.didChangeDependencies();
    print('fab didChangeDependencies');
  }

  @override
  void didUpdateWidget(Fab oldWidget) {
    // 当widget的配置信息发生变化的时候，就会调用该生命周期方法
    // 一般调用该方法后就会调用build
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