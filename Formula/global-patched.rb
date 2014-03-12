require 'formula'

class GlobalPatched < Formula

  homepage 'https://gist.github.com/arnested/8971896'
  url 'http://ftpmirror.gnu.org/global/global-6.2.11.tar.gz'
  sha1 'b0f50213680ec3288988354c34e3b3ae1a42719e'

  depends_on 'global'

  def install
    # intentionally blank
  end
end
