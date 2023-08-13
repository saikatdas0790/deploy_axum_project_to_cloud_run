cargo build --release --target x86_64-unknown-linux-musl 

docker build . --tag us-central1-docker.pkg.dev/experiments-342706/cloud-run-source-deploy/deploy_axum_project_to_cloud_run

docker push us-central1-docker.pkg.dev/experiments-342706/cloud-run-source-deploy/deploy_axum_project_to_cloud_run

gcloud run deploy deploy-axum-project-to-cloud-run --image us-central1-docker.pkg.dev/experiments-342706/cloud-run-source-deploy/deploy_axum_project_to_cloud_run --region us-central1 --project experiments-342706 --allow-unauthenticated