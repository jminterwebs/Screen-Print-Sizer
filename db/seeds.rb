# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
# Garment.create(	style_code:	"129"	,	 name:	"Classic Fleece	Hood"	)
# Garment.create(	style_code:	"135"	,	 name:	"Classic Crew"	)
# Garment.create(	style_code:	"137"	,	 name:	"Comfort Fleece	Pants"	)
# Garment.create(	style_code:	"139"	,	 name:	"Comfort Fleece Hoods	"	)
# Garment.create(	style_code:	"149"	,	 name:	"Classic Fleece	Zip"	)
# Garment.create(	style_code:	"175"	,	 name:	"Pro-Weave Warmup Zip"	)
# Garment.create(	style_code:	"187"	,	 name:	"Open-bottom Sweatpants"	)
# Garment.create(	style_code:	"207"	,	 name:	"Classic Tee"	)
# Garment.create(	style_code:	"212"	,	 name:	"Men’s Tank"	)
# Garment.create(	style_code:	"476"	,	 name:	"Hockey	Hood"	)
# Garment.create(	style_code:	"488"	,	 name:	"Pro-Weave Hood"	)
# Garment.create(	style_code:	"496"	,	 name:	"Pro-Weave Crew"	)
# Garment.create(	style_code:	"1261"  ,	name:	"Heather Hooded	Tee"	)
# Garment.create(	style_code:	"1290"	,	name:	"Rainbow Tye-Dyed	Hood"	)
# Garment.create(	style_code:	"W129"	,	name:	"Classic Hood"	)
# Garment.create(	style_code:	"W417"	,	name:	"V-neck	Hood "	)
# Garment.create(	style_code:	"W1162"	,	name:	"Courtney	Burnout	Hood"	)
# Garment.create(	style_code:	"W1888"	,	name:	"Burnout Tee"	)
#
#
# Location.create(name:	"Full Chest"        , location_code:	"FC"	)
# Location.create(name:	"Full Back"	        , location_code:	"FB"	)
# Location.create(name:	"Left Chest"        , location_code:	"LC"	)
# Location.create(name:	"Right Chest"       , location_code:	"RC"	)
# Location.create(name:	"Down Left Leg"	    , location_code:	"DLL"	)
# Location.create(name:	"Left Hip"	        , location_code:	"DHP"	)
# Location.create(name:	"Left Chest Pocket"	, location_code:	"LCP"	)
# Location.create(name:	"Bag"	              , location_code:	"BAG01"	)
# Location.create(name:	"Down Left Sleeve"	, location_code:	"DLS"	)
# Location.create(name:	"Full Chest"	      , location_code:	"FC"	)
# Location.create(name:	"Full Back"	        , location_code:	"FB"	)
# Location.create(name:	"Left Chest"	      , location_code:	"LC"	)
# Location.create(name:	"Right Chest"	      , location_code:	"RC"	)
# Location.create(name:	"Down Left Leg"	    , location_code:	"DLL"	)
# Location.create(name:	"Left Hip"          , location_code:	"DHP"	)
# Location.create(name:	"Left Chest Pocket" , location_code: "LCP"	)
# Location.create(name:	"Bag"               , location_code:	"BAG01"	)
# Location.create(name:	"Down Left Sleeve"  , location_code:	"DLS"	)
# #
# Dimension.create(	height:	12.5	, width:	15	)
# Dimension.create(	height:	14	  , width:	19	)
# Dimension.create(	height:	4	    , width:	4	)
# Dimension.create(	height:	4	    , width:	4	)
# Dimension.create(	height:	26	  , width:	4.5	)
# Dimension.create(	height:	4.5	  , width:	4.5	)
# Dimension.create(	height:	3	    , width:	3	)
# Dimension.create(	height:	8	    , width:	8	)
# Dimension.create(	height:	15	  , width:	3	)
# Dimension.create(	height:	10.5	, width:	10	)
# Dimension.create(	height:	13	  , width:	15	)
# Dimension.create(	height:	5	    , width:	5	)
# Dimension.create(	height:	5	    , width:	5	)
# Dimension.create(	height:	15	  , width:	2.5	)
# Dimension.create(	height:	3.75	, width:	3.75	)
# Dimension.create(	height:	2.5	  , width:	2.5	)
# Dimension.create(	height:	8	    , width:	8	)
# Dimension.create(	height:	13	  , width:	2.5	)
#

# Dimension.all.each_with_index do |dimension,index|
#   dimension.locations <<  Location.all[index]
# end
# #
# Garment.all.each_with_index do |garment, index|
#
#   garment.locations << Location.all[index]
#
# end
