import 'package:flutter/material.dart';
import 'package:flutter_booky_1/features/home/presintation/views/widgets/books_details_section.dart';
import 'package:flutter_booky_1/features/home/presintation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter_booky_1/features/home/presintation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimiliarBooksSection()
                ],
              ),
            ))
      ],
    );
  }
}
