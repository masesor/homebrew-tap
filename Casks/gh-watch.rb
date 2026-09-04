cask "gh-watch" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "298b78fe30e3765caf009d00d3b236fcbe3f3fdd726b90ba2906ba9409a446f5",
         intel: "138602df645c128d41e98c1066fa75c50389f9130190e0ba804bea59af2ebf07"

  url "https://github.com/masesor/gh-watch/releases/download/v#{version}/gh-watch_#{version}_darwin_#{arch}.tar.gz"
  name "gh-watch"
  desc "Keyboard-first GitHub Actions and pull request TUI"
  homepage "https://github.com/masesor/gh-watch"

  depends_on formula: "gh"

  binary "gh-watch"
end
