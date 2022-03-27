import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget page;

  const DashboardButton({required this.title, required this.subtitle, required this.page});
  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => page),
                      ),
      child: Expanded(
        child: Card(
          elevation: 5,
          color: Color.fromRGBO(242, 190, 34, 1),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 50,
              minWidth: 100,
              maxHeight: 110,
              maxWidth: 162,
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: title,
                    ),
                  Flexible(
                      child: subtitle,
                         ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
