import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/user_controller.dart';
import 'package:modular_posts/ui/flexible_appbar.dart';

class Profile extends StatelessWidget {
  final userCtrl = Modular.get<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: userCtrl.getUser(1), // You are user 1
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('Perfil'),
                    pinned: true,
                    expandedHeight: 300,
                    flexibleSpace: FlexibleSpaceBar(
                      background: FlexisbleAppBarShimmer(),
                    ),
                  ),
                ],
              );
              break;
            default:
              if (snapshot.hasError)
                return Container(
                  child: Center(
                    child: Text(
                        'Ocorreu um erro ao carregar seu perfil. Tente novamente mais tarde.'),
                  ),
                );
              else
                return CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      title: Text('Perfil'),
                      pinned: true,
                      expandedHeight: 300,
                      flexibleSpace: FlexibleSpaceBar(
                        background: FlexibleAppBar(user: userCtrl.user),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(<Widget>[
                        Container(height: 200, color: Colors.green),
                        Container(height: 200, color: Colors.orange),
                        Container(height: 200, color: Colors.black),
                        Container(height: 200, color: Colors.red),
                        Container(height: 200, color: Colors.orange),
                        Container(height: 200, color: Colors.yellow),
                      ]),
                    ),
                  ],
                );
          }
        },
      ),
    );
  }
}

/**
 * 
 */
