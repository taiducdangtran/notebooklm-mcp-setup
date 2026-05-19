# NotebookLM MCP Setup

Kết nối Claude Code với Google NotebookLM thông qua MCP (Model Context Protocol).

## Yêu cầu

- Node.js >= 18
- Chrome (stable) hoặc Chromium
- Tài khoản Google

## Cài đặt nhanh

### Bước 1 — Thêm MCP vào Claude Code

```bash
claude mcp add notebooklm -- npx notebooklm-mcp@latest
```

Hoặc thêm thủ công vào `~/.claude.json`:

```json
{
  "mcpServers": {
    "notebooklm": {
      "command": "npx",
      "args": ["notebooklm-mcp@latest"],
      "env": {
        "HEADLESS": "true",
        "NOTEBOOKLM_PROFILE": "full",
        "ANSWER_TIMEOUT_MS": "600000"
      }
    }
  }
}
```

> File `mcp-config.json` trong repo này chứa sẵn cấu hình trên để copy vào.

### Bước 2 — Xác thực Google (chạy 1 lần)

Trong Claude Code, gọi tool:

```
setup_auth
```

Trình duyệt Chrome sẽ mở ra. Đăng nhập Google của bạn. Cookie được lưu lâu dài, không cần đăng nhập lại.

### Bước 3 — Sử dụng

Sau khi xác thực, bạn có thể dùng các tool sau trong Claude Code:

| Tool | Mô tả |
|------|-------|
| `ask_notebook` | Đặt câu hỏi cho notebook, nhận trả lời có trích dẫn |
| `add_source` | Thêm nguồn (URL hoặc văn bản) vào notebook |
| `generate_audio_overview` | Tạo tóm tắt audio |
| `list_notebooks` | Liệt kê tất cả notebook |
| `add_notebook` | Tạo notebook mới |
| `setup_auth` | Xác thực Google (chỉ cần chạy 1 lần) |

## Biến môi trường

| Biến | Mặc định | Mô tả |
|------|----------|-------|
| `HEADLESS` | `true` | Chạy Chrome ẩn (headless) |
| `NOTEBOOKLM_PROFILE` | `full` | Bộ tool: `minimal`, `standard`, `full` |
| `NOTEBOOKLM_TRANSPORT` | `stdio` | Giao thức: `stdio` hoặc `http` |
| `NOTEBOOKLM_PORT` | `3000` | Port khi dùng HTTP transport |
| `ANSWER_TIMEOUT_MS` | `600000` | Thời gian chờ tối đa (ms) |

## HTTP Mode (cho n8n / Zapier / Make)

```bash
npx notebooklm-mcp@latest --transport http --port 3000 --host 0.0.0.0
```

Gửi JSON-RPC POST tới `http://host:3000/mcp` với header `Mcp-Session-Id`.

## Kiểm tra setup

```bash
bash setup.sh
```

## Nguồn

- MCP Server: https://github.com/PleasePrompto/notebooklm-mcp
- Phiên bản: v2.0.0
