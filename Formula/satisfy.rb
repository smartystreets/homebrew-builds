class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.11"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "969ef9ae8a71447da62e0e79b96111e61fe46345a2cd8818131c7b6dea6f5daa"

  # to compute sha256:
  # curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.11/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
