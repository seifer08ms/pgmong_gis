#/bin/bash
GS_VERSION=${1:-2.11.0}
GS_VERSION2=${GS_VERSION%.*}
DOCKER_GEOSERVER_DIR=${2:-$PWD}
echo "**********************************************************************"
echo "\tDownloading GeoServer $GS_VERSION2($GS_VERSION) Plugins to $DOCKER_GEOSERVER_DIR "
echo "***********************************************************************"
wget -c http://downloads.sourceforge.net/project/geoserver/GeoServer/${GS_VERSION}/geoserver-${GS_VERSION}-war.zip -O  ${DOCKER_GEOSERVER_DIR}/resources/geoserver-${GS_VERSION}.zip 
# wget  -c --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz -P ${DOCKER_GEOSERVER_DIR}/resources/
echo http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz  > /tmp/plugins.txt
echo http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz >> /tmp/plugins.txt
echo https://raw.githubusercontent.com/LukeSwart/docker-geoserver/master/geoexplorer/geoexplorer.war  >> /tmp/plugins.txt
echo http://demo.geo-solutions.it/share/github/imageio-ext/releases/1.1.X/1.1.16/native/gdal/gdal-data.zip  >> /tmp/plugins.txt
echo http://demo.geo-solutions.it/share/github/imageio-ext/releases/1.1.X/1.1.16/native/gdal/linux/gdal192-Ubuntu12-gcc4.6.3-x86_64.tar.gz  >> /tmp/plugins.txt
echo http://demo.geo-solutions.it/share/github/imageio-ext/releases/1.1.X/1.1.16/imageio-ext-1.1.16-jars.zip >> /tmp/plugins.txt
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-gdal-plugin.zip >> /tmp/plugins.txt 

cat /tmp/plugins.txt | xargs -n 1 -P 20 wget -c -P ${DOCKER_GEOSERVER_DIR}/resources 

echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-app-schema-plugin.zip  > /tmp/plugins.txt
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-arcsde-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-charts-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-control-flow-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-css-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-ysld-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-csw-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-dxf-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-excel-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-feature-pregeneralized-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-grib-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-imagemosaic-jdbc-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-importer-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-libjpeg-turbo-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-monitor-hibernate-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-monitor-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-mysql-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-netcdf-out-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-netcdf-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-ogr-wfs-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-ogr-wps-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-oracle-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-printing-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-pyramid-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-querylayer-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-sqlserver-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-wcs2_0-eo-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-wps-cluster-hazelcast-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-wps-plugin.zip >> /tmp/plugins.txt 
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-xslt-plugin.zip >> /tmp/plugins.txt
echo http://ares.opengeo.org/geoserver/${GS_VERSION2}.x/community-latest/geoserver-${GS_VERSION2}-SNAPSHOT-geogig-plugin.zip >> /tmp/plugins.txt
echo http://ares.opengeo.org/geoserver/${GS_VERSION2}.x/community-latest/geoserver-${GS_VERSION2}-SNAPSHOT-vectortiles-plugin.zip >> /tmp/plugins.txt
echo http://ares.opengeo.org/geoserver/${GS_VERSION2}.x/community-latest/geoserver-${GS_VERSION2}-SNAPSHOT-pgraster-plugin.zip >> /tmp/plugins.txt
echo https://mirrors.netix.net/sourceforge/g/ge/geoserver/GeoServer/${GS_VERSION}/extensions/geoserver-${GS_VERSION}-vectortiles-plugin.zip >> /tmp/plugins.txt

cat /tmp/plugins.txt | xargs -n 1 -P 20 wget -c -P ${DOCKER_GEOSERVER_DIR}/resources/plugins/
