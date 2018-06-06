import subprocess


class Py3status:

    def out(self):
        try:
            data = subprocess.check_output('ssh tartarus -o BatchMode=yes "${HOME}/bin/queueinfo"'.split())
            data = data.decode().strip()
        except subprocess.SubprocessError:
            data = 'Tartarus not connected'
        return {'full_text': data, 'cached_until': 60}
