# 📅 TimeAlert_Schedule_Manager

> 시간표 작성 기능 및 설정된 시간에 맞춰 알림을 전달하는 Flutter 미니 애플리케이션입니다.

---

## 📱 프로젝트 소개

* **주요 기능**: 시간표 등록 및 조회, 일정 알림 설정, 사용자 인증(로그인)
* **개발 목표**: Clean Architecture 구조 적용, `go_router` 기반의 선언적 라우팅 구현, UI 정적 퍼블리싱

---

## 📂 프로젝트 구조 (Clean Architecture)

```text
lib/
├── core/                  # 공통 유틸리티, 테마, 라우터 설정 등
│   └── router/            # go_router 설정
├── data/                  # 데이터 레이어
├── domain/                # 도메인 레이어
└── screens/               # 프레젠테이션 레이어
    ├── auth/              # 로그인/회원가입 화면
    ├── timetable/         # 메인 시간표 화면
    ├── schedule_edit/     # 시간표 추가/수정 화면
    └── notification/      # 알림 설정 화면

```

### 1. 💬 Commit Convention

| Type | 설명 |
| :--- | :--- |
| `feat` | 새로운 기능 추가 |
| `fix` | 버그 및 오류 수정 |
| `style` | UI 퍼블리싱 및 스타일 변경 |
| `refactor` | 코드 구조 개선 및 리팩토링 |
| `docs` | README 등 문서 작성 및 수정 |
| `chore` | 패키지 설정 및 기타 잡무 |

---

### 2. 🌿 Branch Strategy

* `main`: 최종 제출 및 배포용 브랜치
* `feat/#이슈번호-기능명`: 기능 개발 브랜치

---

### 3. 📋 Issue Convention

## 📌 작업 내용 (Task)
- [ ] Clean Architecture 디렉토리 구조 생성
- [ ] go_router 라우팅 적용 (4개 화면)
- [ ] 로그인/시간표 메인/추가/알림 화면 퍼블리싱

