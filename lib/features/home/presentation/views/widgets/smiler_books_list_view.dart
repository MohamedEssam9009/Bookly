import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SmilerBooksListView extends StatelessWidget {
  const SmilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(imageUrl: 'https://m.media-amazon.com/images/I/71zkPeFMA4L._AC_UF1000,1000_QL80_.jpg'),
          );
        },
      ),
    );
  }
}
