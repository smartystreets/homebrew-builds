class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.13.0"
  if Hardware::CPU.arm?
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-arm64.tar.gz"
    sha256 "ca3f5396f2880460ef075b70a30b78ef262cf26e9de22797e3d49827f829f911"
  else
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
    sha256 "82f92b1a153ca669ba0eec976665b23de9739e17d550c399581d9b1327c8100b"
  end

  # to compute sha256 on m(1) mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.13.0/satisfy_darwin-arm64.tar.gz" | sha256sum
  # to compute sha256 on intel mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.13.0/satisfy_darwin-amd64.tar.gz" | sha256sum
  def install
    bin.install "satisfy"
  end

end
