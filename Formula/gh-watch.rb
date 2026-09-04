class GhWatch < Formula
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"
  url "https://github.com/masesor/gh-watch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dd7c1c336ca9f7e83d42db6a1cc535013a4ffe1ad5acc141860e211d7f24e123"
  license "MIT"

  depends_on "go" => :build
  depends_on "gh"

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", "-trimpath", "-ldflags", ldflags, "-o", bin/"gh-watch", "./cmd/gh-watch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gh-watch --version")
  end
end
