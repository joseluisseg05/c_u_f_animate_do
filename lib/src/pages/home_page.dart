import 'package:animate_do/animate_do.dart';
import 'package:app_animate_do/src/pages/navegacion_page.dart';
import 'package:app_animate_do/src/pages/twitter_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate_do'),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => TwitterPage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => HomePage()));
            },
          ),
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                context, CupertinoPageRoute(builder: (_) => NavegacionPage()));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticIn(
              delay: Duration(milliseconds: 1100),
              child: Icon(
                Icons.new_releases,
                color: Colors.teal,
                size: 40.0,
              ),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 300),
              child: Text(
                'Titulo',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 800),
              child: Text(
                'Soy un texto pequeño',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            FadeInLeft(
              delay: Duration(milliseconds: 1100),
              child: Container(
                width: 220.0,
                height: 2.0,
                color: Colors.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
