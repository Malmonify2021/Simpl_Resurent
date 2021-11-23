import 'package:flutter/material.dart';
import 'package:online_library/Classes/detailes.dart';

class booklist extends StatelessWidget {
  const booklist({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: book.map((e) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'Bookpage', arguments: {
                    'title': e.title,
                    'writer': e.writer,
                    'pages': e.pages,
                    'image': e.image,
                    'language': e.language,
                    'price': e.price,
                    'rating': e.rating,
                    'description': e.description,
                  });
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    //side: BorderSide.none
                  ),
                  color: Colors.black87,
                  elevation: 1,
                  shadowColor: Colors.black38,
                  child: ListTile(
                    isThreeLine: true,
                    leading: Image.network(e.image) == null
                        ? CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          )
                        : CircularProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                    title: Text(
                      e.title,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Bookpage', arguments: {
                          'title': e.title,
                          'writer': e.writer,
                          'pages': e.pages,
                          'image': e.image,
                          'language': e.language,
                          'price': e.price,
                          'rating': e.rating,
                          'description': e.description,
                        });
                      },
                      icon: Icon(Icons.download_rounded),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    subtitle: Column(
                      children: [
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
                                e.writer,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                e.price + ' \$',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                e.pages.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
