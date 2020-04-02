import 'package:flutter/material.dart';

import 'main.dart';

class paginaPadrao extends StatelessWidget {
  String _textoPadrao;
  String _textoBtnPadrao;
  String _imagePagina;
  String _textoDescricao;

  paginaPadrao(this._textoPadrao, this._textoBtnPadrao, this._imagePagina,
      this._textoDescricao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_textoPadrao,
              style: TextStyle(color: Colors.black, fontSize: 16)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    _imagePagina,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: Text(
                        _textoDescricao,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
