class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.11.2"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "c121d8278a2d0a034174bf3ea56c989452926ed19c89ee9c9650ac9355d39d45"

  # to compute sha256:
  # curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.11.2/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
