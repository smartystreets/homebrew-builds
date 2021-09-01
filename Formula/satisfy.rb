class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.9"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "3c9ac29573a29b1768ffabc45539a2b2923682f35d75ac5ddb3b2467cd37a622"

  # to compute sha256:
  # curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.9/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
