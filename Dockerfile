# This dockerfile is only for test purpose

FROM python:3

WORKDIR /usr/src/app

# Install the art library for ASCII art generation
RUN pip install art

# copy all content in current dir to workdir
COPY . .

# execute python command to generate and print ASCII art
CMD ["python", "-c", "import art; print(art.text2art('Hello  Human!'))"]
