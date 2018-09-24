class VersionTools < Formula
  desc "Simple versioning tools that function without external dependencies."
  homepage "https://github.com/smartystreets/version-tools"
  version "0.0.8"
  url "https://github.com/smartystreets/version-tools/archive/#{version}.tar.gz"
  sha256 "a6358740f693385797e84a03c47a8111ce50b2417d69b1c8480430e4f3f41103"

  # sha256: curl -sL "https://github.com/smartystreets/version-tools/archive/0.0.8.tar.gz" | sha256sum

  def install
    bin.install "src/tagit"
    bin.install "src/bumpit"
  end

end
