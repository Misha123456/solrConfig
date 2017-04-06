CURRENT_FOLDER=${PWD}

ROOT_FOLDER=/media/mikhail/fd1ad2f6-4a8c-4de6-9203-5d35f9cdea4a/temp/solrConfig/solrConfig

SOLR_HOME=${ROOT_FOLDER}"/solr"
SOLR_BIN=${SOLR_HOME}/bin
SOLR_CLOUD_SCRIPTS=${SOLR_HOME}"/server/scripts/cloud-scripts/"

SOLR_PORT=8983

#cd ${SOLR_BIN}
#. ./solr stop -p ${SOLR_PORT}
#cd ${CURRENT_FOLDER}
. ./stopZookeepers.sh
. ./runZookeepers.sh

# copy solr.xml
# copy hybris configs
cd ${SOLR_BIN}
. ./solr start -cloud -p ${SOLR_PORT} -s ${ROOT_FOLDER}"/solrdata/node1" -z "localhost:2181,localhost:2182,localhost:2183"

#cd ${SOLR_CLOUD_SCRIPTS}
#. ./zkcli.sh -zkhost localhost:2181 -cmd upconfig -confdir "/opt/temp/conf" -confname default
