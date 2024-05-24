FROM python:3.10.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5001

CMD ["uvicorn", "mini_groq:app", "--reload", "--port", "5001"]
