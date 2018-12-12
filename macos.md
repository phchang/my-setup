d# macOS

## Browser
### Bookmarketls
* [Kill sticky headers](https://alisdair.mcdiarmid.org/kill-sticky-headers/) — [dickbar](https://daringfireball.net/linked/2017/06/27/mcdiarmid-sticky-headers) (AKA fixed position HTML elements) remover.

## defaults write
Disable the delay when displaying a hidden dock.
```
defaults write com.apple.Dock autohide-delay -float 0
```

Disable Quick Look animation.
```
defaults write -g QLPanelAnimationDuration -float 0
```

Enable repeating keys.
```
defaults write -g ApplePressAndHoldEnabled -bool false
```

## Command Line

### pbcopy & pbpaste
Built-in to macOS, `pbcopy` and `pbpaste` allow copying and pasting to and from the pasteboard from the command line.

Example: copying your public key to the pasteboard:
```
cat ~/.ssh/github.pub | pbcopy
```

## Utilities
### Audio
* [Audio Hijack](https://www.rogueamoeba.com/audiohijackpro/) ($59) — record audio from any source on the Mac

### Other
* [Alfred](https://manytricks.com/moom/) (~$27) — app launcher + more
* [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt) — informative git prompt for bash
* [Backblaze](https://www.backblaze.com) ($5/month) — unlimited cloud backup
* [Bartender](https://www.macbartender.com/) ($15) — system menu bar icon hiding
* [iStat Menus](https://bjango.com/mac/istatmenus/) ($10) — using mainly for weather, time remaining for battery
* [Moom](https://manytricks.com/moom/) ($10) — window moving & zooming
* [tree](http://mama.indstate.edu/users/ice/tree/) — directory listing program for the command line (available via Homebrew also)

## Uncategorized
* [Day One Journal](https://dayoneapp.com)
* [Fluid](https://www.fluidapp.com) ($5) — turn a website into a Mac app
* [iA Writer](https://ia.net/writer) ($5) — minimalist text editor
* [KeyCastr](https://github.com/keycastr/keycastr) - keystroke visualizer, good for demos
* [PyCharm](https://www.jetbrains.com/pycharm/) ($90/year)
* [RescueTime](https://www.rescuetime.com)
* [Reveal](https://revealapp.com) ($60)
* [Scapple](https://www.literatureandlatte.com/scapple/overview) ($15)
* [Simplenote](https://simplenote.com)
* [Things](https://culturedcode.com/things/) ($50)
