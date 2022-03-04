



import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class CarViewWidget extends StatelessWidget {
   CarViewWidget({Key? key}) : super(key: key);

  List<ImageProvider> imageList = [
  const AssetImage('assets/car1.png')
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.white10,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("2016 Mercedes Benz" , style: TextStyle(color: Colors.white),),
              Row(
                children: const [
                  Icon(Icons.share , color: Colors.white),
                  SizedBox(width: 10,),
                  Text("Share" , style: TextStyle(color: Colors.white),),
                ],
              )
            ]
          ),
          SizedBox(height: 40,),
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
