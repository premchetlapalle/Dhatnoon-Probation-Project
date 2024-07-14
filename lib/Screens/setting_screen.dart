import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Container(
        color: CupertinoColors.systemGrey5,
        child: ListView(
          children: [
            // User profile section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 45.0,
                        child: Text(
                          'A',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 30, // Set the width
                          height: 30, // Set the height
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white38,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.image,
                              color: Colors.black,
                              size: 16, // Adjust icon size
                            ),
                            onPressed: () {
                              // Add edit functionality here
                              // Example: Navigate to edit screen
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Akash Kumar',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.phone,
                            size: 20,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text('9876543210'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.mail,
                            size: 20,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text('akash9809@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Settings list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(CupertinoIcons.mail),
                    title: const Text('Change Mail'),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () => {},
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  ListTile(
                    leading: const Icon(Icons.key_rounded),
                    title: const Text('Change Password'),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () => {},
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  ListTile(
                    leading: const Icon(CupertinoIcons.phone),
                    title: const Text('Change Contact Number'),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () => {},
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  ListTile(
                    leading: const Icon(CupertinoIcons.question_circle),
                    title: const Text('Help'),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () => {},
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  ListTile(
                    leading: const Icon(CupertinoIcons.chat_bubble_2),
                    title: const Text('FAQ\'s'),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                    onTap: () => {},
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.delete_outline_sharp,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'Delete Account',
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.document_scanner_outlined , color: Colors.white,),
        backgroundColor: Colors.grey,
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
    );
  }
}
