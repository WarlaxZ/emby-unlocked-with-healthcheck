FROM nvllsvm/emby-unlocked:latest

RUN apk add  --no-cache  --update curl
HEALTHCHECK --interval=15s --timeout=15s --start-period=20s CMD curl -f http://127.0.0.1:8096/ || exit 1
