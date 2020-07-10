import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/tabs.dart';
import 'package:modular_posts/pages/feed/module.dart';
import 'package:modular_posts/pages/profile/module.dart';
import 'package:modular_posts/ui/post.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  // final tabsController = Modular.get<TabController>(); // TODO: use modular
  final tabsController = TabsController();

  Future<List<Post>> loadFeed() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: loadFeed(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
              case ConnectionState.none:
                return Container(
                  color: Colors.white,
                  child: Center(child: CircularProgressIndicator()),
                );
                break;
              default:
                if (snapshot.hasError) {
                  // TODO: perguntar a Matthaus por que usar StreamBuilder
                } else {
                  return Observer(builder: (_) {
                    return IndexedStack(
                      index: tabsController.tab,
                      children: <Widget>[
                        RouterOutlet(module: FeedModule()),
                        RouterOutlet(module: ProfileModule()),
                      ],
                    );
                  });
                }
            }
          }),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
            onTap: (index) {
              tabsController.setTab(index);
            },
            currentIndex: tabsController.tab,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Início'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('Perfil'),
              )
            ]);
      }),
    );
  }
}
