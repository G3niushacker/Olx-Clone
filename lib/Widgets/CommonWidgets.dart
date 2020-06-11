import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonWidgets{

  Widget dropDownCat(String value, changed){
    return Padding(
      padding: const EdgeInsets.only(right:10.0,left: 10.0,top: 10.0),
      child: DropdownButtonFormField(
        value: value,
        hint: Text("Category"),
        onChanged: (val){
          changed = val;
        },
        items: <String>["Car", "Mobile", "Motercycle","Bicycle"]
            .map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                child: Text(value),
                value: value,
              );
        }),
      ),
    );
  }

}