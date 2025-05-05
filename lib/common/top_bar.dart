

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [Icon(Icons.bakery_dining), Icon(Icons.mail)],
      leading:Icon(Icons.car_crash) ,
      

    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}