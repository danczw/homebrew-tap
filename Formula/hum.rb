class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.4.1"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.4.1/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9c0ca110951a488f78318c5bfcdd381a447b105a49256a2368bce416dca5bfc1"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.4.1/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "336bfa51b641f22a3af9e5a00797f14812d233937a74f93ae0808f89d75bceba"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
