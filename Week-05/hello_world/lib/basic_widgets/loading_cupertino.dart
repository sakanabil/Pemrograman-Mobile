import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CupertinoButton(child: const Text("Contoh button"), onPressed: () {}),
        const CupertinoActivityIndicator(),
      ],
    );
  }
}
