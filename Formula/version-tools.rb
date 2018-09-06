class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.5"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "3ba745e198a18137957319b740ba8957f8a1d337f7bd5e965e8d93e2c6dae3a4"

  # sha256: curl -sL "https://github.com/smartystreets/version-tools/archive/0.0.5.tar.gz" | sha256sum

  depends_on "git"

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
