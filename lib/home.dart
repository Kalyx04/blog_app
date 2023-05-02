import 'package:flutter/material.dart';
import 'message.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   bool isLikeButtonClicked = false;
   bool isDislikeButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        bottomNavigationBar:
        BottomNavigationBar(
          backgroundColor: Colors.yellow[50],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black,),label: 'Search',),
            BottomNavigationBarItem(icon: Icon(Icons.menu, color: Colors.black,),label: 'Menu',),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.yellow[50],
          centerTitle: true,
          title: Text(
            'Bloggy',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.home), color: Colors.black,),
          actions: [IconButton(onPressed: (){
            Navigator.pushNamed(context, '/message');
          }, icon: Icon(Icons.message), color: Colors.black),],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Card(
                color: Colors.transparent,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('clearly.lacking'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                        isLikeButtonClicked = !isLikeButtonClicked;
                    });
                  }, icon: Icon(Icons.thumb_up_sharp),
                      color: isLikeButtonClicked ? Colors.blue : Colors.black,),

                  IconButton(onPressed: (){
                    setState(() {
                      isDislikeButtonClicked = !isDislikeButtonClicked;
                    });
                  }, icon: Icon(Icons.thumb_down_sharp),
                    color: isDislikeButtonClicked ? Colors.blue : Colors.black,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
