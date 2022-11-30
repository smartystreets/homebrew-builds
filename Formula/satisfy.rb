class Satisfy < Formula
  desc "Simple ultra lightweight dependency manager."
  homepage "https://github.com/smartystreets/satisfy"
  version "v0.11.1"
  url "https://github.com/smartystreets/satisfy/releases/download/#{version}/satisfy_darwin-amd64.tar.gz"
  sha256 "18e3f2a6fd1095a34b6e4b3470eed12ff34b6eae8a0f11f10a593716e2aab0d7"

  # to compute sha256:
  # curl -sL "https://github.com/smartystreets/satisfy/releases/download/v0.9.11/satisfy_darwin-amd64.tar.gz" | sha256sum

  def install
    bin.install "satisfy"
  end

end
