from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/rooms')
def rooms():
    return render_template('rooms.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/contact')
def contact():
    return render_template('contact.html')

@app.route('/yapayzeka')
def yapayzeka():
    return render_template('yapayzeka.html')

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0', port=5000)
