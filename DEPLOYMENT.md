# Deployment Guide — DVOP400 Final Project

> **Pull Request URL:** `PASTE_YOUR_PULL_REQUEST_LINK_HERE`
>
> _(Replace the line above with the direct link to your GitHub Pull Request,_
> _e.g. `https://github.com/your-username/DVOP400-FinalProject/pull/1`)_

---

This document explains how to pull the website's Docker image, run it in a
container, and view it in a browser.

> Throughout this guide, replace **`YOUR_DOCKERHUB_USERNAME`** with your actual
> Docker Hub username.

## Prerequisites
- [Docker](https://www.docker.com/products/docker-desktop/) installed and running
  (Docker Desktop on Windows/macOS, or Docker Engine on Linux).

## 1. Pull the image from Docker Hub
```bash
docker pull YOUR_DOCKERHUB_USERNAME/dvop400-finalproject:latest
```

## 2. Run the container
```bash
docker run -d -p 8080:80 --name finalproject YOUR_DOCKERHUB_USERNAME/dvop400-finalproject:latest
```
What the flags mean:
- `-d` — run in the background (detached)
- `-p 8080:80` — map port **8080** on your machine to port **80** in the container
- `--name finalproject` — give the container a friendly name

## 3. View the website
Open your browser and go to:

**http://localhost:8080**

You'll land on the Home page. Use the top navigation to visit **About** and **Resume**.

## 4. Stop and clean up (when you're done)
```bash
docker stop finalproject      # stop the container
docker rm finalproject        # remove the container
```

## Multi-platform support
The image is built for both `linux/amd64` and `linux/arm64`. Because Docker
Desktop runs containers inside a Linux VM, this single multi-platform image runs
on **Windows, macOS (Intel & Apple Silicon), and Linux** — Docker automatically
pulls the correct architecture for your machine.

## Notes
- Image repository: `YOUR_DOCKERHUB_USERNAME/dvop400-finalproject` on Docker Hub
- The image is published automatically by a GitHub Actions workflow
  (`.github/workflows/docker-publish.yml`) on every push to the working branches.
- Docker Hub credentials are stored as **GitHub Secrets** — they are never
  hardcoded in the repository.
