import 'dart:math';

import 'package:flutter/material.dart';
import 'package:programming_language_flutter/model/programming_language.dart';
import 'package:programming_language_flutter/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ProgrammingLanguage> _language = [
    ProgrammingLanguage(
      name: 'Dart',
      description:
          'Dart is a client-optimized language for fast apps on any platform.',
    ),
  ];

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

  void _showAboutDialog(BuildContext context) {
    return showAboutDialog(
      context: context,
      applicationName: 'Programming List',
      applicationVersion: '1.0.0',
      applicationIcon: const FlutterLogo(),
      children: const [
        Text(
            'This is a simple app to show the list of popular programming languages.'),
      ],
    );
  }

  void _randomAddProgrammingLanguage() {
    setState(
      () => _language
          .add(availableLanguages[Random().nextInt(availableLanguages.length)]),
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
            icon: const Icon(Icons.person),
            onPressed: _moveToProfileScreen,
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              _showAboutDialog(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: _language.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 4.0,
                child: ListTile(
                  splashColor: Theme.of(context).colorScheme.surface,
                  leading: const FlutterLogo(),
                  title: Text(_language[index].name),
                  subtitle: Text(_language[index].description),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${_language[index].name} is a programming language',
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            shrinkWrap: true,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _randomAddProgrammingLanguage();
        },
        tooltip: 'Add Programming Language',
        child: const Icon(Icons.add),
      ),
    );
  }
}
