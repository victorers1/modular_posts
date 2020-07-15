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
                          title: Text('Nome de usuário'),
                          subtitle: Text(userCtrl.user.username),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.streetview),
                          title: Text('Rua'),
                          subtitle: Text(userCtrl.user.address.street),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.pin_drop),
                          title: Text('Cidade'),
                          subtitle: Text(userCtrl.user.address.city),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_city),
                          title: Text('CEP'),
                          subtitle: Text(userCtrl.user.address.city),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Telefone'),
                          subtitle: Text(userCtrl.user.phone),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.web),
                          title: Text('Site'),
                          subtitle: Text(userCtrl.user.website),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.business_center),
                          title: Text('Compania'),
                          subtitle: Text(userCtrl.user.company.name),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.insert_emoticon),
                          title: Text('Bio'),
                          subtitle: Text(userCtrl.user.company.catchPhrase),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Icon(Icons.power_settings_new),
                          title: Text('Sair'),
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
