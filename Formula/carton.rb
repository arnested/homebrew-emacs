# -*- coding: utf-8 -*-
require 'formula'

class Carton < Formula
  homepage 'https://github.com/cask/cask'
  url 'https://github.com/cask/cask.git', :tag => "v0.3.1"
  head 'https://github.com/cask/cask.git'

  def install
    prefix.install Dir["*"]
  end

  def test
    Dir.chdir "#{prefix}"
    system "make", "all"
  end

  def caveats; <<-EOS.undent
    Carton changed its name to cask.el.

    See https://github.com/cask/cask#migration-from-carton on how to migrate
    from Carton to Cask.

    This formula install the last version of Carton (v0.3.1).

    To install Cask use the 'cask' formula.
    EOS
  end
end
