import socket
import threading
from urllib import request, response

def handle_client(c, addr):
    print(addr, "connected.")

    with c:
        request = c.recv(1024)

        # Parse HTTP headers
        headers = request.split(b"\r\n")
        file = headers[0].split()[1].decode()

        # Load file content
        if file == "/":
            file = "/index.html"

        try:
            with open("./" + file, "rb") as f:
                content =  f.read()
            response = b"HTTP/1.0 200 OK\r\n\r\n" + content

        except FileNotFoundError:
            response = response = b"HTTP/1.0 404 NOT FOUND\r\n\r\nFile not found!"

        # Send HTTP response
        c.sendall(response)

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind(("0.0.0.0", 31234))
    s.listen()

    while True:
        c, addr = s.accept()

        t = threading.Thread(target=handle_client, args=(c, addr))
        t.start()

