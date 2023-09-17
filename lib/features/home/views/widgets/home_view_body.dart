import 'package:flutter/material.dart';
import 'package:flutter_booky_1/features/home/views/widgets/custom_app_bar.dart';

class HOmeViewBody extends StatelessWidget {
  const HOmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBAr(),
      ],
    );
  }
}
