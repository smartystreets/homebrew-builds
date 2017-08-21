class Openssh < Formula
  desc "OpenBSD freely-licensed SSH connectivity tools"
  homepage "https://www.openssh.com/"

  url "https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-7.4p1.tar.gz"
  mirror "https://www.mirrorservice.org/pub/OpenBSD/OpenSSH/portable/openssh-7.4p1.tar.gz"
  version "7.4p1"
  sha256 "1b1fc4a14e2024293181924ed24872e6f2e06293f3e8926a376b8aec481f19d1"

  # bottle do
  #   sha256 "5b40ddc62eb4356cc446b17af0ceb902e9ab1bb19149b54001a023c1d54da1a3" => :sierra
  #   sha256 "f8611f9802741673d8879ec9824fea3b40c490ee2e590c31a9bb7b2eb43dcfc8" => :el_capitan
  #   sha256 "111a731d168239621c6930e837b1e1266fff267429543ce1b6cb8400a4d64bed" => :yosemite
  # end

  # Please don't resubmit the keychain patch option. It will never be accepted.
  # https://github.com/Homebrew/homebrew-dupes/pull/482#issuecomment-118994372

  depends_on "openssl"
  depends_on "ldns"
  depends_on "pkg-config" => :build if build.with? "ldns"

  # Both these patches are applied by Apple.
  patch do
    url "https://raw.githubusercontent.com/Homebrew/patches/1860b0a74/openssh/patch-sandbox-darwin.c-apple-sandbox-named-external.diff"
    sha256 "d886b98f99fd27e3157b02b5b57f3fb49f43fd33806195970d4567f12be66e71"
  end

  patch do
    url "https://raw.githubusercontent.com/Homebrew/patches/d8b2d8c2/openssh/patch-sshd.c-apple-sandbox-named-external.diff"
    sha256 "3505c58bf1e584c8af92d916fe5f3f1899a6b15cc64a00ddece1dc0874b2f78f"
  end

  def install
    ENV.append "CPPFLAGS", "-D__APPLE_SANDBOX_NAMED_EXTERNAL__"

    args = %W[
      --with-libedit
      --with-kerberos5
      --prefix=#{prefix}
      --sysconfdir=#{etc}/ssh
      --with-pam
      --with-ldns
      --with-ssl-dir=#{Formula["openssl"].opt_prefix}
    ]

    system "./configure", *args
    system "make"
    system "make", "install"

    # This was removed by upstream with very little announcement and has
    # potential to break scripts, so recreate it for now.
    # Debian have done the same thing.
    bin.install_symlink bin/"ssh" => "slogin"
  end

  test do
    assert_match "OpenSSH_", shell_output("#{bin}/ssh -V 2>&1")
  end
end
