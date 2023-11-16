import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  DetailPage(this.title, this.description, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.blue), // Mobile call icon
                SizedBox(width: 8.0),
                Text('123-456-7890'), // Replace with the actual phone number
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 8.0),
                Text('5.0 (125 reviews)'), // Replace with your actual rating
              ],
            ),
            SizedBox(height: 16.0),
            Image.asset(
              imagePath,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add logic to handle doctor booking
                // This could navigate to a booking screen or show a booking dialog
                // For now, let's print a message
                print('Booking scheduled with $title');
              },
              child: Text('Schedule Doctor Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
