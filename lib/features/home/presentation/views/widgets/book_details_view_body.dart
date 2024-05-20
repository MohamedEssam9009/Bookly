import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'smiler_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .17),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 43.0),
                Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6.0),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18.0),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37.0),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 50.0)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16.0),
                const SmilerBooksListView(),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
