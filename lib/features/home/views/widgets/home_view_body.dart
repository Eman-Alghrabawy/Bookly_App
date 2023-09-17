import 'package:flutter/material.dart';
import 'package:flutter_booky_1/features/home/views/widgets/custom_app_bar.dart';
import 'package:flutter_booky_1/features/home/views/widgets/custom_list_view_item.dart';

class HOmeViewBody extends StatelessWidget {
  const HOmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBAr(), FeaturedBooksListView()],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}
