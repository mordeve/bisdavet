import 'package:flutter/material.dart';

class DrawerToolbar extends StatelessWidget {
  const DrawerToolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.menu,
        color: Color(0xFF5d21d2),
      ),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
