#!/usr/local/bin/python
#cache warmer

import pycurl


website_list = ['www.bbc.com', 'www.google.com', 'www.skyports.com']

for i in website_list:
  c = pycurl.Curl()
  site = i
  c.setopt(c.URL, i)
  c.perform()
		
