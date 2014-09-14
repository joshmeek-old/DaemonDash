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

    
