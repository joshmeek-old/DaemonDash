import requests
import re
from bs4 import BeautifulSoup as bs

def uvIndex(zipcode):
    url = 'http://iaspub.epa.gov/enviro/uv_search_v2'
    payload = {'zipcode' : zipcode}
    r = requests.get(url, params=payload)
    soup = bs(r.text)
    index = soup.find('img', {'alt' : re.compile('UVI')})
    print index['alt'][-1]

def aqIndex(zipcode, date):
    #zipcode, date = 20852, '2014-09-13'
    inputs = {'zipCode' : zipcode, 'date' : date, 'distance' : 25, 'API_KEY' : '9E84FE3D-6C7C-4238-8C89-5B8098D94DC6'}
    r = requests.get('http://www.airnowapi.org/aq/forecast/zipCode/?format=application/json', params=inputs)
    aqi = r.json()
    state = aqi[0]['StateCode']
    quality = aqi[0]['Category']['Name']
    return state, quality

    
