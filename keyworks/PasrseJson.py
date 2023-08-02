import  json
import requests

url = "https://jsonplaceholder.typicode.com/users"

response = requests.get(url)
print(response.text)

json_response = json.loads(response.text)
print(json_response)

