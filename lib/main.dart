import 'package:colorschool/services/ColorList.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    home: ColorSchool(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor:  const Color(0xFF1b2a59),
    ),
  ));
}

class ColorSchool extends StatefulWidget {
  @override
  _ColorSchoolState createState() => _ColorSchoolState();
}

class _ColorSchoolState extends State<ColorSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          " Color Code"
        ),
        actions: <Widget>[
          Icon(
            Icons.info
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: colors.length,
            itemBuilder: (BuildContext ctx, int index){
          return Card(
            margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 7,
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0) ,
              child: Row(
                children: <Widget>[
                 StrokeSample(colors[index].color1, names[index].name1),
                  SizedBox(width: 10,),

                  StrokeSample(colors[index].color2, names[index].name2),
                  SizedBox(width: 10,),

                  StrokeSample(colors[index].color3, names[index].name3),
                  SizedBox(width: 10,),

                  StrokeSample(colors[index].color4, names[index].name4),
                  SizedBox(width: 10,),

                  StrokeSample(colors[index].color5, names[index].name5),
                  SizedBox(width: 10,),

                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}


Widget StrokeSample(Color color, String name){
  return Expanded(
    child: Column(
      children: <Widget>[
        Container(
          height: 140,
          width: 50,
          decoration: BoxDecoration(
            color: color,
              borderRadius: BorderRadius.circular(10.0)
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
          ),
        )
      ],
    ),
  );
}
