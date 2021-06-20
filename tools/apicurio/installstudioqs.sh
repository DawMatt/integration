# https://www.apicur.io/studio/download/

mkdir ~/apicurio-studio-0.2.48.Final
cd ~/apicurio-studio-0.2.48.Final
curl -L https://github.com/Apicurio/apicurio-studio/releases/download/0.2.48.Final/apicurio-studio-0.2.48.Final-quickstart.zip -o apicurio-studio-0.2.48.Final-quickstart.zip
unzip apicurio-studio-0.2.48.Final-quickstart.zip
cd apicurio-studio-0.2.48.Final
./bin/standalone.sh -c standalone-apicurio.xml
