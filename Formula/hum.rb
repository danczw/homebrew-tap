class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.11"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.11/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b1ba63e2d55d8fc3a8fc49b6d8e427f0d46b2cfbcbd78d6a1fd092d7be45d09c"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.11/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "3c77c9ee84df5fba5c2b53c595ad49c13139ffbb4cd45f368fdd67bf3b977241"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
