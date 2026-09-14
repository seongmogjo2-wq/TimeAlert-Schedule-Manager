# TimeAlert_Schedule_Manager

> 시간표 작성 기능 및 설정된 시간에 맞춰 알림을 전달하는 Flutter 미니 애플리케이션입니다.

---

## 프로젝트 소개

* **주요 기능**: 시간표 등록 및 조회, 일정 알림 설정, 사용자 프로필 및 알림 관리
* **개발 목표**: Clean Architecture 기반 폴더 구조 적용, `go_router` 기반 선언적 라우팅 구현, 중앙집중형 디자인 시스템(`AppColors`, `AppTheme`) 구축

---

## 🛠️ 프로젝트 구조 (Clean Architecture)

```text
lib/
├── core/
│   ├── constants/
│   │   └── app_colors.dart
│   ├── theme/
│   │   └── app_theme.dart
│   └── widgets/
│       ├── app_button.dart
│       └── app_text_field.dart
├── screens/
│   ├── login_screen.dart
│   ├── alam_screen.dart
│   ├── set_screen.dart
│   └── add_schedule_screen.dart
├── widgets/
│   └── schedule_card.dart
└── main.dart

```

### Commit Convention

| Type | 설명 |
| :--- | :--- |
| `feat` | 새로운 기능 추가 |
| `fix` | 버그 및 오류 수정 |
| `style` | UI 퍼블리싱 및 스타일 변경 |
| `refactor` | 코드 구조 개선 및 리팩토링 |
| `docs` | README 등 문서 작성 및 수정 |
| `chore` | 패키지 설정 및 기타 잡무 |
---
## 참고 디자인
https://www.figma.com/design/puxbQVTDCVWTc0wZIsD9zC/%EC%A0%9C%EB%AA%A9-%EC%97%86%EC%9D%8C?node-id=0-1&t=3QbJ5dgT0IKXpINJ-1
 
 

