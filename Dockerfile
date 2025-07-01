FROM curlimages/curl:latest

WORKDIR /app

COPY notify.sh .

CMD ["./notify.sh"]
