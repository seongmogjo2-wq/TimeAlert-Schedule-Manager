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
├── data/                  # 데이터 레이어 (Data Sources, Repositories Implementation)
├── domain/                # 도메인 레이어 (Entities, Repositories Interface, UseCases)
└── presentation/          # 프레젠테이션 레이어 (UI, Widgets, ViewModels)
    ├── auth/              # 로그인/회원가입 화면
    ├── timetable/         # 메인 시간표 화면
    ├── schedule_edit/     # 시간표 추가/수정 화면
    └── notification/      # 알림 설정 화면

```

### 1. 💬 Commit Convention

커밋 메시지는 `<Type>: <Subject> (#<Issue_Number>)` 형식을 준수합니다.

| Type | 설명 |
| :--- | :--- |
| `feat` | 새로운 기능 추가 |
| `fix` | 버그 수정 |
| `style` | UI 퍼블리싱, 스타일 변경, 코드 포맷팅 (비즈니스 로직 변경 없음) |
| `refactor` | 코드 리팩토링 (기능 변경 없음) |
| `docs` | README 등 문서 수정 |
| `chore` | 빌드 업무, 패키지 설정, 환경설정 변경 |
| `test` | 테스트 코드 추가 및 수정 |

#### **예시**
* `feat: 로그인 및 시간표 화면 정적 퍼블리싱 (#1)`
* `feat: go_router 라우팅 환경 구축 (#2)`
* `docs: Issue, PR, Commit 컨벤션 작성 (#3)`

---

### 2. 🌿 Branch Strategy

* `main`: 최종 제출 및 배포용 브랜치
* `feat/#이슈번호-기능명`: 기능 개발 브랜치

---

### 3. 📋 Issue Convention

**제목 형식**: `[Type] 작업 내용 요약`

**본문 템플릿**:

## 📌 작업 내용 (Task)


## 📝 상세 설명

