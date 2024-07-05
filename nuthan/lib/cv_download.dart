import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CVDownload extends StatelessWidget {
  // Replace this URL with the actual URL where your CV is hosted
  final String cvUrl =
      'https://drive.google.com/file/d/1Th9acQigc_NxAZNVONwik6JUZ4B0_s-Z/view?usp=sharing';

  Future<void> _downloadCV() async {
    if (await canLaunch(cvUrl)) {
      await launch(cvUrl);
    } else {
      throw 'Could not launch $cvUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Download My CV',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _downloadCV,
            icon: Icon(Icons.file_download),
            label: Text('Download CV'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Click the button above to download my CV in PDF format.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
