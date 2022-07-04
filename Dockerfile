FROM python:3.9-slim-buster

WORKDIR /mycode

COPY . /mycode

RUN pip install --upgrade pip && \ 
    pip install -r /mycode/requirements.txt

ENTRYPOINT [ "python" ]
CMD ["/mycode/hello.py"]