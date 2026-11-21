class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.1"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.1/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "55ffdf1973855b7b992ac39985e27c33a91b76df450490ce8d4119babfcc652c"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.1/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "7e5a5989041af01372252be3a84874900bcf8c5c9ef066cd938b773caeb4c9ee"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
