class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.14.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-arm64.tar.gz"
      sha256 "e71d957b117f0ab61fa3ec94917d874082355253a3773e8c4fc5b5d734d19e29"
    else
      url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
      sha256 "698294130fcbfcfcce63a93a688b7566818631ee099311a033b2f8df5996bff7"
    end
  else
    url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_linux-amd64.tar.gz"
    sha256 "a23317ea45e65deb553f8ec776d59ea8b80833957ec275410e2f68896ae9f47b"
  end

  # to compute sha256 on m(1) mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.14.1/satisfy_darwin-arm64.tar.gz" | sha256sum
  # to compute sha256 on intel mac:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.14.1/satisfy_darwin-amd64.tar.gz" | sha256sum
  def install
    bin.install "satisfy"
  end

end
