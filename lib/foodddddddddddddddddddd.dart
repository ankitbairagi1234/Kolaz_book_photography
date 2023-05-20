import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        setState(() {
          _selectedItem = value;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'Option 1',
          child: Text('Option 1'),
        ),
        PopupMenuItem<String>(
          value: 'Option 2',
          child: Text('Option 2'),
        ),
        PopupMenuItem<String>(
          value: 'Option 3',
          child: Text('Option 3'),
        ),
      ],
      child: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.menu),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown FAB Example'),
        ),
        body: Center(
          child: Text('Selected item: $_selectedItem'),
        ),
        floatingActionButton: MyDropdownButton(),
      ),
    );
  }
}



