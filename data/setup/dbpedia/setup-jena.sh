#!/bin/bash

# Download Apache Jena
tar xvvfz apache-jena-3.1.0.tar.gz
tar xvvfz apache-jena-fuseki-2.4.0.tar.gz
cd apache-jena-fuseki-2.4.0

# Process DBpedia data
mkdir db
../apache-jena-3.1.0/bin/tdbloader2 --loc db ../dbpedia_2014.owl ../*.nt
