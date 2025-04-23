# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads/mmorhun-tenant/component1-nudging:tag@sha256:88bc54c5d0a3bf60b5c923ba06f9c487ab368d7a216390dbbd2b46a0b962be86 AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
