import 'package:flutter/material.dart';
class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({ Key? key }) : super(key: key);

  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
         Profiles(image: "images/spiderman.jpg", name: "Sibi"),
         Profiles(image: "images/batman.jpg", name: "Batman"),
          Profiles(image: "images/kisd.png", name: "Kids"),
         Profiles(image: "images/plus.png", name: "Add"),
        ],
      ), 
    );
  }
}

class Profiles extends StatefulWidget {
    const Profiles({
      super.key,
      required this.image,
      required this.name
      });

      final String image;
      final String name;

    @override
    _ProfilesState createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 50,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),  
                child: Image.asset(widget.image ,fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 5,), 
            Text(widget.name, style: TextStyle(color: Color(0xffa3adbb), fontSize: 8.5, fontFamily: "inter", fontWeight: FontWeight.w600), )
          ],
        ),
      ),
    );
  }
}