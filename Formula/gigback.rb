class Gigback < Formula
  desc "Tiered, safety-first storage cleaner for developer Macs"
  homepage "https://github.com/evojewel/gigback"
  url "https://github.com/evojewel/gigback/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "246ad6394eb0374b9dbd6543bb8b6bf3f7963d2c39c71a77dba3ad3e8ba9bc99"
  license "MIT"

  bottle do
    root_url "https://github.com/evojewel/gigback/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, all: "87a887b736f09e3198a95c38cbd73348e192b7412fbb68d6fde6280a13fb984d"
  end

  def install
    libexec.install "bin", "lib"
    (bin/"gigback").write_env_script libexec/"bin/gigback", {}
  end

  test do
    assert_match "gigback", shell_output("#{bin}/gigback --version")
  end
end
