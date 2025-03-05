# Full command:
# docker run -it --rm --name node-c -v $PWD:/usr/src/app -w "/usr/src/app" -p 3000:3000 --network=iso-network node bash -c "npm install && node index"

FROM node
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY index.js .
CMD ["node", "index"]