import json
import os
import socket
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import urlsplit


class RequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        if urlsplit(self.path).path != "/":
            self.send_error(404, "Not found")
            return

        response = {
            "message": "running!",
            "version": "1.0.0",
            "pod_name": os.getenv("POD_NAME", socket.gethostname()),
            "pod_ip": os.getenv("POD_IP"),
        }

        body = json.dumps(response).encode("utf-8")

        self.send_response(200)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)


if __name__ == "__main__":
    port = int(os.getenv("PORT", "8089"))
    server = ThreadingHTTPServer(("0.0.0.0", port), RequestHandler)

    print(f"Server listening on port {port}", flush=True)

    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()
