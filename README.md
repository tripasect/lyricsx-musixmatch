# Lyricsx-Musixmatch
Automatically find and download the lyrics of your current offline playing song from Spotify-Musixmatch and display it with LyricsX. Currently works only on Mac OS.<br>
<div align="left">
  <img src="https://github.com/tripasect/lyricsx-musixmatch/assets/59469654/89e9df09-f745-4c89-9e07-eb78dee401ef" alt="Untitled" width="100px">
</div>

# Screenshots
https://github.com/tripasect/lyricsx-musixmatch/assets/59469654/968cfe2a-0307-41d4-a631-90fbf39afbb8

# Requirements
- [LyricsX](https://github.com/ddddxxx/LyricsX)
- [SpotiPy](https://github.com/spotipy-dev/spotipy)
- [nowplaying-cli](https://github.com/kirtan-shah/nowplaying-cli)
- [Syrics](https://github.com/akashrchandran/syrics)
- [Alfred ](https://www.alfredapp.com/)(Optional: Only if you want to run the script with a hotkey or a keyword.)

# Installation
- Make sure you have LyricsX, SpotiPy and Syrics installed. Modify the .command file to add your client_id, client_secret and the path to nowplaying-cli-1.1.0.command.
- Make the .command file executable and execute it. It should do what it's supposed to do.
- Additionaly, you can add a trigger for its execution as an Alfred workflow.

# How it Works
It reads your current playing song using 'nowplaying-cli-1.1.0', searches for its trackID on Spotify using 'SpotiPy', downloads the corresponding .lrc lyrics file using 'Syrics', changes its extension to '.lrcx', moves it to default LyricsX folder, relaunches LyricsX for it to notice it's already got the lyrics file.

# The 'background-daemon.py' file
Run ```nohup python3 background-daemon.py``` to have it running in the background. It repeatedly listens if you've changed your current playing song and if it changes, it launches the fetch-lyrics-from-musixmatch.command file to fetch its lyrics. If it doesn't, it keeps listening until you stop listening to any music for 4 minutes, in that case it automatically breaks its loop and exits. Make sure to run it again in your next listening session. Add an Alfred workflow for convenience.

# Alfred workflow
[My personal Alfred workflow](https://github.com/tripasect/lyricsx-musixmatch/blob/main/LyricsX-Musixmatch%20Fetch%20Lyrics.alfredworkflow) is appended. It needs a bit of configuring on your side. Note that in it, ```daemon.py``` points to that same ```background-daemon.py``` file.
