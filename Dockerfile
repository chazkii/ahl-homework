FROM python:3.6
MAINTAINER Charlie Smith <charlie@chuckus.nz>

WORKDIR /usr/lib/app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Create non privileged user, set ownership and change user
RUN useradd hello && usermod -a -G hello hello \
 && chown -R hello:hello /usr/lib/app
USER hello

ENV FLASK_APP=app.py
COPY . ./

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
