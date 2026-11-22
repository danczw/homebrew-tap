class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.3"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.3/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "73213c03feb91dbf71e2020dd1aa2a82ca5412ba4be9b1912f7002b15abff8e4"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.3/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "a6545a78a0988b34b53d16712ccf905a8e41ef84622048616fb624e768fd88f7"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
