FROM public.ecr.aws/lambda/nodejs:20

WORKDIR /var/task

COPY . .

RUN npm install
RUN npm install otel-agent-nodejs

ENV NODE_OPTIONS="--require otel-agent-nodejs"

CMD ["app.handler"]
