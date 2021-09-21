import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22.0,
              backgroundImage:AssetImage('assets/pic.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                radius: 20.0,
                foregroundColor: Colors.white,
                backgroundColor: Colors.white24,
                child: Icon(
                  Icons.camera_alt,
                  size: 22.0,
                ),
              ),
              onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                radius: 20,
                foregroundColor: Colors.white,
                backgroundColor: Colors.white24,
                child: Icon(
                  Icons.edit,
                  size: 22.0,
                ),
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      )
                    ],
                  ),
                ),//Search
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 100.0,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder:(context,index)=>buildStates(),
                      separatorBuilder: (context,index)=>SizedBox(width: 15,),
                      itemCount: 10,
                  ),
                ),//states
                SizedBox(height: 20.0,),
                Expanded(

                  child: ListView.separated(
                    itemBuilder: (context,index)=>buildChats(),
                    separatorBuilder: (context,index)=>SizedBox(height: 15.0,),
                    itemCount: 15,
                  ),
                )//Chats
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStates()=>Container(
            width: 60,
            child: Column(
              //states

              children: [
                Stack(alignment: AlignmentDirectional.bottomEnd, children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/pic.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 2.8,
                      end: 3.0,
                    ),
                    child: CircleAvatar(
                      radius: 8.0,
                      backgroundColor: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      bottom: 3.0,
                      end: 3.0,
                    ),
                    child: CircleAvatar(
                      radius: 7.0,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ]),
                SizedBox(height: 6.0,),
                Text(
                  'Abdo S. Elfky',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,

                  ),

                )
              ],
            ),
          );//States
  Widget buildChats()=>Row(
    children: [
      Stack(alignment: AlignmentDirectional.bottomEnd, children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/pic.jpg'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 2.8,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ),
      ]),
      SizedBox(width: 20.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Abdo S.Elfky',
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold

              ),
            ),
            SizedBox(height: 5.0,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Holla abdou how Are You ! ,Holla abdou how Are You !Holla abdou how Are You ! ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '02:00 pm',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold

                  ),
                )

              ],
            )
          ],
        ),
      )
    ],
  );

}


