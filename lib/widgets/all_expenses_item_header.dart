import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageBackgroundColor,
      this.imageColor, this.iconColor});

  final String image;
  final Color? imageBackgroundColor, imageColor , iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            // padding here because the svg picture
            // will be bigger than the normal because
            // the height and width of the container
            padding: const EdgeInsets.all(14),
            decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: imageBackgroundColor ?? const Color(0xFFFAFAFA)),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
            )),
        const Spacer(),
        Transform.rotate(
            angle: -1.50709633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: iconColor ?? const Color(0xFF064061),
            ))
      ],
    );
  }
}
