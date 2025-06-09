class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.12.4"
  if Hardware::CPU.arm?
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-arm64.tar.gz"
    sha256 "1340141c73fba996998ba93d2f384b61baa017a777d348cf599ae98464869c3b"
  else
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
    sha256 "f97faee9e80435bda677f6326b7b3bd887f68337693cb96c0ad81f54a7e90d55"
  end

  # to compute sha256 on intel mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.0/satisfy_darwin-amd64.tar.gz" | sha256sum
  # to compute sha256 on m(1) mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.12.0/satisfy_darwin-arm64.tar.gz" | sha256sum
  def install
    bin.install "satisfy"
  end

end
