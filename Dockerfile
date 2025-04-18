# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads/mmorhun-tenant/component1-nudging:tag@sha256:a23413497c14c9044264e0e2ef7117f78291b34e09820b17c57e131ab22ff278 AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
