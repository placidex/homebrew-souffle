class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://dl.bintray.com/souffle-lang/osx/souffle-1.5.1-280-g1aec619e.pkg"
  sha256 "bdabeb9d28acb04958fd9a07d201cf755504a8912dc5e5db5f446c78a3491d03"

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
