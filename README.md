# 3D-Druck Einführung (MK4 Drucker)

_Fehlt etwas? Verbesserungsvorschläge? GitHub: github.com/realraum/mk4-guide_

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

Zuerst reinigen (Isopropanol oder Isopropanol+Wassergemisch, keinen anderen Reiniger)
- Plastikkrümel und Materialreste entfernen, da diese sonst im Druck landen, ohne Reinigung haftet evtl. das Werkstück nicht.

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

*Filament von mkg ist für 3ct/g bzw. 30€/kg zu haben, Grammzahl ist im Slicer sichtbar.*

## Slicing im Prusa-Slicer

### Setup
- Konfigurations-Assistent -> Prusa FFF -> MK4 0.4 mm Nozzle mit Input Shaper (und optional 0.25 mm und 0.6 mm Nozzle)
- Im Interface rechts neben Drucker: Zahnrad -> physischen Drucker hinzufügen:
  - Neben dem Druckertyp zweimal auf das Plus klicken
  - In den Feldern MK4 mit jeweils 0.25, 0.4 und 0.6 Nozzle auswählen
  - Einstellungen
    - Typ: Prusa Connect
    - API Key: Auf connect.prusa3d.com beim Drucker unter dem Tab `Settings` "Prusa Connect API Key"
  - Danach Test button drücken, speichern

### Optionen

- für die meisten Drucke ist `0.2 MM SPEED` geeignet. Wenn es stabil sein muss, bitte `0.2 MM STRUCTURAL`, andernfalls andere `DETAIL` Schichthöhen auswählen (weniger Höhe = mehr Detail).

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

### Filament trocknen

Falls zu viel stringing beim Druck entsteht oder der Druck sehr schlecht aussieht, könnte es an nassem Filament liegen.

Das Filament kann mit dem Filamenttrockner verwendet werden.

- Filament reintun
- Falls aus dem Trockner gedruckt werden soll: Durch das Loch oben ziehen
- Power-Knopf drücken
- M-Knopf drücken, Temperatur mit Pfeiltasten einstellen (PLA: 40-45 °C, PETG 50 °C)
- M-Knopf drücken, Zeit mit Pfeiltasten einstellen
- M-Knopf drücken, Trockner ist jetzt im Modus "Work" (trocknen) und zeigt Feuchtigkeit und Temperatur an
