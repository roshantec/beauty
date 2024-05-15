import 'package:beauty/screens/Landing.dart';
import 'package:flutter/material.dart';

class aurora extends StatelessWidget {
  const aurora({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              'AURORA',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            ClipOval(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg',
                height: 150,
              ), // Replace with your image URL
            ),
            SizedBox(height: 24),
            Text(
              'Explore an unrivaled selection of makeup, skincare, hair, fragrance & more from classic & emerging brands',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 24), // Add some spacing
            ElevatedButton(
              onPressed: () {
                // Navigate to another page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(
                    255,
                    117,
                    172,
                    217)), // Change the button's background color
              ),
              child: Text('Go to Second Page',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ],
        ),
      ),
    );
  }
}
