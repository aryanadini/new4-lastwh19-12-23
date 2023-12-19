import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Insta{
  late String proimg;
  late String name;
  late String img;
late String comment;
late String like;
late String time;
late String sub;
late String my;
Insta({required this.proimg,required this.name,required this.img,required this.comment,required this.like
, required this.time,required this.sub,required this.my});
}





class Mybottom extends StatefulWidget {
  const Mybottom({super.key});

  @override
  State<Mybottom> createState() => _MybottomState();
}

class _MybottomState extends State<Mybottom> {

  List<Insta>instalist=[Insta(proimg: "https://t3.ftcdn.net/jpg/01/21/81/86/240_F_121818673_6EID5iF76VCCc4aGOLJkd94Phnggre3o.jpg", name: "lek.shmilechuz", img: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Athirapally_Waterfalls_after_the_Monsoons.jpg/191px-Athirapally_Waterfalls_after_the_Monsoons.jpg", comment:"view all 4 comments",
      like: "115 likes", time: "15 hours ago",sub: "beauty_palakkad.orginal audio",my:"https://image.shutterstock.com/image-photo/nuts-mix-wooden-plate-260nw-355672364.jpg"),





  ];




  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:  Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.cyan

        ),
        BottomNavigationBarItem(icon: Icon(Icons.search),
        label: 'Search',
          backgroundColor: Colors.teal,
          
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),
        label: 'Profile',
          backgroundColor: Colors.teal,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection_rounded),
          label: 'Profile',
          backgroundColor: Colors.teal,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),
          label: 'Profile',
          backgroundColor: Colors.teal,
        )
        
        
        
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: 1,
        selectedItemColor: Colors.deepOrange,
        iconSize: 20,
        onTap: (int index){

        setState(() {
          currentpage=index;
        });
        },
elevation: 10,

      ),
      body:


      Container(
        height: 400,

        child: ListView.builder(
          itemCount: instalist.length,
          itemBuilder: (BuildContext context, int index) {
            Insta i=instalist[index];
            return Column(

              children: [
                CircleAvatar(backgroundImage: NetworkImage("${i.my}"),radius: 30,),

                Text("${i.name}",),




                Container(
                  height: 100,
                  child: ListTile(

                    leading: CircleAvatar(backgroundImage: NetworkImage("${i.proimg}"),),
                    title: Text("${i.name}"),
                    subtitle: Text("${i.sub}"),
                    trailing: Icon(Icons.more_vert),

                  ),
               ),


                Container(
                    height: 250,

                    child: Image.network("${i.img}")),
               Container(
                 height: 50,
                 child: Row(
                   children: [
                     Icon(Icons.favorite_outline_rounded),
                     Icon(Icons.mode_comment_outlined),
                     Icon(Icons.send),
                     Expanded(

                         child: SizedBox(
                           height: 50,
                           width: 700,
                           child: Icon(Icons.bookmark_border),
                         )),

                   ],

                 ),
               ),
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      Text("${i.like}"),


                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      Text("${i.comment}")
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      Text("${i.time}")
                    ],
                  ),
                )
              ],

            );

          },


      ) ,

      ),

    );
  }
}
