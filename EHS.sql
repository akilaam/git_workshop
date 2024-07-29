SELECT "fact_deliverycamerahealthdetail"."cameralastconnected" AS "cameralastconnected",
  "fact_deliverycamerahealthdetail"."cameramodel" AS "cameramodel",
  "fact_deliverycamerahealthdetail"."cameraserial" AS "cameraserial",
  "fact_deliverycamerahealthdetail"."dateid" AS "dateid",
  "fact_deliverycamerahealthdetail"."deliveryvehicleid" AS "deliveryvehicleid (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."dwcreated" AS "dwcreated (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."dwcreatedby" AS "dwcreatedby (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."dwupdated" AS "dwupdated (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."dwupdatedby" AS "dwupdatedby (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."gatewaylastconnected" AS "gatewaylastconnected",
  "fact_deliverycamerahealthdetail"."healthstatus" AS "healthstatus",
  "fact_deliverycamerahealthdetail"."lastknownlocation" AS "lastknownlocation",
  "fact_deliverycamerahealthdetail"."operatingcompanyid" AS "operatingcompanyid (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."reportrundateid" AS "reportrundateid (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."sourcesystem" AS "sourcesystem (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."srccameraid" AS "srccameraid",
  "fact_deliverycamerahealthdetail"."srcvehiclename" AS "srcvehiclename (fact_deliverycamerahealthdetail)",
  "fact_deliverycamerahealthdetail"."srcvirtualgatewayid" AS "srcvirtualgatewayid",
  "fact_deliverycamerahealthdetail"."substate" AS "substate",
  "fact_deliverycamerahealthdetail"."tags" AS "tags",
  "fact_deliverycamerahealthdetail"."uptimelast50hours" AS "uptimelast50hours",
op.operatingcompanynumber,
dt.fiscalyearid,
dt.fiscalperiodi
FROM "s_vehiclecamera_dw"."fact_deliverycamerahealthdetail" "fact_deliverycamerahealthdetail"
join dw.dim_operatingcompany op on 
"fact_deliverycamerahealthdetail".operatingcompanyid=op.operatingcompanyid
join dm.dim_time dt on 
date("fact_deliverycamerahealthdetail".dateid)=date(dt.datekey)