import 'package:flutter/material.dart';
import 'package:trogon/utils/constants/colors.dart';
import 'package:trogon/utils/device/device_util.dart';

class CAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CAppbar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.centerTitle = false});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Card(
        color: CColors.primaryColor,
        elevation: 1,
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: centerTitle,
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.0),
            child: Icon(
              Icons.school,
              size: 52,
            ),
          ),
          title: title,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(CDeviceUtils.getAppBarHeight() + 10);
}
