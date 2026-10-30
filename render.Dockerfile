# Render deploy: run the official prebuilt release image instead of building
# the monorepo from source (faster deploys, no build-minute burn on the free
# plan, and the same image the project tests and ships).
# A daily scheduled task bumps the tag below to the newest release; each
# commit to main makes Render redeploy. Keep the FROM line format unchanged.
FROM ghcr.io/tashfeenahmed/freellmapi:v0.16.12
