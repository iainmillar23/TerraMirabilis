/*
	Pantanal
	Authors: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Marsh tiles provide standard adjacency bonuses for Specialty Districts for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_PANTANAL_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_PANTANAL';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_PANTANAL_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_PANTANAL'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PANTANAL_ATTACH_HOLY_SITE'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PANTANAL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PANTANAL_ATTACH_CAMPUS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PANTANAL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PANTANAL_ATTACH_THEATER'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PANTANAL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PANTANAL_ATTACH_COMMERCIAL_HUB'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PANTANAL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PANTANAL_ATTACH_INDUSTRIAL_ZONE'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PANTANAL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_PANTANAL_ATTACH_HARBOR'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_PANTANAL')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_HOLY_SITE',		'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_PANTANAL'	),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_CAMPUS',			'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_PANTANAL'	),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_THEATER',			'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_PANTANAL'	),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_COMMERCIAL_HUB',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_PANTANAL'	),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_INDUSTRIAL_ZONE',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_PANTANAL'	),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_HARBOR',			'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_PANTANAL'	),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE',		'MODTYPE_TM_FEATURE_ADJACENCY',		NULL									),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS',			'MODTYPE_TM_FEATURE_ADJACENCY',		NULL									),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER',			'MODTYPE_TM_FEATURE_ADJACENCY',		NULL									),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB',	'MODTYPE_TM_FEATURE_ADJACENCY',		NULL									),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE',	'MODTYPE_TM_FEATURE_ADJACENCY',		NULL									),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR',			'MODTYPE_TM_FEATURE_ADJACENCY',		NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value													)
VALUES	('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_HOLY_SITE',		'ModifierId',		'MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE'			),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_CAMPUS',			'ModifierId',		'MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS'				),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_THEATER',			'ModifierId',		'MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER'			),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_COMMERCIAL_HUB',	'ModifierId',		'MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB'		),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_INDUSTRIAL_ZONE',	'ModifierId',		'MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE'	),
		('MODIFIER_TM_FEATURE_PANTANAL_ATTACH_HARBOR',			'ModifierId',		'MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR'				),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE',		'DistrictType',		'DISTRICT_HOLY_SITE'									),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE',		'FeatureType',		'FEATURE_MARSH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE',		'YieldType',		'YIELD_FAITH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE',		'Amount',			1														),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HOLY_SITE',		'Description',		'LOC_ADJ_PANTANAL_FAITH_DESCRIPTION'					),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS',			'DistrictType',		'DISTRICT_CAMPUS'										),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS',			'FeatureType',		'FEATURE_MARSH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS',			'YieldType',		'YIELD_SCIENCE'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS',			'Amount',			1														),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_CAMPUS',			'Description',		'LOC_ADJ_PANTANAL_SCIENCE_DESCRIPTION'					),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER',			'DistrictType',		'DISTRICT_THEATER'										),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER',			'FeatureType',		'FEATURE_MARSH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER',			'YieldType',		'YIELD_CULTURE'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER',			'Amount',			1														),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_THEATER',			'Description',		'LOC_ADJ_PANTANAL_CULTURE_DESCRIPTION'					),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB',	'DistrictType',		'DISTRICT_COMMERCIAL_HUB'								),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB',	'FeatureType',		'FEATURE_MARSH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB',	'YieldType',		'YIELD_GOLD'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB',	'Amount',			1														),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_COMMERCIAL_HUB',	'Description',		'LOC_ADJ_PANTANAL_GOLD_DESCRIPTION'						),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE',	'DistrictType',		'DISTRICT_INDUSTRIAL_ZONE'								),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE',	'FeatureType',		'FEATURE_MARSH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE',	'YieldType',		'YIELD_PRODUCTION'										),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE',	'Amount',			1														),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_INDUSTRIAL_ZONE',	'Description',		'LOC_ADJ_PANTANAL_PRODUCTION_DESCRIPTION'				),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR',			'DistrictType',		'DISTRICT_HARBOR'										),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR',			'FeatureType',		'FEATURE_MARSH'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR',			'YieldType',		'YIELD_GOLD'											),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR',			'Amount',			1														),
		('MODIFIER_TM_FEATURE_PANTANAL_MARSH_HARBOR',			'Description',		'LOC_ADJ_PANTANAL_GOLD_DESCRIPTION'						);
