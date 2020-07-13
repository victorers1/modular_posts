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
        future: userCtrl.getUser(4), // You are user 4
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
                        SizedBox(height: 10),
                        ListTile(
                          leading: Icon(Icons.face),
                          title: Text('Username'),
                          subtitle: Text(userCtrl.user.username),
                        ),
                        ListTile(
                          leading: Icon(Icons.streetview),
                          title: Text('Street'),
                          subtitle: Text(userCtrl.user.address.street),
                        ),
                        ListTile(
                          leading: Icon(Icons.pin_drop),
                          title: Text('City'),
                          subtitle: Text(userCtrl.user.address.city),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_city),
                          title: Text('Zipcode'),
                          subtitle: Text(userCtrl.user.address.city),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                          subtitle: Text(userCtrl.user.phone),
                        ),
                        ListTile(
                          leading: Icon(Icons.web),
                          title: Text('Website'),
                          subtitle: Text(userCtrl.user.website),
                        ),
                        ListTile(
                          leading: Icon(Icons.business_center),
                          title: Text('Company'),
                          subtitle: Text(userCtrl.user.company.name),
                        ),
                        ListTile(
                          leading: Icon(Icons.insert_emoticon),
                          title: Text('Catch phrase'),
                          subtitle: Text(userCtrl.user.company.catchPhrase),
                        ),
                        ListTile(
                          leading: Icon(Icons.power_settings_new),
                          title: Text('Logout'),
                        ),
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
