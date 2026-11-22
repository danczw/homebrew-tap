class Hum < Formula
  desc "Terminal monitor for machines running coding agents"
  homepage "https://github.com/danczw/hum"
  version "0.2.4"
  license "Apache-2.0"

  depends_on :linux

  on_intel do
    url "https://github.com/danczw/hum/releases/download/v0.2.4/hum-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e33a0cf2a914ee7bf9365948f298fe7ce5e15c3adb282c107637f9a9df89ab78"
  end

  on_arm do
    url "https://github.com/danczw/hum/releases/download/v0.2.4/hum-aarch64-unknown-linux-musl.tar.gz"
    sha256 "0f1c1fdc0254bb99825c5bb085e4c35668804e8888522bc0b4001eebdce0a9b8"
  end

  def install
    bin.install "hum"
  end

  test do
    assert_equal "hum #{version}", shell_output("#{bin}/hum --version").strip
  end
end
