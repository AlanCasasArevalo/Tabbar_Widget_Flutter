import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Icons.contacts,
            size: 250,
            color: Colors.indigoAccent,
          ),
          Text('Pagina Contactos')
        ],
      ),
    );
  }
}
