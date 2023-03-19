import 'dart:convert';


import 'package:flutter/cupertino.dart';

import 'Models/rental_model.dart';
import 'app_globals.dart';

class LocalJsonServices {
  Future<List<RentalModel>> getAllData(
      BuildContext context, String searchQuery) async {
    var myData = <RentalModel>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString(localJson);
    var jsonData = json.decode(data);
    var jsonSchedule = jsonData[rentalData];

    for (var jsonMatch in jsonSchedule) {
      RentalModel match = RentalModel.fromJSON(jsonMatch);
      myData.add(match);
      if (searchQuery.isNotEmpty) {
        myData = myData
            .where((item) => item.name.toLowerCase().contains(searchQuery))
            .toList();
      }
    }

    return myData;
  }
}
