import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtils {
  static Future<bool> displayDialogOKCallBack(
      BuildContext context, String title, String message, String sim, String nao) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title,),
          content:  Text(message),          
          actions: <Widget>[
             FlatButton(
              child:  Text(nao),
              onPressed: () {
                Navigator.of(context).pop(true);
                // true here means you clicked ok
              },
            ),
            FlatButton(
              child: Text(sim),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            )
          ],
        );
      },
    );
  }
}