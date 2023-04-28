import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Colors.dart';

class Cards extends StatelessWidget {

  String imageUrl;
  String title;
  Cards(this.imageUrl,this.title);

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,0),
        child: Container(
          width: 110,
          height: 120,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2,color: Colors.white30)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('$imageUrl',fit:BoxFit.contain,width: 55,height: 55,),
                    SizedBox(
                      height: 10,
                    ),
                    Text('$title',
                          style: TextStyle(fontFamily: 'Ariel'),
                      textAlign: TextAlign.center,),

                  ],
                ),
              ),
            )),

      ),
    );
  }
}
