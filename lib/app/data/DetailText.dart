import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailText extends StatelessWidget {
  final String Txt;
  final String Detail;
  const DetailText({
    this.Txt,
    this.Detail,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Txt,
            style: GoogleFonts.archivo(color: Colors.black, fontSize: 12)),
        Text(
          Detail,
          style: GoogleFonts.archivo(color: Colors.black54, fontSize: 12),
        ),
      ],
    );
  }
}
