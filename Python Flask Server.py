import socket, json, psutil, multiprocessing, requests

from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/status")
def status():
    hostname = socket.gethostname()#Get hostname
    IP = socket.gethostbyname(hostname)#Get IP Address
    CPU = multiprocessing.cpu_count()
    RAM = psutil.virtual_memory().total / (1024.0 ** 3)
    return jsonify({'Hostanme' : hostname,
                     'IP Address' : IP,
                     'Amount of CPU Cores' : CPU,
                     'RAM in GBs' : round(RAM,3)
                      })

if __name__ == '__main__':
    app.run(host='127.0.0.1',port=8080, debug=True)
