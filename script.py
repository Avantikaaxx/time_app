from flask import Flask
from datetime import datetime

app = Flask(_name_)

@app.route('/time')
def tapp():
    dt = datetime.now()
    s = "Hello Professor Franchitti! you visited the website at: " + str(dt)
    return(s)
    

if _name_ == '_main_':
    app.run(host='0.0.0.0', port =8080, debug=True)