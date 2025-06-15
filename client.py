import http.server
import socketserver
import os

PORT = 8080
DIRECTORY = "deeper_client"

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        # Muda o diretório de trabalho para o diretório onde o script está
        # para garantir que o caminho para 'deeper_client' seja encontrado.
        script_dir = os.path.dirname(os.path.abspath(__file__))
        os.chdir(script_dir)
        # Define o diretório a ser servido
        super().__init__(*args, directory=DIRECTORY, **kwargs)

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving client at http://localhost:{PORT}")
    print(f"Serving files from directory: {os.path.join(os.getcwd(), DIRECTORY)}")
    print("Press Ctrl+C to stop the server.")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped.")
        httpd.shutdown()

