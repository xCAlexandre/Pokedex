import 'package:flutter/material.dart';

class pokeListItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final bool visibility;

  const pokeListItem({
    required this.name,
    required this.imageUrl,
    this.visibility = true,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibility,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Color.fromRGBO(26, 167, 211, 1),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.55),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
                width: 50,
              )),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bulbasaur',
                            style: TextStyle(
                              fontFamily: 'Roboto Mono',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '#1',
                            style: TextStyle(
                                fontFamily: 'Roboto Mono',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey[400]),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 15),child: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  SizedBox(height: 4),
                  Divider(
                    thickness: 1,
                  )
                ])),
          ),
        ],
      ),
    );
  }
}
