class EmacsDrush < Formula
  homepage "https://drupal.org/project/emacs_drush"
  version "7.x-1.2"
  url "http://ftp.drupal.org/files/projects/emacs_drush-#{version}.tar.gz"
  head "http://git.drupal.org/project/emacs_drush.git", :branch => "7.x-1.x"
  sha256 "68fd73412649170bbe9056945ae3f2148322ac89a8080be52f28a4f46950c40e"

  depends_on "drush"

  def drush_commands
    HOMEBREW_PREFIX+"share"+"drush"+"commands"
  end

  def install
    prefix.install Dir["*"]

    # Link Emacs Drush into /usr/local/share/drush/commands for
    # integration with Drush.
    drush_commands.mkpath
    if File.symlink? drush_commands+name
      File.delete drush_commands+name
    end
    drush_commands.install_symlink prefix => name
  end

  test do
    system "drush", "etags", "--help"
    system "drush", "gtags", "--help"
  end

  def caveats; <<-EOS.undent
      "Drush utilities for Emacs users" is linked to "#{drush_commands+name}".

      You can verify whether Drush has discovered the utilities by running either:

        drush etags --help

        drush gtags --help

    EOS
  end
end
