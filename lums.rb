require "formula"

class Lums < Formula
  homepage "https://github.com/Lums-proj/Lums"
  url "https://github.com/Lums-proj/Lums/archive/2.8.tar.gz"
  sha256 "23afd19c20896c1b3bfae787f3fc80100a20e0d0788baa59022ae722ba880a0e"
  head "https://github.com/Lums-proj/Lums.git"

  depends_on 'cmake' => :build
  depends_on 'libpng'
  depends_on 'libvorbis'
  depends_on 'libogg'
  depends_on 'freetype'
  depends_on 'mruby'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
