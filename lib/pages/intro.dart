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
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: () {
                Modular.to.pushNamed('/tabs');
              },
              shape: StadiumBorder(),
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
