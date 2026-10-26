# Render deploy: run the official prebuilt release image instead of building
# the monorepo from source (faster deploys, no build-minute burn on the free
# plan, and the same image the project tests and ships).
# To update: change the tag below to a newer release and push.
FROM ghcr.io/tashfeenahmed/freellmapi:v0.16.10
