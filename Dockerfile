# Image format: quay.io/org/namespace/component-name
FROM quay.io/redhat-user-workloads/mmorhun-tenant/component1-nudging:tag@sha256:8e628a8c95919510206c767736b6873995e390d49ba8ea8cf09248b892144414 AS source

FROM python:3.9-slim AS runner
WORKDIR /app
COPY --from=source /app/app.py .
EXPOSE 8080
CMD ["python", "app.py"]
