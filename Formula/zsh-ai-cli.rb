class ZshAiCli < Formula
  desc "Backend-agnostic Zsh AI assistant that converts language to shell commands"
  homepage "https://github.com/trongnghia203/zsh-ai-cli"
  url "https://registry.npmjs.org/zsh-ai-cli/-/zsh-ai-cli-0.1.1.tgz"
  sha256 "31fd45f1c225301241b1d0fcc0ec41173f44b26bbae49ce70b0fd3ccfda3200c"
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
