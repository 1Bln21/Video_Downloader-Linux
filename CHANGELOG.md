# Changelog

All notable changes to this project are documented here.
Dieses Projekt folgt lose [Semantic Versioning](https://semver.org/lang/de/).

## [1.1.3-linux] – 2026-06-09

### Fixed / Behoben

- **Stille Fehlschläge behoben:** Durch `ignoreerrors=True` warf yt-dlp bei
  fehlgeschlagenen Downloads keine Exception. Die App meldete dadurch
  fälschlich „Fertig.", obwohl der Download scheiterte (z. B. ungültige URL,
  privates oder gesperrtes Video). Fehler werden nun über den Return-Code von
  `download()` und einen mitschreibenden Logger zuverlässig erkannt und im
  Fehlerdialog angezeigt.
- **Warteschlange:** Die Rot-Markierung fehlgeschlagener Einträge war zuvor
  toter Code (immer als Erfolg gezählt). Erfolg/Fehler werden jetzt korrekt
  pro URL ausgewertet.
- **Warteschlange:** „Hinzufügen / Entfernen / Liste leeren" sowie der
  Modus-Umschalter werden während eines laufenden Queue-Downloads gesperrt –
  das verhindert ein Auseinanderlaufen von Listbox-Indizes und URL-Snapshot.
- **App-Bound-Encryption-Hinweis:** Der spezielle Cookie-Fehlerdialog wird
  jetzt auch dann erkannt, wenn yt-dlp den Fehler nur protokolliert statt wirft.

### Changed / Geändert

- ffmpeg-Warnung erscheint nun konsistent auch im Warteschlangen-Modus.
- `import subprocess` an den Modulkopf verschoben (statt lokal in der Funktion).

### Docs

- Quell-URL im Datei-Header zeigt jetzt auf das Linux-Repository.
