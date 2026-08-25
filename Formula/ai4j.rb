class Ai4j < Formula
  desc "Author and build AI toolkits for Claude Code and Codex"
  homepage "https://github.com/alx4j/ai4j"
  url "https://github.com/alx4j/ai4j/releases/download/v1.0.0/ai4j"
  sha256 "6fce6df2590431aea44c990138e25ca1df87fed9781d494284b63a311ad22f4b"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "ai4j"
    (bin/"ai4j").chmod 0755
  end

  test do
    assert_match '"cliVersion":"v1.0.0"', shell_output("#{bin}/ai4j version --json")
  end
end
