import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final String title;
  const Button({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      tileColor: Theme.of(context).cardTheme.color,
      textColor: Theme.of(context).iconTheme.color,
      iconColor: Theme.of(context).iconTheme.color,
      leading: Icon(icon, color: Theme.of(context).iconTheme.color),
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).iconTheme.color),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
