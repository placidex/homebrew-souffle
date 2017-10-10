class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://github.com/souffle-lang/souffle/archive/1.2.0.tar.gz"
  sha256 "c40bda0cf65477cb8c6227018effaa3c32d7394f9d436f5f769719202b5d59c7"

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
