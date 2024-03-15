import 'dart:io';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  XFile? imgFile;
  ImagePicker pickerImg = ImagePicker();

  pickImgFromGallery() async {
    imgFile = await pickerImg.pickImage(source: ImageSource.gallery);

    setState(() {
      imgFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 11,
          ),
          InkWell(
            onTap: () {
              if (imgFile != null) {
                pickImgFromGallery();
              }
            },
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.20,
              backgroundColor: Colors.grey,
              backgroundImage:
                  imgFile == null ? null : FileImage(File(imgFile!.path)),
              child: imgFile == null
                  ? const Icon(
                      Icons.add_a_photo,
                      size: 40.0,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
