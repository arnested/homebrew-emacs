require 'formula'

class Carton < Formula
  homepage 'https://github.com/rejeep/carton'
  url 'https://github.com/rejeep/carton/archive/v0.1.2.zip'
  sha1 '2c811658ff10e05e7fdbc45ec2310f3610545c9f'
  head 'https://github.com/rejeep/carton.git'

  def install
    prefix.install Dir["*"]
  end

  def test
    Dir.chdir "#{prefix}"
    system "make", "all"
  end
end
