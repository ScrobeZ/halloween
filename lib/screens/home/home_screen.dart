import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halloween/config/menu/menu_items.dart';
import 'package:halloween/presentation/widgets/slideMenu/slide_menu.dart';

class HomeScreen extends StatelessWidget {
  static const screenName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Menu de Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) => _ListTileMenuItems(
        menuItem: appMenuItems[index],
      ),
    );
  }
}

class _ListTileMenuItems extends StatelessWidget {
  const _ListTileMenuItems({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(menuItem.icon),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subTitle),
        trailing: const Icon(Icons.navigate_next),
        onTap: () {
          context.push(menuItem.link);
        },
      ),
    );
  }
}
