import os
import openai
import requests

# openai.organization = "org-954T5J0UcjO8OLv8vdTs9uxc"
# openai.api_key = os.getenv("OPENAI_API_KEY")
# print(openai.Model.list())

def question():
    url = "https://api.openai.com/v1/completions"
    headers = {}
    headers['Content-Type'] = "application/json"
    headers['Authorization'] = "Bearer " + os.environ["OPENAI_API_KEY"]

    data = {}
    data['model'] = "text-davinci-003"
    data['prompt'] = "Isso é um teste"
    data['max_tokens'] = 7
    data['temperature'] = 0

    response = requests.get(url, headers, json=data)
    print(response.text)

if __name__ == '__main__':
    question()