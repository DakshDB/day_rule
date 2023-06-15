import 'package:flutter/material.dart';

class SettingGroupCard extends StatefulWidget {
  final String title;
  final List<Widget> children;

  const SettingGroupCard({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  State<SettingGroupCard> createState() => _SettingGroupCardState();
}

class _SettingGroupCardState extends State<SettingGroupCard> {
  List<Widget> children = [];

  @override
  void initState() {
    super.initState();
    getChildren();
  }

  getChildren() {
    // Append sized box and divider to each child except the last one
    for (int i = 0; i < widget.children.length; i++) {
      if (i == widget.children.length - 1) {
        children.add(Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
            child: widget.children[i]));
      } else {
        children.add(Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
            child: widget.children[i]));
        children.add(const Divider(
          color: Colors.grey,
          height: 0,
          indent: 0,
          thickness: 0.2,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 4,
          color: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            // Add children here
            children: children,
          ),
        ),
      ],
    );
  }
}
