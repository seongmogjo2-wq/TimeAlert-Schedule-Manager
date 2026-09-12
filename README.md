#  TimeAlert_Schedule_Manager

> 시간표 작성 기능 및 설정된 시간에 맞춰 알림을 전달하는 Flutter 미니 애플리케이션입니다.

---

## 프로젝트 소개

* **주요 기능**: 시간표 등록 및 조회, 일정 알림 설정, 사용자 인증(로그인)
* **개발 목표**: Clean Architecture 구조 적용, `go_router` 기반의 선언적 라우팅 구현, UI 정적 퍼블리싱

---

##  프로젝트 구조 (Clean Architecture)

```text
lib/
├── main.dart
├── screens/
│   ├── login_screen.dart
│   ├── timetable_screen.dart
│   ├── schedule_edit_screen.dart
│   └── notification_screen.dart
└── widgets/
    └── schedule_card.dart

```

### 1.  Commit Convention

| Type | 설명 |
| :--- | :--- |
| `feat` | 새로운 기능 추가 |
| `fix` | 버그 및 오류 수정 |
| `style` | UI 퍼블리싱 및 스타일 변경 |
| `refactor` | 코드 구조 개선 및 리팩토링 |
| `docs` | README 등 문서 작성 및 수정 |
| `chore` | 패키지 설정 및 기타 잡무 |

---

### 2.  Pull Request Convention

## 관련 이슈
Closes #1

##  작업 내용
- [go_router 기반 라우팅 및 내비게이션 구축]
- [클린 아키텍처 기반 위젯 분리]

