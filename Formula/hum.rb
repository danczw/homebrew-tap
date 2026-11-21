class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.1.1"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.1.1/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "98740da5a70e6272cf88ab34becb58d20826a1c8a3bf72a04b32d97bc8b16ffc"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.1.1/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "170117ebef2ed5c7f0da61d6db0144499e91664572e93d8ceac1865708e83ede"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
