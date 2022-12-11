import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 20),
          Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/186/186320.png"),
                          ),
                        ),
                        Text("HTML", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/5968/5968242.png"),
                          ),
                        ),
                        Text("CSS",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/128/919/919854.png"),
                          ),
                        ),
                        Text("Java",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  
                  
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/5611/5611084.png"),
                          ),
                        ),
                        Text("Premiere Pro",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),


                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/128/721/721671.png"),
                          ),
                        ),
                        Text("JavaScript",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),


                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/919/919852.png",
                            ),
                          ),
                        ),
                        Text("Python",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/3940/3940056.png"),
                          ),
                        ),
                        Text("Graphic Design",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  
                  
                ],
              )),
          buildAbout(user),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/732/732221.png"))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 220,
                    padding: EdgeInsets.all(8),
                    child: RichText(
                      text: TextSpan(
                        text: 'Interned at Microsoft as ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Program Associate',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )),
              ],
            ),
          ),


        SizedBox(
         height: 10,
        ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/160_Hackerrank_logo_logos-512.png"))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 220,
                    padding: EdgeInsets.all(8),
                    child: RichText(
                      text: TextSpan(
                        text: 'First Prize ',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        
                        children: <TextSpan>[
                          TextSpan(
                              text: 'at Hackerrank winter Challenge',
                              style: DefaultTextStyle.of(context).style,
                              ),
                        ],
                      ),
                    )),
              ],
            ),
          ),




          
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}

class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.email,
    required this.about,
    required this.isDarkMode,
  });
}

class UserPreferences {
  static const myUser = User(
    imagePath:
        'https://th.bing.com/th/id/OIP.oatde3RyfBJOKVTsgQY1ewDhEs?pid=ImgDet&rs=1',
    name: 'Stephen Strange',
    email: 'stephen.abs@gmail.com',
    about:
        'Senior programmer with a history of developing 8+ industry-leading teams. Also done Internship in ABC software development and services.',
    isDarkMode: false,
  );
}

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    ],
  );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          onPrimary: Colors.white,
          backgroundColor: Color.fromARGB(255, 71, 42, 108),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(text),
        onPressed: onClicked,
      );
}

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '1200', 'Ace Points'),
          buildDivider(),
          buildButton(context, '7', 'Courses Completed'),
          
        ],
      );
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
