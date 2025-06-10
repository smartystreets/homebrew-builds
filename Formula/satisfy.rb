class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.12.5"
  if Hardware::CPU.arm?
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-arm64.tar.gz"
    sha256 "cde8b9f59d116b73db3b66fc53c4c8f2d9f25152c565c44449120b47247c8a60"
  else
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
    sha256 "6ff0a89434ecc8d93aae26fdc5a2133b1a1c350a8315b20643aa305c4dfc6ee2"
  end

  # to compute sha256 on m(1) mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.5/satisfy_darwin-arm64.tar.gz" | sha256sum
  # to compute sha256 on intel mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.5/satisfy_darwin-amd64.tar.gz" | sha256sum
  def install
    bin.install "satisfy"
  end

end
