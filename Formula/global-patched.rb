require 'formula'

class GlobalPatched < Formula

  homepage 'https://gist.github.com/arnested/8971896'
  # We just reuse the URL from global - because we have to have a URL.
  url 'http://ftpmirror.gnu.org/global/global-6.2.11.tar.gz'
  sha1 'b0f50213680ec3288988354c34e3b3ae1a42719e'

  # Now depend on global.
  depends_on 'global'

  def install
    # Intentionally blank. We don't want to install anything - just
    # get our dependency installed.
  end

  def caveats; <<-EOS.undent
      The patches to GNU Global have been incorporated in GNU Global 6.2.11.

      GNU Global is now installed as a dependency.

      You should uninstall this patched version. It has no effect anymore:

        brew uninstall global-patched
      EOS
  end
end
