import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumeapp/model/personal_details.dart';
import 'package:resumeapp/screens/resume_details.dart';

Widget ProfileDetails(PersonalDetails detail) {
  return Container(
    height: 170,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: 150,
              width: 190,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(detail.profileimg),
                  )
                ],
              )),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detail.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(detail.jobpost),
              Row(
                children: [
                  const Icon(Icons.location_on),
                  Text(detail.location),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              FloatingActionButton.extended(
                heroTag: null,
                onPressed: () {
                  Get.to(() => ResumeDetails(), transition: Transition.zoom);
                },
                label: Text('View Resume'),
                icon: Icon(Icons.view_agenda),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
