import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dhatnoon_probation_project/Screens/setting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
    'Apple',
    'Apple2',
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = List.from(items);
  }

  void _filterItems(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredItems = List.from(items);
      });
      return;
    }

    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
      final unmatchedItems = items
          .where((item) => !item.toLowerCase().contains(query.toLowerCase()))
          .toList();
      filteredItems.addAll(unmatchedItems);
    });
  }

  void onSelectedOption(String value, BuildContext context) {
    switch (value) {
      case 'Refresh':
      // Add your refresh logic here
        break;
      case 'Settings':
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SettingsScreen()),
        );
        break;
      case 'Log Out':
      // Add your log out logic here
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Logo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) => onSelectedOption(value, context),
            offset: const Offset(0.0, 56.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'Refresh',
                child: Row(
                  children: [
                    Icon(CupertinoIcons.arrow_2_circlepath),
                    SizedBox(width: 10),
                    Text('Refresh'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'Settings',
                child: Row(
                  children: [
                    Icon(CupertinoIcons.gear_solid),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'Log Out',
                child: Row(
                  children: [
                    Icon(Icons.logout_outlined, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Log Out', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 186, 186, 186),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                          hintText: 'Search name here...',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 121, 121, 121),
                          ),
                          border: InputBorder.none,
                        ),
                        onChanged: (value) => _filterItems(value),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 121, 121, 121),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
