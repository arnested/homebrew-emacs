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
    { :p0 => [ 'https://gist.github.com/arnested/8971896/raw/c673d9939d9f14ac9bfe9eb008abb2260741ef2b/glob.patch',
               'https://gist.github.com/arnested/8971896/raw/0a57e397352c83a4d02fa125ca763fba4be39a92/gtags-conf.patch' ] }
   end

  def caveats; <<-EOS.undent
    This version is patched to allow you to put glob patterns in your
    skip lists.

    The supported glob patterns are:

      *, ?, [...], [!...], [^...]
      ('!' and '^' means 'not')

    This version is patched to integrate better with Emacs flymake
    inplace temporary files (*_flymake*) and Emacs backup files (*~).

    See #{homepage}
    EOS
  end
end
