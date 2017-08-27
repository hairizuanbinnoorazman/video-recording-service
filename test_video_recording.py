from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

chrome_options = Options()
chrome_options.add_argument("--disable-extensions")
chrome_options.add_argument("--no-sandbox")

driver = webdriver.Chrome('./chromedriver', chrome_options=chrome_options)

# Video is selected as it has high amount of moving scenes
# This would allow easier detection of lag in the video clips or audio clip
driver.get("https://www.youtube.com/watch?v=km2OPUctni4")