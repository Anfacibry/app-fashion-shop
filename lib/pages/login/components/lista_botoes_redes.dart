import 'package:flutter/material.dart';

import 'botao_redes_sociais_login.dart';

class ListaBotoesRedes extends StatelessWidget {
  final void Function() funFacebook;
  final void Function() funGoogle;
  final void Function() funX;
  final bool isFace;
  final bool isGoogle;
  final bool isX;
  final double largura;
  const ListaBotoesRedes({
    this.isGoogle = false,
    this.isX = false,
    this.isFace = false,
    required this.funFacebook,
    required this.funGoogle,
    required this.funX,
    required this.largura,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        isFace
            ? const SizedBox(
                width: 50,
              )
            : BotaoRedesSociaisLogin(
                fun: funFacebook,
                largura: largura,
                imagem: "assets/image/facebook.png",
              ),
        isGoogle
            ? const SizedBox(
                width: 50,
              )
            : BotaoRedesSociaisLogin(
                fun: funGoogle,
                largura: largura,
                imagem: "assets/image/google.png",
              ),
        isX
            ? const SizedBox(
                width: 50,
              )
            : BotaoRedesSociaisLogin(
                fun: funX,
                largura: largura,
                imagem: "assets/image/x.png",
              ),
      ],
    );
  }
}
