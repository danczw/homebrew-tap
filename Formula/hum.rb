class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.6"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.6/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6d2730e2e3283104a2f90cb4253709d65cc27254853d39d8aed7630ce12044fc"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.6/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "37ab9004890e3e75ed71111b1356ccb463b56f8703167ae1ab900a55e5c3e442"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
