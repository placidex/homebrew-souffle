class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://dl.bintray.com/souffle-lang/osx/souffle-1.5.1-293-g835fb00a.pkg"
  sha256 "6cd50b8d2b692268dd7335fb99097f0253831f9d7b08275f1d42d17a006448e8"

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
