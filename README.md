# 3D Druck Einführung

## vor dem Druck

### Einschalten

Powerschalter hinten rechts

### Druckplatte leeren

Zuerst reinigen (Isopropanol oder Isopropanol+Wassergemisch, keinen anderen Reiniger)
- evtl. Plastikkrümel entfernen, da diese sonst im Druck landen, ohne Reinigung haftet evtl. das Werkstück nicht.

### Filament laden

Einfach reinschieben in das schwarze Loch oben.
  - wenn das Reinschieben fehlschlägt (klackert, zieht nicht) dann muss die Spitze vom Filament mit einer Zange abgeschnitten werden (ca. 45° schnitt)
    - Falls fehlgeschlagen: im Menü beim Filament-Typ "Return" auswählen, Filament wird wieder ausgeladen.
- dann im Menü Filament-Typ auswählen (meistens PLA, bitte aber nochmal auf der Rolle nachschauen)
- schauen ob Farbe stimmt, dann "Yes", sonst "Purge more"

***WICHTIG***
- schauen, ob das Filament gerade ist und keine Knoten (also X gekreuztes Filament) in der Rolle sind
  - falls das beim Drucken passiert: Rolle abnehmen, den Teil mit dem Knoten links runterziehen und "den Knoten" verdrucken lassen
- kein Müll-Filament "für 10€/kg" verwenden, da das zu Problemen führt (brüchig, druckt nicht gescheit)

*Filament von mkg ist für 30€/kg zu haben, Grammzahl ist im Slicer sichtbar.*

## Slicing im Prusa-Slicer

### Setup
- Konfigurations-Assistent -> Prusa FFF -> MK4 0.4 mm Nozzle mit Input Shaper
- physischen Drucker hinzufügen: IP 192.169.69.36, API Key eingeben, Test button drücken

### Optionen

- für die meisten Drucke ist 0.2 MM Speed geeignet, andernfalls andere `DETAIL` Schichthöhen auswählen.

- **WICHTIG** Material korrekt einstellen. In der Regel PLA, aber bitte auch auf der Rolle schauen.

- wenn nur ein kleiner Teil des Objekts am Boden haftet (bspw. Beine und darüber ein größerer Körper)
  muss der Rand aktiviert werden, um die Haftung zu verbessern
  sonst fällt das Objekt beim Drucken ab und es gibt Spaghetti

- bei Objekten die graduell nach oben gehen (z.B. verkehrter Zylinder) sind keine Stützen erforderlich
  evtl. generiert der Slicer "sicherheitshalber" Stützen, diese können getrost deaktiviert werden
- falls zu viele unnötige Stützen da sind, aber einige wichtig:
  im Menü rechts "XY.stl -> Rechtsklick -> Stützverstärker hinzufügen -> (Form auswählen und positionieren)"
  dann "stützen nur für Stützverstärker"
- bei zu großen Objekten Prusa Slicer Schneidefunktion verwenden.

- wenn alles fertig ist: "jetzt slicen" -> geslicetes anschauen
  -> physischen Drucker auswählen (G> Button erscheint) -> "hochladen und drucken"
  - Beim Filepath den eigenen Namen hinzufügen, z.B. `user/...bgcode`

### benchy

Für den ersten 3d-druck versuch ohne konkretes Objekt kann ein Benchy gedruckt werden

## nach dem Start

- warten bis erste Schicht gedruckt
- periodisch nachschauen (ca. jede 30m)
  - wegen Filament-Knoten und eventuellem Ablösen vom gedruckten
- wenn der Drucker "klack klack klack" macht:
  - druck pausieren
  - Folgende mögliche Fehler:
    - Filament kommt nicht hinterher (bspw. Knoten)
    - Filament kann nicht nachgezogen werden (irgendein Bollen an der Spitze)
    - anderer Fehler
  - unter "Tune" kann Filament ein/ausgeladen werden
- der Drucker schiebt Filament raus, bewegt sich aber nicht:
  - der Drucker muss gehomed werden. Druck abbrechen in home "Control -> Auto Home"
  - dannach druck erneut versuchen

*bei Druckerschäden oder Unklarheiten mkg oder commander kontaktieren.*


## nach dem Druck

### unloaden
  - Im Home-Menü: Filament -> Unload
  - Upload passiert automatisch, nicht ziehen, warten.
  - es kam schon vor das Leute einfach das Flament, das drin war
    verwendet haben, ohne zu fragen. Am besten einfach unloaden nach Verwendung.

### abschalten
  - powerschalter hinten rechts
