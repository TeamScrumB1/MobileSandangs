import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandangs/constant.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          'Track Order',
          style: tittleDark,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  child: Row(
                    children: [
                      Text(
                        'Order ID : ',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "#1287632",
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Production',
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: secondaryColor,
                          size: 40,
                        ),
                        onTap: (){
                          setState(() {
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tracking',
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: secondaryColor,
                          size: 40,
                        ),
                        onTap: (){
                          setState(() {
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}