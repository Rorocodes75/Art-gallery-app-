import 'package:flutter/material.dart';
extension Nav on BuildContext{
pushAndRemove(Widget target){
     Navigator.pushAndRemoveUntil(this, MaterialPageRoute(builder: (context) => target,),(route)=>false);
   }
   push(Widget target){
    Navigator.push(
      this,
     MaterialPageRoute(builder: (context) => target),
    );
  }
}
