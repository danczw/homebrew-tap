class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.7"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.7/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ffa8be1dacb2a2baaad532a5ae846a009c64baa525c2db78b971608ece60dea9"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.7/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "600fbe56180eb11123efd39cc438159ce491ebb2f65ffcc1c13555fcf2ddb209"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
