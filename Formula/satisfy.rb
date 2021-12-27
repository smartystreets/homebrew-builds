class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.10"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "54fdf56383022b3c479564b5d505d82c088cafc37480214bcd8e71bceb42d46a"

  # to compute sha256:
  # curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.10/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
