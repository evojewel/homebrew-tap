class Gigback < Formula
  desc "Tiered, safety-first storage cleaner for developer Macs"
  homepage "https://github.com/evojewel/gigback"
  url "https://github.com/evojewel/gigback/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ad76829ff069b02c511152d95b4ddde1abbefe346df4afb8b6f466c0cd4425bb"
  license "MIT"


  def install
    libexec.install "bin", "lib"
    (bin/"gigback").write_env_script libexec/"bin/gigback", {}
  end

  test do
    assert_match "gigback", shell_output("#{bin}/gigback --version")
  end
end
