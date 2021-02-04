import 'package:flutter/material.dart';

class SpeakerCard extends StatefulWidget {
  final BuildContext ctx;
  SpeakerCard({this.ctx});

  @override
  _SpeakerCardState createState() => _SpeakerCardState();
}

class _SpeakerCardState extends State<SpeakerCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('clicked 2 speaker card');
        //TODO: Implement when speaker detail on finished
      },
      child: Container(
        width: MediaQuery.of(widget.ctx).size.width / 4,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Color(0xff212937)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: ClipOval(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/1318566995961536512/odoupU0h_400x400.jpg',
                    fit: BoxFit.fitHeight,
                    //height: 200,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adem Furkan Özcan',
                      maxLines: 2,
                      style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                    ),
                    Text('Flutter Developer & Flutter Engineer @ Flutter Türkiye',
                        maxLines: 2, style: TextStyle(fontFamily: 'Montserrat', color: Colors.white, fontSize: 16)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}