from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    image_url = "https://my-demo-bucket07.s3.amazonaws.com/image.jpg"
    return render_template('index.html', image_url=image_url)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)