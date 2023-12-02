import 'package:click_solidario/_comum/appcolors.dart';
import 'package:flutter/material.dart';

class TextoSubtituloInicio extends StatelessWidget {
  final String meuTexto;  
  
  const TextoSubtituloInicio(this.meuTexto);

    @override
  Widget build(BuildContext context) {
    final double largura = MediaQuery.of(context).size.width;
    return Container(  
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(3),
      width: largura * .70,
      child: Text(
            meuTexto,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(            
              fontSize: 18,
              color: AppColors.azul,
            ),
          ),
    );
  }
}

class TextoFraseInicio extends StatelessWidget {
  final String meuTexto;  
  
  const TextoFraseInicio(this.meuTexto);

    @override
  Widget build(BuildContext context) {
    final double largura = MediaQuery.of(context).size.width;
    return Container(  
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(right: 25, left: 130),
      width: largura * .60,
      child: Text(
            meuTexto,
            textAlign: TextAlign.end,
            maxLines: 2,
            style: TextStyle(            
              fontSize: 16,
              color: AppColors.azul,
            ),
          ),
    );
  }
}