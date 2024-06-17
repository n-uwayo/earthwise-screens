import 'package:flutter/material.dart';

class ChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Challenge')),
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
              Image.network('https://s3-alpha-sig.figma.com/img/5f75/0b79/de310b80aa1c5dd6502eb8b4dcf69188?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=B7yx3zbMKH~uwddYOLtxIwdEwsGJQcTd7jxgIgJmSEKF9gAF5oeQEFADJhYDkY4IZPafJ70DR2SM0vOXU4a~~RFlW44GpQQOA3L9FM0G1dP8GHtpMpH87p949GCj1E2yR4NwhndB8DZsISBPKyZQKQWeVvY5hzaRDAjzTyngN0cUh3P5bVY6aiLkuixw5aFJPnhLC5Nk3tV9i4tSR8qLoWHO5RM0c7PP~tKvLZiIyMWmcLIL9qJp3bwAnGhoL30p~uNuLMh70aB~R3YuChVXZgrlqIsuRF0wQeidCNlhni~vhW5Ai6VQ~~3MDPTP-KghhmiB13fdX29qrFxynBztVg__'),
              SizedBox(height: 10),
              Text('Challenge Details', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('Join Now')),
            ],
          ),
        ),
      ),
    );
  }
}
