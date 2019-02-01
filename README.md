Streaks is a grid of boxes that show actions concentration based on time. It is useful if you want to keep track which days you worked on some specific action like some habit or you want to maintain a streak. Famous websites that contain streaks are github, and hackerrank. 

GreenSquares is a custom Flutter widget that let's you implement these streaks. 
![Streaks snapshot from Github profile](https://github.com/wayperwayp/GreenSquares/blob/master/greensquaresimg.PNG)
How to Use:
1. Download Flutter https://flutter.io/docs/get-started/install
2. Download this file and place it in libs
3. Import this file by adding import '/PATH_TO_LOCATION/GreenSquares.dart';
4. Call Constructor and provide the following parameters, List<Squares> squareList, int month, and Color squareColor
    \nExample:
        List <Squares> squareList = [ Squares( int actions (0 to 6 only ) , int date   )]
        child:GreenSquares(squareList: sl,month: 1 (1 to 12 only) ,squareColor: Colors.blue)
    

