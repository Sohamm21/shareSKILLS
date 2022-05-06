import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -550,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(
                    'assests/images/venom.jpg',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -470,
            bottom: 0,
            right: 140,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 164, 210, 248),
              radius: 15,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.black,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          child,
        ],
      ),
    );
  }
}
