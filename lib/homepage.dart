import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'catag_Row.dart';
import 'colors.dart';
import 'log_in.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
_textfont(){

  return TextStyle(
    fontSize: 15,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w400
    //fontFamily: 'font2',

  );
}
_drawer(){
      return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child:ListView(
                children: <Widget>[
                  Center(
                      child:Column(
                        children: <Widget>[
                          CircleAvatar(

                            backgroundImage: AssetImage('assets/images/lifehacks.png',
                            ),
                            radius: 40,
                          ),
                          Text("Life Hacks ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:22,
                              fontFamily: 'font1'
                            ),
                          ),
                          Text("Email :  iyasusaketa@gmail.com",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontFamily: 'font2',
                              fontSize:25,
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.blue
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>loginpage())),
            child:ListTile(

              title:Text("Upgrate to pro version",style: _textfont(),),
              leading: Icon(Icons.update),
            ),
            ),
            Divider(),

            ListTile(

              title:Text("Dark mode",style: _textfont(),),
              leading: Icon(Icons.lightbulb_outline),
              subtitle: Text("Click for dark mode"),
            ),
            Divider(),
            ListTile(
              title:Text("About Developer",style: _textfont(),),
              subtitle: Text("Developped by Eyasu Saketa"),
              leading: Icon(Icons.assignment_ind),
            ),
            Divider(),
            ListTile(
              title:Text("Share",style: _textfont(),),
              leading: Icon(Icons.share),

            ),
            ListTile(
              title:Text("Rate",style: _textfont(),),
              leading: Icon(Icons.star),
            ),
            Divider(),
            ListTile(
              title:Text("Contact as",style: _textfont(),),
              leading: Icon(Icons.local_post_office),
            ),
          ],
        ),
      );
}

    return Scaffold(

     // backgroundColor:Colors.grey[100],
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>_drawer()
          )
          ),
          child:Icon(Icons.menu,
            color:Colors.black,
          ),
        ),
        title: Text("Life Hacks",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
        ),
      ),

        actions: <Widget>[
          IconButton(

              icon:Icon(Icons.update),
              color: Colors.black,
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context){return loginpage();}));
              })
        ],
      ),

     drawer:_drawer(),

      body:ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child:Center(
              child:Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),

              Text("Trial version",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'font2',
                  color: Colors.black,
                 // fontWeight: FontWeight.bold,
             ),
            ),]
              )
           ),
          ),
          Container(
            child: Container(
                          margin: EdgeInsets.fromLTRB(10, 10, 20, 30),
                          width: MediaQuery.of(context).size.width*0.94,
                          decoration:BoxDecoration(
                            color: Colors.transparent,
                            image:DecorationImage(
                                image: AssetImage(pictures[0]),
                                fit: BoxFit.cover
                            ),
                            boxShadow:[
                              BoxShadow(
                                  offset: Offset(0,7),
                                  blurRadius: 10,
                                  color: Colors.grey
                              )
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        colors: [
                                          Colors.black.withOpacity(0.6),
                                          Colors.black.withOpacity(0.3)
                                               ]
                                  )
                              ),
                            ),
                              Center(
                                  child:Container(
                                      margin:EdgeInsets.all(15),
                                      child:Text(" Life hacks by their catagories",
                                        style: TextStyle(
                                          fontFamily: 'font2',
                                            color: Colors.white,
                                            fontSize: 33,
                                            //fontWeight: FontWeight.bold
                                        ),
                                        textAlign:TextAlign.justify ,
                                    )
                                )
                            )
                          ],
                        )
                    ),
          height: MediaQuery.of(context).size.height*.28,
          decoration: BoxDecoration(
              color: Colors.white70
          ),
        ),
          Column(
           children: <Widget>[
             Text("Catagories",
             style: TextStyle(
               fontSize: 20,
               color:Colors.black,
               fontWeight: FontWeight.bold,
             ),
             ),
             catagore_row(
               image_url1: 'assets/images/economic.jpg',
               image_url2: 'assets/images/food_and_drink.jpg',
               catag_name1: "Economical",
               catag_name2: "Food and Drinks",
               data: economical_hacks,
               data2: food_and_drink,
               title1: 'Economic ',
               title2: 'Food and drink',
             ),
             catagore_row(
               image_url1: 'assets/images/genius.jpg',
               image_url2: 'assets/images/health.jpg',
               catag_name1: "Genius",
               catag_name2: "Health",
               data: genius,
               data2: health,
               title1: 'Genius',
               title2: 'Health',
             ),
             catagore_row(
               image_url1: 'assets/images/life_tips.jpg',
               image_url2: 'assets/images/techno.jpg',
               catag_name1: "Life Tips",
               catag_name2: "Technology",
               data: life_tips,
               data2: techno,
               title1: 'Life Tips',
               title2: 'Technology',
             ),
           ],
          ),
        ],
      ),
    );
  }
}
