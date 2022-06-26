FROM python

# Install OS Modules
RUN apt update -y &&  \
    apt install telnet -y && \
    rm -rf /var/lib/apt/lists/*

# Copy Source Code
RUN mkdir -p /data-copier
COPY app /data-copier/app
COPY requirements.txt /data-copier


# Install Application Dependencies
RUN pip install -r /data-copier/requirements.txt

