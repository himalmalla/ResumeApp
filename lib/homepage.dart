import 'package:flutter/material.dart';
import 'package:resumeapp/components/profile_details.dart';
import 'package:resumeapp/model/personal_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Resume App'),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: details.length,
          itemBuilder: (context, index) {
            return ProfileDetails(details[index]);
          }),
    );
  }
}
