#!/usr/local/bin/python3
import os
import spotipy
from spotipy.oauth2 import SpotifyClientCredentials
sp = spotipy.Spotify(auth_manager=SpotifyClientCredentials(client_id="CLIENT_ID",
                                                           client_secret="CLIENT_SECRET"))
                                                           
l = os.popen('/Users/{your_username}/nowplaying-cli-1.1.0/nowplaying-cli get title artist').read().strip().split('\n')
track_original = l[0]
track = l[0].split('(')[0].strip()
artist = l[1]
id = sp.search(q='artist:' + artist + ' track:' + track, type='track')
id = id['tracks']['items'][0]['uri'][14:]
track = track_original
os.system(f"syrics --directory /Users/{your_username}/Music/LyricsX/temp https://open.spotify.com/track/{id}")
lrc = os.listdir("/Users/{your_username}/Music/LyricsX/temp")[0].replace(" ", "\ ")
lrcx = '"' + f"/Users/{your_username}/Music/LyricsX/{track} - {artist}.lrcx" + '"'
os.system(f"mv /Users/{your_username}/Music/LyricsX/temp/{lrc} {lrcx}")
os.system(f"rm -r /Users/{your_username}/Music/LyricsX/temp")
os.system("killall LyricsX")
os.system("open -n /Applications/LyricsX.app  --args -AppCommandLineArg")
