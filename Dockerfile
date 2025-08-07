FROM python:3.10-slim

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /OGEva
WORKDIR /OGEva
COPY . /OGEva
CMD ["python", "bot.py"]
