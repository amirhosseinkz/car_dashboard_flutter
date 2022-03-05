



import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'line_chart_widget.dart';

class ViewsWidget extends StatelessWidget {
  const ViewsWidget({Key? key}) : super(key: key);

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Realtime Views" , textAlign: TextAlign.start , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Last 1 Week" , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),

                  Row(
                    children:  [

                      Text("422" , style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Container(
                        width: 35,
                        height: 35,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreen[200]!.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.visibility , color: Colors.lightGreen[600])),
                      ),


                    ],
                  )
                ]
            ),

            LineChart2Widget(

                gradientColors: const [ Color(0xff2e3124) , Color(0xff222222) , Colors.black  ,Colors.transparent ],
                lineColor: [Color(0xff69743f) ],
                bgColor: Colors.transparent,
                fLSpotsList: const [
                  FlSpot(0, 0),
                  FlSpot(1, 55),
                  FlSpot(2, 50),
                  FlSpot(3, 140),
                  FlSpot(4, 150),
                  FlSpot(5, 100),
                  FlSpot(6, 200),

                ],
               )
          ],
        )

    );
  }
}
