import 'package:flutter/material.dart';

class BannerOne extends StatelessWidget {
  const BannerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.6,
              filterQuality: FilterQuality.high,
              image: AssetImage("assets/logo.png")
          )
      ),
    );
  }
}