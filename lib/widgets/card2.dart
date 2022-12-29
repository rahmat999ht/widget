import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_primary.dart';

class Card2 extends StatelessWidget {
  final Color bgColor;
  final double? radius;
  final String imageURL;
  final double imageHeight;
  final double imageWidth;
  final String title;
  final String subTitle;
  final double titleSize;
  final double subTitleSize;
  final Color? titleColor;
  final Color? subTitleColor;

  const Card2({
    super.key,
    this.radius,
    required this.title,
    required this.subTitle,
    this.titleColor,
    this.subTitleColor,
    this.titleSize = 14.0,
    this.subTitleSize = 12.0,
    this.bgColor = Colors.white,
    this.imageURL =
        'https://berita.99.co/wp-content/uploads/2022/06/foto-profil-gaya-gangster.jpg',
    this.imageHeight = 40.0,
    this.imageWidth = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          radius ?? 14.0,
        ),
      ),
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    imageURL,
                    fit: BoxFit.cover,
                    height: imageHeight,
                    width: imageWidth,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: titleColor ?? Colors.black87,
                            fontSize: titleSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          subTitle,
                          style: TextStyle(
                            color: subTitleColor ?? Colors.black38,
                            fontSize: subTitleSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ButtonPrimary.iconAndText(
                  onTap: () {},
                  bgColor: Colors.lightBlue.shade50,
                  height: 30,
                  width: 60,
                  radius: 8,
                  titel: '3',
                  titelSize: 10,
                  titelColor: Colors.indigoAccent.shade200,
                  icon: CupertinoIcons.doc_text,
                  iconSize: 12,
                  iconColor: Colors.indigoAccent.shade200,
                ),
                const Spacer(),
                Row(
                  children: [
                    ButtonPrimary(
                      onTap: () {},
                      bgColor: Colors.purpleAccent.shade100,
                      height: 30,
                      width: 90,
                      radius: 8,
                      titel: '25 Aug 22',
                      titelSize: 10,
                    ),
                    const SizedBox(width: 7),
                    ButtonPrimary(
                      onTap: () {},
                      bgColor: Colors.indigoAccent.shade100,
                      height: 30,
                      width: 120,
                      radius: 8,
                      titel: '10.00-10.30 AM',
                      titelSize: 10,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
