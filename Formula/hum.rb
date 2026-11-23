class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.8"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.8/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b0dbe182473d8a1a5a39c8fb12e6eec3a6570466b1f0c195fac41737b1a71750"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.8/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "ebd4a8178eb2d9227e645d7347fca231dc6672f20dfb8e81b0f5bd4e4a290e50"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
