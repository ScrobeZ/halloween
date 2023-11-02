import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final String screenName;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon,
      required this.screenName});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
    screenName: 'button_screen',
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'un contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card,
    screenName: 'card_screen',
  )
];
