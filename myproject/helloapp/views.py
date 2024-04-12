# views.py
from django.shortcuts import render
import requests

def home(request):
    try:
        # Fetch news data from the API
        api_key = 'fbc50f8083bb4dada1367e8345947f14'
        url = 'https://newsapi.org/v2/everything?q=tesla&from=2024-03-12&sortBy=publishedAt&apiKey=' + api_key
        response = requests.get(url)
        response.raise_for_status()  # Raise an error for non-200 status codes
        data = response.json()
        articles = data.get('articles', [])  # Extract articles from data
    except requests.RequestException as e:
        # Handle API request error
        articles = []  # Empty list of articles
        error_message = str(e)
    
    return render(request, 'hello.html', {'articles': articles})
