# tmux-plugin-spotify

tmux plugin displaying currently played song on Spotify

**Note**: currently it works on Linux only!

Requirements
------------

In order to use this plugin, you need to install [spotify-cli-linux](https://github.com/pwittchen/spotify-cli-linux) program.

You can do it with the following command:

```
pip install spotify-cli-linux
```

Installation
------------

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```
set -g @plugin 'pwittchen/tmux-plugin-spotify'
```

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

Usage
-----

In order to see currently played Spotify song via this tmux plugin, add the following command to your `.tmux.conf` file:

```
#{spotify_song}
```

You can also set more options like:

```
#{spotify_status_full}, #{spotify_status}, #{spotify_song}, #{spotify_artist}, #{spotify_album}, #{spotify_playback}
```

Available Options
----------------

- spotify_status
- spotify_status_full
- spotify_song
- spotify_song_full
- spotify_artist
- spotify_artist_full
- spotify_album
- spotify_playback

References
----------

- <https://github.com/tmux-plugins>
- <https://github.com/tmux-plugins/tmux-example-plugin>
- <https://github.com/tmux-plugins/tmux-battery>
- <https://github.com/pwittchen/dotfiles>
- <https://github.com/pwittchen/spotify-cli-linux>
