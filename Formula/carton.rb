class Carton < Formula
  homepage "https://github.com/cask/cask"
  version "0.3.1"
  url "https://github.com/cask/cask.git", :revision => "v#{version}"
  head "https://github.com/cask/cask.git"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/carton", "--help"
  end

  def caveats; <<-EOS.undent
    Carton changed its name to cask.el.

    See https://github.com/cask/cask#migration-from-carton on how to migrate
    from Carton to Cask.

    This formula install the last version of Carton (v#{version}).

    To install Cask use the 'cask' formula.
    EOS
  end
end
