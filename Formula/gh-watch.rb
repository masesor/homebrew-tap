class GhWatch < Formula
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"
  version "0.1.3"
  license "MIT"

  bottle do
    root_url "https://github.com/masesor/homebrew-tap/releases/download/gh-watch-0.1.3"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2817893b1fbd346f7d5c4fc119a71bca2b38c382d088b2c984751493b4e40c81"
    sha256 cellar: :any_skip_relocation, sequoia: "4cb402ab7eef72151b6ff468c9d0714971ee0622e4a385e2fbac8c0418adcf0b"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_arm64.tar.gz"
      sha256 "86ac9e6dd22ebb02d0d352eb3c4c46ca81bc543041ec87257028263aac867245"
    else
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_amd64.tar.gz"
      sha256 "fa89052d952d2c2ca2d93b44f667b80039cd40995c909447910e72ee1b5941b5"
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
