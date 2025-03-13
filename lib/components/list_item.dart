import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_application/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final Item item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return item.img == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.jpName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    //AudioCache player = AudioCache();
                    final player = AudioPlayer();
                    player.play(AssetSource(item.sound));
                  },
                  icon: Icon(Icons.play_arrow),
                  color: Colors.white,
                  iconSize: 28,
                ),
              ],
            ),
          )
        : Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Container(
                    color: Color(0xffFFF6DC), child: Image.asset(item.img!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.jpName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    //AudioCache player = AudioCache();
                    final player = AudioPlayer();
                    player.play(AssetSource(item.sound));
                  },
                  icon: Icon(Icons.play_arrow),
                  color: Colors.white,
                  iconSize: 28,
                ),
              ],
            ),
          );
  }
}
