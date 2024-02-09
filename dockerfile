FROM ubuntu:latest

RUN apt update && apt install -y bash fortune cowsay

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["/bin/bash", "-c", "/app/wisecow.sh"]