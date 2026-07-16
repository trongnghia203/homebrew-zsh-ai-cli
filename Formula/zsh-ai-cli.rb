class ZshAiCli < Formula
  desc "Backend-agnostic Zsh AI assistant that converts language to shell commands"
  homepage "https://github.com/trongnghia203/zsh-ai-cli"
  url "https://registry.npmjs.org/zsh-ai-cli/-/zsh-ai-cli-0.1.5.tgz"
  sha256 "bab1160d0a66c115808dfc4f227fd7d2173be9545c051b2b7c7a9f2f6e31a27c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "usage: zsh-ai-cli", shell_output("#{bin}/zsh-ai-cli --help")
  end
end
