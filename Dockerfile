FROM vimagick/scrapyd

RUN apt-get update -qq && apt-get install -y locales -qq
RUN locale-gen
RUN easy_install --upgrade pytz
RUN pip install python-slugify pymongo twine scrapy-splash

RUN echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen
