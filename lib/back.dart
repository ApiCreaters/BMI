import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackDrop extends StatelessWidget{
  ab(){
    return SizedBox(
      height: 20,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/imasds.jpg')
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                         color: Colors.white24
                        ),
                      ),
                    ),
                  ),
                ),
                ab(),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white30
                        ),
                      ),
                    ),
                  ),
                ),
                ab(),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white38
                        ),
                      ),
                    ),
                  ),
                ),
                ab(),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white54
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8.0,sigmaY: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white24
                        ),
                      ),
                    ),
                  ),
                ),
                ab(),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 16.0,sigmaY: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white24
                        ),
                      ),
                    ),
                  ),
                ),
                ab(),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 32.0,sigmaY: 32.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white24
                        ),
                      ),
                    ),
                  ),
                ),
                ab(),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white24
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }

}