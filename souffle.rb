class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://github.com/souffle-lang/souffle/releases/download/1.0.0/souffle_1.0.0.orig.tar.gz"
  sha256 "8b3e38d683132c3d628e0eb4e03ee42e937eaa724f2c170560f2003815fdc04a"

  depends_on "libtool" => :build
  depends_on "bison" => :build
  depends_on "md5sha1sum" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build

  bottle do
    cellar :any
    sha256 "858d0bc449d6df999b741361d720debde07bccdb28df4550e28f81a84a8a05f6" => :sierra
  end

  def install
    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
