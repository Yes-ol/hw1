import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(a);
            a++;
          },
          child: Icon(Icons.add, color: Colors.white),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.all(15),
            child: Text('당근', style: TextStyle(color: Colors.black, fontSize: 12),)
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.black,),),
            IconButton(icon: Icon(Icons.person, color: Colors.black,), onPressed: (){})
              ],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset('asset/camera.png', width: 150),
              Icon(Icons.favorite),
              Text('4'),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('카메라팝니다', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(height: 4),
                    Text('금호동 3가', style: TextStyle(color: Colors.grey, fontSize:10),),
                    SizedBox(height: 5),
                    Text('7000원'),
                    Text('캐논 DLSR 100D (단렌즈, 충전기 16기가SD 포함)'),])

          ],
          )
          ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              IconButton(onPressed: (){}, icon: Icon(Icons.event_note)),
              IconButton(onPressed: (){}, icon: Icon(Icons.map)),
              IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
              IconButton(onPressed: (){}, icon: Icon(Icons.person))

            ],
          ),
        ),


      ),
    );
  }
}
