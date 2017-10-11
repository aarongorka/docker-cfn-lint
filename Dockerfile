FROM node:alpine
ENV CFN_LINT_VERSION 1.1.7
RUN yarn global add cfn-lint@${CFN_LINT_VERSION}
WORKDIR /home/node
ENTRYPOINT ["cfn-lint"]
CMD []
