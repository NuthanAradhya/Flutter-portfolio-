import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Nuthan Aradhya T J',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoRow(
                        icon: Icons.email,
                        text: 'nuthanaradhyaj.21.beis@acharya.ac.in'),
                    InfoRow(icon: Icons.phone, text: '9902900940'),
                    InfoRow(icon: Icons.location_on, text: 'Bangalore'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Connect with me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: FontAwesomeIcons.github,
                  url: 'https://github.com/NuthanAradhya',
                ),
                SocialIcon(
                  icon: FontAwesomeIcons.linkedin,
                  url: 'www.linkedin.com/in/nuthan-aradhya-t-j-1137441b9',
                ),
                SocialIcon(
                  icon: FontAwesomeIcons.hackerrank,
                  url: 'https://www.hackerrank.com/profile/nuthanaradhyaj_1',
                ),
              ],
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'I am a passionate Flutter developer with a keen interest in creating beautiful and functional mobile applications. My goal is to contribute to innovative projects and continuously improve my skills in mobile development.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: IconButton(
        icon: FaIcon(icon, size: 30),
        onPressed: () async {
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
      ),
    );
  }
}
