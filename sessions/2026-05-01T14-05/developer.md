# 💻 Developer — 설계된 워크플로우를 자동화하기 위한 기술 스택(API 연동, 데이터베이스 구조) 및 파일 관리 자동화 방안을 제안해줘.

💻 Developer: 작업 시작합니다.

## 🚀 Memo-to-Content 자동화 시스템 설계 제안

CEO의 지시사항과 이전 세션의 목표(메모 기반 콘텐츠 자동 생성 워크플로우)를 통합하여, **정보의 흐름(Memos)이 콘텐츠(Assets)로 자동 변환되는** 엔지니어링 시스템을 제안합니다. 이 시스템은 파일 관리 자동화, 데이터베이스 구조, 그리고 API 연동을 핵심으로 합니다.

### 1. 파일 관리 자동화 방안 (File Management Automation)

핵심 목표는 `4.1. Raw_Memos/`에 저장된 원본 메모가 시스템에 의해 감지되는 즉시 다음 단계(Analysis)로 이동되도록 하는 것입니다.

**✅ 제안 아키텍처:** 파일 시스템 모니터링 기반의 이벤트 드리븐 워크플로우

1.  **폴더 구조 확정 (재확인):**
    *   `4.1. Raw_Memos/`: 모든 원본 메모 저장소 (시스템 입력)
    *   `2.3. Workflow_Templates/`: Memo-to-Content 변환 규칙 (AI 프롬프트 템플릿)
    *   `3.1. Lofi_Channel/`: 최종 콘텐츠 저장소 (시스템 출력)

2.  **자동화 스크립트 (Python 기반):**
    *   **`watcher.py` (감시 모듈):** `4.1. Raw_Memos/` 폴더를 실시간으로 모니터링합니다. 새로운 파일이 추가되거나 수정될 때마다 이벤트를 트리거합니다.
    *   **`processor.py` (처리 모듈):** 감지된 메모 파일을 읽어, `1.2. Brand_Identity/`의 톤앤매너 규칙을 기준으로 메모를 분류하고, `2.3. Workflow_Templates/`에 정의된 AI 프롬프트 템플릿에 맞춰 **콘텐츠 초안**을 생성합니다.
    *   **`mover.py` (이동 모듈):** 처리된 결과물(초안)을 `4.2. Idea_Drafts/`로 이동시키고, 원본 메모는 `4.1. Raw_Memos/`에서 아카이브(Archive) 처리합니다.

3.  **실행 흐름:**
    `Raw_Memos/` $\xrightarrow{\text{Watcher}}$ `Processor` $\xrightarrow{\text{AI/Template}}$ `Idea_Drafts/` $\xrightarrow{\text{Move}}$ `Memo_Archive/`

### 2. 데이터베이스 구조 제안 (Database Structure)

시스템의 일관성과 검색 용이성을 위해 관계형 데이터베이스(PostgreSQL 권장)를 사용하여 메모, 콘텐츠, 전략을 연결합니다.

**✅ 핵심 테이블 구조:**

| 테이블 이름 | 주요 역할 | 핵심 필드 | 관계 |
| :--- | :--- | :--- | :--- |
| **Strategy** | 채널 및 브랜드 정체성 관리 | `ID`, `Goal` (장기/단기), `Tone` (지브리풍, 사색적), `Rules` (금기 사항) | 1:N (Content) |
| **Memos** | 모든 원본 메모 저장 | `Memo_ID`, `Content_Type` (아이디어/관찰), `Raw_Text`, `Source_File` (Raw_Memos 경로), `Timestamp` | N:1 (Strategy) |
| **Drafts** | AI가 생성한 콘텐츠 초안 | `Draft_ID`, `Memo_ID` (FK), `Generated_Title`, `Generated_Script`, `Status` (Draft/Review/Final), `Generated_Date` | N:1 (Memos) |
| **Assets** | 최종 콘텐츠 및 리소스 | `Asset_ID`, `Type` (Video/Blog), `Content_URL`, `Media_Path`, `Status` (Pending/Published) | N:1 (Drafts) |
| **Workflow_Log** | 시스템 실행 기록 | `Log_ID`, `Step`, `Timestamp`, `Result` (성공/실패), `Triggered_Memo_ID` | N:1 (Memos) |

### 3. API 연동 및 기술 스택 (API Integration & Tech Stack)

**✅ 추천 스택:** Python 기반의 데이터 파이프라인 구축

| 영역 | 추천 기술 | 역할 및 이유 |
| :--- | :--- | :--- |
| **백엔드/로직** | **Python (FastAPI/Flask)** | 메모 감지, 파일 처리, LLM API 호출 등 복잡한 자동화 로직을 가장 효율적으로 구현 가능. |
| **데이터베이스** | **PostgreSQL** | 관계형 데이터의 일관성 유지 및 복잡한 쿼리(예: 특정 톤앤매너를 만족하는 메모 검색)에 최적화. |
| **AI 연동** | **OpenAI API (GPT-4)** | 메모를 분석하여 'The Gentle Ward'의 톤앤매너를 반영한 콘텐츠 초안을 생성하는 핵심 엔진. |
| **파일 관리** | **OS Watcher (Python `watchdog`)** | 파일 시스템 이벤트를 실시간으로 감지하여 자동화 스크립트를 트리거하는 데 사용. |
| **외부 연동 (선택)** | **Zapier/Make (No-Code)** | 만약 추후 영상 업로드나 블로그 발행 단계에서 외부 서비스(YouTube, Tistory) 연동이 필요할 경우 보조적으로 사용. |

**✅ API 통합 전략:**

1.  **LLM 프롬프트 엔지니어링:** `1.2. Brand_Identity/`에 정의된 모든 톤앤매너 규칙을 시스템 프롬프트로 LLM에 주입하여, 메모를 분석할 때 **반드시** 해당 규칙을 따르도록 강제합니다.
2.  **데이터 입력 API:** 메모 파일의 텍스트를 API 호출을 통해 LLM에게 입력하고, 결과(초안)를 다시 DB에 기록하는 순환 구조를 만듭니다.

---
📊 평가: 진행중 — 시스템 설계는 완료되었으나, 실제 코드 구현을 위한 구체적인 프롬프트 및 스크립트 개발이 필요함
📝 다음 단계: Python으로 `watchdog` 라이브러리를 사용하여 파일 감시 스크립트의 초기 버전을 작성하고, LLM 프롬프트 템플릿을 구체화합니다.
