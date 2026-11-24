class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.10"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.10/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "87b1dfdb4d507d79c710b58b01679b6bcc3fbfda25da9a756986f2c10269fcfd"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.10/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "610f8832fb3b03cf34a9dbb17f2d3db1a21dc9b9b4538d8a18457d5e4c5be3d7"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
