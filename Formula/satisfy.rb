class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.12.0"
  url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "08d18cc0aad7d76045578dd203577a2564edffe27f655438a1e5e1d9663306cc"

  # to compute sha256:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.0/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
