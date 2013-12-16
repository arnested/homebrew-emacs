require 'formula'

class CaskEl < Formula
  homepage 'https://github.com/cask/cask'
  url 'https://github.com/cask/cask.git', :tag => 'v0.5.1'
  head 'https://github.com/cask/cask.git'

  def install
    prefix.install Dir['*']
  end

  def test
    Dir.chdir prefix
    system bin+'cask', 'install'
    system 'make', 'test'
  end
end
