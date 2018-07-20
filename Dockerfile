FROM rabbitmq:3-alpine

RUN wget -nc -O - https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip \
 | gunzip - > /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange.ez

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange