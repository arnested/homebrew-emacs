require 'formula'

class CaskEl < Formula
  homepage 'https://github.com/rejeep/cask.el'
  version '0.4.6'
  url 'https://github.com/rejeep/cask.el.git', :tag => "v#{version}"
  head 'https://github.com/rejeep/cask.el.git'

  def install
    system "rm", "bin/carton"
    prefix.install Dir["*"]
  end

  def test
    Dir.chdir "#{prefix}"
    system "make", "ecukes"
  end
end
