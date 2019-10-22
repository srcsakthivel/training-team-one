FROM python:3.7
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN sed -i "s|port=8080|port=80|" main.py
ENV PORT=80    
CMD ["python3","main.py"]
