class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  stable do
    url "https://dl.bintray.com/souffle-lang/osx/souffle-1.6.2.tar.gz"
    sha256 "bbb428d68b5529cae6768c36082ea7c7d813d5d62f0732a24ab3f6cdacf622c1"
  end
  head "https://github.com/souffle-lang/souffle.git", :shallow => false

  depends_on "libtool" => :build
  depends_on "bison" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libffi" => :build
  depends_on "mcpp"
  depends_on "pkg-config" => :build

  def install
    if build.head?
      system "git", "fetch", "--tags"
      system "./bootstrap"
    end

    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
