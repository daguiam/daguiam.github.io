---
layout: page
title: Research
permalink: /research/
---

[Google Scholar](https://scholar.google.de/citations?user=GQKhhkMAAAAJ&hl=en)

<a href="https://orcid.org/0000-0001-6318-9021" target="orcid.widget" rel="noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">orcid.org/0000-0001-6318-9021</a>

[ResearchGate](https://www.researchgate.net/profile/Diogo_Aguiam)

[Mendeley](https://www.mendeley.com/profiles/diogo-aguiam/)


<ul>
{% for work in site.data.orcid.activities-summary.works.group  %}
    {% for summary in work.work-summary  %}
    <!-- <li>Title: {{ summary | jsonify }}</li> -->
        {% for id in summary.external-ids.external-id  %}
            {% if id.external-id-type == "doi" %}
                <li>{{ summary.publication-date.year.value  }}{% if summary.publication-date.month.value %}.{{ summary.publication-date.month.value  }}{% endif %}
                <a href="https://doi.org/{{ id.external-id-value  }}">{{ summary.title.title.value  }}</a></li>
            {% else %}
                <!-- <li>asda{{ summary.title.title.value  }}</li> -->
            {% endif %}
    {% endfor %} 
  {% endfor %} 
{% endfor %}   
</ul>

<!-- 
<script src="https://rss.bloople.net/?url=http%3A%2F%2Fwww.feed43.com%2F7358332828027066.xml&showtitle=false&striphtml=true&type=js"></script> -->
<!-- 
---

Special thanks to the free RSS services:

[RSS 2 HTML](http://rss.bloople.net/)

[Feed43](http://www.feed43.com/)

RSS Google Scholar articles from [tutorial](https://nsaunders.wordpress.com/2010/06/17/create-your-own-google-scholar-rss-feed/) -->
