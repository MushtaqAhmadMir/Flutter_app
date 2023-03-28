import 'package:flutter/material.dart';

void main(List<String> args) {
  
}
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color:Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.menu),
          Text('HomeScreen'),
          Icon(Icons.carpenter)
    
        ],
      ),
    );
  }
}