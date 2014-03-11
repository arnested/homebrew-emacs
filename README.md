This is a [Homebrew](https://github.com/mxcl/homebrew) Tap with
formulas for Emacs stuff.

Install with (some formulas depends on
[josegonzalez/php](https://github.com/josegonzalez/homebrew-php) and [homebrew/versions](https://github.com/Homebrew/homebrew-versions)):

    brew tap arnested/emacs josegonzalez/php homebrew/versions

When you get tired of me breaking stuff uninstall with:

    brew untap arnested/emacs


## Formulas

 * [`carton`](Formula/carton.rb) - _Old version of Cask (before the renaming)_

   Install version 0.3.1 of Carton (now Cask). In case you need it for
   projects that haven't migrated yet.

 * [`drupal-code-sniffer-patched`](Formula/drupal-code-sniffer-patched.rb) - _A patched version of Drupal CoderSniffer_

   This version of Drupal CoderSniffer is patched to integrate better
   with my [drupal-mode](https://github.com/arnested/drupal-mode) for
   Emacs.

   The patch has been [submitted to
   Drupal CoderSniffer](https://drupal.org/node/2172383).

 * [`emacs-drush`](Formula/emacs-drush.rb) - _Drush utilities for Emacs users_

   A formula for installing [Drush utilities for Emacs users](https://drupal.org/project/emacs_drush).

 * [`global-patched`](Formula/global-patched.rb) - _A patched version of GNU GLOBAL_

   This version of GNU GLOBAL is patched to allow you to put wildcards
   (`*`) in your skip lists.

   The `*` is converted to the regular expression `.*`.

   This version is patched to integrate better with Emacs flymake
   inplace temporary files.

There used to be a `emacs-mac` formula here as well. I removed it and
instead refer you to the "official" formula:

     brew tap railwaycat/emacsmacport

     brew install emacs-mac


There also used to be a `cask-el` formula here. I removed it as well
and instead refer you to the "official" formula:

     brew install cask
