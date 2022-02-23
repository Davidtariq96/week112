import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  final String heading1;
  final String heading2;
  const TableView({
    Key? key,
    required this.heading1,
    required this.heading2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading1,
              style: const TextStyle(color: Colors.white, fontSize: 15.0)),
          Text(
            heading2,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
