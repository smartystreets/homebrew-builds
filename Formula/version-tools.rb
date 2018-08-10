class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.4"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "dbe9cd9e51db346e40a7683490d87215927e80c459f9bd8ffe04f8c7dd73c150"

  # sha256: curl -sL "https://github.com/smartystreets/version-tools/archive/0.0.4.tar.gz" | sha256sum

  depends_on "git"

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
