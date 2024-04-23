class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.11.18"
  url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "fa2e5d7c2c937b7e0f1a9e34a847ae2f8407300ca15dd45c56996dd5a174d267"

  # to compute sha256:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.11.18/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
