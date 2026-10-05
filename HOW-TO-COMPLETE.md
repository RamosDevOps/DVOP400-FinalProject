# How to Complete & Submit — DVOP400 Final Project

Follow these steps in order. The website, Dockerfile, and GitHub Actions
workflow are already built for you — you mostly need to personalize the site,
push it to GitHub, and connect Docker Hub.

Estimated time: **30–45 minutes.**

---

## Step 1 — Personalize the website (~10 min)
Open these files in any text editor and replace the placeholder text. Search for
`TODO` and `Your Name` — every spot you need to change is marked.

- **`index.html`** — your name and tagline
- **`about.html`** — your bio and interests
- **`resume.html`** — your work history, education, and skills
- **`images/`** — your photo. Save it as `images/profile.jpg`, then in
  `about.html` change `src="images/profile.svg"` to `src="images/profile.jpg"`.

> The site works fine even if you leave the placeholders — but personalizing it
> is part of the assignment.

## Step 2 — (Optional) Test it locally
If you have Docker installed, make sure it builds and runs before pushing:
```bash
docker build -t dvop400-finalproject .
docker run -d -p 8080:80 --name finalproject dvop400-finalproject
```
Open **http://localhost:8080** to check it. When done:
```bash
docker stop finalproject && docker rm finalproject
```

## Step 3 — Create the GitHub repository
1. Go to https://github.com/new
2. Name it exactly: **`DVOP400-FinalProject`**
3. Check **"Add a README file"** (this creates the `main` branch).
4. Click **Create repository**.

## Step 4 — Set up Docker Hub
1. Create a free account at https://hub.docker.com (if you don't have one).
2. Create a repository named **`dvop400-finalproject`**, visibility **Public**
   (so your instructor can pull it). _Repositories → Create repository._
3. Generate an access token: **Account Settings → Security → New Access Token**.
   Give it **Read & Write** access. **Copy the token now** — you can't see it again.

## Step 5 — Add your credentials as GitHub Secrets
In your GitHub repo: **Settings → Secrets and variables → Actions → New repository secret.**
Add these two secrets:

| Name | Value |
|------|-------|
| `DOCKERHUB_USERNAME` | your Docker Hub username |
| `DOCKERHUB_TOKEN` | the access token from Step 4 |

> This is the "use GitHub Secrets, don't hardcode credentials" requirement. ✅

## Step 6 — Clone, branch, add files, and push
Run these commands. Replace `<your-username>` with your GitHub username.

```bash
# Clone your new repo
git clone https://github.com/<your-username>/DVOP400-FinalProject.git
cd DVOP400-FinalProject

# Create the develop branch and push it
git checkout -b develop
git push -u origin develop

# Create and switch to the feature branch
git checkout -b feature/final-project
```

Now **copy all the project files** (everything from this package — `index.html`,
`about.html`, `resume.html`, `css/`, `images/`, `Dockerfile`, `nginx.conf`,
`.dockerignore`, and the `.github/` folder) into this cloned folder. Then:

```bash
git add .
git commit -m "Add personal website, Dockerfile, and GitHub Actions workflow"
git push -u origin feature/final-project
```

Pushing the feature branch triggers the GitHub Action automatically.

## Step 7 — Confirm the build worked
1. In your repo, open the **Actions** tab.
2. Watch the **"Build and Publish Docker Image"** workflow run (1–2 min).
3. When it's green ✅, check Docker Hub — your `dvop400-finalproject` image will
   be there, built for both `linux/amd64` and `linux/arm64`.

> If it fails on login, double-check your two secrets in Step 5, then re-run the
> job from the Actions tab.

## Step 8 — Open the Pull Request
1. In your repo, go to the **Pull requests** tab → **New pull request**.
2. Set **base: `develop`** ← **compare: `feature/final-project`**.
3. Click **Create pull request**, add a title, and create it.
4. **Copy the PR's URL** from your browser's address bar
   (looks like `https://github.com/<your-username>/DVOP400-FinalProject/pull/1`).

## Step 9 — (Optional) Add the instructor as a collaborator
Only if your repo is **private**: **Settings → Collaborators → Add people →**
`BretDickey-SCC`.

## Step 10 — Finish the deployment doc and submit
1. Open **`DEPLOYMENT.md`** (included in this package).
2. Paste your PR URL at the very top where it says
   `PASTE_YOUR_PULL_REQUEST_LINK_HERE`.
3. Replace `YOUR_DOCKERHUB_USERNAME` throughout with your real Docker Hub username.
4. **Upload `DEPLOYMENT.md` to the assignment in Canvas and submit.** ✅

---

## Quick checklist
- [ ] Repo named `DVOP400-FinalProject` created on GitHub
- [ ] `develop` and `feature/final-project` branches pushed
- [ ] Website personalized (name, photo, resume)
- [ ] Docker Hub repo + access token created
- [ ] `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` added as GitHub Secrets
- [ ] GitHub Action ran green and published a multi-platform image
- [ ] Pull Request opened (`feature/final-project` → `develop`)
- [ ] PR link pasted at the top of `DEPLOYMENT.md`
- [ ] `DEPLOYMENT.md` submitted to the assignment
