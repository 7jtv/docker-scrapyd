FROM vimagick/scrapyd

RUN apt-get update -qq && apt-get install -y locales -qq
RUN easy_install --upgrade pytz
RUN pip install python-slugify pymongo
