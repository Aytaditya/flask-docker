from flask import Flask
import os
import redis # type: ignore

app=Flask(__name__)

#connect to redis 
cache=redis.Redis(host='redis',port=6379)

@app.route('/')
def hello():
    count=cache.incr('visits')
    return f"Hello World! I have been seen {count} times."

if __name__ == '__main__':
    app.run(host='0.0.0.0')

