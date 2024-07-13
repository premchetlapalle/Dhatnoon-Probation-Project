import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontWeight: FontWeight.w600),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Navigate back
        ),
      ),
      body: ListView(
        children: [
          // User profile section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 45.0,
                  child: Text('A',style: TextStyle(fontSize: 40),),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Akash Kumar'),
                    Text('9876543210'),
                    Text('akash9809@gmail.com'),
                  ],
                ),
              ],
            ),
          ),

          // Settings list
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('Change Mail'),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () => {},
          ),
          Divider(color: Colors.black ,height: 1,),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Change Password'),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () => {},
          ),
          Divider(color: Colors.black ,height: 1,),
          ListTile(

            leading: Icon(Icons.phone),
            title: Text('Change Contact Number'),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () => {},
          ),
          Divider(color: Colors.black ,height: 1,),
          ListTile(
            leading: Icon(Icons.question_mark_outlined),
            title: Text('Help'),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () => {},
          ),
          Divider(color: Colors.black ,height: 1,),
          ListTile(
            leading: Icon(Icons.question_answer_outlined),
            title: Text('FAQ\'s'),
            trailing: Icon(Icons.arrow_forward_outlined),
            onTap: () => {},
          ),
          Divider(color: Colors.black ,height: 1,),
          ListTile(
            leading: Icon(Icons.delete_outline_sharp ,color: Colors.red,),
            title: Text('Delete Account' ,style: TextStyle(color: Colors.red),),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
