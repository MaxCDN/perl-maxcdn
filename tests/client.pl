use strict;
use warnings;
use JSON qw( decode_json );
use MaxCDNRWS;
use Data::Dumper;

my $api = new MaxCDNRWS('ALIAS', 'KEY', 'SECRET');

#*******************************
#ACCOUNT
#GET ACCOUNT INFO
#my $data = $api->get("/account.json");
#print $data->{'account'}{'name'};

#UPDATE ACCOUNT INFO
#my @params = ('name=IDABIC');
#$api->put("/account.json", @params, 1);

#GET ACCOUNT ADDRESS
#my $data = $api->get("/account.json/address");
#print $data->{'address'}{'street1'};

#UPDATE ACCOUNT ADDRESS
#my @params = ('street1=Fake');
#$api->put("/account.json/address", @params, 1);
#*******************************




#*******************************
#USERS
#GET USERS
#my $data = $api->get("/users.json");
#print $data->{'users'}[8]{'id'};

#CREATE USER
#my @params = {firstname => 'Perl', lastname => 'User', email => 'idabic@test-domain.com', password => 'testpwd'};
#$api->post("/users.json", @params);

#GET USER
#my $id = 58309;
#my $data = $api->get("/users.json/58309");
#print $data->{'user'}{'lastname'};

#UPDATE USER
#my $id = 58309;
#my @params = ('lastname=Test');
#$api->put("/users.json/" . $id, @params);

#DELETE USER
#my $id = 58309;
#$api->delete("/users.json/" . $id);

#*******************************



#*******************************
#ZONES

#LIST ZONES
#$api->get("/zones.json");

#GET ZONES SUMMARY
#$api->get("/zones.json/summary");

#GET ZONE COUNT
#$api->get("/zones.json/count");

#UPDATE ZONE DETAILS
#my @params = ('compress=0');
#$api->put("/zones/pull.json/236828", @params, 1);

#CREATE ZONE
#my @params = {name => 'perltest5', url => 'http://www.google.com'};
#$api->post("/zones/pull.json", @params);

#$api->post("/zones/pull/170787/flex.json");

#DELETE
#$api->delete("/zones/pull.json/186148");
#*******************************


#*******************************
#PULL ZONES


#LIST PULL ZONES
#$api->get("/zones/pull.json");

#CREATE PULL ZONE
#my @params = {name => 'perltest5', url => 'http://www.google.com'};
#$api->post("/zones/pull.json", @params);

#Get Pull Zones Count
#$api->get("/zones/pull.json/count");

#Get Pull Zone
#my $id = 96076;
#$api->get("/zones/pull.json/" . $id);

#Update Pull Zone
#my $id = 236828;
#my @params = ('compress=0');
#$api->put("/zones/pull.json/" . $id, @params);

#Delete Pull Zone
#my $id = 236828;
#$api->delete("/zones/pull.json/" . $id);

#Enable Pull Zone
#my $id = 134458;
#$api->put("/zones/pull/" . $id . "/enable.json");

#Disable Pull Zone
#my $id = 134458;
#$api->put("/zones/pull/" . $id . "/disable.json");

#Purge Cache
#PURGE MULTIPLE
#my @params = ("%2Frankings%2Fhotlist%2Fi%2F500w%2F2.jpg", "%2F_index%2Ff_mdcdb.html");

#PURGE SINGLE
#my @params = ("%2Frankings%2Fhotlist%2Fi%2F500w%2F2.jpg");

#$api->delete("/zones/pull.json/165013/cache", @params)

#PURGE ALL

#$api->delete("/zones/pull.json/165013/cache")
#*******************************



#*******************************
#Pull Zone Custom Domains API
#my $id = 134458;
#my $data = $api->get("/zones/pull/" . $id . "/customdomains.json");
#print $data->{'customdomains'}[2]{'custom_domain'};

#Create Custom Domain
#my $id = 134458;
#my @params = {custom_domain => 'idabic.dom.net'};
#$api->post("/zones/pull/" . $id . "/customdomains.json", @params);

#Get Custom Domain
#my $zid = 134458;
#my $cid = 113070;
#my $data = $api->get("/zones/pull/" . $zid . "/customdomains.json/" . $cid);
#print $data->{'customdomain'}{'custom_domain'};

#Update Custom Domain
#my $zid = 134458;
#my $cid = 173075;
#my @params = ('custom_domain=idabic.domain.net');
#$api->put("/zones/pull/" . $zid . "/customdomains.json/" . $cid, @params);

#Delete Custom Domain
#my $zid = 134458;
#my $cid = 173075;
#$api->delete("/zones/pull/" . $zid . "/customdomains.json/" . $cid);
#*******************************





#*******************************
#Push Zone API
#List Push Zones
#$api->get("/zones/push.json");

#Create Push Zone
#my @params = {name => 'perltestpush', password => 'password'};
#$api->post("/zones/push.json", @params);

#Get Push Zones Count
#$api->get("/zones/push.json/count");

#Get Push Zone
#my $id = 55659;
#$api->get("/zones/push.json/" . $id);

#Update Push Zone
#my $id = 55659;
#my @params = ('compress=0');
#$api->put("/zones/push.json/" . $id, @params);

#Delete Push Zone
#my $id = 55659;
#$api->delete("/zones/push.json/" . $id);

#Enable Push Zone
#my $id = 55659;
#$api->put("/zones/push/" . $id . "/enable.json");

#Disable Push Zone
#my $id = 55659;
#$api->put("/zones/push/" . $id . "/disable.json");
#*******************************

#*******************************
#Push Zone Custom Domains API
#List Custom Domains
#my $id = 134458;
#my $data = $api->get("/zones/push/" . $id . "/customdomains.json");
#print $data->{'customdomains'}[1]{'custom_domain'};
#print $data->{'customdomains'}[1]{'id'};

#Create Custom Domain
#my $id = 55659;
#my @params = {custom_domain => 'idabic2.dom.net'};
#$api->post("/zones/push/" . $id . "/customdomains.json", @params);

#Get Custom Domain
#my $zid = 55659;
#my $cid = 122211;
#my $data = $api->get("/zones/push/" . $zid . "/customdomains.json/" . $cid);
#print $data->{'customdomain'}{'custom_domain'};

#Update Custom Domain
#my $zid = 55659;
#my $cid = 122211;
#my @params = ('custom_domain=idabic.domain.net');
#$api->put("/zones/push/" . $zid . "/customdomains.json/" . $cid, @params);

#Delete Custom Domain
#my $zid = 55659;
#my $cid = 122211;
#$api->delete("/zones/push/" . $zid . "/customdomains.json/" . $cid);
#*******************************



#*******************************
#VOD Zone API
#List VOD Zones

#LIST VOD ZONES
#$api->get("/zones/vod.json");

#CREATE VOD ZONE
#my @params = {name => 'perltest5', password => 'password'};
#$api->post("/zones/vod.json", @params);

#Get VOD Zones Count
#$api->get("/zones/vod.json/count");

#Get VOD Zone
#my $id = 75477;
#$api->get("/zones/vod.json/" . $id);

#Update VOD Zone
#my $id = 75477;
#my @params = ('compress=0');
#$api->put("/zones/vod.json/" . $id, @params);

#Delete VOD Zone
#my $id = 75477;
#$api->delete("/zones/vod.json/" . $id);

#Enable VOD Zone
#my $id = 75477;
#$api->put("/zones/vod/" . $id . "/enable.json");

#Disable VOD Zone
#my $id = 75477;
#$api->put("/zones/vod/" . $id . "/disable.json");
#*******************************



#*******************************
#VOD Zone Custom Domains API
#List Custom Domains

#my $id = 75477;
#my $data = $api->get("/zones/vod/" . $id . "/customdomains.json");
#print $data->{'customdomains'}[0]{'custom_domain'};
#print $data->{'customdomains'}[0]{'id'};

#Create Custom Domain
#my $id = 75477;
#my @params = {custom_domain => 'idabic3.dom.net', type => 'vod-rtmp'};
#$api->post("/zones/vod/" . $id . "/customdomains.json", @params);

#Get Custom Domain
#my $zid = 75477;
#my $cid = 173088;
#my $data = $api->get("/zones/vod/" . $zid . "/customdomains.json/" . $cid);
#print $data->{'customdomain'}{'custom_domain'};

#Update Custom Domain
#my $zid = 75477;
#my $cid = 173088;
#my @params = ('custom_domain=idabic.domain.net');
#$api->put("/zones/vod/" . $zid . "/customdomains.json/" . $cid, @params);

#Delete Custom Domain
#my $zid = 75477;
#my $cid = 173088;
#$api->delete("/zones/vod/" . $zid . "/customdomains.json/" . $cid);
#*******************************

#*******************************
#Zones SSL API
#Get Zone's SSL Information
#my $id = 236828;
#my $type = "pull";
#$api->get("/zones/" . $type . "/" . $id . "/ssl.json");

#Install SSL on Zone
#my $id = 236828;
#my $type = 'pull';
#my $ssl_crt = "-----BEGIN CERTIFICATE-----\n{ ... your certificate ... }\n-----END CERTIFICATE-----\n";
#my $ssl_key = "-----BEGIN RSA PRIVATE KEY-----\n{ ... your key ... }\n-----END RSA PRIVATE KEY-----";
#my @params = {ssl_crt => $ssl_crt, ssl_key => $ssl_key};
#$api->post("/zones/" . $type . "/" . $id . "/ssl.json", @params);

#Update Zone's SSL Information
#my $id = 236828;
#my $type = "pull";
#my @params = ('ssl_crt=-----BEGIN CERTIFICATE-----\n{ ... your certificate ... }\n-----END CERTIFICATE-----\n', 'ssl_key=-----BEGIN RSA PRIVATE KEY-----\n{ ... your key ... }\n-----END RSA PRIVATE KEY-----');
#$api->put("/zones/" . $type . "/" . $id . "/ssl.json", @params);

#Remove Zone's SSL Information
#my $id = 236828;
#my $type = "pull";
#$api->delete("/zones/" . $type . "/" . $id . "/ssl.json");
#*******************************



#*******************************
#Zones Upstream API
#Get Upstream information for the current zone
#my $id = 236828;
#my $type = "pull";
#$api->get("/zones/" . $type . "/" . $id . "/upstream.json");

#Enable Upstream on Zone
#my $id = 96061;
#my $type = "pull";
#my @params = {server_url => 'http://cdn.somedomain.com', server => 'http://cdn.somedomain.com', port => '80'};
#$api->post("/zones/" . $type . "/" . $id . "/upstream.json", @params);

#Update Zone's Upstream Information
#my $id = 96061;
#my $type = "pull";
#my @params = ('upstream_id=93013', 'server_url=http://somedomain.net', 'port=80');
#$api->put("/zones/" . $type . "/" . $id . "/upstream.json", @params);

#Remove Zone's Upstream Information
#my $id = 96061;
#my $type = "pull";
#$api->delete("/zones/" . $type . "/" . $id . "/upstream.json");
#*******************************


#*******************************
#Reports API
#Get Account Stats
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/stats.json" . $reportType);

#Get All Zone Stats
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/statsbyzone.json" . $reportType);

#Get a Zone's Stats
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#$api->get("/reports/" . $id . "/stats.json" . $reportType);


#Reports by Location API
#List Nodes
#$api->get("/reports/nodes.json");

#List Nodes by Zone
#my $id = 96061;
#$api->get("/reports/" . $id . "/nodes.json");

#List Zone Node Stats by Report Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/nodes.json/stats" . $reportType);

#List Node Stats by Zone and Report Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#$api->get("/reports/" . $id . "/nodes.json/stats" . $reportType);

#Get Zone Node
#my $id = 1;
#$api->get("/reports/nodes.json/" . $id);

#Get Node by Zone
#my $zoneId = 96061;
#my $nodeId = 1;
#$api->get("/reports/" . $zoneId . "/nodes.json/" . $nodeId);

#Get Zone Node Stats by Report Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 1;
#$api->get("/reports/nodes.json/" . $id . "/stats/" . $reportType);

#Get Node Stats by Zone and Report Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $zoneId = 96061;
#my $nodeId = 1;
#$api->get("/reports/" . $zoneId . "/nodes.json/" . $nodeId . "/stats" . $reportType);

#Reports by Popular Files API
#List Popular Files
#$api->get("/reports/popularfiles.json");

#List Popular Files By Zone Type
#my $type = "pull";
#$api->get("/reports/" . $type . "/popularfiles.json");

#Reports by Status Codes API
#List Status Code Responses
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/statuscodes.json/" . $reportType);

#List Status Code Responses by Zone Id
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#$api->get("/reports/" . $id . "/statuscodes.json" . $reportType);

#List Status Codes by Zone Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $zoneType = "pull";
#$api->get("/reports/" . $zoneType . "/statuscodes.json" . $reportType);

#List Status Codes by Zone Id and Zone Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#my $zoneType = "pull";
#$api->get("/reports/" . $zoneType . "/" . $id . "/statuscodes.json" . $reportType);

#Reports by File Types API
#List File Types
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/filetypes.json" . $reportType);

#List File Types by Zone Id
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#$api->get("/reports/" . $id . "/filetypes.json" . $reportType);

#List File Types by Zone Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $zoneType = "pull";
#$api->get("/reports/" . $zoneType . "/filetypes.json" . $reportType);

#List File Types by Zone Id
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $zoneType = "pull";
#my $id = 96061;
#$api->get("/reports/" . $zoneType . "/" . $id . "/filetypes.json" . $reportType);

#Reports by File Size Ranges API
#List File Sizes
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/filesizes.json/" . $reportType);

#List File Sizes by Zone Id
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#$api->get("/reports/" . $id . "/filesizes.json" . $reportType);

#List File Sizes by Zone Type
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $zoneType = "pull";
#$api->get("/reports/" . $zoneType . "/filesizes.json" . $reportType);

#List File Sizes by Zone Id
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $zoneType = "pull";
#my $id = 96061;
#$api->get("/reports/" . $zoneType . "/" . $id . "/filesizes.json" . $reportType);

#Reports By Directory API
#List Stats By Directory
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#$api->get("/reports/statsbydir.json" . $reportType);

#List Stats By Directory and Zone Id
#my $reportType = ""; #Vaild input includes /daily, /hourly, /monthly or ""
#my $id = 96061;
#$api->get("/reports/" . $id . "/statsbydir.json" . $reportType);
#*******************************




#*******************************
#Raw Logs API
#Get Raw Logs
#$api->get("/v3/reporting/logs.json?start=2014-01-30&end=2014-01-31&status=200");
#*******************************



#*******************************
#Origin Shield API
#Enable Origin Shield
#my $id = 123502;
#my @params = {location => 'sjc'};
#$api->post("/zones/pull/" . $id . "/zoneshields.json", @params)

#Update Origin Shield
#my $id = 123502;
#my @params = ('location=ams');
#$api->put("/zones/pull/" . $id . "/zoneshields.json", @params)

#Delete Origin Shield
#my $id = 123502;
#$api->delete("/zones/pull/" . $id . "/zoneshields.json")

#SSL Certificate API
#List Certificates
#$api->get("/ssl.json");

#Create Certificate
#my @params = {ssl_crt => '-----BEGIN CERTIFICATE-----\n{ you certificate info }\n-----END CERTIFICATE-----', ssl_key => '-----BEGIN RSA PRIVATE KEY-----\n{ your private key info}\n-----END RSA PRIVATE KEY-----","ssl_cabundle"=>"-----BEGIN CERTIFICATE.....", "name"=>"Our .example.com wildcard');
#$api->post("/ssl.json", @params );

#Get SSL Certificate
#my $id = 1234;
#$api->get("/ssl.json/" . $id);

#Update SSL Certificate
#my $id = 1234;
#my @params = ('ssl_crt=-----BEGIN CERTIFICATE-----\n{ you certificate info }\n-----END CERTIFICATE-----', 'ssl_key=-----BEGIN RSA PRIVATE KEY-----\n{ your private key info}\n-----END RSA PRIVATE KEY-----","ssl_cabundle"=>"-----BEGIN CERTIFICATE.....', 'name=Our.example.com-wildcard');
#$api->put("/ssl.json/" . $id, @params);

#Delete SSL Certificiate
#my $id = 1234;
#$api->delete("/ssl.json/" . $id);
#*******************************

