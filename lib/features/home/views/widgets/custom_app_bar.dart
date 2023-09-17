import 'package:flutter/material.dart';
import 'package:flutter_booky_1/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 80,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ))
        ],
      ),
    );
  }
}
