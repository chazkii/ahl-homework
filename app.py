from flask import Flask, render_template
from flask_wtf.csrf import CSRFProtect


app = Flask(__name__)
app.config['SECRET_KEY'] = '$ome0neBetterChang3me!'
csrf = CSRFProtect(app)


@app.route('/hello')
def world():
    return render_template('hello.html')


@app.route('/get-profit', methods=['POST'])
def get_profit():
    print('Hello world!')
    return ''
