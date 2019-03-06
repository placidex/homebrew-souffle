class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  url "https://dl.bintray.com/souffle-lang/osx/souffle-1.5.1-280-gaf2daea1.pkg"
  sha256 "048fd84e72bed78ffd54968bfd7b3fe9d02a6945d7421e82064956623d472771"

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
