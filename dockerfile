FROM httpd

LABEL version="1.0" author="francoiscda"

WORKDIR /root 

RUN apt update && apt upgrade -y && apt install git -y 

RUN git clone https://github.com/francoisCDA/clickcounter.git

RUN mv clickcounter/index.html /usr/local/apache2/htdocs/

RUN rm -r clickcounter

EXPOSE 80/tcp

CMD ["httpd-foreground"]