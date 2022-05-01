FROM node:16-alpine

# WORKDIR /usr/src/app

ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    HOST=0.0.0.0 \
    API_URL=${API_URL}

# COPY . /sr/src/app/
# CMD  npm install

RUN echo ${HOME}
# RUN echo ${CONTAINER_PORT}
RUN echo ${API_URL}

WORKDIR ${HOME}

# 追加
COPY package*.json ./
RUN npm install

COPY . ./

RUN npm build
# ここまで

# EXPOSE ${CONTAINER_PORT}