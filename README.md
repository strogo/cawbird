# Corebird 1.7.4 (Polling)

**Note: Due to changes in Twitter's APIs, this polling version of Corebird does not have all of the features that it used to**


[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=baedert&url=http://github.com/baedert/corebird&title=corebird&language=vala&tags=github&category=software) [![Supprt Corebird on Patreon](https://baedert.org/patreon-donate-yellow.svg)](https://patreon.com/baedert)

## Shortcuts

| Key                | Description                                                                                                                                 |
| :-----:            | :-----------                                                                                                                                |
| `Ctrl + t`         | Compose Tweet                                                                                                                               |
| `Back`             | Go one page back (this can be triggered via the back button on the keyboard, the back thumb button on the mouse or  `Alt + Left`)           |
| `Forward`          | Go one page forward (this can be triggered via the forward button on the keyboard, the forward thumb button on the mouse or  `Alt + Right`) |
| `Alt + num`        | Go to page `num` (between 1 and 7 at the moment)                                                                                            |
| `Ctrl + Shift + s` | Show/Hide topbar                                                                                                                            |
| `Ctrl + p`         | Show account settings                                                                                                                       |
| `Ctrl + k`         | Show account list                                                                                                                           |
| `Ctrl + Shift + p` | Show application settings                                                                                                                   |


  When a tweet is focused (via keynav):

  - `r`  - reply
  - `tt` - retweet
  - `f`  - favorite
  - `q`  - quote
  - `dd` - delete
  - `Return` - Show tweet details

## Limitations

Due to [changes in the Twitter API](https://developer.twitter.com/en/docs/accounts-and-users/subscribe-account-activity/migration/introduction), Corebird now has the following limitations:

 * Corebird will update every two minutes
 * Corebird cannot (yet) read DMs
 * Corebird no longer gets notified of the following, which will be refreshed on restart:
   * Unfavourite
   * Follow/Unfollow
   * Block/Unblock
   * Mute/Unmute
   * DM deletion
   * Some list changes

All limitations (except pending DM support) are limitations imposed by Twitter and are not the fault of the Corebird client.

## Translations

  Since February 2014, there's a [Corebird project on Transifex](https://www.transifex.com/projects/p/corebird)

## Contributing

  All contributions are welcome (artwork, design, code, just ideas, etc.) but if you're planning to
  actively change something bigger, talk to me first.


## Dependencies
 - `gtk+-3.0 >= 3.20`
 - `glib-2.0 >= 2.44`
 - `json-glib-1.0`
 - `sqlite3`
 - `libsoup-2.4`
 - `gettext >= 0.19.7`
 - `vala >= 0.28` (makedep)
 - `automake >= 1.14` (makedep)
 - `gst-plugins-base-1.0` (for playbin, disable via --disable-video)
 - `gst-plugins-bad-1.0 >= 1.6` (disable via --disable-video, default enabled)
 - `gst-plugins-good-1.0` (disable via --disable-video, default enabled)
 - `gst-libav-1.0` (disable via --disable-video, default enabled)
 - `gspell-1 >= 1.2` (for spellchecking, disable via --disable-spellcheck, default enabled)

Note that the above packages are just rough estimations, the actual package names on your distribution may vary.

If you pass `--disable-video` to the configure script, you don't need any gstreamer dependency but won't be able to view any videos.

## Compiling

```
./autogen.sh --prefix=/usr
make
make install
```

Corebird installs its application icon into `/usr/share/icons/hicolor/`, so an appropriate call to `gtk-update-icon-cache` might be needed.
