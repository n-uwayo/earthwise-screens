// TODO Implement this library.
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events')),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Event Details', style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}
