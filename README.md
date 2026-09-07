# 📅 TimeAlert_Schedule_Manager

> 시간표 작성 기능 및 설정된 시간에 맞춰 알림을 전달하는 Flutter 미니 애플리케이션입니다.

---

## 📱 프로젝트 소개

* **주요 기능**: 시간표 등록 및 조회, 일정 알림 설정, 사용자 인증(로그인)
* **개발 목표**: Clean Architecture 구조 적용, `go_router` 기반의 선언적 라우팅 구현, UI 정적 퍼블리싱

---

## 🛠 기술 스택 (Tech Stack)

* **Framework**: Flutter
* **Language**: Dart
* **Navigation**: go_router
* **Architecture**: Clean Architecture (Presentation, Domain, Data)

---

## 📂 프로젝트 구조 (Clean Architecture)

```text
lib/
├── core/                  # 공통 유틸리티, 테마, 라우터 설정 등
│   └── router/            # go_router 설정
├── data/                  # 데이터 레이어 (Data Sources, Repositories Implementation)
├── domain/                # 도메인 레이어 (Entities, Repositories Interface, UseCases)
└── presentation/          # 프레젠테이션 레이어 (UI, Widgets, ViewModels)
    ├── auth/              # 로그인/회원가입 화면
    ├── timetable/         # 메인 시간표 화면
    ├── schedule_edit/     # 시간표 추가/수정 화면
    └── notification/      # 알림 설정 화면
