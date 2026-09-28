class Repowire < Formula
  desc "Mesh network for AI coding agents"
  homepage "https://repowire.io"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.2/repowire_0.20.2_darwin_arm64.tar.gz"
      sha256 "2029853ef228c341d6ba11735ee427a99e3d2cf6888381116fb98837ac7a14cb"
    end
    on_intel do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.2/repowire_0.20.2_darwin_amd64.tar.gz"
      sha256 "641366610457e8acdb8c7ccf7d46d7bc0ea6897426d189b10db85382e9f0217c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.2/repowire_0.20.2_linux_arm64.tar.gz"
      sha256 "4ad85bb6f0e0650814da2f4596ec58434b1adaa668dd544296ee66a4bd8ec377"
    end
    on_intel do
      url "https://github.com/prassanna-ravishankar/repowire/releases/download/v0.20.2/repowire_0.20.2_linux_amd64.tar.gz"
      sha256 "727ed963104890f6d0c51b8fbf4f10c905a376f735bb725be107d70234d95a98"
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
