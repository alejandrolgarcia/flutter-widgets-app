
import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),

      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);

      }
    );
  }
}

class _CustomListTile extends StatelessWidget {

  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: color.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: color.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){
        // Navegar a otras pantallas
      },
    );

  }
}