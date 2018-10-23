FROM blacktop/elasticsearch:5.6
LABEL maintainer "gavin zhou <gavin.zhou@gmail.com>"

RUN elasticsearch-plugin  install --batch x-pack \
  && elasticsearch-plugin  install analysis-kuromoji \
  && elasticsearch-plugin install analysis-icu 

EXPOSE 9200 9300