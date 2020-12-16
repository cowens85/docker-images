FROM docker pull elasticsearch:7.9.3

wget https://artifacts.elastic.co/downloads/elasticsearch-plugins/analysis-phonetic/analysis-phonetic-7.9.3.zip

RUN /bin/elasticsearch-plugin install analysis-phonetic/analysis-phonetic-7.9.3.zip \
  && rm -f analysis-phonetic/analysis-phonetic-7.9.3.zip
