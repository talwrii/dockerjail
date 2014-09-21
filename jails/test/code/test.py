import os.path
import requests

here = os.path.dirname(__file__)
print file(os.path.join(here, 'test')).read()

requests.get('http://www.google.com/')
