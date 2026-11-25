class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.3.0"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.3.0/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9e82990a943ed8e2502a50dd79e25559c8b7ec9339168b2d1eed886dde74cb66"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.3.0/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "7746ddfaed49dfcffe1c11b87d0a00ef5d1b7995f781b41b2a124c5ec10ffa51"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
