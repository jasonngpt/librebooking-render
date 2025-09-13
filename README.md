# LibreBooking on Render

This repo deploys [LibreBooking](https://github.com/LibreBooking/app) to [Render](https://render.com).

## 🚀 Deployment

1. Fork this repo to your GitHub.
2. Go to Render Dashboard → "New" → "Web Service".
3. Connect your forked repo.
4. Render will auto-detect the Dockerfile and build the service.
5. A MySQL database is provisioned via `render.yaml` (or add manually).
6. Set environment variables for DB if not using `render.yaml`.

## 🔑 Environment Variables (if manual setup)

