# DVOP400 — Final Project

A personal website (Home, About, Resume) built as static HTML/CSS, containerized
with Docker, and automatically built and published to Docker Hub as a
multi-platform image using GitHub Actions.

## Tech stack
- **Frontend:** HTML + CSS (static, no build step)
- **Server:** nginx (alpine)
- **Container:** Docker
- **CI/CD:** GitHub Actions (`docker/build-push-action` with `buildx`)
- **Registry:** Docker Hub

## Project structure
```
DVOP400-FinalProject/
├── index.html              # Home
├── about.html              # About Me
├── resume.html             # Resume
├── css/styles.css          # Shared styles
├── images/profile.svg      # Profile photo placeholder
├── nginx.conf              # Web server config
├── Dockerfile              # Builds the website image
├── .dockerignore
└── .github/workflows/
    └── docker-publish.yml  # Multi-platform build + push to Docker Hub
```

## Run it locally with Docker
```bash
docker build -t dvop400-finalproject .
docker run -d -p 8080:80 --name finalproject dvop400-finalproject
```
Then open http://localhost:8080

See `DEPLOYMENT.md` for full pull-and-run instructions.
