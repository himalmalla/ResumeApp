import 'package:flutter/material.dart';

class ResumeDetails extends StatelessWidget {
  const ResumeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Resume Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildheader(),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  " Over two year experience in the field of programming adsad adsad  asdsadsad adsd"),
            ),
            _buildTitle("Skills"),
            const SizedBox(
              height: 10.0,
            ),
            _buildSkillRow("WordPress", 0.55),
            const SizedBox(
              height: 5,
            ),
            _buildSkillRow("Flutter", 0.65),
            const SizedBox(
              height: 5,
            ),
            _buildSkillRow("Laravel", 0.45),
            const SizedBox(
              height: 20,
            ),
            _buildTitle("Experience"),
            _buildExperienceRow(
                company: "Yodha",
                position: "Psychologyst",
                duration: "2018- 2021"),
            _buildExperienceRow(
                company: "MD Group",
                position: "Sales and Marketing Specialist",
                duration: "2021- 2022"),
            _buildExperienceRow(
                company: "Mindrisers consortium",
                position: "Flutter Course",
                duration: "3 months"),
            const SizedBox(
              height: 20,
            ),
            _buildTitle("Education"),
            _buildTitle("Socials")
          ],
        ),
      ),
    );
  }

  ListTile _buildExperienceRow(
      {required String company,
      required String position,
      required String duration}) {
    return ListTile(
      leading: Icon(Icons.work),
      title: Text(company),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: [
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  Padding _buildTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}

class _buildheader extends StatelessWidget {
  const _buildheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 150,
          height: 150,
          child: Image.network(
              'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Himal Malla",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text("Flutter Developer"),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text("Hattiban,Lalitpur"),
              ],
            )
          ],
        )
      ],
    );
  }
}
