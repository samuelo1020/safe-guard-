import 'package:flutter/material.dart';

class reportPage extends StatefulWidget {
  @override
  _reportPageState createState() => _reportPageState();
}

class _reportPageState extends State<reportPage> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  void _updateText() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuentanos que te paso?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese texto',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateText,
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              'LO que te paso fue..:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              _displayText,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}