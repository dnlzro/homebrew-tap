class Displayctl < Formula
  desc "List and toggle macOS displays from the command-line"
  homepage "https://github.com/dnlzro/displayctl"
  url "https://github.com/dnlzro/displayctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "33d6b6849c9ba37e1100fd16f9a3f0d65c6c84118f1ba3708dfbed4ea5656de3"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"displayctl", "list"
  end
end
