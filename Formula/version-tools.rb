class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.2"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "293b9db2926c6da164b4264767948a5e92b741f9aef5c7f6add3d5b9c4387f2c"

  depends_on "git"

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
