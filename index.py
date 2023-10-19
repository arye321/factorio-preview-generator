from flask import Flask, render_template, request, jsonify
import os
app = Flask(__name__)

@app.route("/")
def index():
    # os.system('factorio/bin/x64/factorio --generate-map-preview=map-preview.png --map-gen-settings map_gen_settings.json --map-preview-size=2048 --map-preview-scale=2')
    # os.system('factorio/bin/x64/factorio --generate-map-preview=map-preview.png --map-gen-seed=1230')
    # return "<p>Hello, World!</p>"
    return render_template('index.html')

@app.route('/generate', methods=['POST'])
def home_post():
    data = request.json  # Assuming you are sending JSON data
    received_string = data.get('text')
    return jsonify({'message': f'String received: {received_string}'})