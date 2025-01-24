import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const Book({
    super.key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18.0, // Slightly larger font size
                  fontWeight: FontWeight.bold, // Bold font weight for emphasis
                  color: Colors.blueGrey, // A subtle blue-grey color
                ),
              ),
            ),
            const SizedBox(height: 2.0), // Reduced height
            Center(
              child: Text(
                author,
                style: const TextStyle(
                    fontSize: 16.0, // Reduced font size
                    fontStyle: FontStyle.italic, // Italic style
                    color: Colors.black87),
              ),
            ),
            const SizedBox(height: 0.0), // Reduced height
            Center(
              child: Container(
                // Add explicit margin/padding control
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: Image.asset(
                  coverImagePath,
                  height: 220.0,
                  fit: BoxFit.cover, // Ensure the image scales properly
                ),
              ),
            ),
            const SizedBox(height: 1.0), // Reduced height
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rs.$price',
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print('Button pressed for $title');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 2.0,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Add to cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
