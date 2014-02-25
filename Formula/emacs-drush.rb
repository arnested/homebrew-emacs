require 'formula'

class EmacsDrush < Formula
  homepage 'https://drupal.org/project/emacs_drush'
  version '7.x-1.2'
  url "http://ftp.drupal.org/files/projects/emacs_drush-#{version}.tar.gz"
  head 'http://git.drupal.org/project/emacs_drush.git', :branch => '7.x-1.x'
  sha1 '914fb5766aec5b652adc623c93ba8ef4d9196076'

  depends_on 'drush'

  def drush_commands
    HOMEBREW_PREFIX+'share'+'drush'+'commands'
  end

  def install
    prefix.install Dir['*']

    # Link Emacs Drush into /usr/local/share/drush/commands for
    # integration with Drush.
    drush_commands.mkpath
    if File.symlink? drush_commands+name
      File.delete drush_commands+name
    end
    drush_commands.install_symlink prefix => name
  end

  def caveats; <<-EOS.undent
      "Drush utilities for Emacs users" is linked to "#{drush_commands+name}".

      You can verify whether Drush has discovered the utilities by running either:

        drush etags --help

        drush gtags --help

    EOS
  end
end
