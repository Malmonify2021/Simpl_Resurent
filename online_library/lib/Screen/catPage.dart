import 'package:flutter/material.dart';
import 'package:online_library/Classes/detailes.dart';

class catPage extends StatelessWidget {
  const catPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(
          5.0,
        ),
        children: detailes.map((e) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: InkWell(
                    splashColor: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {},
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      child: Image.asset(e.image),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                      ),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                e.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black87),
              ),
              SizedBox(height: 15,),
              //istTile(),
            ],
          );
        }).toList(),
      ),
    );
  }
}
