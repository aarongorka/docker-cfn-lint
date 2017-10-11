FROM node:alpine
RUN yarn global add cfn-lint
WORKDIR /home/node
ENTRYPOINT ["cfn-lint"]
CMD []
