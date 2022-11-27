import 'dart:io';

import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  String? image;

  ImagePreview({Key? key, this.image}) : super(key: key);

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: [IconButton(onPressed: (){

        }, icon: const Icon(Icons.download_rounded))],
      ),
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Material(
            child:

            Image.network(
                widget.image!,
                fit: BoxFit.contain,
              ),




          ),
        ),
      ),
    );
  }
}
