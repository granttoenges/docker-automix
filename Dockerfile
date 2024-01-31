FROM python:3.11

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y ffmpeg

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "streamlit", "run", "--server.port", "8000", "main.py" ]