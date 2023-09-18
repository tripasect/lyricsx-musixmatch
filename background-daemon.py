import subprocess
import time
import os


def get_title():
	command = '/Users/tripasect/nowplaying-cli-1.1.0/nowplaying-cli get Title'
	output = subprocess.check_output(command, shell=True)
	output = output.strip()
	return output
	
def listen_for_change():
	music_is_off = 0
	
	if get_title() == b'null':
		music_is_off += 1
		time.sleep(240)
	if get_title() == b'null':
		music_is_off += 1
	else:
		music_is_off -= 1
		
	if music_is_off>1:
		exit(0)
		
	else:
		title_0 = get_title()
		changed = False
		if get_title() == b'null':
			changed = True
		while not changed:
			if get_title() != title_0:
				os.system("/Users/tripasect/Documents/fetch-lyrics-from-musixmatch.command")
				changed = True
			else:
				time.sleep(1)

def background_process():
	while True:
		listen_for_change()


if __name__ == '__main__':
    background_process()
