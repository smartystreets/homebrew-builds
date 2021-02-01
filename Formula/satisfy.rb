class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.9.6"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "a7bff338c07c35909a164b687a12ec0a528c578f99eb4f50e4f44ea936fe3893"

  # sha256: curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.5/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
