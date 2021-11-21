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
              return Card(
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  //side: BorderSide.none
                ),
                color: Colors.black87,
                elevation: 1,
                shadowColor: Colors.black38,
                child: ListTile(
                  isThreeLine: true,
                  leading: Image.asset(e.image),
                  title: Text(
                    e.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.download_rounded),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Author',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          Text(
                            'Price',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          Text(
                            'Pages',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e.writer,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            e.price + ' \$',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            e.pages.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
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
