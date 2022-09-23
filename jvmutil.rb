class Jvmutil < Formula
  include Language::Python::Virtualenv

  desc "A utility for viewing and managing the currently installed and active JVMs on macOS"
  homepage "https://github.com/jtrim777-dev/jvmutil"
  url "https://maven.jtrim777.dev/releases/dev/jtrim777/jvmutil/{version}/jvmutil-pkg.tgz"
  version "{version}"
  sha256 "{sha256}"
  license "MIT"

  depends_on "python"

  def install
    bin.install Dir["bin/*"]
    man1.install Dir["share/man/man1/*"]
    chmod "ugo=rwx", bin/"jvmutil", verbose: true

    executable = (bin/"jvmutil").to_s
    system executable, "relink"
  end
end
