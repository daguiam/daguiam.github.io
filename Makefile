install:
	gem install bundle
	bundle update

orcid:
	curl -X GET --header 'Accept: application/json' 'https://pub.orcid.org/v2.1/0000-0001-6318-9021' > _data/orcid.json

deploy: orcid
	jekyll serve 


publish: 
	git commit -a -m "Update"
	git push