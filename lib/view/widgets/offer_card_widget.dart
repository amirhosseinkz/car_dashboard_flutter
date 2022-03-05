

import 'package:cars_details_flutter_web/models/offer_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class OfferCardWidget extends StatelessWidget {
  const OfferCardWidget({Key? key, required this.offerModel}) : super(key: key);

  final OfferModel offerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white12),
        color: Colors.green[900]!.withOpacity(0.3)
      ),
      child: Center(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 40,
              width: 40,
              child: Image.asset(offerModel.assetAddress , fit: BoxFit.cover,),
            ),
          ),
          title: Text(offerModel.name , style: TextStyle(color: Colors.white),),
          subtitle: Text(offerModel.address , textAlign: TextAlign.start , style: TextStyle(color: Colors.grey[600]),),
          trailing: Text(offerModel.price, style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
