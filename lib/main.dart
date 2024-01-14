import 'package:flutter/material.dart';

void main() {
  runApp(MyContactsApp());
}

class MyContactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactsScreen(),
    );
  }
}


class ContactsScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'John Doe', phoneNumber: '070-123-456'),
    Contact(name: 'Jane Smith', phoneNumber: '070-123-456'),
    Contact(name: 'Bob Johnson', phoneNumber: '070-123-4567'),
    Contact(name: 'John Doe', phoneNumber: '070-123-456'),
    Contact(name: 'Jane Smith', phoneNumber: '070-123-456'),
    Contact(name: 'Bob Johnson', phoneNumber: '070-123-456'),
    Contact(name: 'John Doe', phoneNumber: '070-123-456'),
    Contact(name: 'Jane Smith', phoneNumber: '070-123-456'),
    Contact(name: 'Bob Johnson', phoneNumber: '070-123-456'),
    Contact(name: 'John Doe', phoneNumber: '070-123-456'),
    Contact(name: 'Jane Smith', phoneNumber: '070-123-456'),
    Contact(name: 'Bob Johnson', phoneNumber: '070-123-456'),
    Contact(name: 'John Doe', phoneNumber: '070-123-456'),
    Contact(name: 'Jane Smith', phoneNumber: '070-123-456'),
    Contact(name: 'Bob Johnson', phoneNumber: '070-123-456'),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            leading: Icon(Icons.person),
            onTap: () {
              print('Contact tapped: ${contacts[index].name}');
            }
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

