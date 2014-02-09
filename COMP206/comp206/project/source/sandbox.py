#!/usr/bin/python
import cgi
import cgitb; cgitb.enable()   # enable debugging mode
form = cgi.FieldStorage()   # use form to access the information in <form></form>

temp = 'pickup 2'.split(" ")

print temp[0]