require 'formula'

class Carton < Formula
  homepage 'https://github.com/rejeep/carton'
  version '0.2.0'
  url 'https://github.com/rejeep/carton.git', :tag => "v#{version}"
  head 'https://github.com/rejeep/carton.git'

  def install
    prefix.install Dir["*"]
  end

  def test
    Dir.chdir "#{prefix}"
    system "make", "all"
  end
end
