require 'formula'

class Carton < Formula
  homepage 'https://github.com/rejeep/carton'
  url 'https://github.com/rejeep/carton/archive/v0.1.1.zip'
  sha1 '0c9eedde000d30f7c89c327d818ce0460b328019'
  head 'https://github.com/rejeep/carton.git'

  def install
    prefix.install Dir["*"]
  end

  def test
    system "make", "all"
  end
end
