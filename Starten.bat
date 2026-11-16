@echo off
cd /d "%~dp0"
echo Meme Catcher laeuft auf http://localhost:8080  (Fenster offen lassen, zum Beenden schliessen)
start "" http://localhost:8080
python -m http.server 8080
