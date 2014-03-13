require 'formula'
require File.join(File.dirname(__FILE__), 'global')

class GlobalPatched < Formula

  homepage 'https://gist.github.com/arnested/8971896'
  # We just reuse the URLs from global - because we have to have a URL
  # and by reusing it we can skip downloading it again because it got
  # cached while install the dependency.
  url Global.new.stable.url
  mirror Global.new.stable.mirrors
  sha1 Global.new.stable.checksum.to_s

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
