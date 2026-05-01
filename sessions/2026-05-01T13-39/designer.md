# 🎨 Designer — 모든 플랫폼(특히 maekkunstory)에 적용할 '지브리풍의 부드러운 비주얼 스타일'을 정의하고, 메모 기반 글에 맞는 일관된 이미지 생성 가이드라인을 개발해달라.

🎨 Designer: 작업 시작합니다.

## 📝 최종 통합 콘텐츠 자동화 및 발행 시스템 설계안 (V3.0)

CEO님의 지시사항과 기존의 전략을 통합하여, 'The Gentle Ward'의 느리고 사색적인 톤앤매너를 유지하면서 **감성 메모 기반 콘텐츠 자동 생성, 전문 지식 제공, 그리고 시각적 일관성**을 확보하는 3차원 자동화 시스템을 최종 설계합니다.

### 1. 브랜드 시각 시스템 확정 (Visual System Definition)

모든 플랫폼에 적용될 '지브리풍의 부드러운 비주얼 스타일'을 구체적인 가이드라인으로 정의합니다. 이는 AI 이미지 생성의 일관성을 보장하는 핵심 기반이 됩니다.

#### A. 핵심 비주얼 가이드라인

| 요소 | 정의 및 목표 | 구체적인 지침 (AI 프롬프트 기반) |
| :--- | :--- | :--- |
| **전체 분위기 (Mood)** | **고요함, 따뜻함, 사색적, 향수(Nostalgia)**. 마치 햇살이 부드럽게 비치는 창가에서 책을 읽는 듯한 느낌. | `Soft focus, warm ambient lighting, gentle shadows, cozy atmosphere, melancholic yet hopeful mood.` |
| **컬러 팔레트 (Color Palette)** | **자연적이고 차분한 톤**. 녹색, 옅은 베이지, 세이지 그린, 흙빛 갈색, 크림 화이트를 주조색으로 사용합니다. | **Primary:** `#A8C6A5` (Sage Green), `#F5F5DC` (Beige), **Accent:** `#B8860B` (Muted Gold), `#708090` (Slate Grey) |
| **타이포그래피 (Typography)** | **손글씨의 따뜻함과 세리프의 고전미**를 결합합니다. | **Header:** Serif 계열 (예: Baskerville, Lora) – 부드럽고 클래식한 느낌. **Body:** Sans-serif 계열 (예: Lato, Open Sans) – 가독성과 편안함 중시. |
| **레이아웃 및 구도 (Layout & Composition)** | **클로즈업(Close-up)**과 **부드러운 블러(Soft Blur)**를 활용하여 피사체(동물, 책, 풍경)의 감정을 강조합니다. 낮은 시점(Low Angle)을 사용하여 안정감 부여. | `Close-up shot, shallow depth of field (bokeh effect), soft volumetric lighting, cinematic composition.` |

#### B. 메모 기반 글을 위한 이미지 생성 가이드라인 (Prompt Engineering)

'maekkunstory'에 적용될 메모 기반 글과 그림을 위한 일관된 프롬프트 템플릿을 개발하여 AI의 결과물을 통제합니다.

**[기본 프롬프트 템플릿]**
`[주제/감정]: [메모 내용 요약]. [스타일]: Ghibli aesthetic, Lofi, Warm ambient lighting, Soft focus, deep shadows, cinematic composition. [주요 피사체]: [구체적인 사물/동물/장면]. [색상 팔레트]: [선택된 컬러 팔레트에서 2가지 색상 지정].`

**[예시 적용]**
*   **입력 메모:** "오늘 아침, 창가에 앉아 햇살이 먼지 입자를 비추는 것을 보았다. 아주 조용하고 평화로운 느낌이었다."
*   **생성 프롬프트:** `[주제/감정]: Morning reflection on sunlight and dust motes. [스타일]: Ghibli aesthetic, Lofi, Warm ambient lighting, Soft focus, deep shadows, cinematic composition. [주요 피사체]: Sunlight streaming through a window, dust particles dancing in the light. [색상 팔레트]: Sage Green and Cream White.`

### 2. 플랫폼별 콘텐츠 자동화 및 발행 상세 계획

확정된 시각 시스템을 기반으로, 각 플랫폼의 목표에 맞게 콘텐츠 자동화 흐름을 세분화합니다.

#### A. maekkunstory (감성/사색 블로그) - **프리미엄 구독 기반**

**목표:** 메모를 '느리고 사색적인' 글로 변환하여 프리미엄 구독을 유도합니다.

**자동화 흐름 (주간 실행):**

1.  **Step 1 (Input):** 사용자는 지난 한 주간의 **업무 메모(감정, 사색, 발견)**를 시스템에 입력합니다.
2.  **Step 2 (Drafting):** AI는 입력된 메모를 분석하여, **'The Gentle Ward' 톤앤매너**에 맞춰 서정적이고 사색적인 스토리텔링(글)을 생성합니다.
3.  **Step 3 (Visual Generation):** 생성된 스토리라인에 맞춰 **섹션별 이미지 프롬프트**를 자동으로 생성하고, **100% 일관된 지브리풍 비주얼**을 적용하여 그림을 생성합니다. (위에서 정의한 시각 시스템 강제 적용)
4.  **Step 4 (Publish):** 최종 텍스트와 이미지를 조합하여 블로그 포스트를 완성하고, 가장 감성적인 이미지와 연결하여 발행합니다.

**자동화 결과물:** 매주 **'Weekly Reflection' 포스트 (텍스트 + 1~3장 이미지)** 자동 생성 및 발행.

#### B. VirtualCasting (캐스팅 리서치) - **전문 서비스 기반**

**목표:** 해외/옛 드라마/애니 역할에 맞는 한국 배우 캐스팅 기회를 제공합니다.

**자동화 흐름 (월간 리서치):**

1.  **Step 1 (Input):** 사용자는 원하는 **해외 콘텐츠 (드라마/애니)** 및 **역할 (Role)**을 입력합니다.
2.  **Step 2 (Analysis):** AI는 해당 역할의 **감성적/배역적 아키타입**을 분석하고, 'The Gentle Ward'의 톤앤매너와 일치하는 한국 배우의 **최적 후보군**을 리서치합니다.
3.  **Step 3 (Matching & Report):** 후보 배우 리스트와 함께, 해당 역할에 대한 **캐스팅의 감성적/스토리적 적합성 보고서**를 생성합니다.
4.  **Step 4 (Output):** 최종 캐스팅 제안 보고서를 생성하여
