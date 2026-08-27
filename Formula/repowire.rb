class Repowire < Formula
  desc "Mesh network for AI coding agents"
  homepage "https://repowire.io"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.18.0/repowire_0.18.0_darwin_arm64.tar.gz"
      sha256 "addbeaf28f58d09faf95c56abe5904ab9a76df262bc04129feb3e929b43a67c0"
    end
    on_intel do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.18.0/repowire_0.18.0_darwin_amd64.tar.gz"
      sha256 "14006a9ede94f1278cbabe8f1b7e0930d9818493b8669bb6754efe2cdf114059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.18.0/repowire_0.18.0_linux_arm64.tar.gz"
      sha256 "01ec67e6a2a8306607f507b9780a0cf9682580f2060dbe0c8d25a11c3eb1cf63"
    end
    on_intel do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.18.0/repowire_0.18.0_linux_amd64.tar.gz"
      sha256 "43aade300486777af41f38cda56d70b344040bba0e8558f7a0e7d1672a8e8f0a"
    end
  end

  def install
    bin.install "repowire"
    prefix.install "web"
  end

  def caveats
    <<~EOS
      Finish setup with:
        repowire setup
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/repowire version").strip
  end
end
