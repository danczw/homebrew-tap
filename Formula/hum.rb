class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.1.0"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.1.0/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "53be8aa3f3d27f2f092c6e03b04361686556674a167235df43e4abd8c76405e2"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.1.0/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "004eb2bb52f5503f1b76684c1aec471d405d228d6441206866e205e0fa2b675a"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
