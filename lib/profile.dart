import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  final String name, profile;

  const MyProfile({super.key, required this.name, this.profile = 'Programmer'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("$name Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:5fe347c66d8f951e713837ce0bb8dd2220221003182511.png",
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'My name is $name',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Text(
              'I am a $profile',
            ),
          ],
        ),
      ),
    );
  }
}
