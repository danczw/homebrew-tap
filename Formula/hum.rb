class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.0"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.0/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "96ff384906daa44f2a646bcbb4f06d0a25672b7738ff24f7403ed81399b5a9da"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.0/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "0a0f2209bc0ce8c968fa6a976b4ea09a27730cf0602f03b3bf36cff449b0f6d4"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
