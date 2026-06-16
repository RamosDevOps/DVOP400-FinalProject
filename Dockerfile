# ---- Personal website image ----
# Serves the static site with a lightweight nginx server.
FROM nginx:1.27-alpine

# Use our own server config
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy only the website files into the web root
COPY index.html about.html resume.html /usr/share/nginx/html/
COPY css/    /usr/share/nginx/html/css/
COPY images/ /usr/share/nginx/html/images/

EXPOSE 80

# nginx:alpine already runs nginx by default, but we make it explicit
CMD ["nginx", "-g", "daemon off;"]
