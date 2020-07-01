from flask import Flask, jsonify
import requests
from lxml import html

app = Flask(__name__)

@app.route("/")
def index():
	return "Hallo"

@app.route("/<handle>")
def account(handle):
	my_session = requests.session()
	page = my_session.get("https://twitter.com/" + handle)
	tree = html.fromstring(page.text.encode("ascii","ignore"))
	tweets = tree.xpath("//li//p")
	output = {}
	i = 0
	for tweet in tweets:
		output[str(i)] = tweet.text_content()
		i += 1
	return jsonify(output)

app.run(host="0.0.0.0", debug=False)