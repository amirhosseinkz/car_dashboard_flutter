



import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class CarViewWidget extends StatelessWidget {
   CarViewWidget({Key? key}) : super(key: key);

  List<ImageProvider> imageList = [
  const AssetImage('assets/1.png'),
  const AssetImage('assets/2.png'),
  const AssetImage('assets/3.png'),
  const AssetImage('assets/4.png'),
  const AssetImage('assets/5.png'),
  const AssetImage('assets/6.png'),
  const AssetImage('assets/7.png'),
  const AssetImage('assets/8.png'),
  const AssetImage('assets/9.png'),
  const AssetImage('assets/10.png'),
  const AssetImage('assets/11.png'),
  const AssetImage('assets/12.png'),
  const AssetImage('assets/13.png'),
  const AssetImage('assets/14.png'),
  const AssetImage('assets/15.png'),
  const AssetImage('assets/16.png'),
  const AssetImage('assets/17.png'),
  const AssetImage('assets/18.png'),
  const AssetImage('assets/19.png'),
  const AssetImage('assets/20.png'),
  const AssetImage('assets/21.png'),
  const AssetImage('assets/22.png'),
  const AssetImage('assets/23.png'),
  const AssetImage('assets/24.png'),
  const AssetImage('assets/25.png'),
  const AssetImage('assets/26.png'),
  const AssetImage('assets/27.png'),
  const AssetImage('assets/28.png'),
  const AssetImage('assets/29.png'),
  const AssetImage('assets/30.png'),
  const AssetImage('assets/31.png'),
  const AssetImage('assets/32.png'),
  const AssetImage('assets/33.png'),
  const AssetImage('assets/34.png'),
  const AssetImage('assets/35.png'),
  const AssetImage('assets/36.png'),
  const AssetImage('assets/37.png'),
  const AssetImage('assets/38.png'),
  const AssetImage('assets/39.png'),
  const AssetImage('assets/40.png'),
  const AssetImage('assets/41.png'),
  const AssetImage('assets/42.png'),
  const AssetImage('assets/43.png'),
  const AssetImage('assets/44.png'),
  const AssetImage('assets/45.png'),
  const AssetImage('assets/46.png'),
  const AssetImage('assets/47.png'),
  const AssetImage('assets/48.png'),
  const AssetImage('assets/49.png'),
  const AssetImage('assets/50.png'),
  const AssetImage('assets/51.png'),
  const AssetImage('assets/52.png'),
  ];






  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.white10,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("2016 Mercedes Benz" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Row(
                children: const [
                  Icon(Icons.share , color: Colors.white),
                  SizedBox(width: 10,),
                  Text("Share" , style: TextStyle(color: Colors.white),),
                ],
              )
            ]
          ),

          ImageView360(
            key: UniqueKey(),
            imageList: imageList,
            rotationCount: 2,                                           //Optional
            rotationDirection: RotationDirection.anticlockwise,         //Optional
            frameChangeDuration: Duration(milliseconds: 50),            //Optional
            swipeSensitivity: 2,                                        //Optional
            allowSwipeToRotate: true,                                   //Optional
            onImageIndexChanged: (currentImageIndex) {                  //Optional
              print("currentImageIndex: $currentImageIndex");
            },
          ),
        ],
      )

    );
  }
}
