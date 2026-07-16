class ZshAiCli < Formula
  desc "Backend-agnostic Zsh AI assistant that converts language to shell commands"
  homepage "https://github.com/trongnghia203/zsh-ai-cli"
  url "https://registry.npmjs.org/zsh-ai-cli/-/zsh-ai-cli-0.1.2.tgz"
  sha256 "7f2aae04f2e010ca8d44503d4c79e691b16ae69a5f1bb46b6bee74ede17c745c"
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
