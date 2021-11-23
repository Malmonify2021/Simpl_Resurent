import 'package:flutter/material.dart';
import 'package:online_library/Classes/data.dart';
import 'package:online_library/Screen/catPage.dart';
import 'package:online_library/Screen/rating_bar.dart';

class Bookpage extends StatefulWidget {
  Bookpage({Key key}) : super(key: key);

  @override
  _BookpageState createState() => _BookpageState();
}

class _BookpageState extends State<Bookpage> {
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context).settings.arguments as Map<dynamic, dynamic>;
    final title = routearg['title'];
    final writer = routearg['writer'];
    final page = routearg['pages'];
    final img = routearg['image'];
    final lang = routearg['language'];
    final price = routearg['price'];
    final rating = routearg['rating'];
    final desc = routearg['description'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Book Information'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black87.withOpacity(0.5),
                      Colors.black87,
                    ]),
                color: Colors.black87),
            width: double.infinity,
            height: 250,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Image.network(img)==null?CircularProgressIndicator():CircularProgressIndicator(
                          backgroundColor: Colors.blueGrey,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pages $page',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Expanded(
                        child: Text(
                          'Book Name',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '$title',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Writer : $writer',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Price : $price',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        RatingBar(color: Colors.white, rating: rating)
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                        
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.download_rounded),
                              Text('Download'),
                            ],
                          ),
                          style: ButtonStyle(
                            
                            animationDuration: Duration(seconds: 2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.star),
                              Text('   Reating'),
                            ],
                          ),
                          style: ButtonStyle(
                            animationDuration: Duration(seconds: 2),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          MaterialButton(onPressed: (){},
          child: Text('Read This Book Online...',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25,
            backgroundColor: Colors.white12,

            fontWeight: FontWeight.w300,
          ),
          ),
          )
        ],
      ),
    );
  }
}
