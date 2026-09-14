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
Closes #3

## 작업 내용
issue 1
- go_router 기반 라우팅 및 내비게이션 구축
- 클린 아키텍처 기반 위젯 분리

issue 3
- 중앙집중형 디자인 시스템 구축 (`AppColors`, `AppTheme`)
- 재사용 가능한 공통 위젯 구현 (`AppButton`, `Input`)
- 전체 스크린 하드코딩 색상 및 redundent `const` 키워드 제거 리팩토링

## 상세 내용
- `go_router` 기반 내비게이션 구축이 완료되었으며, 클린 아키텍처 기반으로 `widget`과 `screen`을 명확히 구분하여 구조화했습니다.
- 재사용 가능한 공통 컴포넌트(`AppButton`, `Input`, `ScheduleCard`)를 활용하여 코드 중복을 최소화했습니다.
- `AppColors`로 색상 관리를 일원화하고, `AppTheme.lightTheme`을 `main.dart`에 전역 적용하여 스타일 유지보수성을 극대화했습니다.

## 참고 디자인
https://www.figma.com/design/puxbQVTDCVWTc0wZIsD9zC/%EC%A0%9C%EB%AA%A9-%EC%97%86%EC%9D%8C?node-id=0-1&t=3QbJ5dgT0IKXpINJ-1
 
 

