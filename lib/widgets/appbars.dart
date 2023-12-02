import 'package:click_solidario/_comum/appcolors.dart';
import 'package:flutter/material.dart';

class AppBarInicio extends StatelessWidget {
  const AppBarInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.azul,
      centerTitle: true,
      title: Text(
        "CLICK SOLIDÁRIO",
        style: TextStyle(            
          fontSize: 35,
          color: AppColors.gelo,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

class AppBarPaginas extends StatelessWidget {
  const AppBarPaginas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}