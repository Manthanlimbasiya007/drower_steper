import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
   int selectrdstep = 0;
   void nextstep()
   {
     if(selectrdstep<10)
       {
         selectrdstep++;
       }
     notifyListeners();
   }
   void prevstep()
   {
     if(selectrdstep>0)
       {
         selectrdstep--;
       }
     notifyListeners();
   }
}