import 'package:coba_projek/views/pesankesan.dart';
import 'package:flutter/material.dart';
import 'detail_profiel.dart';
import 'loginpage.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String nim;
  final String photoUrl;

  const ProfilePage({
    Key? key,
    required this.name,
    required this.nim,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('Profile'),
      // ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/339287832_109666502091077_8222333656531990180_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KM4js1LAwskAX-V2jYf&_nc_ht=scontent.fjog3-1.fna&oh=00_AfAU6IdRB3I9mCNpeLHSWHZmnWLIjeXsIMmePauboAVCmA&oe=646D42CD"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(name: name, nim: nim, photoUrl: "https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/339287832_109666502091077_8222333656531990180_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=KM4js1LAwskAX-qwz0P&_nc_ht=scontent.fjog3-1.fna&oh=00_AfDAqPxM4yOHF2L3CWrhP6_zwq2NX9ec_9vrDzRA_mokaQ&oe=646F3D0D", birthPlace: "Banyuasin", birthDate: "19 Maret 2003", classYear: "IF-A", futureGoal: "Hidup Sukses & Bahagia"),
                ),
              );
            },
            child: Text('Info Detail'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (index) => HelpPage()),
              );
            },
            child: Text('Pesan & Kesan'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 35)),
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.pink),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (index) => loginpage()),
              );
            },
            child: Text('Logout'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 35)),
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
