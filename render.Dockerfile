# Render deploy: run the official prebuilt release image instead of building
# the monorepo from source (faster deploys, no build-minute burn on the free
# plan, and the same image the project tests and ships).
# A daily scheduled task bumps the tag below to the newest release; each
# commit to main makes Render redeploy. Keep the FROM line format unchanged.
FROM ghcr.io/tashfeenahmed/freellmapi:v0.16.20
# Back up the database to Hugging Face every 48 hours (172800000 ms) instead of
# the default 5 minutes, which used up Render's free 5 GB monthly bandwidth.
# A backup still runs once on every start.
ENV FREEAPI_DB_BACKUP_INTERVAL_MS=172800000
