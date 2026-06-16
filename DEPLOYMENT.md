# Deployment — DVOP400 Final Project

**Pull Request:** `PASTE_YOUR_PULL_REQUEST_LINK_HERE`

---

## Requirements
[Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running.

## Pull the image

```bash
docker pull ramosjm080/dvop400-finalproject:latest
```

## Run it

```bash
docker run -d -p 8080:80 --name finalproject ramosjm080/dvop400-finalproject:latest
```

## Open the site

Go to **http://localhost:8080** in your browser. Use the nav to get to the About and Resume pages.

## Stop it when you're done

```bash
docker stop finalproject
docker rm finalproject
```

## Notes

The image runs on both `linux/amd64` and `linux/arm64` so it works on Windows, Mac, and Linux. It gets built and pushed to Docker Hub automatically through GitHub Actions whenever there's a push to the repo. Docker Hub credentials are stored as GitHub Secrets and never hardcoded anywhere in the code.
