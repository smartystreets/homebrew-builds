class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.12.0"
  url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "140b6cfdfd880fefaf1c8edabfe9bac2f4decddaba98cfc1fd5ca141453efb11"

  # to compute sha256:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.0/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
