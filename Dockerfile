# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads/mmorhun-tenant/component1-nudging:tag@sha256:0c4f4ed923958a8ee68e81dc8756795cab234180bb94f59dba898e927b48356b AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
