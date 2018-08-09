class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.1"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "dfe46bf07e46feb813133393208280dc4378fadb20fdcc8f5f0931cd75ffb9a1"

  depends_on "git"

  def install
    bin.install "calculate-version"
    bin.install "git-tag-version"
  end

end
