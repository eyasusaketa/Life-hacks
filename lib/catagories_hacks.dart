import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class hacks extends StatelessWidget {
  final String image_url;
  final List  list;
  final String title;
  hacks(
      {
        this.list,
        this.image_url,
        this.title
      }
      );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.white,
        elevation: 0,
        title: Text(title),
        actions: <Widget>[

          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blueGrey,
            child: Text("Life Hacks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),

      body: ListView.builder(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          itemCount: list.length,
          itemBuilder:(BuildContext context,index){
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child:Text((index+1).toString(),
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(10,10,10, 10),
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image_url)
                    )
                  ),
                  child:Stack(
                 children: <Widget>[

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.3)
                          ],
                      ),
                    ),
                  ),
                   Center(
                     child:Padding(
                       padding: EdgeInsets.all(15),
                       child:  Text(list[index],
                         textAlign: TextAlign.justify,
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 30,
                             fontFamily: 'font2',
                         ),
                       ),
                     )
                   )
                   ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
