import 'package:flutter/material.dart';
import 'package:shareskills_login/Homescreen/home.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> category = <String>[
    'Photography',
    'Sketching',
    'Craft',
    'Dancing',
    'Singing'
  ];

  final List<String> image = <String>[
    'photo.png',
    'sketch.png',
    'craft.jpg',
    'dance.png',
    'sing.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('Back button pressed!');
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SocialMedia();
                      },
                    ),
                  );
                },
                title: Text(category[index]),
                tileColor: Colors.white30,
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assests/images/${image[index]}',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
