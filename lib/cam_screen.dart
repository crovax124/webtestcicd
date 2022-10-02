import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CamScreen extends StatelessWidget {
   const CamScreen({required Key key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              key: const Key('HomeButton'),
              onPressed: () => Navigator.of(context).popUntil(ModalRoute.withName('/')),
              icon: const Icon(Icons.home)),
          IconButton(
              key: const Key('CameraButton'),
              onPressed: () => Navigator.of(context).pushNamed('/cam-screen'),
              icon: const Icon(Icons.camera_alt))
        ],
        title: Text(title),
      ),

      body: Stack(
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                    'Cam Screen'
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
