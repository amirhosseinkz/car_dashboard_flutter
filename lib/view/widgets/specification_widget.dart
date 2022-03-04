


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpecificationWidget extends StatelessWidget {
  const SpecificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white10,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Specification" , style: TextStyle(color: Colors.white),),
                  Row(
                    children: const [
                      Text("edit" , style: TextStyle(color: Colors.white),),
                      SizedBox(width: 10,),
                      Icon(Icons.edit , color: Colors.white),

                    ],
                  )
                ]
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                      flex: 1,
                      child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Year" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                      SizedBox(height: 10,),
                      Text("2016" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white),),
                    ],
                  )),
                  Expanded(
                      flex: 1,
                      child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Style" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                      SizedBox(height: 10,),
                      Text("526 AMG" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white),),
                    ],
                  )),
                  Expanded(
                      flex: 1,
                      child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Fuel Type" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                      SizedBox(height: 10,),
                      Text("Petrol" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white),),
                    ],
                  )),

                ]
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Side Drive" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                        SizedBox(height: 10,),
                        Text("Right Hand Drive" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),

                  Expanded(
                      flex: 1,
                      child:Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text("Exterior Color" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                           SizedBox(height: 10,),
                           Text("Frost While" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white),),
                         ],
                       ),
                       SizedBox(width: 10,),
                       Container(
                         width: 30,
                         height: 30,
                         color: Colors.white
                       )
                     ],
                   )),

                  Expanded(
                      flex: 1,
                      child:Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text("Interior Color" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                           SizedBox(height: 10,),
                           Text("Gray" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white),),
                         ],
                       ),
                       SizedBox(width: 10,),
                       Container(
                         width: 30,
                         height: 30,

                         decoration: BoxDecoration(
                           color: Colors.grey,
                           border: Border.all(color: Colors.white),
                         ),
                       )
                     ],
                   )),

                ]
            ),
          ],
        )

    );
  }
}
