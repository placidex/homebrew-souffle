class Souffle < Formula
  desc "Logic Programming Language based on Datalog."
  homepage "https://souffle-lang.github.io"

  stable do
    url "https://github.com/souffle-lang/souffle", :using => :git, :tag => "2.3", :shallow => false
  end

  head "https://github.com/souffle-lang/souffle.git", :shallow => false

  depends_on "bison" => :build
  depends_on "cmake" => :build
  depends_on "libffi" => :build
  depends_on "mcpp"
  depends_on "pkg-config" => :build
  depends_on "gcc"

  def install
    if build.head?
      system "git", "fetch", "--tags"
    end

    system "cmake", "-B", "build", "-S", ".", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DSOUFFLE_BASH_COMPLETION=OFF", "-DCMAKE_CXX_COMPILER=g++-11"
    system "cmake", "--build", "build", "--target", "install", "-j"
  end

  test do
    assert_equal <<-EOS, shell_output("#{bin}/souffle --version 2>&1")
----------------------------------------------------------------------------
Version: 2.3
----------------------------------------------------------------------------
Copyright (c) 2016-22 The Souffle Developers.
Copyright (c) 2013-16 Oracle and/or its affiliates.
All rights reserved.
============================================================================

EOS
  end
end
