import 'package:flutter/material.dart';
import 'model/model.dart';

class SliderItem extends StatelessWidget {
  final int itemIndex;
  const SliderItem({Key? key, required this.itemIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: SizedBox(
              width: 150,
              height: 150,
              // margin: const EdgeInsets.only(left: 10.0),
              child: Image.asset(
                itemList[itemIndex].imageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          itemList[itemIndex].artist,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          itemList[itemIndex].title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
