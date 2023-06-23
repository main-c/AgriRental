import 'package:flutter/material.dart';

import '../../models/engin.dart';

class EnginWidget extends StatelessWidget {
  final Engin engin;

  EnginWidget({required this.engin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridTile(
        child: Image.network(
          engin.images[0], // Affiche la première image de l'engin
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text(
            engin.name,
            textAlign: TextAlign.center,
          ),
          subtitle: Text(
            engin.status,
            textAlign: TextAlign.center,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${engin.price} \$',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 4.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18.0,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    '${engin.rate}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
