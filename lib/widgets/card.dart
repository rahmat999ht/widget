import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_primary.dart';

class CardWidget extends StatelessWidget {
  final double? width;
  final double? radius;
  final Color bgColor;
  final String imageURL;
  final double imageHeight;
  final double imageWidth;
  final String title;
  final String subTitle;

  final double titleSize;
  final double subTitleSize;
  final Color? titleColor;
  final Color? subTitleColor;

  const CardWidget({
    super.key,
    this.radius,
    required this.title,
    required this.subTitle,
    this.titleColor,
    this.subTitleColor,
    this.titleSize = 14.0,
    this.subTitleSize = 12.0,
    this.width = 163.0,
    this.bgColor = Colors.white,
    this.imageURL =
        'https://berita.99.co/wp-content/uploads/2022/06/foto-profil-gaya-gangster.jpg',
    this.imageHeight = 120.0,
    this.imageWidth = 140.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius ?? 14.0,
          ),
        ),
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
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
                        color: subTitleColor ?? Colors.black54,
                        fontSize: subTitleSize,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ButtonPrimary(
                          onTap: () {},
                          isActive: false,
                          bgColor: Colors.indigo.shade100,
                          bgColorActive: Colors.indigoAccent.shade100,
                          width: 80,
                          titel: 'Booked',
                          titelActive: 'Book',
                          titelSize: 12,
                          titelColorActive: Colors.indigoAccent.shade200,
                        ),
                        const SizedBox(width: 13),
                        ButtonPrimary.icon(
                          onTap: () {},
                          isActive: false,
                          bgColor: Colors.purpleAccent.shade100,
                          icon: CupertinoIcons.text_bubble_fill,
                          iconSize: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
