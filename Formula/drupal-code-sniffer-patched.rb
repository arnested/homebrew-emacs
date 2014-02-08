# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'drupal-code-sniffer')

class DrupalCodeSnifferPatched < DrupalCodeSniffer

  homepage 'https://drupal.org/node/2172383'

  def initialize name='__UNKNOWN__', path=nil
    d = DrupalCodeSniffer.new name, path
    @stable = d.stable
    @devel = d.devel
    @head = d.head
    @bottle = d.bottle
    super name, path
  end

  conflicts_with 'drupal-code-sniffer'

  def patches
    "https://drupal.org/files/issues/coder-change-module-name-detection-2172383-4.patch"
  end

  def caveats; super + <<-EOS.undent
    This version is patched to integrate better with Emacs.

    See https://drupal.org/node/2172383.
    EOS
  end
end
