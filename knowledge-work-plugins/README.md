# Knowledge Work Plugins Setup

Setup cho 4 plugins từ [anthropics/knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins).

## Plugins

| Plugin | Mô tả | Commands |
|--------|-------|----------|
| **productivity** | Quản lý task, calendar, và workplace memory | `/start`, `/update` |
| **data** | Query SQL, phân tích dữ liệu, tạo dashboard | `/analyze`, `/write-query`, `/create-viz`, `/build-dashboard` |
| **marketing** | Tạo content, plan campaigns, phân tích performance | `/draft-content`, `/campaign-plan`, `/performance-report`, `/seo-audit` |
| **enterprise-search** | Tìm kiếm thống nhất qua email, chat, docs, wikis | `/search`, `/digest` |

## Cài đặt

### Cài trực tiếp từ marketplace (Claude Code)

```bash
claude plugin install productivity@knowledge-work-plugins
claude plugin install data@knowledge-work-plugins
claude plugin install marketing@knowledge-work-plugins
claude plugin install enterprise-search@knowledge-work-plugins
```

### Cài thủ công từ repo này

1. Clone repo này
2. Copy folder plugin vào dự án Claude Code của bạn
3. Cấu hình API keys trong `.mcp.json`

## Cấu hình API Keys

### Productivity Plugin

```bash
export SLACK_BOT_TOKEN=xoxb-...
export SLACK_TEAM_ID=T...
export NOTION_API_TOKEN=secret_...
export ATLASSIAN_TOKEN=...
export LINEAR_API_KEY=lin_api_...
```

### Data Plugin

```bash
export SNOWFLAKE_ACCOUNT=...
export SNOWFLAKE_USER=...
export SNOWFLAKE_PASSWORD=...
export GOOGLE_ACCESS_TOKEN=...
export AMPLITUDE_API_KEY=...
```

### Marketing Plugin

```bash
export CANVA_API_KEY=...
export FIGMA_API_KEY=...
export HUBSPOT_API_KEY=...
export AHREFS_API_KEY=...
export KLAVIYO_API_KEY=...
```

### Enterprise Search Plugin

```bash
export SLACK_BOT_TOKEN=xoxb-...
export NOTION_API_TOKEN=secret_...
export GURU_API_KEY=...
export ATLASSIAN_TOKEN=...
```

## Connectors được hỗ trợ

### Productivity
Slack · Notion · Asana · Linear · Atlassian (Jira/Confluence) · Microsoft 365 · Monday.com · ClickUp

### Data
Snowflake · Databricks · BigQuery · Hex · Amplitude · Atlassian · Definite

### Marketing
Slack · Canva · Figma · HubSpot · Amplitude · Notion · Ahrefs · SimilarWeb · Klaviyo

### Enterprise Search
Slack · Notion · Guru · Atlassian · Asana · Microsoft 365

## Nguồn

- GitHub: [anthropics/knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins)
- License: Apache-2.0
