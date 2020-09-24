### P1

' t = Gesamtzeit; Minuten
' q = Gesamtzeit; Sekunden

' c = Current time / Aktuelle noch �brige Zeit; Minuten
' d = Current time / Aktuelle noch �brige Zeit; Sekunden

t = 59
q = 59

c = t
d = q

d = d+1

LED.bright(6)

' Start
100:
    goto 120

' Aktualisiere Display
105:
    LED.pdez(0, c % 60, 1, 1)
    LED.pdez(3, d, 1, 1)

    'F�hrende Nullen anzeigen
    LED.adp(0)

    goto 120

' Warte auf neue Sekunde
120:
    delay 1000

    if d = 0 then goto 150

    d = d-1

    goto 105

'Sekunden sind null, umspringen auf weniger Minuten
150:
    if c = 0 then goto 200

    c = c-1
    d = 59

    goto 100

'Sekunden und Minuten sind null, Timer abgelaufen
200:
    if c > 0 then goto 100

    IO.beep(2)

    LED.clear()

    LED.pchar(1, 13)
    LED.pchar(2, 14)
    LED.pchar(3, 15)
    LED.pchar(4, 14)
    LED.pchar(5, 10)
    LED.pchar(6, 26)

    goto 201

201:
    delay 1000

    LED.clear()

    delay 1000

    goto 200

