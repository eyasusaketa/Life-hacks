import 'package:flutter/material.dart';
import 'catagories_hacks.dart';
import 'data.dart';
class catagore_row extends StatelessWidget {
  @override
  final String image_url1;
  final String image_url2;
  final String catag_name1;
  final String catag_name2;
  final List data;
  final List data2;
  final String title1;
  final String title2;

  catagore_row({this.image_url1, this.image_url2, this.catag_name1,
      this.catag_name2,this.data,this.data2,this.title1,this.title2});

  Widget build(BuildContext context) {


    return GestureDetector(

      child:Row(
      children: <Widget>[

        Expanded(
          child:Container(

            margin: EdgeInsets.fromLTRB(15, 20, 5, 20),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Colors.grey[200]
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            height: MediaQuery.of(context).size.height*0.08,
            width: 100,
            child:GestureDetector(
    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_)=>hacks(
     image_url: image_url1,
      title: title1,
      list: data,
    ), ),


    ),
            child:Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(7, 0, 2, 0),
                  height: 40,
                  width: 40,
                  child:CircleAvatar(
                      radius: 20,
                      foregroundColor: Colors.yellow,
                      backgroundImage:AssetImage(image_url1)
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.greenAccent,
                      ),
                      borderRadius: BorderRadius.circular(25)
                  ),
                ),
                Text(catag_name1)
              ],
            ),),
          ),
        ),

        Expanded(
          child:Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Colors.grey[200]
                ),

                borderRadius: BorderRadius.circular(15)
            ),

            child:GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_)=>hacks(
             image_url: image_url2,
              title: title2,
              list: data2,
    ), )),
            child:Row(
              children: <Widget>
              [
                Container(
                  margin: EdgeInsets.fromLTRB(7, 0, 2, 0),
                  height: 40,
                  width: 40,
                  child:CircleAvatar(
                      radius: 20,
                      foregroundColor: Colors.yellow,
                      backgroundImage:AssetImage(image_url2)
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.greenAccent,
                      ),
                      borderRadius: BorderRadius.circular(25)
                  ),
                ),
                Text(catag_name2)
              ],

            ),),
            margin: EdgeInsets.fromLTRB(5, 20, 15, 20),
            height: MediaQuery.of(context).size.height*0.08,
            width: 100,
          ),
        ),
      ],)
    );
  }
}
