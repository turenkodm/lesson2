import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderStyle = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFFECEFF1),
      ),
      borderRadius: BorderRadius.circular(36),
    );
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 62.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 9, 0),
                  child: SizedBox(
                    child: Image(image: AssetImage('assets/images/img.png')),
                    height: 20,
                  ),
                ),
                Text(
                  'Регистрация',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF5C5C5C),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: double.infinity,
                color: const Color(0xFFC4C4C4),
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            Text(
              'Чтобы зарегистрироваться введите свой номер телефона и почту',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFC4C4C4),
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              'Телефон',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 5, 38, 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '+7',
                  filled: true,
                  fillColor: const Color(0xFFECEFF1),
                  focusedBorder: borderStyle,
                  enabledBorder: borderStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
