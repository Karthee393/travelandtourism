import 'package:traveltourism/component/profile_component.dart';
import 'package:traveltourism/model/user_model.dart';

import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedIn = UserModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedIn = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.13,
            width: size.width * 0.24,
            margin: EdgeInsets.only(top: size.height * 0.03),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: size.width * 0.3,
                  backgroundImage: const NetworkImage(
                      'https://youmeandtrends.com/wp-content/uploads/2015/10/dp_new-profile-dps-for-boys-display-photo2014-06-23_14-15-51_1.jpg'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.06,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.025),
          Text("${loggedIn.firstName} ${loggedIn.secondName}",
              style: const TextStyle(
                fontFamily: "Barlow",
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: size.height * 0.009),
          Text(
            "${loggedIn.email}",
            style: const TextStyle(
              fontFamily: "Barlow",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: size.height * 0.025),
          Container(
            height: size.height * 0.05,
            width: size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width * 0.05),
              color: Colors.red,
            ),
            child: const Center(
              child: Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        profileInfo,
      ],
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.edit,
            color: Colors.black,
            size: size.width * 0.06,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.04),
          header,
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: size.height * 0.03),
              children: [
                ProfileListItem(
                  icon: LineAwesomeIcons.user_shield,
                  text: 'Privacy',
                  tap: () {},
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.cog,
                  text: 'Settings',
                  tap: () {},
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.alternate_sign_out,
                  text: 'Logout',
                  tap: () {
                    logout(context);
                  },
                  hasNavigation: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
