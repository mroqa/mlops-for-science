
from app import app
import requests

url = "http://127.0.0.1:8050"

def test_app_responsive():
    assert requests.get(url)
