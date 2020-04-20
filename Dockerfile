FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/
COPY model_data /app/model_data

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install && make lint

EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]