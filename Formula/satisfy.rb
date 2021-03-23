class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.7"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "f4c9fb3bf752010ef229309c00e4d73cd4313cb9d32860ff54b974e7b5d22e56"

  # sha256: curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.5/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end


https://github.com/smartystreets/satisfy/releases/download/v0.9.7/satisfy_darwin-amd64.tar.gz