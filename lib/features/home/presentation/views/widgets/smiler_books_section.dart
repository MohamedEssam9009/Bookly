import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'smiler_books_list_view.dart';

class SmilerBooksSection extends StatelessWidget {
  const SmilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16.0),
        const SmilerBooksListView(),
      ],
    );
  }
}
