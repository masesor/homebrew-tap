# Homebrew Tap

Custom Homebrew tap for macOS applications and command-line tools.

## Installation

```bash
brew tap masesor/tap https://github.com/masesor/homebrew-tap
```

## Available Packages

### gh-watch

A k9s-style terminal dashboard for workflow runs, pull requests, branches, and searchable GitHub Actions logs across personal and enterprise hosts.

```bash
brew install masesor/tap/gh-watch
```

**Requirements:**
- macOS on Apple Silicon or Intel
- GitHub CLI authentication (`gh auth login`)

For a GitHub Enterprise host, authenticate it separately with `gh auth login --hostname HOST`.

The formula installs a checksum-pinned binary through Homebrew's Cellar, avoiding both Cask quarantine and local Xcode build requirements.

### AWS Billing Bar

A macOS menu bar app to monitor AWS billing costs across multiple accounts.

```bash
brew install --cask aws-billing-bar
```

**Features:**
- Multi-account support
- Real-time cost tracking
- Service breakdown
- Visual trends and charts
- Color-coded accounts
- Auto-refresh

**Requirements:**
- macOS 14.0 (Sonoma) or later
- AWS CLI configured with valid credentials
- AWS Cost Explorer enabled
