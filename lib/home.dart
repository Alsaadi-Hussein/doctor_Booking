import 'package:flutter/material.dart';
import 'detail_page.dart'; // Assuming you'll create a detail_page.dart file for the detail page

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Handle user icon click (e.g., navigate to user profile)
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search icon click (e.g., show search functionality)
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Replace the following Card widgets with your actual content
            _buildCard(context, 'Dr.Ali', 'Dentist', 'images/doctor3.jpg'),
            _buildCard(context, 'Dr.Fatema', 'Surgeon', 'images/doctor2.jpg'),
            _buildCard(context, 'Dr.Ahmed', 'Rheumatologist', 'images/doctor4.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, String description, String imagePath) {
    return Card(
      elevation: 5.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        onTap: () {
          // Navigate to the detail page on card click
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(title, description, imagePath),
            ),
          );
        },
        title: Text(title),
        subtitle: Text(description),
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
