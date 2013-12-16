This is a [Homebrew](https://github.com/mxcl/homebrew) Tap with
formulas for Emacs stuff.

Install with:

    brew tap arnested/emacs

When you get tired of me breaking stuff uninstall with:

    brew untap arnested/emacs


## Formulas

 * [`cask-el`](Formula/cask-el.rb) - _Emacs dependency management made easy_
 
   A formula for installing [cask](https://github.com/cask/cask).
   
 * [`carton`](Formula/carton.rb) - _Old version of Cask (before the renaming)_

   Install version 0.3.1 of Carton (now Cask). In case you need it for
   projects that haven't migrated yet,

 * [`emacs-drush`](Formula/emacs-drush.rb) - _Drush utilities for Emacs users_

   A formuala for installing [Drush utilities for Emacs users](https://drupal.org/project/emacs_drush).

There used to be a `emacs-mac` formula here as well. I removed it and
instead refer you to the "official" formula:

     brew tap railwaycat/emacsmacport

     brew install emacs-mac
