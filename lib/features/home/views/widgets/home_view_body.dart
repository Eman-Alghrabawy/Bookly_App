import 'package:flutter/material.dart';
import 'package:flutter_booky_1/core/utils/styles.dart';
import 'package:flutter_booky_1/features/home/views/widgets/custom_app_bar.dart';
import 'package:flutter_booky_1/features/home/views/widgets/featured_list_view.dart';

class HOmeViewBody extends StatelessWidget {
  const HOmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBAr(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            'Best seller',
            style: Styles.tiltleMedium,
          )
        ],
      ),
    );
  }
}
