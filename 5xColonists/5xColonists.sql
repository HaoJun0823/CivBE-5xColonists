--Author:HaoJun0823
--https://steamcommunity.com/id/HaoJun0823/
--DATE 2016/7/22
--Colonists  Rules 

--This mod at the beginning of the game, "select the colonists' effect increased 500%, It can be used in " Rising tide " , Have fun! .
--Some data may be invalid. If you find. Please tell me. I will fix it.

--Warning: I am not modifying any language files.
--If you find the game UI doesn't have any changes. This is not a bug.
--Game and DLC have a lot of Texts with same variable.
--So if I modify them. Maybe it has more mistakes.
--Thank you for your understanding.

--If you want modify multiple. You just take replace or modify "*5" with everything you like.
--You can use notepad++ or other editor make this.

--If you have any questions or bugs. Please tell me. I will improve it.
--Thank you. Have fun!

--==========================
--Original Code
--==========================
--Original file path:Sid Meier's Civilization Beyond Earth\assets\Gameplay\XML\Civilizations\CivBEColonists.xml
--That is Original code.

--	<Colonist_YieldFlatModifier name="Colonists">
--		<Row ColonistType="COLONIST_SCIENTISTS" YieldType="YIELD_SCIENCE" Yield="2"/>
--		<Row ColonistType="COLONIST_REFUGEES" YieldType="YIELD_FOOD" Yield="2"/>
--		<Row ColonistType="COLONIST_ARISTOCRATS" YieldType="YIELD_ENERGY" Yield="4"/>
--		<Row ColonistType="COLONIST_ENGINEERS" YieldType="YIELD_PRODUCTION" Yield="2"/>
--		<Row ColonistType="COLONIST_ARTISTS" YieldType="YIELD_CULTURE" Yield="2"/>
--	</Colonist_YieldFlatModifier>

--===============
--Update Logs
--===============

--Alpha

--07/22/2016 v1
--Upload.

--07/23/2016 v2
--All language supports.

--06/03/2017 v3
--stable.


--==========================
--Colonists Update
--==========================
-- Start Colonists Update

UPDATE Colonist_YieldFlatModifier
SET YIELD = YIELD*5
WHERE ColonistType = 'COLONIST_SCIENTISTS' AND YieldType = 'YIELD_SCIENCE';

UPDATE Colonist_YieldFlatModifier
SET YIELD = YIELD*5
WHERE ColonistType = 'COLONIST_REFUGEES' AND YieldType = 'YIELD_FOOD';

UPDATE Colonist_YieldFlatModifier
SET YIELD = YIELD*5
WHERE ColonistType = 'COLONIST_ARISTOCRATS' AND YieldType = 'YIELD_ENERGY';

UPDATE Colonist_YieldFlatModifier
SET YIELD = YIELD*5
WHERE ColonistType = 'COLONIST_ENGINEERS' AND YieldType = 'YIELD_PRODUCTION';

UPDATE Colonist_YieldFlatModifier
SET YIELD = YIELD*5
WHERE ColonistType = 'COLONIST_ARTISTS' AND YieldType = 'YIELD_CULTURE';

--Done.



--=================================
--Languages Database
--=================================

--	ID	Type	Name	TableName	TagColumnName	TextColumnName	PluralityColumnName	GenderColumnName	PluralRule	UseExtendedFont	FontName	FontWidthScale	FontHeightScale
--	0	en_US	English	Language_en_US	Tag	Text	Plurality	Gender	2	1	Arial	0.35	0.79
--	1	fr_FR	Fran?ais	Language_FR_FR	Tag	Text	Plurality	Gender	3	0	MS PGothic	0.4	0.8
--	2	de_DE	Deutsch	Language_DE_DE	Tag	Text	Plurality	Gender	2	0	MS PGothic	0.4	0.8
--	3	it_IT	Italiano	Language_IT_IT	Tag	Text	Plurality	Gender	2	0	MS PGothic	0.4	0.8
--	4	es_ES	Espa?ol	Language_ES_ES	Tag	Text	Plurality	Gender	2	0	MS PGothic	0.4	0.8
--	5	ja_JP	»’±æ’{(Japanese)	Language_JA_JP	Tag	Text	Plurality	Gender	1	1	MS Gothic	0.4	0.8
--	6	ru_RU	ß≤ßÂß„ß„ß‹ß⁄ß€ (Russian)	Language_RU_RU	Tag	Text	Plurality	Gender	8	1	Verdana	0.4	0.8
--	7	pl_PL	polski	Language_PL_PL	Tag	Text	Plurality	Gender	10	1	Arial	0.38	0.78
--	8	ko_KR	??????(Korean)	Language_KO_KR	Tag	Text	Plurality	Gender	1	1	Malgun Gothic	0.4	0.8
--	9	zh_Hant_HK	∫∫”Ô/ùh’Z (Chinese, Traditional)	Language_ZH_HANT_HK	Tag	Text	Plurality	Gender	1	1	DFPHeiMedium-B5	0.4	0.8
--	10	zh_Hans_CN	∫∫”Ô/ùh’Z (Chinese, Simplified)	Language_ZH_HANS_CN	Tag	Text	Plurality	Gender	1	1	DFPHeiMedium-B5	0.4	0.8

--=================================
--Languages Modify
--=================================
--ID 10
UPDATE Language_ZH_HANS_CN
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_ZH_HANS_CN
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_ZH_HANS_CN
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 9
UPDATE Language_ZH_HANT_HK
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_ZH_HANT_HK
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_ZH_HANT_HK
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 8
UPDATE Language_KO_KR
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_KO_KR
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_KO_KR
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 7
UPDATE Language_PL_PL
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_PL_PL
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_PL_PL
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 6
UPDATE Language_RU_RU
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_RU_RU
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_RU_RU
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 5
UPDATE Language_JA_JP
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_JA_JP
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_JA_JP
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 4
UPDATE Language_ES_ES
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_ES_ES
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_ES_ES
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 3
UPDATE Language_IT_IT
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_IT_IT
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_IT_IT
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 2
UPDATE Language_DE_DE
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_DE_DE
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_DE_DE
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 1
UPDATE Language_FR_FR
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_FR_FR
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_FR_FR
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';
--ID 0
UPDATE Language_en_US
SET Text = replace(Text,'+2','+10')
WHERE Tag = 'TXT_KEY_COLONIST_ENGINEERS' OR Tag = 'TXT_KEY_COLONIST_ARTISTS' OR Tag = 'TXT_KEY_COLONIST_REFUGEES' OR Tag = 'TXT_KEY_COLONIST_SCIENTISTS';

UPDATE Language_en_US
SET Text = replace(Text,'+3','+15')
WHERE Tag = 'TXT_KEY_COLONIST_ARTISTS';

UPDATE Language_en_US
SET Text = replace(Text,'+4','+20')
WHERE Tag = 'TXT_KEY_COLONIST_ARISTOCRATS';

--done.