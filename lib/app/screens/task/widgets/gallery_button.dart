import 'package:flutter/material.dart';

class GalleryButton extends StatelessWidget {
  final String image;
  final String title;
  final int selectedTab;
  const GalleryButton({
    super.key,
    required this.image,
    required this.title,
    required this.selectedTab,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16,fontFamily:'Barlow', color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: selectedTab == 1
                ? Container(
                    height: 2,
                    color: Color(0xFFFFB500),
                    width: MediaQuery.of(context).size.width / 5.5,
                  )
                : null,
          )
        ],
      ),
    );
  }
}