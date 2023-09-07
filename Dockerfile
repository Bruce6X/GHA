# This dockerfile is only for test purpose

FROM python:3

WORKDIR /usr/src/app

# Install the rich library for enhanced terminal print
RUN pip install rich

# copy all content in current dir to workdir
COPY . .

# execute python command to print styled hello world
CMD ["python", "-c", "from rich import print; print('[bold magenta]Hello, QOD team![/bold magenta]')"]
