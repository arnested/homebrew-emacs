require 'formula'

class Carton < Formula
  homepage 'https://github.com/rejeep/cask.el'
  version '0.3.1'
  url 'https://github.com/rejeep/cask.el.git', :tag => "v#{version}"
  head 'https://github.com/rejeep/cask.el.git'

  def install
    prefix.install Dir["*"]
  end

  def test
    Dir.chdir "#{prefix}"
    system "make", "all"
  end

  def caveats; <<-EOS.undent
    Carton changed its name to cask.el.

    See https://github.com/rejeep/cask.el#migration-from-carton on how to migrate
    from Carton to Cask.

    This formula install the last version of Carton (v0.3.1).

    To install Cask use the cask-el formula from the arnested/emacs tap.
    EOS
  end
end
