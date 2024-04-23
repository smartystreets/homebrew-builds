class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.11.18"
  url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "ab6812fccf1a7c41c1c0aa7ff88a49c4aecc45ed8abe34493f5ad40f684909a4"

  # to compute sha256:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.11.18/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
