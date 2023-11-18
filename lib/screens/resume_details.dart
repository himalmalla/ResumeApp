import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeDetails extends StatelessWidget {
  const ResumeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Resume Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const _buildheader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: const Text(
                  "A motivated, enthusiastic and forward-thinking IT graduate from The British College seeking a role of flutter developer in an IT firm, I have capability to work in team as well as individually with resolute commitment toward the firm and eager to make positive impact",),
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
            _buildExperienceRow(
                company: "British College, Thapathali",
                position: "Bsc(hons)Computing",
                duration: "3.7 GPA"),
            _buildTitle("Contact"),
            const SizedBox(height: 8,),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8.0, left: 20.0),
                child: Icon(Icons.mail),
              ),
              title: Text("himalmalla29@gmail.com"),
            ),
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8.0, left: 20.0),
                child: Icon(Icons.phone),
              ),
              title: Text("+977-9843517915"),
            ),
            _buildSocialsRow()
          ],
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20.0,
              ),
              IconButton(
                onPressed: () {
                  _launchURL("https://www.facebook.com/himal.princemalla");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.facebookF,
                  size: 30,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(width: 10,),
              IconButton(
                onPressed: () {
                  _launchURL("https://github.com/himalmalla");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10,),
              IconButton(
                onPressed: () {
                  _launchURL("https://www.linkedin.com/in/himal-malla-7b861b205/");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ],
          );
  }


  _launchURL(String url) async{
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {required String company,
      required String position,
      required String duration}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 10, left: 20),
        child: Icon(
          Icons.circle,
          size: 12,
        ),
      ),
      title: Text(
        company,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
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
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
    return const Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 130,
            height: 130,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50,
              backgroundImage: AssetImage(
                'images/himalprofile.jpeg'),
          ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Himal Malla",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("Flutter Developer", style: TextStyle(color: Colors.black),),
              SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.locationDot,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5,),
                  Text("Hattiban,Lalitpur"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
