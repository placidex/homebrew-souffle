class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://dl.bintray.com/souffle-lang/osx/souffle-1.5.1-294-g3955d2c7.tar.gz"
  sha256 "578bc8a15b37cc8d6536007626518a84be9809b1affca5207a641cd5d9313fdd"

  depends_on "libtool" => :build
  depends_on "bison" => :build
  depends_on "md5sha1sum" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
