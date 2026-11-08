# Connect an MCP client

The Words/.NET endpoint is `/words/net/mcp/v1/streamable-http`. For the local launch command in the README, its URL is `http://127.0.0.1:8080/words/net/mcp/v1/streamable-http`. Remote clients need the URL exposed by your deployment.

## GitHub Copilot in VS Code

**TODO_COPILOT_CLIENT_PUBLIC_REPOSITORY_URL** — use the companion client repository for its custom Aspose.Words agent and instructions.

A VS Code workspace `.vscode/mcp.json` server entry has this shape:

```json
{
  "servers": {
    "words-net": {
      "type": "http",
      "url": "https://YOUR_MCP_HOST/words/net/mcp/v1/streamable-http"
    }
  }
}
```

Replace the placeholder with your actual endpoint. Configure credentials according to your engine's authentication settings and your client's supported credential mechanism; this example supplies no credentials. Keep secrets out of committed files.

Start `words-net` through **MCP: List Servers**. When using the companion agent, select **Aspose.Words for .NET MCP** in a new chat and ask a simple document-conversion question. Inspect tool activity and returned citations. If the agent is missing, check the opened workspace and try **Developer: Reload Window**.

## Other clients

Clients using portable MCP configuration commonly use a top-level `mcpServers` object rather than VS Code's `servers`. Use your client's HTTP transport and authentication documentation. The engine's `MCP-SERVER.md` describes its supported transports and tool contracts.

A reachable server with empty indexes cannot supply the intended product evidence. Complete publication before evaluating retrieval answers.
