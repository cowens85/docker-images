FROM alpine as build

RUN wget --no-check-certificate -O - https://artifacts.elastic.co/downloads/elasticsearch-plugins/analysis-phonetic/analysis-phonetic-7.9.3.zip > /analysis-phonetic-7.9.3.zip

FROM elasticsearch:7.9.3
COPY --from=build /analysis-phonetic-7.9.3.zip ./analysis-phonetic-7.9.3.zip

RUN bin/elasticsearch-plugin install /analysis-phonetic-7.9.3.zip \
  && rm -f /analysis-phonetic-7.9.3.zip
