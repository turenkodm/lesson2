import 'dart:ui';

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
        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Чтобы зарегистрироваться введите свой номер телефона и почту',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFC4C4C4),
                  ),
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
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(38.0, 5, 38, 0),
                child: SizedBox(
                  height: 54,
                  child: TextField(
                    maxLength: 12,
                    keyboardType: TextInputType.phone,
                    style: GoogleFonts.roboto(fontSize: 16),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      hintText: '+7',
                      filled: true,
                      fillColor: const Color(0xFFECEFF1),
                      focusedBorder: borderStyle,
                      enabledBorder: borderStyle,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                'Почта',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(38.0, 5, 38, 0),
                child: SizedBox(
                  height: 34,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.roboto(fontSize: 16),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      filled: true,
                      fillColor: const Color(0xFFECEFF1),
                      focusedBorder: borderStyle,
                      enabledBorder: borderStyle,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Вам придет четырехзначный код, который будет вашим паролем',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFC4C4C4),
                  ),
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: Text(
                    'Изменить пароль можно будет в личном кабинете после регистрации',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      wordSpacing: 5,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFC4C4C4),
                    )),
              ),
              const SizedBox(
                height: 43.0,
              ),
              SizedBox(
                height: 42,
                width: 154,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      textStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  onPressed: () {},
                  child: const Text('Отправить код'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
