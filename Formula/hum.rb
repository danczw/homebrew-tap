class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.5"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.5/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7fce5531a042579c73c46339d275453d95202fccbc461eca3d66bfb0c0fc09fe"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.5/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "448474f4bab3e0930e2007e1f19a1e231d08b4afc73aa5692321e0a959160041"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
