SOLR_HOME=/opt/temp/solr
SOLR_BIN=${SOLR_HOME}/bin
SOLR_CLOUD_SCRIPTS=${SOLR_HOME}"/server/scripts/cloud-scripts/"

SOLR_PORT=8983

#. ./runZookeepers.sh

# copy solr.xml
# copy hybris configs
cd ${SOLR_BIN}
. ./solr start -cloud -p ${SOLR_PORT} -s "/opt/temp/solrdata/node1" -z "localhost:2181,localhost:2182,localhost:2183"

#cd ${SOLR_CLOUD_SCRIPTS}
#. ./zkcli.sh -zkhost localhost:2181 -cmd upconfig -confdir "/opt/temp/conf" -confname default
