import 'package:flutter/material.dart';
import 'package:online_library/Classes/data.dart';
import 'package:online_library/Classes/detailes.dart';

class Pagetwo extends StatefulWidget {
  Pagetwo({Key key}) : super(key: key);

  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catid = routeArgs['id'];
    final catname = routeArgs['name'];
    final catlist = book.where((element) {
      return element.catagories.contains(catid);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(catname + ' Books'),
          // centerTitle: true,
        ),
        body: BookFilter(catlist: catlist, catid: catid));
  }
}

class BookFilter extends StatelessWidget {
  const BookFilter({
    Key key,
    @required this.catlist,
    @required this.catid,
  }) : super(key: key);

  final List<Book> catlist;
  final String catid;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'Bookpage', arguments: {
              'title': catlist[index].title,
              'writer': catlist[index].writer,
              'pages': catlist[index].pages,
              'image': catlist[index].image,
              'language': catlist[index].language,
              'price': catlist[index].price,
              'rating': catlist[index].rating,
              'description': catlist[index].description,
            });
          },
          splashColor: Colors.white24,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              //side: BorderSide.none
            ),
            color: Colors.black87,
            elevation: 1,
            shadowColor: Colors.black38,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ListTile(
                isThreeLine: true,
                leading: Image.network(catlist[index].image)==null?CircularProgressIndicator():CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        catlist[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        overflow:TextOverflow.ellipsis,
                      ),
                    ),
                    catid == 'new'
                        ? Text(
                            '(' + 'NEW' + ')',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          )
                        : Container(),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Bookpage', arguments: {
                      'title': catlist[index].title,
                      'writer': catlist[index].writer,
                      'pages': catlist[index].pages,
                      'image': catlist[index].image,
                      'language': catlist[index].language,
                      'price': catlist[index].price,
                      'rating': catlist[index].rating,
                      'description': catlist[index].description,
                    });
                  },
                  icon: Icon(Icons.download_rounded),
                  iconSize: 30,
                  color: Colors.white,
                ),
                subtitle: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Author',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Price',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Pages',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            catlist[index].writer,
                            style: TextStyle(color: Colors.white),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catlist[index].price + ' \$',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catlist[index].pages.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: catlist.length,
    );
  }
}
