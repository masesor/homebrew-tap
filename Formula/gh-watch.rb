class GhWatch < Formula
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"
  version "0.1.4"
  license "MIT"

  bottle do
    root_url "https://github.com/masesor/homebrew-tap/releases/download/gh-watch-0.1.4"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c5946879be87547bd7ddc1984787b9691bd4c072f401f7a6fc72fdd8409606c2"
    sha256 cellar: :any_skip_relocation, sequoia: "3145435792c95c2c93ebada12be34dbccbc5a63a97ae3881015525c544bad0ac"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_arm64.tar.gz"
      sha256 "d9d80e4c2c2260e8939bc89a20b18a0fe6ca626fc5b5ab7e7cad7fbe0f83c56e"
    else
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_amd64.tar.gz"
      sha256 "ee423992c9d7b378b05b98d6fd30e9f618ebfb6b52770d2767dcb78debeacd7e"
    end
  end

  depends_on :macos
  depends_on "gh"

  def install
    bin.install "gh-watch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-watch --version")
  end
end
