class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.5"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "4c8fa8f84c8cb1328340bde4f5befdc774b6a1a84bcf381403c15e0928b168b9"

  # sha256: curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.5/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
