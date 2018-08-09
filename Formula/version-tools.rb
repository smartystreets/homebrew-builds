class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.3"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "6f9df271bc814a868cbb7a1b114b1828beb215ab82757a3411268e8854cc39cc"

  depends_on "git"

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
