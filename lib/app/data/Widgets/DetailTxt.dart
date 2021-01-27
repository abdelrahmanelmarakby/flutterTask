import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailText extends StatelessWidget {
  final Text;
  final Detail;
  const DetailText({
    this.Text,
    this.Detail,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Text, style: GoogleFonts.archivo(color: Colors.black)),
        Text(
          Detail,
          style: GoogleFonts.archivo(color: Colors.black54),
        ),
      ],
    );
  }
}
