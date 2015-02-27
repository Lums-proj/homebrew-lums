require "formula"

class Lums < Formula
  homepage "https://github.com/Lums-proj/Lums"
  url "https://github.com/Lums-proj/Lums/archive/v2.5.0.tar.gz"
  sha1 "6762b64f1ba650b3493481c85da6331ead70d5af"
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
