FROM scratch
WORKDIR /app
COPY ./target/x86_64-unknown-linux-musl/release/deploy_axum_project_to_cloud_run .
CMD ["./deploy_axum_project_to_cloud_run"]