import 'package:flutter/material.dart';
import 'package:programming_language_flutter/profile.dart';

import 'model/programming_language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[500]!),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '10 Popular Progamming Languages'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _moveToProfileScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MyProfile(
          name: "Jelvin Krisna Putra",
          profile: "Programmer",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'Programming List',
                applicationVersion: '1.0.0',
                applicationIcon: const FlutterLogo(),
                children: const [
                  Text(
                      'This is a simple app to show the list of popular programming languages.'),
                ],
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: languages.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  splashColor: Theme.of(context).colorScheme.surface,
                  leading: const FlutterLogo(),
                  title: Text(languages[index].name),
                  subtitle: Text(languages[index].description),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${languages[index].name} is a programming language',
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _moveToProfileScreen,
        tooltip: 'Profile',
        child: const Icon(Icons.person),
      ),
    );
  }
}
