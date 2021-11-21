import 'package:flutter/material.dart';
import 'package:online_library/Classes/detailes.dart';

class catPage extends StatelessWidget {
  const catPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(
        5.0,
      ),
      children: detailes.map((e) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    child: Image.asset(e.image),
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.grey
                            // borderRadius: BorderRadius.circular(50),
                            ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Text(e.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black87),),
            ),
          ],
        );
      }).toList(),
    );
  }
}
