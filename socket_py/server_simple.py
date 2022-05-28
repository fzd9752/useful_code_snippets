import socket

##
# AF_INET IPv4 address famil
# SOCK_STREAM TCP 
##
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind(("0.0.0.0", 3234))
    s.listen()
    c, addr = s.accept()
    with c:
        print(addr, "connected.")
        
        while True:
            data = c.recv(1024)
            if not data:
                break
            c.sendall(data)