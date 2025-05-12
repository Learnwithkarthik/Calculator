FROM java 17
COPY ./

ENTRYPOINT 8080

CMD [ java, sh ./path/of/shellscript/app]