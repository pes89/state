import 'package:flutter/material.dart';

class DateContent extends StatefulWidget {
  @override
  _DateContentState createState() => _DateContentState();
}

class _DateContentState extends State<DateContent> {
  DateTime _ahora = DateTime.now();

  void _actualizarFecha() {
    setState(() {
      _ahora = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            '$_ahora',
            style: TextStyle(fontSize: 45, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: _actualizarFecha, child: Text('Update Date'))
        ],
      ),
    );
  }
}
