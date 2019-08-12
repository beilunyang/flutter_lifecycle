import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  void initState() {
    super.initState();
    print('detail page initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('detail page didChangeDependencies');
  }

  @override
  void didUpdateWidget(DetailPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('detail page didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('detail page deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('detail page dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('detail page build');
    return Scaffold(
      appBar: AppBar(title: Text('详情页')),
      body: Align(
        child: Text('detail page'),
      ),
    );
  }
}