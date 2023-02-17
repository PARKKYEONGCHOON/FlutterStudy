import 'package:flutter/material.dart';
import 'global.dart';

class ThirdDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ThirdDetail();
}

class _ThirdDetail extends State<ThirdDetail> {
  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Container(
        child: Center(
          child: Text(
            args,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _deleteNaviagation(context, args);
        },
        child: Icon(Icons.delete),
      ),
    );
  }

  void _deleteNaviagation(BuildContext contex, String data) {
    final result = Navigator.of(context).pushNamed('/');

    print(data);
    test.todoList.remove(data);
    print(test.todoList);
  }
}
