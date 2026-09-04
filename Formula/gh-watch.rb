class GhWatch < Formula
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"
  version "0.1.1"
  license "MIT"

  bottle do
    root_url "https://github.com/masesor/homebrew-tap/releases/download/gh-watch-0.1.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "664e5b538f59e9cc8f063971b8d97065f4ed7bec52b4338be919700dc1c315a0"
    sha256 cellar: :any_skip_relocation, sequoia: "e2165382ebf680d2862d1adac313258cf1793f1b98518bdb95cec35084af0b1c"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_arm64.tar.gz"
      sha256 "678728e0754f166b4d374302e9e530b9bdf71ae66f68fa89a85f3a4a708ff7d2"
    else
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_amd64.tar.gz"
      sha256 "92763240ac8fa3fa31083ab4cbe4d7333307af1784f82109e4706b73b6b705be"
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
