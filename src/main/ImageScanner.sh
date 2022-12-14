#!/bin/bash

# declare an array variable
declare -a arr=("docker pull ubuntu:xenial-20210804"
                "docker pull amazonlinux:devel-with-sources"
                "docker pull ubuntu:xenial-20210804"
                "docker pull alpine:edge"
                "docker pull redis:bullseye"
                "docker pull nginx:stable-perl"
                "docker pull httpd:bullseye"
                "docker pull node:slim"
                "docker pull postgres:bullseye"
                "docker pull mysql:oracle"
                "docker pull busybox:unstable-uclibc"
                "docker pull python:buster"
                "docker pull mysql:oracle"
                "docker pull mongo:4.2.22"
                "docker pull memcached:bullseye"
                "docker pull traefik:vacherin"
                "docker pull hello-world:nanoserver-ltsc2022"
                "docker pull mariadb:jammy"
                "docker pull registry:2.8.1"
                "docker pull openjdk:oraclelinux8"
                "docker pull golang:buster"
                "docker pull rabbitmq:3.9.22-management"
                "docker pull influxdb:1.8.10"
                "docker pull consul:1.13.1"
                "docker pull debian:unstable-20220822-slim"
                "docker pull php:fpm-buster"
                "docker pull centos:centos7.9.2009"
                "docker pull ruby:buster"
                "docker pull elasticsearch:7.17.6"
                "docker pull tomcat:jre17-temurin-jammy"
                "docker pull wordpress:beta-php8.1-fpm"
                "docker pull nextcloud:23.0.8-fpm"
                "docker pull eclipse-mosquitto:2-openssl"
                "docker pull telegraf:1.23.4"
                "docker pull maven:3.8.6-eclipse-temurin-18"
                "docker pull haproxy:2.0.29-buster"
                "docker pull bash:rc-alpine3.15"
                "docker pull vault:1.9.8"
                "docker pull adminer:standalone"
                "docker pull ghost:alpine"
                "docker pull caddy:builder-alpine"
                "docker pull gradle:jdk18-jammy"
                "docker pull kong:alpine"
                "docker pull couchdb:3.2.2"
                "docker pull cassandra:4.0.6"
                "docker pull chronograf:alpine"
                "docker pull neo4j:enterprise"
                "docker pull buildpack-deps:unstable-scm"
                "docker pull openjdk:oraclelinux8"
                "docker pull kibana:8.4.0"
                "docker pull solr:9.0.0"
                "docker pull nats:scratch"
                "docker pull perl:threaded-bullseye"
                "docker pull matomo:fpm"
                "docker pull sentry:onbuild"
                "docker pull mongo-express:1.0.0-alpha.4"
                "docker pull percona:psmdb-5.0"
                "docker pull teamspeak:3.13.7"
                "docker pull drupal:rc-php8.1-apache-buster"
                "docker pull zookeeper:3.8.0-temurin"
                "docker pull fedora:36"
                "docker pull logstash:7.17.6"
                "docker pull composer:2.4.1"
                "docker pull joomla:php8.1-fpm"
                "docker pull adoptopenjdk:openj9-focal"
                "docker pull flink:scala_2.12-java8"
                "docker pull jenkins:2.60.3-alpine"
                "docker pull couchbase:enterprise-7.1.1"
                "docker pull redmine:bullseye"
                "docker pull groovy:4.0.4-jdk18-jammy"
                "docker pull rocket.chat:5.0.3"
                "docker pull swarm:1.2.9"
                "docker pull buildpack-deps:unstable-scm"
                "docker pull rethinkdb:bullseye-slim"
                "docker pull teamspeak:3.13.7"
                "docker pull nats:scratch"
                "docker pull kapacitor:1.5.9"
                "docker pull groovy:4.0.4-jdk18-jammy"
                "docker pull mediawiki:stable-fpm"
                "docker pull pypy:3.9-buster"
                "docker pull rocket.chat:5.0.3"
                "docker pull odoo:15.0"
                "docker pull owncloud:9-fpm"
                "docker pull znc:slim"
                "docker pull xwiki:stable-postgres-tomcat"
                "docker pull phpmyadmin:fpm"
                "docker pull rust:slim-buster"
                "docker pull hylang:python3.9-buster"
                "docker pull websphere-liberty:kernel"
                "docker pull jruby:9.3.7.0-jre11"
                "docker pull redmine:bullseye"
                "docker pull elixir:slim"
                "docker pull mono:slim"
                "docker pull swift:amazonlinux2-slim"
                "docker pull aerospike:ee-6.0.0.5"
                "docker pull tomee:ubuntu-plus"
                "docker pull arangodb:3.9.2"
                "docker pull jetty:9.4.48-jdk17-amazoncorretto"
                "docker pull hylang:python3.9-buster"
                "docker pull clojure:temurin-18-tools-deps-focal"
                "docker pull haxe:4.2.5-buster"
                "docker pull iojs:slim"
                "docker pull django:onbuild"
                "docker pull gcc:bullseye"
                "docker pull piwik:3"
                "docker pull archlinux:base-devel-20220828.0.78480"
                "docker pull yourls:fpm"
                "docker pull orientdb:3.2.9-tp3"
                "docker pull eclipse-temurin:18"
                "docker pull julia:1.6.7-buster"
                "docker pull haskell:buster"
                "docker pull open-liberty:kernel-slim-java8-openj9"
                "docker pull photon:4.0-20220826"
                "docker pull crate:5.0.0"
                "docker pull opensuse"
                "docker pull cirros:0.5.2"
                "docker pull notary:signer"
                "docker pull monica:fpm"
                "docker pull neurodebian:sid-non-free"
                "docker pull bonita:7.14.0"
                "docker pull varnish:stable"
                "docker pull ibmjava:sfj"
                "docker pull open-liberty:kernel-slim-java8-openj9"
                "docker pull rails:onbuild"
                "docker pull ubuntu-debootstrap:devel"
                "docker pull fluentd:v1.14.0-1.0"
                "docker pull storm:2.4.0-temurin"
                "docker pull backdrop:fpm"
                "docker pull php-zendserver:2021.0"
                "docker pull r-base:4.2.1"
                "docker pull irssi:1.4.2"
                "docker pull convertigo:8.0.2"
                "docker pull nuxeo:LTS-2019"
                "docker pull rockylinux:9.0.20220720"
                "docker pull fsharp:netcore"
                "docker pull rockylinux:9.0.20220720"
                "docker pull eggdrop:stable"
                "docker pull lightstreamer:7.2.2-jdk8-openjdk"
                "docker pull thrift:0.12.0"
                "docker pull hello-seattle:nanoserver"
                "docker pull express-gateway:1.x"
                "docker pull postfixadmin:fpm"
                "docker pull friendica:stable-apache"
                "docker pull celery:4"
                "docker pull swipl:stable"
                "docker pull spiped:1.6.2"
                "docker pull rapidoid:5.4.6"
                "docker pull docker-dev:1.9"
                "docker pull kaazing-gateway:5.6.0"
                "docker pull ubuntu-upstart:utopic"
                "docker pull mageia:cauldron"
                "docker pull glassfish:4.1-jdk8"
                "docker pull mageia:cauldron"
                "docker pull sapmachine:lts"
                "docker pull ibm-semeru-runtimes:open-8u345-b01-jre-centos7"
                "docker pull known:0.9.9"
                "docker pull ibm-semeru-runtimes:open-8u345-b01-jre-centos7"
                "docker pull jobber:1.4.4-alpine3.11"
                "docker pull ibm-semeru-runtimes:open-8u345-b01-jre-centos7"
                "docker pull hola-mundo:linux"
                "docker pull sl:7"
                "docker pull dart:stable-sdk"
                "docker pull crux:3.4"
                "docker pull sourcemage:0.62"
                "docker pull clefos:7.7.1908"
                "docker pull alt:sisyphus"
                "docker pull hipache:0.3.1"
                "docker pull euleros:2.3.1809"
                "docker pull satosa:bullseye"
                "docker pull emqx:4.4.4"
                "docker pull api-firewall:0.6.8"
                "docker pull cheers"
                "docker pull dcl2020"
                )


# declare an array variable
declare verified_images=("docker pull datadog/agent:7-rc-servercore"
                            "docker pull grafana/grafana:main-ubuntu"
                            "docker pull bitnami/postgresql:10.22.0-debian-11-r11"
                            "docker pull bitnami/redis:7.0.4-debian-11-r20"
                            "docker pull portainer/portainer:linux-amd64-2.0.1"
                            "docker pull rancher/rancher-agent:v2.6-head"
                            "docker pull bitnami/kubectl:1.24.4-debian-11-r6"
                            "docker pull google/cadvisor:canary"
                            "docker pull percona/percona-xtradb-cluster-operator:1.11.0"
                            "docker pull bitnami/mongodb:5.0.12-debian-11-r0"
                            "docker pull wallarm/api-firewall:v0.6.8"
                            "docker pull amazon/amazon-ecs-agent:e393af10"
                            "docker pull grafana/promtail:main"
                            "docker pull portainer/portainer-ce:windowsltsc2022-amd64"
                            "docker pull grafana/loki:main-96a3e77"


)



echo "print out the size of the array"
echo "${#arr[@]}"
## now loop through the above array

for i in "${arr[@]}"
do
  echo "${i:12}"
  echo "-------------------------->"
  echo "Pulling docker image: "  "${i:12}"
  echo "**************************"
  docker pull "${i:12}"
  echo "----PULLING DONE-----------"

  echo "Scanning docker image " "${i:12}" " by tool Trivy: "
  trivy image "${i:12}" --format json > /Users/xuyingwang/Desktop/PIQUE/Pique-Container/src/main/resources/Trivy/Docker_Offical_Images/"${i:12}"_trivy_result.json
  echo "***********Trivy Done********"

  echo "Scanning docker image " "${i:12}"" by tool snyk: "
  docker scan --json "${i:12}" > /Users/xuyingwang/Desktop/PIQUE/Pique-Container/src/main/resources/Snky/Docker_Offical_Images/"${i:12}"_snky_result.json
  echo "***********Skny Done********"

  echo "Scanning docker image ""${i:12}" " by tool Clair: "
  cd /Users/xuyingwang/clair-scanner && clair-scanner "${i:12}" --ip "192.168.0.214" -r "${i:12}}"_clair_result.json
  echo "***********Clair Scanning Done********"

  echo "Deleting docker image: " "${i:12}"
  docker image rm "${i:12}}"
  echo "-----Deleting Image Done-------"
done



