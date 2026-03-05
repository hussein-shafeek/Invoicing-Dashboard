import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/active_drawer_item.dart';
import 'package:invoicing_dashboard/models/drawer_item_model.dart';
import 'package:invoicing_dashboard/widgets/in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: isActive
          ? ActiveDrawerItem(
              key: const ValueKey('active'),
              drawerItemModel: drawerItemModel,
            )
          : InActiveDrawerItem(
              key: const ValueKey('inactive'),
              drawerItemModel: drawerItemModel,
            ),
    );
  }
}
