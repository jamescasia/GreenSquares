import 'package:flutter/material.dart'; 

// The Square Class
class Squares {
  int percentToMax;
  int date; 
  Squares(int percentToMax,  int date) {
    this.percentToMax = percentToMax;
    this.date = date; 
  }
}

class GreenSquares extends StatefulWidget {
 final List<Squares> squareList;
 final int month;
 final Color squareColor ;

  GreenSquares({Key key, @required this.squareList, @required this.month,   this.squareColor})
      : super(key: key);

  

  @override
  _GreenSquaresState createState() =>new _GreenSquaresState(squareList: this.squareList, month:this.month, squareColor: this.squareColor );
}

class _GreenSquaresState extends State<GreenSquares> {
  final List<Squares> squareList;
  final Color squareColor ;
  final int month;

  _GreenSquaresState(
      {Key key, @required this.squareList , @required this.month, @required this.squareColor});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 5),
              child: Container( 
                  height: 100,
                  width: 100,
                  child:
                   GridView.count(
                    crossAxisCount: 5,
                    children:  
                    
                    List.generate(squareList.length-1, (index) {
                      // index += 1;
                      int work = squareList[index].percentToMax;
                      List <String> mm = ["Jan", "Feb","Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" ];
                      var mp = mm[month-1];
                      var dt = index+1;
                      return Tooltip(
                          message: "$work actions on $mp $dt",
                          child: Padding(
                              padding: EdgeInsets.all(2),
                              child:  Container(
                                    // padding: EdgeInsets.all(10),
                                    height: 2,
                                    width: 2,
                                    constraints:BoxConstraints.expand(width: 2, height: 2),
                                    color: Colors.grey[200],
                                    child: Opacity(
                                      
                                      // opacity: 1.0,
                                      opacity: ( squareList[index].percentToMax)/6.0,
                                      child: Container( 

                                        // height: 2,
                                        // width: 2,
                                        color: squareColor,
                                      ),
                                    )
                                    // color: Colors.lightGreen[ (squareList[index].percentToMax==0) ? 50:(squareList[index].percentToMax>=5) ? (squareList[index].percentToMax+1)*100:(squareList[index].percentToMax)*100],
                                  )));
                    }
                    
                    ),
                  ))),
        ]);
  }
}
