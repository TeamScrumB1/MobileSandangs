import 'package:flutter/material.dart';
import 'package:sandangs/constant.dart';

class DetailProject extends StatefulWidget {
  const DetailProject({Key? key}) : super(key: key);

  @override
  State<DetailProject> createState() => _DetailProjectState();
}

class _DetailProjectState extends State<DetailProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: secondaryColor,
          onPressed: (){
            Navigator.pop(context);
            },
        ),
        title: Text(
          "Pre Order",
          style: tittleDark,
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
