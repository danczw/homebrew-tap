class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.2"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.2/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "044434068055b82b711a5a63a1b8d32acb84dd9541ead8f128eafcda67970a3a"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.2/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "1b30ddece77629778ad3419853efca4bd859886fe3558816b4aa8438d844b139"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
