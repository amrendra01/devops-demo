FROM python:3.9-slim-buster

WORKDIR /code

COPY . .

RUN pip install --upgrade pip && \ 
    pip install -r /code/requirements.txt

ENTRYPOINT [ "python" ]
CMD ["/code/hello.py"]