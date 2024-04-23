class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smarty/satisfy"
  version "v0.11.18"
  url "https://github.com/smarty/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "5a4156cc2c0c65bbac988e43d710d1942984aaa9737ec2f2da3ca46f7c14e59e"

  # to compute sha256:
  # curl -sL "https://github.com/smarty/satisfy/releases/download/v0.11.18/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
