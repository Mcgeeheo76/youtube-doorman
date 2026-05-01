# CBF 회사 시스템 설정 및 워크플로우

## 📂 디렉토리 구조 (Workspace 기준)
- `_agents/pm/`: 일정·이슈·리스크 관리 에이전트 관련 파일
- `_agents/reporter/`: 월간보고, 운영위원회 보고서 자동 초안 관련 파일
- `_agents/budget/`: 예산 집행 모니터링 관련 파일
- `_agents/secretary/`: 회의록 → 공문 자동 변환 관련 파일

## 📁 파일 처리 워크플로우
1. **입력**: 새로운 파일이 `_inbox` 폴더에 들어옴.
2. **변환**: 파일 내용을 분석하여 필요한 형식(MD 등)으로 변환.
3. **이동**: 변환된 파일은 `wiki` 폴더로 이동.
4. **분류**: 원본 파일은 `D:\Users\my\14.AX_ob\2026년 PROJECTS\AX실증산단_구축사업` 폴더로 이동.

## 📌 주요 참고 사항
- 모든 파일 처리는 에이전트(`_agents/`)의 설정 파일(`config.md`, `goal.md`, `memory.md`, `prompt.md`)을 참조하여 수행되어야 합니다.
- `_shared/decisions.md` 및 `_shared/goals.md`를 통해 전체적인 목표를 관리합니다.