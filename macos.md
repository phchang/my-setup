## Browser
### Bookmarketls
* [Kill sticky headers](https://alisdair.mcdiarmid.org/kill-sticky-headers/) — [dickbar](https://daringfireball.net/linked/2017/06/27/mcdiarmid-sticky-headers) (AKA fixed position HTML elements) remover.

## defaults write
Disable the delay when displaying a hidden dock.
```
defaults write com.apple.Dock autohide-delay -float 0
```
![Dock Autohide Delay Set to 0](img/defaults-write-autohide-delay.gif)

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

## Mail App

### "Load remote content" keyboard shortcut
1. Install [FastScripts](https://red-sweater.com/fastscripts/).
2. Create a new AppleScript for Mail, originally found from this [comment](https://gist.github.com/stevenschobert/f559be35190bd432fcce8f4febd713ef#gistcomment-1826177).
```applescript
tell application "Mail"
    try
        if first window is window of front message viewer then
            my messageViewer()
        else
            my regularmessage()
        end if
    on error theError
        my regularmessage()
    end try
end tell
 
on messageViewer()
    tell application "System Events" to tell process "Mail"
        set mainWindow to the first window
        set rootSplitter to the first splitter group of the mainWindow
        set firstSplitter to the last splitter group of the rootSplitter
        set scrollArea to the last scroll area of the firstSplitter
        set scrollGroup to the first group of the scrollArea
       
        if number of groups of the scrollGroup is greater than 1 then
            set maybeRemoteContentGroup to the first group of the scrollGroup
           
            if number of buttons of the maybeRemoteContentGroup is greater than or equal to 1 then
                set maybeRemoteContentButton to the last button of the maybeRemoteContentGroup
                if name of the maybeRemoteContentButton contains "load remote content" then
                    click the maybeRemoteContentButton
                else
                    name of the maybeRemoteContentButton
                end if
            else
                UI elements of maybeRemoteContentGroup
            end if
        else
            UI elements of the scrollGroup
        end if
    end tell
end messageViewer
 
on regularmessage()
    tell application "System Events" to tell process "Mail"
        set mainWindow to the first window
        set mainScrollGroup to the first scroll area of the mainWindow
        set everyMessage to every group of the mainScrollGroup
       
        log (number of everyMessage)
        repeat with currentMessage in everyMessage
            set loadRemoteContentButton to the first button of the first group in the currentMessage
            click the loadRemoteContentButton
        end repeat
    end tell
end regularmessage
```
3. I've assigned this shortcut to Cmd+Option+Shift+L.

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
| App | Cost | Description |
| :-- | --: | :-- |
| [Day One Journal](https://dayoneapp.com) | | |
| [Fluid](https://www.fluidapp.com) | $5 | turn a website into a Mac app |
| [iA Writer](https://ia.net/writer) | $5 | minimalist text editor |
| [KeyCastr](https://github.com/keycastr/keycastr) | | keystroke visualizer, good for demos|
| [PyCharm](https://www.jetbrains.com/pycharm/) | $90/year | |
| [RescueTime](https://www.rescuetime.com) | |
| [Reveal](https://revealapp.com) | $60 | |
| [Scapple](https://www.literatureandlatte.com/scapple/overview) | $15 | |
| [Simplenote](https://simplenote.com) | |
| [Things](https://culturedcode.com/things/) | $50 | |
