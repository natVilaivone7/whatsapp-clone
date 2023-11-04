
import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

class CustomIconBottom extends StatelessWidget {
  const CustomIconBottom({
    super.key,
    required this.Onpresed,
    required this.icon,
  });
  final VoidCallback Onpresed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashRadius: 22,
        splashColor: context.theme.greyColor,
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          size: 28,
        ));
  }
}
