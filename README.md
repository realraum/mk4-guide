# 3D Druck einführung

## vor dem druck

#### Einschalten

Powerschalter hinten rechts

#### Druckplatte leeren

zuerst reinigen (iso propanol oder iso wasser gemisch, keinen anderen reiniger)
- evtl plastikrümel entfernen da die sonst im druck landen, ohne reinigung haftet evtl das werkstück nicht

### Filament laden

Einfach reinschieben in das schwarze Loch oben
  - wenn das reinschieben fehlschlägt (klackert, zieht nicht) dann muss die spitze vom filament mit einer zange abgeschnitten werden (ca 45°)
    - im menü beim filament typ return auswählen, filament wird ausgeladen
- dann im menü filament typ auswählen (meistens pla)
- schauen ob farbe stimmt, dann yes sonst purge more

***WICHTIG***
- schauen ob das filament gerade ist und keine knoten (also X gekreutztes filament) in der rolle sind
  - falls das beim drucken passiert: rolle abnehmen, den teil mit dem knoten links runterziehen und "den knoten" verdrucken lassen


## Slicing im Prusa-Slicer

#### setup
- konfigurations assistent -> prusa fff -> mk4 0.4 mm nozzle mit input shaper
- physischen drucker hinzufügen: ip 192.169.69.36, api key eingeben, test butten drücken

#### optionen

- für die meisten drucke ist 0.2 MM Speed geignet, andernfalls andere `DETAIL` schichthöhen auswählen

- wenn nur ein kleiner teil des objekts am boden haftet (bspws beine und darüber ein größerer körper)
  muss der rand aktiviert werden um die haftung zu verbessern
  sonst fällt das objekt beim drucken ab und es gibt spaghetti

- bei objekten die graduell nach oben gehen (z.B. verkehrter cylinder) sind keine stützen erforderlich
  evtl generiert der slicer "sicherheitshalber" stüzen, diese können getrost deaktiviert werden
- falls zu viele unnötige stüzen da sind, aber einige wichtig:
  im menü rechts "XY.stl -> rechtsklick -> stützverstärker hinzufügen -> (form auswählen und positionieren)"
  dann "stüzen nur für stüzverstärker"
- bei zu großen objekten prusa slicer schneide funktion verwenden

- wenn alles fertig ist: "jetzt slicen" -> geslictes anschauen
  -> physischen drucker auswählen (G> button erscheint) -> "hochladen und drucken"


## nach dem start
- warten bis erste schicht gedruckt
- periodisch nachschauen (ca jede 30m)
  - wegen filament knoten und eventuellem ablösen vom gedruckten
- wenn der drucker "klack klack klack" macht:
  - druck pausieren
  - folgende mögliche fehler:
    - filament kommt nicht hinterher (bspws knoten)
    - filament kann nicht reingezogen werden (irgendein bollen an der spitze)
    - anderer fehler
  - unter tune kann filament ein/ausgeladen werden
- der drucker schiebt filament raus bewegt sich aber nicht:
  - der drucker muss gehomed werden. druck abbrechen in home control -> auto home
  - dannach druck erneut versuchen

*bei druckerschäden oder unklarheiten mkg oder commander kontaktieren*


## nach dem druck

#### unloaden
  - im home menü: filament -> unload
  - unload passiert automatisch, nicht ziehen, warten
  - es kam schon vor das leute einfach das filament das drin war
    verwendet haben ohne zu fragen. am besten einfach unloaden nach verwendung.

#### abschalten
  - powerschalter hinten rechts
