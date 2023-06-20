import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context,
    {String? title, bool isBackEnabled = true}) {
  return AppBar(
    elevation: 10,
shadowColor: Colors.grey[700],
    centerTitle: true,
    backgroundColor: Colors.grey[700],
    leading: isBackEnabled
        ? IconButton(
      icon: const Icon(
        Icons.chevron_left_outlined,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    )
        : Container(),
    title: title == null
        ? const Text(
      'Enhanced You',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
    )
        : Text(
      title,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontSize: 24, color: Colors.white),
    ),
  );
}
