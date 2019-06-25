PROTO_FILES := $(shell find api -type f | grep -E *.proto$)

PHONY: .clear
clear:
	rm -rf schema/*

PHONY: .protoc
protoc:
	protoc --bq-schema_out=schema -I=${GOPATH}/src/github.com/GoogleCloudPlatform/protoc-gen-bq-schema -I=api/ ${PROTO_FILES}
