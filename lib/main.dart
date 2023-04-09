import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shashi_portfolio/responsiveLayout.dart';
import 'package:shashi_portfolio/styles.dart'; 


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Widget> myLinks() => [
        bottomButtonsWidget('Github', 'https://github.com/Shashi7507'),
        SizedBox(
          width: 10,
        ),
       
        bottomButtonsWidget(
            'Linkedin', 'https://www.linkedin.com/in/shashikant-khetmalis-66b25b95/'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget('Twitter', 'https://twitter.com/shashi_0'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget(
            'Facebook', 'https://www.facebook.com/shashyaaaa/'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget(
            'Instagram', 'https://www.instagram.com/shashi_2.0.0/'),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: ResponsiveLayout.isLargeScreen(context)
                                    ? 200
                                    : 100,
                                width: ResponsiveLayout.isLargeScreen(context)
                                    ? 200
                                    : 100,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/my_image.jpg'),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Hello',
                                      style: titleTextStyle.copyWith(
                                          fontSize:
                                              ResponsiveLayout.isLargeScreen(
                                                      context)
                                                  ? 28
                                                  : 22),
                                    ),
                                    Text(
                                      'I\'m Shashikant Khetmalis',
                                      style: titleNameStyle.copyWith(
                                          fontSize:
                                              ResponsiveLayout.isLargeScreen(
                                                      context)
                                                  ? 24
                                                  : 18),
                                    ),
                                    Text(
                                      'Computer Engineer and Full Stack Developer',
                                      style: subHeadingTextStyle.copyWith(
                                          fontSize:
                                              ResponsiveLayout.isLargeScreen(
                                                      context)
                                                  ? 18
                                                  : 12),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    FlatButton(
                                        onPressed: () => {
                                              html.window.open(
                                                  'https://drive.google.com/file/d/13Mb8_buKA3JHNHgDqDmXaStxnJ-2A6ei/view?usp=sharing',
                                                  'Resume')
                                            },
                                        color: Colors.blue,
                                        child: Text(
                                          'Resume',
                                          style: linksButtonStyle.copyWith(
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Wrap(
                            children: myLinks(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Made with ❤️ in Flutter',
                        style: bottomFooterTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        'By Shashikant',
                        style: bottomFooterTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomButtonsWidget(String text, String url) {
  return InkWell(
    onTap: () => {html.window.open(url, text)},
    child: Text(
      text,
      style: linksButtonStyle,
    ),
  );
}
