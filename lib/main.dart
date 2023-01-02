import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(
    const MyApp(),
  );

  doWhenWindowReady(() {
    const initialSize = Size(360, 720);
    const minSize = Size(360, 720);
    const maxSize = Size(360, 720);
    appWindow.maxSize = maxSize;
    appWindow.minSize = minSize;
    appWindow.size = initialSize; //default size
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Container(
            height: 300,
            width: double.infinity,
            color: Colors.teal,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://mir-s3-cdn-cf.behance.net/user/230/ac433b1152151597.631fdf518406b.jpg'),
                ),
                Container(
                  height: 20,
                ),
                const Text(
                  'Dilshad Ahmad',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 5,
                ),
                const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.white70,
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 1,
                  color: Colors.white70,
                ),
                Container(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  height: 40,
                  width: 280,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.fromString('phone'),
                        color: Colors.teal,
                      ),
                      Container(width: 15),
                      const Text(
                        '+92 310 4075697',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  height: 40,
                  width: 280,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.fromString('email'),
                        color: Colors.teal,
                      ),
                      Container(width: 15),
                      const Text(
                        'dilshad.ie@outlook.com',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
