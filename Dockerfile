FROM vimagick/scrapyd

RUN apt-get update -qq && apt-get install -y locales-all -qq
RUN easy_install --upgrade pytz
RUN pip install python-slugify pymongo
