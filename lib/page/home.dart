import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.home,
            size: 250,
            color: Colors.amber,
          ),
          Text('Pagina Home')
        ],
      ),
    );
  }
}
