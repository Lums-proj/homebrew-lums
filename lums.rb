require "formula"

class Lums < Formula
  homepage "https://github.com/Lums-proj/Lums"
  url "https://github.com/Lums-proj/Lums/archive/v2.3.0.tar.gz"
  sha1 "49923078b675557c9a929bdaab9faa0c4ff29488"
  head "https://github.com/Lums-proj/Lums.git"

  depends_on 'cmake' => :build
  depends_on 'libpng'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
