import 'package:flutter/material.dart';
import 'package:midproject/widgets/book.dart';

///BookList Widget
///
///Uses the [Book] Widget to display a list of books.

class BoookList extends StatelessWidget {
  const BoookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ceylon Bookstore"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: ListView(children: [
          Book(
              coverImagePath: "assets/images/rich-dad-poor-dad.jpg",
              title: "Rich Dad Poor Dad",
              author: "Robert T. Kiyosaki",
              price: 1250),
          Book(
              coverImagePath: "assets/images/the-alchemist.jpg",
              title: "The Alchemist",
              author: "Coelho Paulo",
              price: 1000),
          Book(
              coverImagePath: "assets/images/men-are-from-mars.jpg",
              title: "Men are From Mars",
              author: "John Gray",
              price: 1500),
        ]),
      ),
    );
  }
}
