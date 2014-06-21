import datetime
import os
import glob

from bottle import template, route, run, static_file


@route('/fredag')
def fredag():
    fredag = "FREDAG!" if datetime.datetime.now().weekday() == 4 else " :( "
    return template('fredag.tpl', fredag=fredag)


@route('/images')
def images():
    images = glob.glob('/var/www/home/*.gif')
    images = map(os.path.basename, images)
    return template('images.tpl', images=images)


@route('/')
def none():
    return None


@route('/<filename:path>')
def static(filename):
    return static_file(filename, root='/var/www/home')


run(host="localhost", port=8093, reloader=True)
