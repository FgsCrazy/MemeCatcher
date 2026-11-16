# 🎙️ Meme Catcher

Ein Partyspiel im Browser: Ein Meme-Clip läuft **stumm**, und du sprichst ihn ein – Text, Timing und Tonlage.
Danach hören sich alle die Versionen an, stimmen über die lustigste ab, und zum Schluss wird das **Original** aufgedeckt.

**Spielen:** https://memecatcher.lativlabs.com

## Spielmodi

- **🛋️ Lokal** – alle nacheinander an einem Gerät.
- **🌐 Online** – der Host erstellt einen Raum und verschickt den Einladungslink. Jeder spielt am eigenen Gerät mit eigenem Mikrofon, alle gleichzeitig (bis zu 8 Spieler).

## Punkte

| Wahl | Faktor |
|---|---|
| 🧠 Aus dem Gedächtnis (Original nicht angehört) | ×1,5 |
| 👂 Original einmal angehört | ×1 |
| 👂👂 Original nochmal angehört | ×0,8 |
| 👀 Timeline aufgedeckt (zeigt *wann*, nicht *was* gesprochen wird) | −30 % |
| 😂 Lustigste Version (Abstimmung) | +15 |

Bewertet werden **Text** (Spracherkennung, 40 %), **Timing** (30 %) und **Tonlage** (30 %).

## Clips

Clips werden als YouTube-Link + Start/Ende + Originalspruch angelegt (Menü „🎬 Clips“) und im Browser gespeichert.
Mit „⏺ Timing markieren“ hältst du beim Abspielen die Leertaste gedrückt, solange gesprochen wird – daraus entstehen Timeline-Hilfe und Timing-Wertung.
Optional kann eine Audiodatei des Originals geladen werden, dann wird auch die Tonlage verglichen.

Die Videos werden nur über den offiziellen YouTube-Player eingebettet, nicht kopiert. Die Rechte an den Clips liegen bei den jeweiligen Rechteinhabern.

## Technik

- Eine einzige Datei (`index.html`), kein Build, kein eigener Server.
- Spracherkennung über die Web Speech API (am besten **Chrome oder Edge**).
- Online-Räume über [PeerJS](https://peerjs.com/) (WebRTC, direkt zwischen den Geräten).

## Lokal starten

Mikrofon und YouTube brauchen einen lokalen Server (nicht einfach die Datei öffnen):

```bash
python -m http.server 8080
```

Dann http://localhost:8080 öffnen – oder unter Windows `Starten.bat` doppelklicken.

> Prototyp – Feedback willkommen!
