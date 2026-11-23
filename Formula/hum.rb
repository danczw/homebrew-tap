class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.9"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.9/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "461fa7bcc0d7d450fbb12eed7be1c71bf75a7d383dd7bd7cd2757b1f96c4de2c"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.9/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "24ccf5dd848e3a3982d5e928205f228b580fbeb1844c4a6aaec369047351c4d2"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
