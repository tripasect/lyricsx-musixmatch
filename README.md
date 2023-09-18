# lyricsx-musixmatch
Automatically find and download the lyrics of your current offline playing song from Spotify-Musixmatch and display it with LyricsX. Currently works only on Mac OS.

# Screenshots
https://github.com/tripasect/lyricsx-musixmatch/assets/59469654/968cfe2a-0307-41d4-a631-90fbf39afbb8

**Requirements:<br>**
- LyricsX
- SpotiPy
- nowplaying-cli-1.1.0
- Syrics
- Alfred (Optional: Only if you want to run the script with a hotkey or a keyword.)

# Installation
- Make sure you have LyricsX, SpotiPy and Syrics installed. Modify the .command file to add your client_id, client_secret and the path to nowplaying-cli-1.1.0.command. I think my MacOS username is everywhere throught the .command file. Make sure to replace that with your username.
- Make the .command file executable if needed and run it. It should do what it's supposed to do.

# How it Works
It reads your current playing song using 'nowplaying-cli-1.1.0', searches for its trackID on Spotify using 'SpotiPy', downloads the corresponding .lrc lyrics file using 'Syrics', changes its extension to '.lrcx', moves it to default LyricsX folder, relaunches LyricsX for it to notice it's already got the lyrics file.
