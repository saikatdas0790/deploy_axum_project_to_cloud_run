cargo build --release --target x86_64-unknown-linux-musl 

docker build . --tag deploy_axum_project_to_cloud_run

docker run --detach --publish 3000:3000 --name deploy_axum_project_to_cloud_run deploy_axum_project_to_cloud_run