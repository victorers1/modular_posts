import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Seja bem-vindo(a)',
            ),
            RaisedButton(
              onPressed: () {
                print('Entrou');
                Modular.to.pushNamed('/tabs');
              },
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
