import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();

    Widget input(TextEditingController text, String name, String hint) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          TextField(
            controller: text,
            decoration: InputDecoration(
              hint: Text(hint, style: TextStyle(color: Color(0xFFAEB3C0))),
              filled: true,
              fillColor: Color(0xFFF4F4F6),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFFAEB3C0), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF5138EE), width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFEEF2FF),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            height: 500,
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFF5138EE),
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        '시간표 알림 앱',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '시간표에 따라서 알림을 올려줍니다.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF868996),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    input(name, '사용자 이름', '이름을 입력하시오'),
                    input(email, '이메일', '이메일을 입력하시오'),
                    input(pass, '비밀번로', '비밀번호를 입력하시오'),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => context.go('/alam'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Color(0xFF919098),
                        ),
                        child: Text(
                          '확인',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
