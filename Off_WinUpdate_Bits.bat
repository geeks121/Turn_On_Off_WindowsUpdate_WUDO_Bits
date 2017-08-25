sc stop wuauserv
sc stop bits
sc config wuauserv start= disabled
sc config bits start= disabled