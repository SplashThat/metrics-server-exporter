all: pack reindex

.PHONY: pack reindex

pack:
	helm package helm -d pkg

reindex:
	helm repo index --url https://github.com/SplashThat/metrics-server-exporter .
	sed -i s@/pkg/@/raw/master/pkg/@g index.yaml
