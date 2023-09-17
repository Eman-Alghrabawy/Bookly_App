import 'package:flutter/material.dart';
import 'package:flutter_booky_1/core/utils/styles.dart';
import 'package:flutter_booky_1/features/home/views/widgets/best_seller_list_view.dart';
import 'package:flutter_booky_1/features/home/views/widgets/custom_app_bar.dart';
import 'package:flutter_booky_1/features/home/views/widgets/featured_list_view.dart';

class HOmeViewBody extends StatelessWidget {
  const HOmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomAppBAr(),
            ),
            const FeaturedBooksListView(),
            const SizedBox(height: 50),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best seller',
                  style: Styles.textStyle18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
