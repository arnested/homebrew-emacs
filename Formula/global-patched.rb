# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'global')

class GlobalPatched < Global

  homepage 'https://gist.github.com/arnested/8971896'

  def initialize name='__UNKNOWN__', path=nil
    g = Global.new name, path
    @stable = g.stable
    @devel = g.devel
    @head = g.head
    @bottle = g.bottle
    super name, path
  end

  conflicts_with 'global'

  def patches
    "https://gist.github.com/arnested/8971896/raw/4ff003a8a879cc04aae052618c98020a34320dbb/find.patch"
  end

  def caveats; <<-EOS.undent
    This version is patched to allow you to put a `*` in your skip lists.

    The `*` is converted to the regular expression `.*`.

    This version is patched to integrate better with Emacs flymake
    inplace temporary files.

    See #{homepage}
    EOS
  end
end
