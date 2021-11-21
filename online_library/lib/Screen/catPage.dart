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
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                splashColor: Colors.white,
                borderRadius: BorderRadius.circular(40),
                onTap: (){

                },
                child: CircleAvatar(
                  maxRadius: 40,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(e.name),
          ],
        );
      }).toList(),
    );
  }
}
