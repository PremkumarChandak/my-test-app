#FROM ubuntu

#RUN apt-get update
#RUN apt-get install -y python3 python3-pip
#RUN pip3 install flask

#COPY app.py /opt/app.py

#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080 

#########

FROM ubuntu

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv

# Create and activate a virtual environment
RUN python3 -m venv /opt/venv

# Upgrade pip and install Flask inside the venv
RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install flask

# Copy your app
COPY app.py /opt/app.py

# Use the virtual environment’s python and flask
ENV PATH="/opt/venv/bin:$PATH"
ENV FLASK_APP=/opt/app.py

EXPOSE 8080
ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]
