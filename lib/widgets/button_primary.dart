import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final void Function()? onTap;
  final Color? bgColorActive;
  final Color? bgColor;
  final bool isIcon;
  final bool isIconAndText;
  final double height;
  final double width;
  final IconData? icon;
  final Color? iconColor;
  final Color? iconColorActive;
  final double? iconSize;
  final String? titel;
  final String? titelActive;
  final Color? titelColor;
  final Color? titelColorActive;
  final double? titelSize;
  final double radius;
  final bool isActive;

  const ButtonPrimary({
    Key? key,
    required this.onTap,
    this.bgColorActive,
    required this.bgColor,
    required this.width,
    required this.titel,
    this.titelActive,
    required this.titelSize,
    this.isActive = false,
    this.titelColor = Colors.white,
    this.height = 40,
    this.radius = 12.0,
    this.titelColorActive,
  })  : isIcon = false,
        isIconAndText = false,
        icon = null,
        iconColor = null,
        iconColorActive = null,
        iconSize = null,
        super(key: key);
  const ButtonPrimary.icon({
    Key? key,
    required this.onTap,
    this.bgColorActive,
    this.bgColor,
    required this.icon,
    required this.iconSize,
    this.iconColor = Colors.white,
    this.iconColorActive,
    this.isActive = false,
    this.height = 40,
    this.width = 40,
    this.radius = 12.0,
  })  : isIcon = true,
        isIconAndText = false,
        titel = null,
        titelActive = null,
        titelColor = null,
        titelSize = null,
        titelColorActive = null,
        super(key: key);
  const ButtonPrimary.iconAndText({
    Key? key,
    required this.onTap,
    this.bgColorActive,
    this.bgColor,
    required this.icon,
    required this.iconSize,
    this.isActive = false,
    this.iconColor = Colors.white,
    required this.titel,
    this.titelActive,
    required this.titelSize,
    this.titelColor = Colors.white,
    this.height = 40,
    this.width = 60,
    this.radius = 12.0,
    this.titelColorActive,
    this.iconColorActive,
  })  : isIcon = false,
        isIconAndText = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Card(
        elevation: 2,
        shadowColor: isActive == true ? bgColorActive : bgColor,
        margin: const EdgeInsets.all(0),
        color: isActive == true ? bgColorActive : bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
        child: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: isIcon
                ? Icon(
                    icon,
                    color: iconColor,
                    size: iconSize,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isIconAndText
                          ? Icon(
                              icon,
                              color: iconColor,
                              size: iconSize,
                            )
                          : const SizedBox(),
                      const SizedBox(width: 5),
                      Text(
                        isActive == true ? titelActive! : titel!,
                        style: TextStyle(
                            color: isActive == true
                                ? titelColorActive
                                : titelColor,
                            fontSize: titelSize,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
