class Repowire < Formula
  desc "Mesh network for AI coding agents"
  homepage "https://repowire.io"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.1/repowire_0.20.1_darwin_arm64.tar.gz"
      sha256 "b4e0754293d88519afddcdf6c01761064c510a4808e7b49b9a2d72b1febb2c16"
    end
    on_intel do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.1/repowire_0.20.1_darwin_amd64.tar.gz"
      sha256 "8c1f2a130ac294135daecfcd5350ab41aa0e64b18a22bb8c8301b226111a371b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.1/repowire_0.20.1_linux_arm64.tar.gz"
      sha256 "c5ed312129ca6331e53c28c3a5386e55aa59b3564930c0c69db41dae5da63b22"
    end
    on_intel do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.1/repowire_0.20.1_linux_amd64.tar.gz"
      sha256 "e6f4ec73222c92713610eeac0c1a6d1b6f976b6577d52bb47fcb6d4a45aa0978"
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
