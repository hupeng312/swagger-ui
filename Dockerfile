FROM swaggerapi/swagger-ui

RUN sed -i "s/\"https:\/\/petstore.swagger.io\/v2\/swagger.json\"/\`decodeURIComponent(window.location.search.match(\/url=(\[\^\&\]+)\/)\[1\])\`/g" /usr/share/nginx/configurator/translator.js

RUN sed -i "8c \ \ \ \ \ \ type:\ \"boolean\"," /usr/share/nginx/configurator/translator.js

CMD ["sh", "/usr/share/nginx/run.sh"]
