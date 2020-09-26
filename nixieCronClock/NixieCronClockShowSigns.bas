### P1

LED.bright(6)

' a-h = Zeichen für die 1.-8. Stelle
' 0-9: die jeweilige Zahl
' 10-15: A-F
' 16: H
' 22: i
' 17: L
' 23: n; 25: N
' 18: P
' 19: U
' 20: -
' 21: SPACE

a = 25
b = 23
c = 25
d = 23
e = 25
f = 23
g = 25
h = 23

' main
100:
    goto 201

201:
    LED.pchar(0, a)
    goto 202

202:
    LED.pchar(1, b)
    goto 203

203:
    LED.pchar(2, c)
    goto 204

204:
    LED.pchar(3, d)
    goto 205

205:
    LED.pchar(4, e)
    goto 206

206:
    LED.pchar(5, f)
    goto 207

207:
    LED.pchar(6, g)
    goto 208

208:
    LED.pchar(7, h)
    goto 500

500:
' Ändern für andere Zeit zu warten, danach clear
    delay 10
    LED.clear()
    end

