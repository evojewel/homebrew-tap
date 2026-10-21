class Gigback < Formula
  desc "Tiered, safety-first storage cleaner for developer Macs"
  homepage "https://github.com/evojewel/gigback"
  url "https://github.com/evojewel/gigback/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "89d6c1d5991a8dfa8a8fb2a331840e6f7f1020475aae4be6c66958b7d8f562f0"
  license "MIT"

  bottle do
    root_url "https://github.com/evojewel/gigback/releases/download/v0.3.0"
    sha256 cellar: :any_skip_relocation, all: "619c648e22073134a11fc3103114ef9fecc86bef9e8abf45ec79f79ea9f2d73e"
  end

  def install
    libexec.install "bin", "lib"
    (bin/"gigback").write_env_script libexec/"bin/gigback", {}
  end

  test do
    assert_match "gigback", shell_output("#{bin}/gigback --version")
  end
end
