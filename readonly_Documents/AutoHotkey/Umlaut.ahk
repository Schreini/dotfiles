;Umlaut
Persistent
SetCapsLockState("AlwaysOff")

#HotIf GetKeyState("CapsLock", "P")
a::Send("ä")
o::Send("ö")
u::Send("ü")
s::Send("ß")
e::Send("€")
+a::Send("Ä")
+o::Send("Ö")
+u::Send("Ü")

'::Send("ä")
`;::Send("ö")
[::Send("ü")
-::Send("ß")
"::Send("Ä")
+;::Send("Ö")
+[::Send("Ü")
#HotIf
