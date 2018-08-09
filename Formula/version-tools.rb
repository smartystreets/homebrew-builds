class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.2"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "d85cae222c0d68c2551be183dbda60fb9014846cad9d1f037a89e92f6cda8711"

  depends_on "git"

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
