class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.6"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "68b54d8ed17e3515382db3cdefdf13ace10e76cea14455d65563618b578e4da6"

  # sha256: curl -sL "https://github.com/smartystreets/version-tools/archive/0.0.6.tar.gz" | sha256sum

  depends_on "git"

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
