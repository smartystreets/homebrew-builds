class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.8"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "8ef20b08c9efdc7d9cabc9b2e7002bc36ef25984b420dc774c3ecb036a8d5bfd"

  # sha256: curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.8/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
