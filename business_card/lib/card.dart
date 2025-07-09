import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 90),
                Container(
                  height: 240,
                  width: 840,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/Images/me.jpg"),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Asmaa Elkashef",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  "Flutter developer",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 199, 201, 209),
                  ),
                ),
                const SizedBox(height: 30),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(55),
                    onTap: () async {
                      final phone = '201211683668'; // بدون +
                      final message = Uri.encodeComponent("Hello asmaa !");
                      final url = 'https://wa.me/$phone?text=$message';
                
                      final Uri uri = Uri.parse(url);
                
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(
                          uri,
                          mode: LaunchMode.externalApplication, 
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Could not open WhatsApp')),
                        );
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 13, bottom: 13, left: 17),
                      margin: EdgeInsets.only(right: 22, left: 22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.phone, size: 25, color: Color(0xFF2B475E)),
                          const SizedBox(width: 50),
                          Text(
                            "+20 12 11683668",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2B475E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'asmaaelkashef9@gmail.com',
                        query: Uri.encodeFull(
                          'subject=Hello from your Flutter app!&body=Hi Asmaa, I loved your app.',
                        ),
                      );

                      if (await canLaunchUrl(emailUri)) {
                        await launchUrl(
                          emailUri,
                          mode: LaunchMode.externalApplication, 
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Could not open email app')),
                        );
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 13, bottom: 13, left: 17),
                      margin: EdgeInsets.only(right: 22, left: 22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.mail, size: 25, color: Color(0xFF2B475E)),
                          const SizedBox(width: 14),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(
                              "asmaaelkashef9@gmail.com",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2B475E),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 98),
                Text(
                  "made with love <3 ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
