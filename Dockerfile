FROM ruby

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs && curl https://www.npmjs.com/install.sh | sh && npm install yarn -g

ENTRYPOINT [ "/bin/bash" ]