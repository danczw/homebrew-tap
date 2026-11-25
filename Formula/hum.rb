class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.4.0"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.4.0/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0b015ec632ff913f4310fc56fcc7803a6ecb834bb6c06e83eaf217dbef016a05"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.4.0/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "7f8c9d5e8f8e6bb3caacb562811ca370d59934b0750c69aff96573039021a693"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
