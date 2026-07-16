class ZshAiCli < Formula
  desc "Backend-agnostic Zsh AI assistant that converts language to shell commands"
  homepage "https://github.com/trongnghia203/zsh-ai-cli"
  url "https://registry.npmjs.org/zsh-ai-cli/-/zsh-ai-cli-0.1.0.tgz"
  sha256 "30750913078c0855cb71bbd9170e628cf2db89ce16c36354331256dd884aec8a"
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
