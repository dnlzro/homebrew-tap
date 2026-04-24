class Displayctl < Formula
  desc "List and toggle macOS displays from the command-line"
  homepage "https://github.com/dnlzro/displayctl"
  url "https://github.com/dnlzro/displayctl/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8f4b3e52a18bce66a530b905dda764b2b85ef639ed2f570d8fdd0a0d696074d6"
  license "MIT"

  bottle do
    root_url "https://github.com/dnlzro/homebrew-tap/releases/download/displayctl-0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "0a45aed82ee4782853475e5ea5d343ddea1750431087afc5555ec9d3c7f0d9b9"
  end

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"displayctl", "list"
  end
end
