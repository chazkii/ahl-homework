# AHL homework

A relatively secure and simple Python web service

**Applicant - Charlie Smith <charlie@chuckus.nz> **

## Instructions

Please create a git repository (feel free to use your own github account) containing a minimal Python web application in the framework of your choice. The application should have a /hello endpoint, which will serve a web page containing the text "World!". That page should also contain a button, which when clicked, will cause "Hello World!" to be logged by the server to the standard output.

Please provide in that repository a Dockerfile that packages this application into a simple container, as well as the necessary commands to build and start that container on port 12345.

## Usage

```bash
docker build -t ahl
docker run --init -it --rm -p=12345:5000 ahl
```
## Some design notes

* Simple and lightweight - KISS, no need to add jQuery 
* Security - CSRF token for POST, prevent privesc when deploying as container

