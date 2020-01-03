class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "1.0.1"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "772ab6f7bd0951fafe2ffb7395af0ab00373c121072fe203d0a2de81e720a764"

  # sha256: curl -sL "https://github.com/smartystreets/version-tools/archive/1.0.1.tar.gz" | sha256sum

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
