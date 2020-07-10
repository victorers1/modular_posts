import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_posts/controllers/tabs.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  // final tabsController = Modular.get<TabController>();
  final tabsController = TabsController();

  @override
  void dispose() {
    // tabsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Tabs page'),
      ),
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
