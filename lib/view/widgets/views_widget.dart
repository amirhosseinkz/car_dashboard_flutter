



import 'package:flutter/material.dart';

class ViewsWidget extends StatelessWidget {
  const ViewsWidget({Key? key}) : super(key: key);

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
            )
          ],
        )

    );
  }
}
