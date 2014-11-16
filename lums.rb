require "formula"

class Lums < Formula
  homepage "https://github.com/Lums-proj/Lums"
  url "https://github.com/Lums-proj/Lums/archive/v2.0.0.tar.gz"
  sha1 "d22340048e552716e2c544044c4ee9ef3ad9cb50"
  head "https://github.com/Lums-proj/Lums.git"

  depends_on "cmake"
  depends_on "sdl2"
  depends_on "sdl2_image"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
