require "formula"

class Lums < Formula
  homepage "https://github.com/Lums-proj/Lums"
  url "https://github.com/Lums-proj/Lums/archive/2.8.4.tar.gz"
  sha256 "32aa8f4350e8b45bf334088d9c0a7403bdce8a0f24b99d4d652c7e913f66a6b4"
  head "https://github.com/Lums-proj/Lums.git"

  depends_on 'cmake' => :build
  depends_on 'libpng'
  depends_on 'libvorbis'
  depends_on 'libogg'
  depends_on 'freetype'
  depends_on 'mruby'

  def install
    system "cmake", ".", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Release"
    system "make", "install"
  end
end
