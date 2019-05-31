class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "1.0.0"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "0f68641116561f0bb2157d8b609b21350670bb2c341ad7149d90575791c7a012"

  # sha256: curl -sL "https://github.com/smartystreets/version-tools/archive/1.0.0.tar.gz" | sha256sum

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
