class ZshAiCli < Formula
  desc "Backend-agnostic Zsh AI assistant that converts language to shell commands"
  homepage "https://github.com/trongnghia203/zsh-ai-cli"
  url "https://registry.npmjs.org/zsh-ai-cli/-/zsh-ai-cli-0.1.3.tgz"
  sha256 "36e6c3e7a78e1b64adb4bedf9ea8eed29bf609f3ed7d62480f997f6eda5c39b4"
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
