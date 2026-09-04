class GhWatch < Formula
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"
  version "0.1.2"
  license "MIT"

  bottle do
    root_url "https://github.com/masesor/homebrew-tap/releases/download/gh-watch-0.1.2"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "81dc555e64caedb3ed18b286ddebf049c7856bf720fbfae7c849573027fd5c2f"
    sha256 cellar: :any_skip_relocation, sequoia: "84c2065e36d4ad1acd6824d987d6324707fc1717c46f3a38fbc653f8ae94879f"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_arm64.tar.gz"
      sha256 "1ee4e90ac8332febcaf6c47e64a1e0366a523efb732fd363ea5477cdf9746e36"
    else
      url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_amd64.tar.gz"
      sha256 "5eddf9b6360eb9e260186d72ff4cc1d64e7e0b5c88a8d62de7450b7b7ab72873"
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
