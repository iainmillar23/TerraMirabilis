/*
	Common
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types 
		(Type, 										Kind			)
VALUES	-- ATTACH
		('MODTYPE_TM_ATTACH_ALL_CITIES',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ATTACH_ALL_PLAYERS',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ATTACH_CITY_DISTRICTS',		'KIND_MODIFIER'	),
		('MODTYPE_TM_ATTACH_CITY_UNITS',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ATTACH_PLAYER_UNITS',			'KIND_MODIFIER'	),
		-- PLAYER
		('MODTYPE_TM_ADJUST_SPACE_PROJECT',			'KIND_MODIFIER'	),
		('MODTYPE_TM_IMPORT_RESOURCE',				'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_PLAYER_PLOT_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_NEW_ERA_EUREKA',				'KIND_MODIFIER'	),
		('MODTYPE_TM_NEW_ERA_INSPIRATION',			'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_BELIEF_YIELD',			'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_TECH_BOOST',			'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_CIVIC_BOOST',			'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_GW_YIELD',				'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_TRADE_PASS_THROUGH',	'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_TRADE_TOURISM',			'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_WONDER_PRODUCTION',		'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_UNIT_PURCHASE_COST',	'KIND_MODIFIER'	),
		-- CITY
		('MODTYPE_TM_ADJUST_CITY_YIELD',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_CITY_PLOT_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_CITY_POPULATION',		'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_FEATURE_APPEAL',		'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_EXTRA_DISTRICTS',			'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_YIELD_DISTRICTS',			'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_YIELD_MODIFIER',			'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_GROWTH',					'KIND_MODIFIER'	),
		('MODTYPE_TM_TRADE_ROUTE_INTERNATIONAL',	'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_GW_YIELD',				'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_TOURISM',					'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_GRANT_RESOURCE',			'KIND_MODIFIER'	),
		('MODTYPE_TM_CITY_WONDER_PRODUCTION',		'KIND_MODIFIER'	),
		-- DISTRICT
		('MODTYPE_TM_TERRAIN_ADJACENCY',			'KIND_MODIFIER'	),
		('MODTYPE_TM_FEATURE_ADJACENCY',			'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_BUILDING_PRODUCTION',	'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_CITY_POPULATION',		'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_HOUSING',				'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICTS_APPEAL_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_MIRROR_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_DISTRICTS_GP',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_CITY_DISTRICTS_GP',		'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_DISTRICT_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_PLAYER_DISTRICT_YIELD',		'KIND_MODIFIER'	),
		('MODTYPE_TM_DISTRICT_BASE_YIELD',			'KIND_MODIFIER'	),
		('MODTYPE_TM_REGIONAL_RANGE',				'KIND_MODIFIER'	),
		('MODTYPE_TM_REGIONAL_AMENITIES',			'KIND_MODIFIER'	),
		('MODTYPE_TM_CULTURE_BOMB',					'KIND_MODIFIER'	),
		-- BUILDING
		('MODTYPE_TM_BUILDING_FAITH_PURCHASE',		'KIND_MODIFIER'	),
		('MODTYPE_TM_BUILDING_GW_SLOT',				'KIND_MODIFIER'	),
		-- UNIT
		('MODTYPE_TM_INITIATION_YIELD',				'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_HEALING',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_STRENGTH',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_MOVEMENT',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_SIGHT',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_SPREAD',			'KIND_MODIFIER'	),
		('MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	'KIND_MODIFIER'	),
		('MODTYPE_TM_GRANT_UNIT_EXPERIENCE',		'KIND_MODIFIER'	),
		('MODTYPE_TM_UNIT_FAITH_PURCHASE',			'KIND_MODIFIER'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO DynamicModifiers 
		(ModifierType, 								CollectionType, 					EffectType																)
VALUES	-- ATTACH
		('MODTYPE_TM_ATTACH_ALL_CITIES',			'COLLECTION_ALL_CITIES',			'EFFECT_ATTACH_MODIFIER'												),
		('MODTYPE_TM_ATTACH_ALL_PLAYERS',			'COLLECTION_ALL_PLAYERS',			'EFFECT_ATTACH_MODIFIER'												),
		('MODTYPE_TM_ATTACH_CITY_DISTRICTS',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ATTACH_MODIFIER'												),
		('MODTYPE_TM_ATTACH_CITY_UNITS',			'COLLECTION_CITY_TRAINED_UNITS',	'EFFECT_ATTACH_MODIFIER'												),
		('MODTYPE_TM_ATTACH_PLAYER_UNITS',			'COLLECTION_PLAYER_UNITS',			'EFFECT_GRANT_ABILITY'													), -- previously EFFECT_ATTACH_MODIFIER
		-- PLAYER
		('MODTYPE_TM_ADJUST_SPACE_PROJECT',			'COLLECTION_OWNER',					'EFFECT_ADJUST_SPACE_RACE_PROJECTS_PRODUCTION'							),
		('MODTYPE_TM_IMPORT_RESOURCE',				'COLLECTION_OWNER',					'EFFECT_ADJUST_PLAYER_FREE_RESOURCE_IMPORT'								),
		('MODTYPE_TM_ADJUST_PLAYER_PLOT_YIELD',		'COLLECTION_PLAYER_PLOT_YIELDS',	'EFFECT_ADJUST_PLOT_YIELD'												),
		('MODTYPE_TM_NEW_ERA_EUREKA',				'COLLECTION_OWNER',					'EFFECT_GRANT_RANDOM_TECHNOLOGY_BOOST_ON_NEW_ERA'						),
		('MODTYPE_TM_NEW_ERA_INSPIRATION',			'COLLECTION_OWNER',					'EFFECT_GRANT_RANDOM_CIVIC_BOOST_ON_NEW_ERA'							),
		('MODTYPE_TM_PLAYER_BELIEF_YIELD',			'COLLECTION_OWNER',					'EFFECT_ADD_PLAYER_BELIEF_YIELD'										),
		('MODTYPE_TM_PLAYER_TECH_BOOST',			'COLLECTION_OWNER',					'EFFECT_ADJUST_TECHNOLOGY_BOOST'										),
		('MODTYPE_TM_PLAYER_CIVIC_BOOST',			'COLLECTION_OWNER',					'EFFECT_ADJUST_CIVIC_BOOST'												),
		('MODTYPE_TM_PLAYER_GW_YIELD',				'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_CITY_GREATWORK_YIELD'									),
		('MODTYPE_TM_PLAYER_TRADE_PASS_THROUGH',	'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_CITY_YIELD_FROM_FOREIGN_TRADE_ROUTES_PASSING_THROUGH'	),
		('MODTYPE_TM_PLAYER_TRADE_TOURISM',			'COLLECTION_OWNER',					'EFFECT_ADJUST_PLAYER_TRADE_ROUTE_TOURISM_MODIFIER'						),
		('MODTYPE_TM_PLAYER_WONDER_PRODUCTION',		'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_WONDER_PRODUCTION'										),
		('MODTYPE_TM_PLAYER_UNIT_PURCHASE_COST',	'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_UNIT_PURCHASE_COST'										),
		-- CITY
		('MODTYPE_TM_ADJUST_CITY_YIELD',			'COLLECTION_OWNER',					'EFFECT_ADJUST_CITY_YIELD_MODIFIER'										),
		('MODTYPE_TM_ADJUST_CITY_PLOT_YIELD',		'COLLECTION_CITY_PLOT_YIELDS',		'EFFECT_ADJUST_PLOT_YIELD'												),
		('MODTYPE_TM_ADJUST_CITY_POPULATION',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ADJUST_CITY_POPULATION'											),
		('MODTYPE_TM_ADJUST_FEATURE_APPEAL',		'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_FEATURE_APPEAL_MODIFIER'									),
		('MODTYPE_TM_CITY_GROWTH',					'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_CITY_GROWTH'												),
		('MODTYPE_TM_CITY_EXTRA_DISTRICTS',			'COLLECTION_OWNER',					'EFFECT_ADJUST_CITY_EXTRA_DISTRICTS'									),
		('MODTYPE_TM_CITY_YIELD_DISTRICTS',			'COLLECTION_OWNER',					'EFFECT_ADJUST_CITY_YIELD_PER_DISTRICT'									),
		('MODTYPE_TM_CITY_YIELD_MODIFIER',			'COLLECTION_OWNER',					'EFFECT_ADJUST_CITY_YIELD_MODIFIER'										),
		('MODTYPE_TM_TRADE_ROUTE_INTERNATIONAL',	'COLLECTION_OWNER',					'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'				),
		('MODTYPE_TM_CITY_GW_YIELD',				'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_CITY_GREATWORK_YIELD'									),
		('MODTYPE_TM_CITY_TOURISM',					'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_CITY_TOURISM'											),
		('MODTYPE_TM_CITY_GRANT_RESOURCE',			'COLLECTION_OWNER',					'EFFECT_GRANT_FREE_RESOURCE_IN_CITY'									),
		('MODTYPE_TM_CITY_WONDER_PRODUCTION',		'COLLECTION_OWNER',					'EFFECT_ADJUST_WONDER_PRODUCTION'										),
		-- DISTRICT
		('MODTYPE_TM_TERRAIN_ADJACENCY',			'COLLECTION_PLAYER_CITIES',			'EFFECT_TERRAIN_ADJACENCY'												),
		('MODTYPE_TM_FEATURE_ADJACENCY',			'COLLECTION_PLAYER_CITIES',			'EFFECT_FEATURE_ADJACENCY'												),
		('MODTYPE_TM_DISTRICT_BUILDING_PRODUCTION',	'COLLECTION_OWNER',					'EFFECT_ADJUST_BUILDING_PRODUCTION'										),
		('MODTYPE_TM_DISTRICT_CITY_POPULATION',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ADJUST_CITY_POPULATION'											),
		('MODTYPE_TM_DISTRICT_HOUSING',				'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_HOUSING'										),
		('MODTYPE_TM_DISTRICTS_APPEAL_YIELD',		'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_DISTRICT_YIELD_BASED_ON_APPEAL'							),
		('MODTYPE_TM_DISTRICT_MIRROR_YIELD',		'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_YIELD_BASED_ON_ADJACENCY_BONUS'					),
		('MODTYPE_TM_ADJUST_DISTRICTS_GP',			'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_GREAT_PERSON_POINTS'							),
		('MODTYPE_TM_ADJUST_CITY_DISTRICTS_GP',		'COLLECTION_CITY_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_GREAT_PERSON_POINTS'							),
		('MODTYPE_TM_ADJUST_DISTRICT_YIELD',		'COLLECTION_ALL_DISTRICTS',			'EFFECT_ADJUST_DISTRICT_YIELD_CHANGE'									),
		('MODTYPE_TM_PLAYER_DISTRICT_YIELD',		'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_YIELD_CHANGE'									),
		('MODTYPE_TM_DISTRICT_BASE_YIELD',			'COLLECTION_OWNER',					'EFFECT_ADJUST_DISTRICT_BASE_YIELD_CHANGE'								),
		('MODTYPE_TM_REGIONAL_RANGE',				'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_EXTRA_REGIONAL_RANGE'							),
		('MODTYPE_TM_REGIONAL_AMENITIES',			'COLLECTION_PLAYER_DISTRICTS',		'EFFECT_ADJUST_DISTRICT_EXTRA_REGIONAL_ENTERTAINMENT'					),
		('MODTYPE_TM_CULTURE_BOMB',					'COLLECTION_OWNER',					'EFFECT_ADD_CULTURE_BOMB_TRIGGER'										),
		-- BUILDING
		('MODTYPE_TM_BUILDING_FAITH_PURCHASE',		'COLLECTION_OWNER',					'EFFECT_ENABLE_BUILDING_FAITH_PURCHASE'									),
		('MODTYPE_TM_BUILDING_GW_SLOT',				'COLLECTION_PLAYER_CITIES',			'EFFECT_ADJUST_EXTRA_GREAT_WORK_SLOTS'									),
		-- UNIT
		('MODTYPE_TM_INITIATION_YIELD',				'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_INITIATION_YIELD'									),
		('MODTYPE_TM_ADJUST_UNIT_HEALING',			'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_HEALING_MODIFIERS'									),
		('MODTYPE_TM_ADJUST_UNIT_STRENGTH',			'COLLECTION_UNIT_COMBAT',			'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'								),
		('MODTYPE_TM_ADJUST_UNIT_MOVEMENT',			'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_MOVEMENT'											),
		('MODTYPE_TM_ADJUST_UNIT_SIGHT',			'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_SIGHT'												),
		('MODTYPE_TM_ADJUST_UNIT_SPREAD',			'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_SPREAD_CHARGES'										),
		('MODTYPE_TM_ADJUST_UNIT_IGNORE_TERRAIN',	'COLLECTION_PLAYER_UNITS',			'EFFECT_ADJUST_UNIT_IGNORE_TERRAIN_COST'								),
		('MODTYPE_TM_GRANT_UNIT_EXPERIENCE',		'COLLECTION_CITY_TRAINED_UNITS',	'EFFECT_ADJUST_UNIT_GRANT_EXPERIENCE'									),
		('MODTYPE_TM_UNIT_FAITH_PURCHASE',			'COLLECTION_PLAYER_CITIES',			'EFFECT_ENABLE_UNIT_FAITH_PURCHASE'										);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_TM_CITY_FOREIGN_CONTINENT',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_CITY_HAS_PARK',						'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_IS_COAST',						'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_IS_DESERT',					'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_IS_HILLS',						'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_ANTIQUITY',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_RESOURCE',					'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_FLOODPLAINS',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_LUMBER_MILL',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_PLOT_HAS_FISHING_BOAT',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',				'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_UNIT_IS_RELIGIOUS',					'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_UNIT_IS_LAND',						'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_UNIT_IS_NAVAL',						'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_HOLY_SITE',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_CAMPUS',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_COMMERCIAL_HUB',		'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_HARBOR',				'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_ENCAMPMENT',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_ENTERTAINMENT',			'REQUIREMENTSET_TEST_ANY'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_DESERT',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA',		'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_TM_HAS_ADJ_NATURAL_WONDER',			'REQUIREMENTSET_TEST_ANY'	);

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType	)
SELECT	'REQSET_TM_PLAYER_HAS_'||FeatureType,	'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType	)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType,	'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType	)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType||'_NP',	'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType	)
SELECT	'REQSET_TM_IS_'||FeatureType,	'REQUIREMENTSET_TEST_ALL'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType	)
SELECT	'REQSET_TM_PLAYER_HAS_'||ResourceType,	'REQUIREMENTSET_TEST_ALL'
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_TM_CITY_FOREIGN_CONTINENT',		'REQ_TM_CITY_FOREIGN_CONTINENT'			),
		('REQSET_TM_CITY_HAS_PARK',					'REQ_TM_CITY_HAS_PARK'					),
		('REQSET_TM_PLOT_IS_COAST',					'REQ_TM_PLOT_IS_COAST'					),
		('REQSET_TM_PLOT_IS_DESERT',				'REQ_TM_PLOT_IS_DESERT'					),
		('REQSET_TM_PLOT_IS_DESERT',				'REQ_TM_PLOT_IS_DESERT_HILLS'			),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQ_TM_PLOT_IS_TUNDRA'					),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQ_TM_PLOT_IS_TUNDRA_HILLS'			),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQ_TM_PLOT_IS_SNOW'					),
		('REQSET_TM_PLOT_IS_TUNDRA_SNOW',			'REQ_TM_PLOT_IS_SNOW_HILLS'				),
		('REQSET_TM_PLOT_IS_HILLS',					'REQ_TM_PLOT_IS_DESERT_HILLS'			),
		('REQSET_TM_PLOT_IS_HILLS',					'REQ_TM_PLOT_IS_GRASS_HILLS'			),
		('REQSET_TM_PLOT_IS_HILLS',					'REQ_TM_PLOT_IS_PLAINS_HILLS'			),
		('REQSET_TM_PLOT_IS_HILLS',					'REQ_TM_PLOT_IS_TUNDRA_HILLS'			),
		('REQSET_TM_PLOT_IS_HILLS',					'REQ_TM_PLOT_IS_SNOW_HILLS'				),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQ_TM_PLOT_HAS_BONUS_RESOURCE'		),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQ_TM_PLOT_HAS_IMPROVEMENT'			),
		('REQSET_TM_PLOT_HAS_IMPROVED_BONUS',		'REQ_TM_PLOT_HAS_RIVER'					),
		('REQSET_TM_PLOT_HAS_LUMBER_MILL',			'REQ_TM_PLOT_HAS_LUMBER_MILL'			),
		('REQSET_TM_PLOT_HAS_FISHING_BOAT',			'REQ_TM_PLOT_HAS_FISHING_BOAT'			),
		('REQSET_TM_PLOT_HAS_ANTIQUITY',			'REQ_TM_PLOT_HAS_ANTIQUITY'				),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQ_TM_PLOT_HAS_BONUS_RESOURCE'		),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQ_TM_PLOT_HAS_STRATEGIC_RESOURCE'	),
		('REQSET_TM_PLOT_HAS_RESOURCE',				'REQ_TM_PLOT_HAS_LUXURY_RESOURCE'		),
		('REQSET_TM_PLOT_HAS_FLOODPLAINS',			'REQ_TM_PLOT_HAS_FLOODPLAINS'			),
		('REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM',	'REQ_TM_PLOT_HAS_FARM'					),
		('REQSET_TM_PLOT_HAS_FARM_AND_ADJ_FARM',	'REQ_TM_PLOT_HAS_ADJ_FARM'				),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQ_TM_PLOT_IS_COAST'					),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQ_TM_PLOT_HAS_RESOURCE'				),
		('REQSET_TM_PLOT_HAS_SEA_RESOURCE',			'REQ_TM_PLOT_HAS_IMPROVEMENT'			),
		('REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER',	'REQ_TM_PLOT_HAS_RIVER'					),
		('REQSET_TM_PLOT_HAS_BREATHTAKING_RIVER',	'REQ_TM_PLOT_IS_BREATHTAKING'			),
		('REQSET_TM_UNIT_IS_RELIGIOUS',				'REQ_TM_UNIT_IS_MISSIONARY'				),
		('REQSET_TM_UNIT_IS_RELIGIOUS',				'REQ_TM_UNIT_IS_APOSTLE'				),
		('REQSET_TM_UNIT_IS_RELIGIOUS',				'REQ_TM_UNIT_IS_INQUISITOR'				),
		('REQSET_TM_UNIT_IS_LAND',					'REQ_TM_UNIT_IS_LAND'					),
		('REQSET_TM_UNIT_IS_NAVAL',					'REQ_TM_UNIT_IS_NAVAL'					),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_HOLY_SITE'			),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_CAMPUS'				),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_THEATER'			),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_COMMERCIAL_HUB'		),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_INDUSTRIAL_ZONE'	),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_HARBOR'				),
		('REQSET_TM_DISTRICT_IS_SPECIALTY',			'REQ_TM_DISTRICT_IS_ENCAMPMENT'			),
		('REQSET_TM_DISTRICT_IS_HOLY_SITE',			'REQ_TM_DISTRICT_IS_HOLY_SITE'			),
		('REQSET_TM_DISTRICT_IS_CAMPUS',			'REQ_TM_DISTRICT_IS_CAMPUS'				),
		('REQSET_TM_DISTRICT_IS_COMMERCIAL_HUB',	'REQ_TM_DISTRICT_IS_COMMERCIAL_HUB'		),
		('REQSET_TM_DISTRICT_IS_HARBOR',			'REQ_TM_DISTRICT_IS_HARBOR'				),
		('REQSET_TM_DISTRICT_IS_ENCAMPMENT',		'REQ_TM_DISTRICT_IS_ENCAMPMENT'			),
		('REQSET_TM_DISTRICT_IS_ENTERTAINMENT',		'REQ_TM_DISTRICT_IS_ENTERTAINMENT'		),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_DESERT',	'REQ_TM_DISTRICT_IS_SPECIALTY'			),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_DESERT',	'REQ_TM_PLOT_IS_DESERT_MET'				),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA',	'REQ_TM_DISTRICT_IS_SPECIALTY'			),
		('REQSET_TM_DISTRICT_IS_SPECIALTY_TUNDRA',	'REQ_TM_PLOT_IS_TUNDRA_SNOW_MET'		);

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'REQSET_TM_PLAYER_HAS_'||FeatureType,	'REQ_TM_MAP_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'REQSET_TM_PLAYER_HAS_'||FeatureType,	'REQ_TM_PLAYER_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType,	'REQ_TM_CITY_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType||'_NP',	'REQ_TM_CITY_HAS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
SELECT	'REQSET_TM_CITY_HAS_'||FeatureType||'_NP',	'REQ_TM_CITY_HAS_PARK'
FROM	Features WHERE NaturalWonder = 1;
		
INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId)
SELECT	'REQSET_TM_IS_'||FeatureType,	'REQ_TM_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'REQSET_TM_HAS_ADJ_NATURAL_WONDER',		'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'REQSET_TM_PLAYER_HAS_'||ResourceType,	'REQ_TM_IS_'||ResourceType
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId, 						RequirementType,										Inverse	)
VALUES	('REQ_TM_CITY_HAS_PARK',				'REQUIREMENT_CITY_HAS_NATIONAL_PARK',					0		),
		('REQ_TM_CITY_FOREIGN_CONTINENT',		'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT',			1		),
		('REQ_TM_PLOT_IS_COAST',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_DESERT',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_DESERT_HILLS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_DESERT_MET',			'REQUIREMENT_REQUIREMENTSET_IS_MET',					0		),
		('REQ_TM_PLOT_IS_GRASS',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_GRASS_HILLS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_PLAINS',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_PLAINS_HILLS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_TUNDRA',				'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_TUNDRA_HILLS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_SNOW',					'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_SNOW_HILLS',			'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_TUNDRA_SNOW_MET',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0		),
		('REQ_TM_PLOT_HAS_FLOODPLAINS',			'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_IS_BREATHTAKING',			'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN',					0		),
		('REQ_TM_PLOT_HAS_RIVER',				'REQUIREMENT_PLOT_ADJACENT_TO_RIVER',					0		),
		('REQ_TM_PLOT_HAS_ANTIQUITY',			'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES',				0		),
		('REQ_TM_PLOT_HAS_RESOURCE',			'REQUIREMENT_REQUIREMENTSET_IS_MET',					0		),
		('REQ_TM_PLOT_HAS_BONUS_RESOURCE',		'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',			0		),
		('REQ_TM_PLOT_HAS_STRATEGIC_RESOURCE',	'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',			0		),
		('REQ_TM_PLOT_HAS_LUXURY_RESOURCE',		'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES',			0		),
		('REQ_TM_PLOT_HAS_IMPROVEMENT',			'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',					0		),
		('REQ_TM_PLOT_HAS_FARM',				'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',			0		),
		('REQ_TM_PLOT_HAS_ADJ_FARM',			'REQUIREMENT_PLOT_ADJACENT_IMPROVEMENT_TYPE_MATCHES',	0		),
		('REQ_TM_PLOT_HAS_LUMBER_MILL',			'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',			0		),
		('REQ_TM_PLOT_HAS_FISHING_BOAT',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES',			0		),
		('REQ_TM_UNIT_IS_MISSIONARY',			'REQUIREMENT_UNIT_TYPE_MATCHES',						0		),
		('REQ_TM_UNIT_IS_APOSTLE',				'REQUIREMENT_UNIT_TYPE_MATCHES',						0		),
		('REQ_TM_UNIT_IS_INQUISITOR',			'REQUIREMENT_UNIT_TYPE_MATCHES',						0		),
		('REQ_TM_UNIT_IS_LAND',					'REQUIREMENT_UNIT_DOMAIN_MATCHES',						0		),
		('REQ_TM_UNIT_IS_NAVAL',				'REQUIREMENT_UNIT_DOMAIN_MATCHES',						0		),
		('REQ_TM_DISTRICT_IS_SPECIALTY',		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0		),
		('REQ_TM_DISTRICT_IS_HOLY_SITE',		'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_CAMPUS',			'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_THEATER',			'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_COMMERCIAL_HUB',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_INDUSTRIAL_ZONE',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_HARBOR',			'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_ENCAMPMENT',		'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		),
		('REQ_TM_DISTRICT_IS_ENTERTAINMENT',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',					0		);

INSERT INTO Requirements
		(RequirementId, 					RequirementType	)
SELECT	'REQ_TM_MAP_HAS_'||FeatureType,		'REQUIREMENT_MAP_HAS_FEATURE' 
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId, 					RequirementType	)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType,	'REQUIREMENT_COLLECTION_COUNT_ATLEAST' 
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId, 					RequirementType	)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,	'REQUIREMENT_COLLECTION_COUNT_ATLEAST'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId, 			RequirementType	)
SELECT	'REQ_TM_IS_'||FeatureType,	'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId, 								RequirementType	)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,	'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId, 			RequirementType	)
SELECT	'REQ_TM_IS_'||ResourceType,	'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId, 						Name,					Value								)
VALUES	('REQ_TM_PLOT_IS_COAST',				'TerrainType',			'TERRAIN_COAST'						),
		('REQ_TM_PLOT_IS_DESERT',				'TerrainType',			'TERRAIN_DESERT'					),
		('REQ_TM_PLOT_IS_DESERT_HILLS',			'TerrainType',			'TERRAIN_DESERT_HILLS'				),
		('REQ_TM_PLOT_IS_DESERT_MET',			'RequirementSetId',		'REQSET_TM_PLOT_IS_DESERT'			),
		('REQ_TM_PLOT_IS_GRASS',				'TerrainType',			'TERRAIN_GRASS'						),
		('REQ_TM_PLOT_IS_GRASS_HILLS',			'TerrainType',			'TERRAIN_GRASS_HILLS'				),
		('REQ_TM_PLOT_IS_PLAINS',				'TerrainType',			'TERRAIN_PLAINS'					),
		('REQ_TM_PLOT_IS_PLAINS_HILLS',			'TerrainType',			'TERRAIN_PLAINS_HILLS'				),
		('REQ_TM_PLOT_IS_TUNDRA',				'TerrainType',			'TERRAIN_TUNDRA'					),
		('REQ_TM_PLOT_IS_TUNDRA_HILLS',			'TerrainType',			'TERRAIN_TUNDRA_HILLS'				),
		('REQ_TM_PLOT_IS_TUNDRA_SNOW_MET',		'RequirementSetId',		'REQSET_TM_PLOT_IS_TUNDRA_SNOW'		),
		('REQ_TM_PLOT_IS_SNOW',					'TerrainType',			'TERRAIN_SNOW'						),
		('REQ_TM_PLOT_IS_SNOW_HILLS',			'TerrainType',			'TERRAIN_SNOW_HILLS'				),
		('REQ_TM_PLOT_IS_BREATHTAKING',			'MinimumAppeal',		4									),
		('REQ_TM_PLOT_HAS_FLOODPLAINS',			'FeatureType',			'FEATURE_FLOODPLAINS'				),
		('REQ_TM_PLOT_HAS_ANTIQUITY',			'ResourceType',			'RESOURCE_ANTIQUITY_SITE'			),
		('REQ_TM_PLOT_HAS_RESOURCE',			'RequirementSetId',		'REQSET_TM_PLOT_HAS_RESOURCE'		),
		('REQ_TM_PLOT_HAS_BONUS_RESOURCE',		'ResourceClassType',	'RESOURCECLASS_BONUS'				),
		('REQ_TM_PLOT_HAS_STRATEGIC_RESOURCE',	'ResourceClassType',	'RESOURCECLASS_STRATEGIC'			),
		('REQ_TM_PLOT_HAS_LUXURY_RESOURCE',		'ResourceClassType',	'RESOURCECLASS_LUXURY'				),
		('REQ_TM_PLOT_HAS_FARM',				'ImprovementType',		'IMPROVEMENT_FARM'					),
		('REQ_TM_PLOT_HAS_ADJ_FARM',			'ImprovementType',		'IMPROVEMENT_FARM'					),
		('REQ_TM_PLOT_HAS_LUMBER_MILL',			'ImprovementType',		'IMPROVEMENT_LUMBER_MILL'			),
		('REQ_TM_PLOT_HAS_FISHING_BOAT',		'ImprovementType',		'IMPROVEMENT_FISHING_BOATS'			),
		('REQ_TM_UNIT_IS_MISSIONARY',			'UnitType',				'UNIT_MISSIONARY'					),
		('REQ_TM_UNIT_IS_APOSTLE',				'UnitType',				'UNIT_APOSTLE'						),
		('REQ_TM_UNIT_IS_INQUISITOR',			'UnitType',				'UNIT_INQUISITOR'					),
		('REQ_TM_UNIT_IS_LAND',					'UnitDomain',			'DOMAIN_LAND'						),
		('REQ_TM_UNIT_IS_NAVAL',				'UnitDomain',			'DOMAIN_SEA'						),
		('REQ_TM_DISTRICT_IS_SPECIALTY',		'RequirementSetId',		'REQSET_TM_DISTRICT_IS_SPECIALTY'	),
		('REQ_TM_DISTRICT_IS_HOLY_SITE',		'DistrictType',			'DISTRICT_HOLY_SITE'				),
		('REQ_TM_DISTRICT_IS_CAMPUS',			'DistrictType',			'DISTRICT_CAMPUS'					),
		('REQ_TM_DISTRICT_IS_THEATER',			'DistrictType',			'DISTRICT_THEATER'					),
		('REQ_TM_DISTRICT_IS_COMMERCIAL_HUB',	'DistrictType',			'DISTRICT_COMMERCIAL_HUB'			),
		('REQ_TM_DISTRICT_IS_INDUSTRIAL_ZONE',	'DistrictType',			'DISTRICT_INDUSTRIAL_ZONE'			),
		('REQ_TM_DISTRICT_IS_HARBOR',			'DistrictType',			'DISTRICT_HARBOR'					),
		('REQ_TM_DISTRICT_IS_ENCAMPMENT',		'DistrictType',			'DISTRICT_ENCAMPMENT'				),
		('REQ_TM_DISTRICT_IS_ENTERTAINMENT',	'DistrictType',			'DISTRICT_ENTERTAINMENT_COMPLEX'	);

INSERT INTO RequirementArguments
		(RequirementId, 					Name,			Value	)
SELECT	'REQ_TM_MAP_HAS_'||FeatureType,		'FeatureType',	FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 					Name,				Value	)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType, 'CollectionType',	'COLLECTION_PLAYER_PLOT_YIELDS'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 					Name,		Value	)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType, 'Count',	1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 					Name,				Value	)
SELECT	'REQ_TM_PLAYER_HAS_'||FeatureType, 'RequirementSetId',	'REQSET_TM_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;
		
INSERT INTO RequirementArguments
		(RequirementId, 					Name,				Value	)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,	'CollectionType',	'COLLECTION_CITY_PLOT_YIELDS'
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 					Name,		Value	)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,	'Count',	1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 					Name,				Value	)
SELECT	'REQ_TM_CITY_HAS_'||FeatureType,	'RequirementSetId',	'REQSET_TM_IS_'||FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 			Name,			Value	)
SELECT	'REQ_TM_IS_'||FeatureType,	'FeatureType',	FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 								Name,			Value	)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,	'FeatureType',	FeatureType
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 								Name,			Value	)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,	'MinRange',		1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 								Name,			Value	)
SELECT	'REQ_TM_ADJ_NATURAL_WONDER_IS_'||FeatureType,	'MaxRange',		1
FROM	Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId, 			Name,			Value	)
SELECT	'REQ_TM_IS_'||ResourceType,	'ResourceType',	ResourceType
FROM	Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

-----------------------------------------------
-- Triggers
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS TM_RetbaResource_Trigger
AFTER INSERT ON Resources WHEN NEW.ResourceClassType = 'RESOURCECLASS_LUXURY'
BEGIN
	
	INSERT INTO RequirementSets
			(RequirementSetId,							RequirementSetType			)
	VALUES	('REQSET_TM_PLAYER_HAS_'||NEW.ResourceType,	'REQUIREMENTSET_TEST_ALL'	);

	INSERT INTO RequirementSetRequirements
			(RequirementSetId,							RequirementId					)
	VALUES	('REQSET_TM_PLAYER_HAS_'||NEW.ResourceType,	'REQ_TM_IS_'||NEW.ResourceType	);

	INSERT INTO Requirements
			(RequirementId, 					RequirementType							)
	VALUES	('REQ_TM_IS_'||NEW.ResourceType,	'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED'	);

	INSERT INTO RequirementArguments
			(RequirementId, 					Name,			Value				)
	VALUES	('REQ_TM_IS_'||NEW.ResourceType,	'ResourceType',	NEW.ResourceType	);

END;