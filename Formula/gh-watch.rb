class GhWatch < Formula
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"
  version "0.1.0"
  revision 1
  license "MIT"

  bottle do
    root_url "https://github.com/masesor/homebrew-tap/releases/download/gh-watch-0.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a3386a1876119552bad5c1218f97080b3af98367aef5ad86e370c74f862ace59"
    sha256 cellar: :any_skip_relocation, sequoia: "35f13eb4f9954496a0c57fa46bff16e9d438d10989d9c08d301a821fd21b182b"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_arm64.tar.gz"
      sha256 "298b78fe30e3765caf009d00d3b236fcbe3f3fdd726b90ba2906ba9409a446f5"
    else
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_amd64.tar.gz"
      sha256 "138602df645c128d41e98c1066fa75c50389f9130190e0ba804bea59af2ebf07"
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
