# Maintaining the public deployment

This repository uses public engine and plugin submodules with explicitly pinned commits. It starts with a fresh publication history.

## Update components

1. Fetch the desired revisions in `engine/` and `plugins/words-net/` and check out the commits you intend to release.
2. Run `./scripts/setup.sh`, fixture registration, and the plugin regression suite.
3. Review and commit both gitlink changes with any required deployment updates. Do not initialize nested historical source submodules recursively.

GitHub Actions checks shell syntax and configuration, then installs the pinned engine and verifies registration and plugin tests. It does not deploy services or publish indexed content.

## Published companions

- [Context engine](https://github.com/aspose-core-mcp/context-engine)
- [Words/.NET plugin](https://github.com/aspose-words-mcp/net-plugin)
- [Copilot client agent](https://github.com/aspose-words-mcp/net-client-copilot-agent)

See [setup](setup.md#container-deployment) for the current container deployment boundary. A product-specific container composition is not bundled.

The project uses the MIT license in the repository root. Preserve component licenses and third-party notices when distributing the deployment.
