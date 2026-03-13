# 🎬 VideoDownloader Linux

> **A clean, no-nonsense GUI video downloader for Linux — powered by yt-dlp.**  
> *Ein schlanker Video-Downloader mit grafischer Oberfläche für Linux — basierend auf yt-dlp.*

---

## English

### What is this?

VideoDownloader Linux is a lightweight desktop application that lets you download videos and audio from YouTube, Vimeo, Twitch, and [hundreds of other sites](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md) — without ever touching a terminal after setup.

It started as the Linux port of the [Windows VideoDownloader](https://github.com/1Bln21/VideoDownloader), and has since grown its own set of features tailored to the Linux desktop.

### Features

- **Single URL or Queue mode** — download one video, or build a list and let it run
- **10 quality presets** — from 4K all the way down to audio-only MP3/M4A
- **SMB / Network share support** — paste a `smb://server/share` path directly, or pick from mounted shares
- **Cookie support** — use Firefox cookies directly, or import a `cookies.txt` file for Chrome/Edge (App-Bound Encryption workaround)
- **Real progress bar** — actual percentages, not a spinning bar of lies
- **Cancel without drama** — stops cleanly, no false error dialogs
- **German & English UI** — switchable at any time from the settings menu
- **App launcher integration** — ships with a `.desktop` file so it lives in your app menu like any other application

### Requirements

**Arch Linux / CachyOS**
```bash
sudo pacman -S yt-dlp ffmpeg tk glib2
```

**Ubuntu / Debian**
```bash
sudo apt install python3-tk ffmpeg
pip install yt-dlp
```

**Fedora**
```bash
sudo dnf install python3-tkinter ffmpeg
pip install yt-dlp
```

### Installation

```bash
git clone https://github.com/1Bln21/VideoDownloader-Linux.git
cd VideoDownloader-Linux
chmod +x videodownloader.sh
python video_downloader_linux.py
```

### Add to App Launcher (optional, but recommended)

```bash
# Open the .desktop file and adjust the Exec= and Icon= paths to match your setup
nano videodownloader.desktop

# Register it with your desktop environment
cp videodownloader.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications/
```

After that, "Video Downloader" shows up in your application menu and can be pinned to your dock or desktop — just like any other app.

### A note on cookies

Chrome, Edge, Brave and other Chromium-based browsers have used App-Bound Encryption for their cookie databases since version 127. yt-dlp can no longer read these directly. The recommended workaround:

1. Install the **"Get cookies.txt LOCALLY"** extension (Chrome Web Store / Edge Add-ons)
2. Open YouTube (or whichever site you need) while logged in
3. Click the extension icon → Export → save `cookies.txt`
4. In the app: **Browser / Cookies** → **Select cookie file…**

Firefox users can skip all of this — direct cookie access still works fine.

---

## Deutsch

### Was ist das hier?

VideoDownloader Linux ist eine schlanke Desktop-Anwendung, mit der du Videos und Audio von YouTube, Vimeo, Twitch und [hunderten weiteren Seiten](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md) herunterladen kannst — nach der Einrichtung ganz ohne Terminal.

Entstanden als Linux-Port des [Windows VideoDownloaders](https://github.com/1Bln21/VideoDownloader), hat die App inzwischen eigene Features bekommen, die speziell auf den Linux-Desktop zugeschnitten sind.

### Features

- **Einzellink- oder Warteschlangen-Modus** — ein Video direkt laden oder eine Liste aufbauen und durchlaufen lassen
- **10 Qualitätsstufen** — von 4K bis zu reinen Audiodateien im MP3- oder M4A-Format
- **SMB / Netzwerkfreigaben** — `smb://server/freigabe` direkt einfügen oder aus eingebundenen Freigaben wählen
- **Cookie-Unterstützung** — Firefox-Cookies direkt nutzen oder eine `cookies.txt` importieren (Workaround für Chrome/Edge App-Bound Encryption)
- **Echter Fortschrittsbalken** — echte Prozentwerte, kein sinnlos rotierender Balken
- **Abbrechen ohne Drama** — sauberer Stopp, kein falscher Fehler-Dialog danach
- **Deutsche und englische Oberfläche** — jederzeit im Einstellungsmenü umschaltbar
- **App-Launcher-Integration** — mit `.desktop`-Datei, damit die App wie jede andere im Menü erscheint

### Voraussetzungen

**Arch Linux / CachyOS**
```bash
sudo pacman -S yt-dlp ffmpeg tk glib2
```

**Ubuntu / Debian**
```bash
sudo apt install python3-tk ffmpeg
pip install yt-dlp
```

**Fedora**
```bash
sudo dnf install python3-tkinter ffmpeg
pip install yt-dlp
```

### Installation

```bash
git clone https://github.com/1Bln21/VideoDownloader-Linux.git
cd VideoDownloader-Linux
chmod +x videodownloader.sh
python video_downloader_linux.py
```

### In den App-Launcher eintragen (optional, aber empfehlenswert)

```bash
# .desktop-Datei öffnen und Exec= sowie Icon= auf den eigenen Pfad anpassen
nano videodownloader.desktop

# Bei der Desktop-Umgebung registrieren
cp videodownloader.desktop ~/.local/share/applications/
update-desktop-database ~/.local/share/applications/
```

Danach erscheint „Video Downloader" im App-Menü und kann ans Dock oder den Desktop gepinnt werden — wie jede andere Anwendung auch.

### Hinweis zu Cookies

Chrome, Edge, Brave und andere Chromium-Browser nutzen seit Version 127 App-Bound Encryption für ihre Cookie-Datenbank. yt-dlp kann darauf nicht mehr direkt zugreifen. Der empfohlene Workaround:

1. Browser-Extension installieren: **„Get cookies.txt LOCALLY"** (Chrome Web Store / Edge Add-ons)
2. YouTube (oder die gewünschte Seite) im Browser öffnen und eingeloggt sein
3. Extension-Icon klicken → Export → `cookies.txt` speichern
4. In der App: **Browser / Cookies** → **Cookie-Datei wählen…**

Firefox-Nutzer können das alles ignorieren — direkter Cookie-Zugriff funktioniert dort nach wie vor problemlos.

---

## License / Lizenz

MIT License — Copyright (c) 2026 Lars Kuehn

---

*Built with [yt-dlp](https://github.com/yt-dlp/yt-dlp), [FFmpeg](https://ffmpeg.org/) and Python / Tkinter.*
