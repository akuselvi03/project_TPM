import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String nim;
  final String photoUrl;
  final String birthPlace;
  final String birthDate;
  final String classYear;
  final String futureGoal;

  const DetailPage({
    Key? key,
    required this.name,
    required this.nim,
    required this.photoUrl,
    required this.birthPlace,
    required this.birthDate,
    required this.classYear,
    required this.futureGoal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profile'),
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(photoUrl),
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            leading: Text('NIM :'),
            title: Text(nim),
          ),
          ListTile(
            leading: Text('Nama :'),
            title: Text(name),
          ),
          ListTile(
            leading: Text('Kelas :'),
            title: Text(classYear),
          ),
          ListTile(
            leading: Text('Tempat'),
            title: Text(birthPlace),
          ),
          ListTile(
            leading: Text("Tanggal Lahir :"),
            title: Text(birthDate),
          ),
          ListTile(
            leading: Text('Cita-cita :'),
            title: Text(futureGoal),
          ),
        ],
      ),
    );
  }
}