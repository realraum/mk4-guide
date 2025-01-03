---
title: 3D-Druck Einführung (MK4 Drucker)
author: Maciej Krüger (mkg20001) und Bernhard Tittelbach (xro)
---

# 3D-Druck Einführung (MK4 Drucker)

_Fehlt etwas? Verbesserungsvorschläge? GitHub: github.com/realraum/mk4-guide_

---
WICHTIG: Der Drucker wurde vor kurzem auf MK4S upgraded

Im Slicer bitte den neuen Druckertyp konfigurieren und verwenden:

1. Menü > Konfiguration > Konfigurationsassistent
2. Im Menü Links: Unter Prusa Research HF0.6, HF0.4 und 0.25 (kein HF) als Nozzle hinzufügen. Assistent beenden mit "Beenden" Knopf unten.
3. Falls physischer Drucker hinzugefügt: Physischen Drucker in Druckerliste auswählen, Drucker verwalten (Zahnrad Rechts), 3 Nozzles mit den entsprechenden MK4S equivalent austauschen.
---

## zugang

Der Zugang zum 3D-Drucker erfolgt über die Prusa Connect API nach der Einschulung.

Die Einladung zu Prusa Connect sowie die Einschulung können bei mkg20001 angefragt werden.

## info

Das Slicen von 3D-Druck Objekten erfordert einen Laptop mit dem [Prusa Slicer](https://www.prusa3d.com/page/prusaslicer_424/).

Es wird empfohlen nur die neuste Version zu verwenden. (bspws. ist die Version im Standard-Repository von Ubuntu nicht aktuell.)

Bitte für die Einführung einen Laptop mitnehmen.

## kosten / material

Das Drucken auf dem Drucker kostet 1ct/g als Basispreis.

Filament von mkg (beschriftet) kann für ein paar Cent verwendet werden.

 - PLA/PETG kostet 3ct/g (gesamt 4ct/g)

 - Polycarbonat kostet 7ct/g (gesamt 8ct/g)

Drucken mit eigenem Filament kostet 1ct/g.

Gezahlt werden kann:

- in Bar: Spendebox neben dem Drucker
- per Überweisung: Kontodaten von mkg auf Nachfrage

## sicherheitshinweise

Beim Tausch von Nozzles die Spitze unter 60°C abkühlen lassen oder nur mit Werkzeug berühren.

Beim Druck mit PLA, PETG, Polycarbonat sind keine besonderen Sicherheitsvorkehrungen erforderlich.

Für den Druck mit ABS/ASA und derivaten ist ein Abzug und eine gute Belüftung notwendig.

Für den Druck mit Glasfaser- und Carbonfaserfilamenten ist eine Beschichtung nach dem Drucken aufzutragen (z.B. Resin, Epoxy oder andere stabile Beschichtungen), da diese Fasern bei Berührung auch in die Haut gelangen können und sich dort festsetzen können.

## vor dem Druck

### Einschalten

Powerschalter hinten rechts

### Druckplatte leeren

Zuerst reinigen (Isopropanol oder Isopropanol+Wassergemisch oder Bildschirmreiniger, keinen anderen Reiniger)
- Plastikkrümel und Materialreste entfernen, da diese sonst im Druck landen, ohne Reinigung haftet evtl. das Werkstück nicht gut.

### Nozzle größe prüfen

Standardmäßig ist die 0.6 mm Nozzle geladen.

Welche Nozzle aktuell geladen ist, kann in Prusa Connect unter Settings eingesehen werden.

In Zukunft wird es einen Indikator am Drucker geben ob eine andere Nozzle verwendet wird.

### Filament laden

Kleine Rollen (alle 1KG rollen) können mit dem Spulenhalter am Drucker verwendet werden.

Große Rollen können mit dem grün-schwarzem Kugellager verwendet werden. Dieser sollte 90° gedreht stehen.

Es kann auch aus dem Filamenttrockner gedruckt werden, achte aber darauf, dass das Filament nicht verbogen ist, da das sonst das Nachziehen blockiert.

In beiden Fällen sollte das Filament durch den Fädler gefädelt werden.

Danach einfach reinschieben in das schwarze Loch oben.

  - wenn das Reinschieben fehlschlägt (klackert, zieht nicht) dann muss die Spitze vom Filament mit einer Zange abgeschnitten werden (ca. 45° schnitt)
    - Falls fehlgeschlagen: im Menü beim Filament-Typ "Return" auswählen, Filament wird wieder ausgeladen.
    - Beim Ausladen vom Filament aus dem MK4 kann die Spitze problemlos wieder verwendet werden. Bei anderen Druckern ist evtl. Abschneiden erforderlich.
- dann im Menü Filament-Typ auswählen (meistens PLA, bitte aber nochmal auf der Rolle nachschauen)
- schauen, ob Farbe stimmt, dann "Yes", sonst "Purge more"

***WICHTIG :exclamation:***
- schauen, ob das Filament gerade ist und keine Knoten (also X gekreuztes Filament) in der Rolle sind
  - falls das beim Drucken passiert: Rolle abnehmen, den Teil mit dem Knoten links herunterziehen und "den Knoten" verdrucken lassen
- :forbidden_sign: kein Müll-Filament "für 10€/kg" verwenden, da das zu Problemen führt (brüchig, druckt nicht gescheit)

*Filamentpreise siehe oben, Grammzahl ist im Slicer sichtbar.*

## Slicing im Prusa-Slicer

### Setup
- Menü > Konfiguration > Konfigurations-Assistent -> Prusa Research -> MK4S: HF0.6, HF0.4, 0.25 (kein HF)
- Im Interface rechts neben Drucker: Zahnrad -> physischen Drucker hinzufügen:
  - Neben dem Druckertyp zweimal auf das Plus klicken
  - In den Feldern MK4 mit jeweils 0.25, 0.4 und 0.6 Nozzle auswählen
  - Einstellungen
    - Typ: Prusa Connect
    - API Key: Auf connect.prusa3d.com beim Drucker unter dem Tab `Settings` "Prusa Connect API Key"
  - Danach Test button drücken, speichern

### Optionen

- für die meisten Drucke, die eher strukturellen Zweck haben als schön aussehen müssen, ist  `0.32 MM STRUCTURAL` mit der 0.6 mm Nozzle geeignet
  - für detaillierte Teile, bei denen der 0.6 MM Druck zu Kantig ist, kann die Höhe gesenkt oder die Nozzle bspws. auf 0.4 mm getauscht werden
- soll der Druck etwas schöner aussehen, kann auch `0.2 MM STRUCTURAL` verwendet werden
  - für Figuren die extra schön aussehen sollen kann die Nozzle auf 0.25 MM getauscht werden und `0.07 MM DETAIL` als Höhe verwendet werden
  - das führt zu längern Druckzeiten, ist es aber in der Regel wert.

- **WICHTIG** :exclamation: Material korrekt einstellen. In der Regel PLA, aber bitte auch auf der Rolle schauen.

- **Druckplatte**: Es gibt zwei Druckplatten, die Raue (schlecht Haftend) und die Glatte (gut Haftend)
  - PETG: immer die Raue Platte, da PETG sehr gute Haftung hat und die glatte Platte beschädigt
  - PLA: wenn nur ein kleiner Teil des Objekts am Boden haftet (bspw. Beine und darüber ein größerer Körper) empfiehlt es sich, die gut haftende platte zu verwenden, um die Haftung zu verbessern, sonst fällt das Objekt beim Drucken ab und es gibt Spaghetti
    - alternativ kann der Rand (engl. "brim") aktiviert werden, beachte aber, dass dieser von Hand entfernt werden muss

- bei Objekten, die graduell nach oben gehen (z.B. verkehrter Zylinder) sind keine Stützen erforderlich
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

*:information_source: Lass den Print-Speed in Ruhe. Es ist meist nicht viel schneller, sieht schlecht aus und es gibt evtl. Probleme da das Filament nicht schnell genug schmiltzt. Wenn du die Druckzeit nachhaltig reduzieren willst: 0.2 MM Speed, dann oben "Druckeinstellungen" -> "Schichthöhe" & "Höhe der Ersten Schicht" auf 0.3. Oder mit 0.6 Nozzle drucken und 0.32 mm Schichthöhe.*

- warten bis erste Schicht gedruckt
- periodisch nachschauen (ca. jede 30m)
  - wegen Filament-Knoten und eventuellem Ablösen vom gedruckten
- wenn der Drucker "klack klack klack" macht:
  - druck pausieren
  - Folgende mögliche Fehler:
    - Filament kommt nicht hinterher (bspw. Knoten)
    - Filament kann nicht nachgezogen werden (irgendein Bollen an der Spitze)
    - anderer Fehler
  - unter "Tune" kann Filament ein-/ausgeladen werden
- der Drucker schiebt Filament raus, bewegt sich aber nicht:
  - der Drucker muss gehomed werden. Druck abbrechen in home "Control -> Auto Home"
  - Danach druck erneut versuchen

*bei Druckerschäden oder Unklarheiten mkg oder commander kontaktieren.*

## nach dem Druck

### unloaden
  - Im Home-Menü: Filament -> Unload
  - Upload passiert automatisch, nicht ziehen, warten.
  - es kam schon vor das Leute einfach das Flament, das drin war
    verwendet haben, ohne zu fragen. Am besten einfach unloaden nach Verwendung.

**WICHTIG** :exclamation:
 - Nach dem Unloaden des Filaments im Home Menü "Preheat -> Cooldown" oder Drucker abschalten um das Heizen zu beenden. (Der Drucker beginnt wieder zu heizen nach dem Unload)
 - In der Spule sind Löcher. Das Filament soll durch diese Löcher gefädelt werden, so dass es sich während der Lagerung nicht verknotet (übereinanderlegt), was andernfalls zu Schäden am Drucker führen kann (Drucker reist Rolle vom Halter z.B.)


 - Filament danach im Regal verräumen

### abschalten
  - powerschalter hinten rechts

## sonstiges

### 3mf (Slicer Datei) speichern, nicht nur G-Code!

3mf-Dateien enthalten ungeslicte Objekte sowie die Slicer-Einstellungen, während G-Code Dateien lediglich eine Abfolge von Drucker-Bewegungen enthalten.

Änderungen an Slicing-Parametern wie z.B. Druckertyp oder Nozzle sind nur mit der 3mf-Datei möglich. Jedes Mal von Hand neu einstellen ist auch keine Gute Idee.

3mf-Dateien werden durch Speichern (nicht Exportieren!) im Slicer erstellt.

Der USB ist kein guter Dauerspeicher, da es sich hierbei um ein Billig-China-USB handelt mit begrenzter Lebenszeit (es ist bereits ein USB eingegangen).

Außerdem bringt Prusa ca. jedes halbe Jahr ein Drucker-Upgrade im Hard- oder Softwarebereich heraus, das ein neu-slicen erfordert.

### Filament trocknen

Falls zu viel stringing beim Druck entsteht oder der Druck sehr schlecht aussieht, könnte es an nassem Filament liegen.

Das Filament kann mit dem Filamenttrockner verwendet werden.

- Filament reintun
- Falls aus dem Trockner gedruckt werden soll: Durch das Loch oben ziehen
- Power-Knopf drücken
- M-Knopf drücken, Temperatur mit Pfeiltasten einstellen (PLA: 40-45 °C, PETG 50 °C)
- M-Knopf drücken, Zeit mit Pfeiltasten einstellen
- M-Knopf drücken, Trockner ist jetzt im Modus "Work" (trocknen) und zeigt Feuchtigkeit und Temperatur an

### Nozzle tauschen

Nozzle Tausch Anleitung von Prusa: https://bit.ly/3VSGQyK $\qrcode[height=13mm]{https://bit.ly/3VSGQyK}$

Folgende Nozzle-Größen und Typen sind verfügbar:
- 0.6 MM High-Flow, Hardened (Obsidian)
- 0.4 MM High-Flow (Messing)
- 0.25 MM (Messing)

Nachdem die Nozzle getauscht wurde muss die Nozzle-Größe im Menü angepasst werden.

Unter Hardware > Printhead können die Größe sowie weiter Optionen eingestellt werden.

Bitte aktiviere oder deaktiviere die entsprechendn Zusatzoptionen (High-Flow, Hardened) beim Einstellen.

### Recycling

Alle 3D Drucker Reste sind sortenreines Plastik (PLA, PETG, etc) und daher ideal geeignet um tatsächlich in neues Filament recycled zu werden. (Ganz im Gegenzug zu normalem Plastikmüll der einfach verbrannt wird). Stützmaterial und auch der selten mal fehlgeschlagene Druck sind viel zu Schade für den normalen Plastikmüll. Daher kommt dieser in usere Recycling-Box!
Diese ist getrennt in zwei Hälften: PLA und PETG. Du findest sie unter dem 3D Drucker. Bitte wirf deine 3D Druck-Reste sortenrein getrennt in die richtige Seite ein.
Bitte decke die Recycling-Box wieder ab, damit kein Staub, Öl oder Dreck dazu kommt.

Weitere Details findest du z.B.: [bei der Recyclingfabrik](https://www.recyclingfabrik.com/pages/versandlabel)
