class Displayctl < Formula
  desc "List and toggle macOS displays from the command-line"
  homepage "https://github.com/dnlzro/displayctl"
  url "https://github.com/dnlzro/displayctl/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8f4b3e52a18bce66a530b905dda764b2b85ef639ed2f570d8fdd0a0d696074d6"
  license "MIT"

  bottle do
    root_url "https://github.com/dnlzro/homebrew-tap/releases/download/displayctl-0.2.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "371eb890a2f6711018dbbb9ddb8326d1b9cbfda4a605a8c58a2fad5c383d09c1"
  end

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"displayctl", "--version"
  end
end
