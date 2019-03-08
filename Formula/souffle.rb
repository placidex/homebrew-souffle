class Souffle < Formula
  desc "Translator of declarative Datalog programs into the C++ language."
  homepage "https://github.com/souffle-lang/souffle/wiki"
  stable do
    url "https://dl.bintray.com/souffle-lang/osx/souffle-1.5.1-294-g3955d2c7.tar.gz"
    sha256 "3ef5dea77203c68aed623b80610a54053cc98a93cbbf7cd9b6df45635589403f"
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
