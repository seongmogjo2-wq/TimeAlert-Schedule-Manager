import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timealert_schedule_manager/main.dart';

void main() {
  testWidgets('기본 앱 실행 및 빌드 테스트', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: AlamApp(),
      ),
    );
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}