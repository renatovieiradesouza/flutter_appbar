import 'package:flutter/material.dart';
import 'package:flutter_appbar/paginaPadrao.dart';

import 'main.dart';

class DeusPai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return paginaPadrao('Deus Pai','Voltar','assets/imagens/pai.jpg', "Deus Pai é a primeira pessoa da Trindade. "
                    "Ele é o único Deus, com todo poder e todo conhecimento. "
                    "Toda a vontade e o poder de Deus estão expressos no Pai.");
  }
}