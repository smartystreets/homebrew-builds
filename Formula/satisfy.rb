class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.12.0"
  if Hardware::CPU.arm?
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-arm64.tar.gz"
    sha256 "60ba5ee7ffe40af292b3397a2f48797c0aa00a504e1370592ad1130068e56375"
  else
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
    sha256 "08d18cc0aad7d76045578dd203577a2564edffe27f655438a1e5e1d9663306cc"
  end

  # to compute sha256 on intel mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.0/satisfy_darwin-amd64.tar.gz" | sha256sum
  # to compute sha256 on m(1) mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.0/satisfy_darwin-arm64.tar.gz" | sha256sum
  def install
    bin.install "satisfy"
  end

end
