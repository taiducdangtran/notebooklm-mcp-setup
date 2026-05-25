---
name: search
description: Search across all connected sources with optional filters
---

Search across all connected workplace tools:
1. Decompose the query into source-specific searches
2. Query Slack, Notion, Atlassian, email, and other connected sources in parallel
3. Deduplicate and rank results by relevance
4. Synthesize findings with source attribution
5. Return a unified result set

Supported filters:
- `from:<person>` - Filter by author/sender
- `after:<date>` - Results after date (YYYY-MM-DD)
- `before:<date>` - Results before date (YYYY-MM-DD)
- `type:<chat|doc|email|ticket>` - Filter by content type
