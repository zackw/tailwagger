-- -*- sql-product: postgres -*-

SET search_path TO collection, public;

BEGIN;

--
-- Populate the language_codes table.
-- Data taken from http://www.loc.gov/standards/iso639-2/ISO-639-2_utf-8.txt
-- Names have been systematically simplified.
--
INSERT INTO language_codes (lc3, lc2, name) VALUES
('aar', 'aa', 'Afar'),
('abk', 'ab', 'Abkhazian'),
('ace', NULL, 'Achinese'),
('ach', NULL, 'Acoli'),
('ada', NULL, 'Adangme'),
('ady', NULL, 'Adyghe'),
('afa', NULL, 'Afro-Asiatic languages'),
('afh', NULL, 'Afrihili'),
('afr', 'af', 'Afrikaans'),
('ain', NULL, 'Ainu'),
('aka', 'ak', 'Akan'),
('akk', NULL, 'Akkadian'),
('alb', 'sq', 'Albanian'),
('ale', NULL, 'Aleut'),
('alg', NULL, 'Algonquian languages'),
('alt', NULL, 'Southern Altai'),
('amh', 'am', 'Amharic'),
('ang', NULL, 'Old English'),
('anp', NULL, 'Angika'),
('apa', NULL, 'Apache languages'),
('ara', 'ar', 'Arabic'),
('arc', NULL, 'Official Aramaic'),
('arg', 'an', 'Aragonese'),
('arm', 'hy', 'Armenian'),
('arn', NULL, 'Mapudungun'),
('arp', NULL, 'Arapaho'),
('art', NULL, 'Artificial languages'),
('arw', NULL, 'Arawak'),
('asm', 'as', 'Assamese'),
('ast', NULL, 'Asturian'),
('ath', NULL, 'Athapascan languages'),
('aus', NULL, 'Australian languages'),
('ava', 'av', 'Avaric'),
('ave', 'ae', 'Avestan'),
('awa', NULL, 'Awadhi'),
('aym', 'ay', 'Aymara'),
('aze', 'az', 'Azerbaijani'),
('bad', NULL, 'Banda languages'),
('bai', NULL, 'Bamileke languages'),
('bak', 'ba', 'Bashkir'),
('bal', NULL, 'Baluchi'),
('bam', 'bm', 'Bambara'),
('ban', NULL, 'Balinese'),
('baq', 'eu', 'Basque'),
('bas', NULL, 'Basa'),
('bat', NULL, 'Baltic languages'),
('bej', NULL, 'Beja'),
('bel', 'be', 'Belarusian'),
('bem', NULL, 'Bemba'),
('ben', 'bn', 'Bengali'),
('ber', NULL, 'Berber languages'),
('bho', NULL, 'Bhojpuri'),
('bih', 'bh', 'Bihari languages'),
('bik', NULL, 'Bikol'),
('bin', NULL, 'Bini'),
('bis', 'bi', 'Bislama'),
('bla', NULL, 'Siksika'),
('bnt', NULL, 'Bantu (Other)'),
('bos', 'bs', 'Bosnian'),
('bra', NULL, 'Braj'),
('bre', 'br', 'Breton'),
('btk', NULL, 'Batak languages'),
('bua', NULL, 'Buriat'),
('bug', NULL, 'Buginese'),
('bul', 'bg', 'Bulgarian'),
('bur', 'my', 'Burmese'),
('byn', NULL, 'Blin'),
('cad', NULL, 'Caddo'),
('cai', NULL, 'Central American Indian languages'),
('car', NULL, 'Galibi Carib'),
('cat', 'ca', 'Catalan'),
('cau', NULL, 'Caucasian languages'),
('ceb', NULL, 'Cebuano'),
('cel', NULL, 'Celtic languages'),
('cha', 'ch', 'Chamorro'),
('chb', NULL, 'Chibcha'),
('che', 'ce', 'Chechen'),
('chg', NULL, 'Chagatai'),
('chi', 'zh', 'Chinese'),
('chk', NULL, 'Chuukese'),
('chm', NULL, 'Mari'),
('chn', NULL, 'Chinook jargon'),
('cho', NULL, 'Choctaw'),
('chp', NULL, 'Chipewyan'),
('chr', NULL, 'Cherokee'),
('chu', 'cu', 'Church Slavic'),
('chv', 'cv', 'Chuvash'),
('chy', NULL, 'Cheyenne'),
('cmc', NULL, 'Chamic languages'),
('cop', NULL, 'Coptic'),
('cor', 'kw', 'Cornish'),
('cos', 'co', 'Corsican'),
('cpe', NULL, 'English-based creoles'),
('cpf', NULL, 'French-based creoles'),
('cpp', NULL, 'Portuguese-based creoles'),
('cre', 'cr', 'Cree'),
('crh', NULL, 'Crimean Tatar'),
('crp', NULL, 'Creoles'),
('csb', NULL, 'Kashubian'),
('cus', NULL, 'Cushitic languages'),
('cze', 'cs', 'Czech'),
('dak', NULL, 'Dakota'),
('dan', 'da', 'Danish'),
('dar', NULL, 'Dargwa'),
('day', NULL, 'Land Dayak languages'),
('del', NULL, 'Delaware'),
('den', NULL, 'Athapascan'),
('dgr', NULL, 'Dogrib'),
('din', NULL, 'Dinka'),
('div', 'dv', 'Divehi'),
('doi', NULL, 'Dogri'),
('dra', NULL, 'Dravidian languages'),
('dsb', NULL, 'Lower Sorbian'),
('dua', NULL, 'Duala'),
('dum', NULL, 'Middle Dutch'),
('dut', 'nl', 'Dutch'),
('dyu', NULL, 'Dyula'),
('dzo', 'dz', 'Dzongkha'),
('efi', NULL, 'Efik'),
('egy', NULL, 'Ancient Egyptian'),
('eka', NULL, 'Ekajuk'),
('elx', NULL, 'Elamite'),
('eng', 'en', 'English'),
('enm', NULL, 'Middle English'),
('epo', 'eo', 'Esperanto'),
('est', 'et', 'Estonian'),
('ewe', 'ee', 'Ewe'),
('ewo', NULL, 'Ewondo'),
('fan', NULL, 'Fang'),
('fao', 'fo', 'Faroese'),
('fat', NULL, 'Fanti'),
('fij', 'fj', 'Fijian'),
('fil', NULL, 'Filipino'),
('fin', 'fi', 'Finnish'),
('fiu', NULL, 'Finno-Ugrian languages'),
('fon', NULL, 'Fon'),
('fre', 'fr', 'French'),
('frm', NULL, 'Middle French'),
('fro', NULL, 'Old French'),
('frr', NULL, 'Northern Frisian'),
('frs', NULL, 'Eastern Frisian'),
('fry', 'fy', 'Western Frisian'),
('ful', 'ff', 'Fulah'),
('fur', NULL, 'Friulian'),
('gaa', NULL, 'Ga'),
('gay', NULL, 'Gayo'),
('gba', NULL, 'Gbaya'),
('gem', NULL, 'Germanic languages'),
('geo', 'ka', 'Georgian'),
('ger', 'de', 'German'),
('gez', NULL, 'Geez'),
('gil', NULL, 'Gilbertese'),
('gla', 'gd', 'Gaelic'),
('gle', 'ga', 'Irish'),
('glg', 'gl', 'Galician'),
('glv', 'gv', 'Manx'),
('gmh', NULL, 'Middle High German'),
('goh', NULL, 'Old High German'),
('gon', NULL, 'Gondi'),
('gor', NULL, 'Gorontalo'),
('got', NULL, 'Gothic'),
('grb', NULL, 'Grebo'),
('grc', NULL, 'Ancient Greek'),
('gre', 'el', 'Greek'),
('grn', 'gn', 'Guarani'),
('gsw', NULL, 'Swiss German'),
('guj', 'gu', 'Gujarati'),
('gwi', NULL, 'Gwich’in'),
('hai', NULL, 'Haida'),
('hat', 'ht', 'Haitian'),
('hau', 'ha', 'Hausa'),
('haw', NULL, 'Hawaiian'),
('heb', 'he', 'Hebrew'),
('her', 'hz', 'Herero'),
('hil', NULL, 'Hiligaynon'),
('him', NULL, 'Himachali languages'),
('hin', 'hi', 'Hindi'),
('hit', NULL, 'Hittite'),
('hmn', NULL, 'Hmong'),
('hmo', 'ho', 'Hiri Motu'),
('hrv', 'hr', 'Croatian'),
('hsb', NULL, 'Upper Sorbian'),
('hun', 'hu', 'Hungarian'),
('hup', NULL, 'Hupa'),
('iba', NULL, 'Iban'),
('ibo', 'ig', 'Igbo'),
('ice', 'is', 'Icelandic'),
('ido', 'io', 'Ido'),
('iii', 'ii', 'Sichuan Yi'),
('ijo', NULL, 'Ijo languages'),
('iku', 'iu', 'Inuktitut'),
('ile', 'ie', 'Interlingue'),
('ilo', NULL, 'Iloko'),
('ina', 'ia', 'Interlingua'),
('inc', NULL, 'Indic languages'),
('ind', 'id', 'Indonesian'),
('ine', NULL, 'Indo-European languages'),
('inh', NULL, 'Ingush'),
('ipk', 'ik', 'Inupiaq'),
('ira', NULL, 'Iranian languages'),
('iro', NULL, 'Iroquoian languages'),
('ita', 'it', 'Italian'),
('jav', 'jv', 'Javanese'),
('jbo', NULL, 'Lojban'),
('jpn', 'ja', 'Japanese'),
('jpr', NULL, 'Judeo-Persian'),
('jrb', NULL, 'Judeo-Arabic'),
('kaa', NULL, 'Kara-Kalpak'),
('kab', NULL, 'Kabyle'),
('kac', NULL, 'Kachin'),
('kal', 'kl', 'Kalaallisut'),
('kam', NULL, 'Kamba'),
('kan', 'kn', 'Kannada'),
('kar', NULL, 'Karen languages'),
('kas', 'ks', 'Kashmiri'),
('kau', 'kr', 'Kanuri'),
('kaw', NULL, 'Kawi'),
('kaz', 'kk', 'Kazakh'),
('kbd', NULL, 'Kabardian'),
('kha', NULL, 'Khasi'),
('khi', NULL, 'Khoisan languages'),
('khm', 'km', 'Central Khmer'),
('kho', NULL, 'Khotanese'),
('kik', 'ki', 'Kikuyu'),
('kin', 'rw', 'Kinyarwanda'),
('kir', 'ky', 'Kirghiz'),
('kmb', NULL, 'Kimbundu'),
('kok', NULL, 'Konkani'),
('kom', 'kv', 'Komi'),
('kon', 'kg', 'Kongo'),
('kor', 'ko', 'Korean'),
('kos', NULL, 'Kosraean'),
('kpe', NULL, 'Kpelle'),
('krc', NULL, 'Karachay-Balkar'),
('krl', NULL, 'Karelian'),
('kro', NULL, 'Kru languages'),
('kru', NULL, 'Kurukh'),
('kua', 'kj', 'Kuanyama'),
('kum', NULL, 'Kumyk'),
('kur', 'ku', 'Kurdish'),
('kut', NULL, 'Kutenai'),
('lad', NULL, 'Ladino'),
('lah', NULL, 'Lahnda'),
('lam', NULL, 'Lamba'),
('lao', 'lo', 'Lao'),
('lat', 'la', 'Latin'),
('lav', 'lv', 'Latvian'),
('lez', NULL, 'Lezghian'),
('lim', 'li', 'Limburgan'),
('lin', 'ln', 'Lingala'),
('lit', 'lt', 'Lithuanian'),
('lol', NULL, 'Mongo'),
('loz', NULL, 'Lozi'),
('ltz', 'lb', 'Luxembourgish'),
('lua', NULL, 'Luba-Lulua'),
('lub', 'lu', 'Luba-Katanga'),
('lug', 'lg', 'Ganda'),
('lui', NULL, 'Luiseno'),
('lun', NULL, 'Lunda'),
('luo', NULL, 'Luo (Kenya and Tanzania)'),
('lus', NULL, 'Lushai'),
('mac', 'mk', 'Macedonian'),
('mad', NULL, 'Madurese'),
('mag', NULL, 'Magahi'),
('mah', 'mh', 'Marshallese'),
('mai', NULL, 'Maithili'),
('mak', NULL, 'Makasar'),
('mal', 'ml', 'Malayalam'),
('man', NULL, 'Mandingo'),
('mao', 'mi', 'Maori'),
('map', NULL, 'Austronesian languages'),
('mar', 'mr', 'Marathi'),
('mas', NULL, 'Masai'),
('may', 'ms', 'Malay'),
('mdf', NULL, 'Moksha'),
('mdr', NULL, 'Mandar'),
('men', NULL, 'Mende'),
('mga', NULL, 'Middle Irish'),
('mic', NULL, 'Mi’kmaq'),
('min', NULL, 'Minangkabau'),
('mis', NULL, 'Uncoded languages'),
('mkh', NULL, 'Mon-Khmer languages'),
('mlg', 'mg', 'Malagasy'),
('mlt', 'mt', 'Maltese'),
('mnc', NULL, 'Manchu'),
('mni', NULL, 'Manipuri'),
('mno', NULL, 'Manobo languages'),
('moh', NULL, 'Mohawk'),
('mon', 'mn', 'Mongolian'),
('mos', NULL, 'Mossi'),
('mul', NULL, 'Multiple languages'),
('mun', NULL, 'Munda languages'),
('mus', NULL, 'Creek'),
('mwl', NULL, 'Mirandese'),
('mwr', NULL, 'Marwari'),
('myn', NULL, 'Mayan languages'),
('myv', NULL, 'Erzya'),
('nah', NULL, 'Nahuatl languages'),
('nai', NULL, 'North American Indian languages'),
('nap', NULL, 'Neapolitan'),
('nau', 'na', 'Nauru'),
('nav', 'nv', 'Navajo'),
('nbl', 'nr', 'South Ndebele'),
('nde', 'nd', 'North Ndebele'),
('ndo', 'ng', 'Ndonga'),
('nds', NULL, 'Low German'),
('nep', 'ne', 'Nepali'),
('new', NULL, 'Nepal Bhasa'),
('nia', NULL, 'Nias'),
('nic', NULL, 'Niger-Kordofanian languages'),
('niu', NULL, 'Niuean'),
('nno', 'nn', 'Norwegian Nynorsk'),
('nob', 'nb', 'Norwegian Bokmål'),
('nog', NULL, 'Nogai'),
('non', NULL, 'Old Norse'),
('nor', 'no', 'Norwegian'),
('nqo', NULL, 'N’Ko'),
('nso', NULL, 'Pedi'),
('nub', NULL, 'Nubian languages'),
('nwc', NULL, 'Classical Newari'),
('nya', 'ny', 'Chichewa'),
('nym', NULL, 'Nyamwezi'),
('nyn', NULL, 'Nyankole'),
('nyo', NULL, 'Nyoro'),
('nzi', NULL, 'Nzima'),
('oci', 'oc', 'Occitan'),
('oji', 'oj', 'Ojibwa'),
('ori', 'or', 'Oriya'),
('orm', 'om', 'Oromo'),
('osa', NULL, 'Osage'),
('oss', 'os', 'Ossetian'),
('ota', NULL, 'Ottoman Turkish'),
('oto', NULL, 'Otomian languages'),
('paa', NULL, 'Papuan languages'),
('pag', NULL, 'Pangasinan'),
('pal', NULL, 'Pahlavi'),
('pam', NULL, 'Pampanga'),
('pan', 'pa', 'Panjabi'),
('pap', NULL, 'Papiamento'),
('pau', NULL, 'Palauan'),
('peo', NULL, 'Old Persian'),
('per', 'fa', 'Persian'),
('phi', NULL, 'Philippine languages'),
('phn', NULL, 'Phoenician'),
('pli', 'pi', 'Pali'),
('pol', 'pl', 'Polish'),
('pon', NULL, 'Pohnpeian'),
('por', 'pt', 'Portuguese'),
('pra', NULL, 'Prakrit languages'),
('pro', NULL, 'Old Provençal'),
('pus', 'ps', 'Pushto'),
('que', 'qu', 'Quechua'),
('raj', NULL, 'Rajasthani'),
('rap', NULL, 'Rapanui'),
('rar', NULL, 'Rarotongan'),
('roa', NULL, 'Romance languages'),
('roh', 'rm', 'Romansh'),
('rom', NULL, 'Romany'),
('rum', 'ro', 'Romanian'),
('run', 'rn', 'Rundi'),
('rup', NULL, 'Aromanian'),
('rus', 'ru', 'Russian'),
('sad', NULL, 'Sandawe'),
('sag', 'sg', 'Sango'),
('sah', NULL, 'Yakut'),
('sai', NULL, 'South American Indian (Other)'),
('sal', NULL, 'Salishan languages'),
('sam', NULL, 'Samaritan Aramaic'),
('san', 'sa', 'Sanskrit'),
('sas', NULL, 'Sasak'),
('sat', NULL, 'Santali'),
('scn', NULL, 'Sicilian'),
('sco', NULL, 'Scots'),
('sel', NULL, 'Selkup'),
('sem', NULL, 'Semitic languages'),
('sga', NULL, 'Old Irish'),
('sgn', NULL, 'Signed languages'),
('shn', NULL, 'Shan'),
('sid', NULL, 'Sidamo'),
('sin', 'si', 'Sinhala'),
('sio', NULL, 'Siouan languages'),
('sit', NULL, 'Sino-Tibetan languages'),
('sla', NULL, 'Slavic languages'),
('slo', 'sk', 'Slovak'),
('slv', 'sl', 'Slovenian'),
('sma', NULL, 'Southern Sami'),
('sme', 'se', 'Northern Sami'),
('smi', NULL, 'Sami languages'),
('smj', NULL, 'Lule Sami'),
('smn', NULL, 'Inari Sami'),
('smo', 'sm', 'Samoan'),
('sms', NULL, 'Skolt Sami'),
('sna', 'sn', 'Shona'),
('snd', 'sd', 'Sindhi'),
('snk', NULL, 'Soninke'),
('sog', NULL, 'Sogdian'),
('som', 'so', 'Somali'),
('son', NULL, 'Songhai languages'),
('sot', 'st', 'Southern Sotho'),
('spa', 'es', 'Spanish'),
('srd', 'sc', 'Sardinian'),
('srn', NULL, 'Sranan Tongo'),
('srp', 'sr', 'Serbian'),
('srr', NULL, 'Serer'),
('ssa', NULL, 'Nilo-Saharan languages'),
('ssw', 'ss', 'Swati'),
('suk', NULL, 'Sukuma'),
('sun', 'su', 'Sundanese'),
('sus', NULL, 'Susu'),
('sux', NULL, 'Sumerian'),
('swa', 'sw', 'Swahili'),
('swe', 'sv', 'Swedish'),
('syc', NULL, 'Classical Syriac'),
('syr', NULL, 'Syriac'),
('tah', 'ty', 'Tahitian'),
('tai', NULL, 'Tai languages'),
('tam', 'ta', 'Tamil'),
('tat', 'tt', 'Tatar'),
('tel', 'te', 'Telugu'),
('tem', NULL, 'Timne'),
('ter', NULL, 'Tereno'),
('tet', NULL, 'Tetum'),
('tgk', 'tg', 'Tajik'),
('tgl', 'tl', 'Tagalog'),
('tha', 'th', 'Thai'),
('tib', 'bo', 'Tibetan'),
('tig', NULL, 'Tigre'),
('tir', 'ti', 'Tigrinya'),
('tiv', NULL, 'Tiv'),
('tkl', NULL, 'Tokelau'),
('tlh', NULL, 'Klingon'),
('tli', NULL, 'Tlingit'),
('tmh', NULL, 'Tamashek'),
('tog', NULL, 'Tonga (Nyasa)'),
('ton', 'to', 'Tonga (Tonga Islands)'),
('tpi', NULL, 'Tok Pisin'),
('tsi', NULL, 'Tsimshian'),
('tsn', 'tn', 'Tswana'),
('tso', 'ts', 'Tsonga'),
('tuk', 'tk', 'Turkmen'),
('tum', NULL, 'Tumbuka'),
('tup', NULL, 'Tupi languages'),
('tur', 'tr', 'Turkish'),
('tut', NULL, 'Altaic languages'),
('tvl', NULL, 'Tuvalu'),
('twi', 'tw', 'Twi'),
('tyv', NULL, 'Tuvinian'),
('udm', NULL, 'Udmurt'),
('uga', NULL, 'Ugaritic'),
('uig', 'ug', 'Uighur'),
('ukr', 'uk', 'Ukrainian'),
('umb', NULL, 'Umbundu'),
('und', NULL, 'Undetermined'),
('urd', 'ur', 'Urdu'),
('uzb', 'uz', 'Uzbek'),
('vai', NULL, 'Vai'),
('ven', 've', 'Venda'),
('vie', 'vi', 'Vietnamese'),
('vol', 'vo', 'Volapük'),
('vot', NULL, 'Votic'),
('wak', NULL, 'Wakashan languages'),
('wal', NULL, 'Walamo'),
('war', NULL, 'Waray'),
('was', NULL, 'Washo'),
('wel', 'cy', 'Welsh'),
('wen', NULL, 'Sorbian languages'),
('wln', 'wa', 'Walloon'),
('wol', 'wo', 'Wolof'),
('xal', NULL, 'Kalmyk'),
('xho', 'xh', 'Xhosa'),
('yao', NULL, 'Yao'),
('yap', NULL, 'Yapese'),
('yid', 'yi', 'Yiddish'),
('yor', 'yo', 'Yoruba'),
('ypk', NULL, 'Yupik languages'),
('zap', NULL, 'Zapotec'),
('zbl', NULL, 'Blissymbols'),
('zen', NULL, 'Zenaga'),
('zgh', NULL, 'Standard Moroccan Tamazight'),
('zha', 'za', 'Zhuang'),
('znd', NULL, 'Zande languages'),
('zul', 'zu', 'Zulu'),
('zun', NULL, 'Zuni'),
('zxx', NULL, 'No linguistic content'),
('zza', NULL, 'Zaza');

--
-- Populate the country_codes table.
-- Data taken from:
-- http://www.opengeocode.org/download/countrynames.txt
--    (ISO 3166-1 alpha-2,3 codes and English short names)
-- https://freedomhouse.org/sites/default/files/resources/FOTN%202014%20Summary%20of%20Findings.pdf
--    (fh_score)
-- https://fr.rsf.org/IMG/csv/2015wpfi.csv
--    (rwb_score and rwb_rank)
-- Names have, again, been systematically simplified.
--
INSERT INTO country_codes (cc2, cc3, name) VALUES
('af', 'afg', 'Afghanistan'),
('ax', 'ala', 'Aland Islands'),
('al', 'alb', 'Albania'),
('dz', 'dza', 'Algeria'),
('as', 'asm', 'American Samoa'),
('ad', 'and', 'Andorra'),
('ao', 'ago', 'Angola'),
('ai', 'aia', 'Anguilla'),
('aq', 'ata', 'Antarctica'),
('ag', 'atg', 'Antigua and Barbuda'),
('ar', 'arg', 'Argentina'),
('am', 'arm', 'Armenia'),
('aw', 'abw', 'Aruba'),
('au', 'aus', 'Australia'),
('at', 'aut', 'Austria'),
('az', 'aze', 'Azerbaijan'),
('bs', 'bhs', 'Bahamas'),
('bh', 'bhr', 'Bahrain'),
('bd', 'bgd', 'Bangladesh'),
('bb', 'brb', 'Barbados'),
('by', 'blr', 'Belarus'),
('be', 'bel', 'Belgium'),
('bz', 'blz', 'Belize'),
('bj', 'ben', 'Benin'),
('bm', 'bmu', 'Bermuda'),
('bt', 'btn', 'Bhutan'),
('bo', 'bol', 'Bolivia'),
('bq', 'bes', 'Bonaire, Saint Eustatius and Saba'),
('ba', 'bih', 'Bosnia and Herzegovina'),
('bw', 'bwa', 'Botswana'),
('bv', 'bvt', 'Bouvet Island'),
('br', 'bra', 'Brazil'),
('io', 'iot', 'British Indian Ocean Territory'),
('bn', 'brn', 'Brunei'),
('bg', 'bgr', 'Bulgaria'),
('bf', 'bfa', 'Burkina Faso'),
('bi', 'bdi', 'Burundi'),
('kh', 'khm', 'Cambodia'),
('cm', 'cmr', 'Cameroon'),
('ca', 'can', 'Canada'),
('cv', 'cpv', 'Cape Verde'),
('ky', 'cym', 'Cayman Islands'),
('cf', 'caf', 'Central African Republic'),
('td', 'tcd', 'Chad'),
('cl', 'chl', 'Chile'),
('cn', 'chn', 'China'),
('cx', 'cxr', 'Christmas Island'),
('cc', 'cck', 'Cocos (Keeling) Islands'),
('co', 'col', 'Colombia'),
('km', 'com', 'Comoros'),
('cg', 'cog', 'Congo'),
('cd', 'cod', 'Congo DR'),
('ck', 'cok', 'Cook Islands'),
('cr', 'cri', 'Costa Rica'),
('ci', 'civ', 'Cote d’Ivoire'),
('hr', 'hrv', 'Croatia'),
('cu', 'cub', 'Cuba'),
('cw', 'cuw', 'Curacao'),
('cy', 'cyp', 'Cyprus'),
('cz', 'cze', 'Czech Republic'),
('dk', 'dnk', 'Denmark'),
('dj', 'dji', 'Djibouti'),
('dm', 'dma', 'Dominica'),
('do', 'dom', 'Dominican Republic'),
('ec', 'ecu', 'Ecuador'),
('eg', 'egy', 'Egypt'),
('sv', 'slv', 'El Salvador'),
('gq', 'gnq', 'Equatorial Guinea'),
('er', 'eri', 'Eritrea'),
('ee', 'est', 'Estonia'),
('et', 'eth', 'Ethiopia'),
('fk', 'flk', 'Falkland Islands'),
('fo', 'fro', 'Faroe Islands'),
('fj', 'fji', 'Fiji'),
('fi', 'fin', 'Finland'),
('fr', 'fra', 'France'),
('gf', 'guf', 'French Guiana'),
('pf', 'pyf', 'French Polynesia'),
('tf', 'atf', 'French Southern Territories'),
('ga', 'gab', 'Gabon'),
('gm', 'gmb', 'Gambia'),
('ge', 'geo', 'Georgia'),
('de', 'deu', 'Germany'),
('gh', 'gha', 'Ghana'),
('gi', 'gib', 'Gibraltar'),
('gr', 'grc', 'Greece'),
('gl', 'grl', 'Greenland'),
('gd', 'grd', 'Grenada'),
('gp', 'glp', 'Guadeloupe'),
('gu', 'gum', 'Guam'),
('gt', 'gtm', 'Guatemala'),
('gg', 'ggy', 'Guernsey'),
('gn', 'gin', 'Guinea'),
('gw', 'gnb', 'Guinea-Bissau'),
('gy', 'guy', 'Guyana'),
('ht', 'hti', 'Haiti'),
('hm', 'hmd', 'Heard Island and McDonald Islands'),
('va', 'vat', 'Vatican'),
('hn', 'hnd', 'Honduras'),
('hk', 'hkg', 'Hong Kong'),
('hu', 'hun', 'Hungary'),
('is', 'isl', 'Iceland'),
('in', 'ind', 'India'),
('id', 'idn', 'Indonesia'),
('ir', 'irn', 'Iran'),
('iq', 'irq', 'Iraq'),
('ie', 'irl', 'Ireland'),
('im', 'imn', 'Isle of Man'),
('il', 'isr', 'Israel'),
('it', 'ita', 'Italy'),
('jm', 'jam', 'Jamaica'),
('jp', 'jpn', 'Japan'),
('je', 'jey', 'Jersey'),
('jo', 'jor', 'Jordan'),
('kz', 'kaz', 'Kazakhstan'),
('ke', 'ken', 'Kenya'),
('ki', 'kir', 'Kiribati'),
('kp', 'prk', 'North Korea'),
('kr', 'kor', 'South Korea'),
('kw', 'kwt', 'Kuwait'),
('kg', 'kgz', 'Kyrgyzstan'),
('la', 'lao', 'Lao'),
('lv', 'lva', 'Latvia'),
('lb', 'lbn', 'Lebanon'),
('ls', 'lso', 'Lesotho'),
('lr', 'lbr', 'Liberia'),
('ly', 'lby', 'Libya'),
('li', 'lie', 'Liechtenstein'),
('lt', 'ltu', 'Lithuania'),
('lu', 'lux', 'Luxembourg'),
('mo', 'mac', 'Macao'),
('mk', 'mkd', 'Macedonia'),
('mg', 'mdg', 'Madagascar'),
('mw', 'mwi', 'Malawi'),
('my', 'mys', 'Malaysia'),
('mv', 'mdv', 'Maldives'),
('ml', 'mli', 'Mali'),
('mt', 'mlt', 'Malta'),
('mh', 'mhl', 'Marshall Islands'),
('mq', 'mtq', 'Martinique'),
('mr', 'mrt', 'Mauritania'),
('mu', 'mus', 'Mauritius'),
('yt', 'myt', 'Mayotte'),
('mx', 'mex', 'Mexico'),
('fm', 'fsm', 'Micronesia'),
('md', 'mda', 'Moldova'),
('mc', 'mco', 'Monaco'),
('mn', 'mng', 'Mongolia'),
('me', 'mne', 'Montenegro'),
('ms', 'msr', 'Montserrat'),
('ma', 'mar', 'Morocco'),
('mz', 'moz', 'Mozambique'),
('mm', 'mmr', 'Myanmar'),
('na', 'nam', 'Namibia'),
('nr', 'nru', 'Nauru'),
('np', 'npl', 'Nepal'),
('nl', 'nld', 'Netherlands'),
('nc', 'ncl', 'New Caledonia'),
('nz', 'nzl', 'New Zealand'),
('ni', 'nic', 'Nicaragua'),
('ne', 'ner', 'Niger'),
('ng', 'nga', 'Nigeria'),
('nu', 'niu', 'Niue'),
('nf', 'nfk', 'Norfolk Island'),
('mp', 'mnp', 'Northern Mariana Islands'),
('no', 'nor', 'Norway'),
('ps', 'pse', 'Palestine'),
('om', 'omn', 'Oman'),
('pk', 'pak', 'Pakistan'),
('pw', 'plw', 'Palau'),
('pa', 'pan', 'Panama'),
('pg', 'png', 'Papua New Guinea'),
('py', 'pry', 'Paraguay'),
('pe', 'per', 'Peru'),
('ph', 'phl', 'Philippines'),
('pn', 'pcn', 'Pitcairn'),
('pl', 'pol', 'Poland'),
('pt', 'prt', 'Portugal'),
('pr', 'pri', 'Puerto Rico'),
('qa', 'qat', 'Qatar'),
('re', 'reu', 'Reunion'),
('ro', 'rou', 'Romania'),
('ru', 'rus', 'Russia'),
('rw', 'rwa', 'Rwanda'),
('bl', 'blm', 'Saint Barthelemy'),
('sh', 'shn', 'Saint Helena, Ascension and Tristan da Cunha'),
('kn', 'kna', 'Saint Kitts and Nevis'),
('lc', 'lca', 'Saint Lucia'),
('mf', 'maf', 'Saint Martin (French part)'),
('pm', 'spm', 'Saint Pierre and Miquelon'),
('vc', 'vct', 'Saint Vincent and The Grenadines'),
('ws', 'wsm', 'Samoa'),
('sm', 'smr', 'San Marino'),
('st', 'stp', 'Sao Tome and Principe'),
('sa', 'sau', 'Saudi Arabia'),
('sn', 'sen', 'Senegal'),
('rs', 'srb', 'Serbia'),
('sc', 'syc', 'Seychelles'),
('sl', 'sle', 'Sierra Leone'),
('sg', 'sgp', 'Singapore'),
('sx', 'sxm', 'Sint Maarten (Dutch part)'),
('sk', 'svk', 'Slovakia'),
('si', 'svn', 'Slovenia'),
('sb', 'slb', 'Solomon Islands'),
('so', 'som', 'Somalia'),
('za', 'zaf', 'South Africa'),
('gs', 'sgs', 'South Georgia and the South Sandwich Islands'),
('es', 'esp', 'Spain'),
('lk', 'lka', 'Sri Lanka'),
('sd', 'sdn', 'Sudan'),
('ss', 'ssd', 'South Sudan'),
('sr', 'sur', 'Suriname'),
('sj', 'sjm', 'Svalbard and Jan Mayen'),
('sz', 'swz', 'Swaziland'),
('se', 'swe', 'Sweden'),
('ch', 'che', 'Switzerland'),
('sy', 'syr', 'Syria'),
('tw', 'twn', 'Taiwan'),
('tj', 'tjk', 'Tajikistan'),
('tz', 'tza', 'Tanzania'),
('th', 'tha', 'Thailand'),
('tl', 'tls', 'Timor-Leste'),
('tg', 'tgo', 'Togo'),
('tk', 'tkl', 'Tokelau'),
('to', 'ton', 'Tonga'),
('tt', 'tto', 'Trinidad and Tobago'),
('tn', 'tun', 'Tunisia'),
('tr', 'tur', 'Turkey'),
('tm', 'tkm', 'Turkmenistan'),
('tc', 'tca', 'Turks and Caicos Islands'),
('tv', 'tuv', 'Tuvalu'),
('ug', 'uga', 'Uganda'),
('ua', 'ukr', 'Ukraine'),
('ae', 'are', 'United Arab Emirates'),
('gb', 'gbr', 'United Kingdom'),
('us', 'usa', 'United States'),
('um', 'umi', 'United States Minor Outlying Islands'),
('uy', 'ury', 'Uruguay'),
('uz', 'uzb', 'Uzbekistan'),
('vu', 'vut', 'Vanuatu'),
('ve', 'ven', 'Venezuela'),
('vn', 'vnm', 'Vietnam'),
('vg', 'vgb', 'British Virgin Islands'),
('vi', 'vir', 'U.S. Virgin Islands'),
('wf', 'wlf', 'Wallis and Futuna'),
('eh', 'esh', 'Western Sahara'),
('ye', 'yem', 'Yemen'),
('zm', 'zmb', 'Zambia'),
('zw', 'zwe', 'Zimbabwe'),
('xk', 'xks', 'Kosovo'),
('xn', 'xnc', 'Northern Cyprus');

CREATE TEMP TABLE fh_scores (name TEXT, score INTEGER);
INSERT INTO fh_scores (name, score) VALUES
('Iceland',              6),
('Estonia',              8),
('Canada',               15),
('Australia',            17),
('Germany',              17),
('United States',        19),
('France',               20),
('Italy',                22),
('Japan',                22),
('Hungary',              24),
('United Kingdom',       24),
('Georgia',              26),
('South Africa',         26),
('Argentina',            27),
('Philippines',          27),
('Armenia',              28),
('Kenya',                28),
('Brazil',               30),
('Colombia',             30),
('Nigeria',              33),
('South Korea',          33),
('Ukraine',              33),
('Kyrgyzstan',           34),
('Uganda',               34),
('Ecuador',              37),
('Angola',               38),
('Mexico',               39),
('Tunisia',              39),
('Singapore',            40),
('India',                42),
('Indonesia',            42),
('Malawi',               42),
('Malaysia',             42),
('Zambia',               43),
('Morocco',              44),
('Cambodia',             47),
('Lebanon',              47),
('Jordan',               48),
('Libya',                48),
('Bangladesh',           49),
('Rwanda',               50),
('Azerbaijan',           55),
('Turkey',               55),
('Zimbabwe',             55),
('Venezuela',            56),
('Sri Lanka',            58),
('Egypt',                60),
('Kazakhstan',           60),
('Myanmar',              60),
('Russia',               60),
('Belarus',              62),
('Thailand',             62),
('Sudan',                65),
('Gambia',               65),
('United Arab Emirates', 67),
('Pakistan',             69),
('Saudi Arabia',         73),
('Bahrain',              74),
('Vietnam',              76),
('Uzbekistan',           79),
('Ethiopia',             80),
('Cuba',                 84),
('China',                87),
('Syria',                88),
('Iran',                 89);

CREATE TEMP TABLE rwb_data (cc3 TEXT, score REAL, rank INTEGER);
INSERT INTO rwb_data (cc3, score, rank) VALUES
('fin',  7.52, 1),
('nor',  7.75, 2),
('dnk',  8.24, 3),
('nld',  9.22, 4),
('swe',  9.47, 5),
('nzl', 10.06, 6),
('aut', 10.85, 7),
('can', 10.99, 8),
('jam', 11.18, 9),
('est', 11.19, 10),
('irl', 11.20, 11),
('deu', 11.47, 12),
('cze', 11.62, 13),
('svk', 11.66, 14),
('bel', 11.98, 15),
('cri', 12.26, 16),
('nam', 12.50, 17),
('pol', 12.71, 18),
('lux', 13.61, 19),
('che', 13.85, 20),
('isl', 13.87, 21),
('gha', 15.50, 22),
('ury', 15.94, 23),
('cyp', 16.52, 24),
('aus', 17.03, 25),
('prt', 17.11, 26),
('lie', 17.67, 27),
('lva', 18.12, 28),
('sur', 18.20, 29),
('blz', 18.54, 30),
('ltu', 18.8, 31),
('and', 19.87, 32),
('esp', 19.95, 33),
('gbr', 20.00, 34),
('svn', 20.55, 35),
('cpv', 20.69, 36),
('atg', 21.02, 37),
('fra', 21.15, 38),
('zaf', 22.06, 39),
('wsm', 22.32, 40),
('tto', 22.39, 41),
('bwa', 22.91, 42),
('chl', 23.00, 43),
('ton', 23.37, 44),
('slv', 23.66, 45),
('bfa', 23.79, 46),
('ner', 23.85, 47),
('mlt', 24.16, 48),
('usa', 24.41, 49),
('com', 24.52, 50),
('twn', 24.83, 51),
('rou', 24.90, 52),
('hti', 25.08, 53),
('mng', 25.25, 54),
('mrt', 25.27, 55),
('png', 25.87, 56),
('arg', 26.11, 57),
('hrv', 26.12, 58),
('mwi', 26.41, 59),
('kor', 26.55, 60),
('jpn', 26.95, 61),
('guy', 27.21, 62),
('dom', 27.31, 63),
('mdg', 27.43, 64),
('hun', 27.44, 65),
('bih', 27.51, 66),
('srb', 27.66, 67),
('mus', 27.69, 68),
('geo', 27.70, 69),
('hkg', 27.76, 70),
('sen', 27.77, 71),
('mda', 27.85, 72),
('ita', 27.94, 73),
('nic', 27.94, 74),
('tza', 28.09, 75),
('xnc', 28.33, 76),
('lso', 28.36, 77),
('arm', 28.43, 78),
('sle', 28.47, 79),
('tgo', 28.50, 80),
('gnb', 28.70, 81),
('alb', 28.77, 82),
('pan', 28.98, 83),
('ben', 29.24, 84),
('moz', 29.98, 85),
('civ', 30.45, 86),
('xks', 30.63, 87),
('kgz', 30.69, 88),
('lbr', 30.78, 89),
('kwt', 30.84, 90),
('grc', 31.01, 91),
('per', 31.21, 92),
('fji', 31.28, 93),
('bol', 31.29, 94),
('gab', 31.38, 95),
('syc', 31.55, 96),
('uga', 31.65, 97),
('lbn', 31.81, 98),
('bra', 31.93, 99),
('ken', 32.07, 100),
('isr', 32.09, 101),
('gin', 32.56, 102),
('tls', 32.63, 103),
('btn', 32.65, 104),
('npl', 32.71, 105),
('bgr', 32.91, 106),
('cog', 33.00, 107),
('ecu', 33.65, 108),
('pry', 33.74, 109),
('caf', 33.84, 110),
('nga', 34.09, 111),
('mdv', 34.32, 112),
('zmb', 34.35, 113),
('mne', 34.63, 114),
('qat', 35.35, 115),
('tjk', 36.19, 116),
('mkd', 36.26, 117),
('mli', 36.33, 118),
('dza', 36.63, 119),
('are', 36.73, 120),
('brn', 36.76, 121),
('afg', 37.44, 122),
('ago', 37.84, 123),
('gtm', 37.92, 124),
('ssd', 38.04, 125),
('tun', 38.68, 126),
('omn', 38.83, 127),
('col', 39.08, 128),
('ukr', 39.10, 129),
('mar', 39.19, 130),
('zwe', 39.19, 131),
('hnd', 39.27, 132),
('cmr', 39.63, 133),
('tha', 40.07, 134),
('tcd', 40.17, 135),
('ind', 40.49, 136),
('ven', 40.61, 137),
('idn', 40.75, 138),
('khm', 40.99, 139),
('pse', 41.01, 140),
('phl', 41.19, 141),
('eth', 41.83, 142),
('jor', 42.07, 143),
('mmr', 42.08, 144),
('bdi', 42.93, 145),
('bgd', 42.95, 146),
('mys', 43.29, 147),
('mex', 43.69, 148),
('tur', 44.16, 149),
('cod', 44.31, 150),
('gmb', 44.50, 151),
('rus', 44.97, 152),
('sgp', 45.87, 153),
('lby', 45.99, 154),
('swz', 47.28, 155),
('irq', 47.76, 156),
('blr', 47.98, 157),
('egy', 50.17, 158),
('pak', 50.46, 159),
('kaz', 53.46, 160),
('rwa', 56.57, 161),
('aze', 58.41, 162),
('bhr', 58.69, 163),
('sau', 59.41, 164),
('lka', 60.28, 165),
('uzb', 61.14, 166),
('gnq', 66.23, 167),
('yem', 66.36, 168),
('cub', 70.21, 169),
('dji', 71.04, 170),
('lao', 71.25, 171),
('som', 72.31, 172),
('irn', 72.32, 173),
('sdn', 72.34, 174),
('vnm', 72.63, 175),
('chn', 73.55, 176),
('syr', 77.29, 177),
('tkm', 80.83, 178),
('prk', 83.25, 179),
('eri', 84.86, 180);

-- There's no such thing as a temporary function :-(
CREATE FUNCTION assert(pred BOOLEAN) RETURNS void AS
$$
BEGIN
  IF NOT pred THEN
    RAISE 'Assertion failure';
  END IF;
END;
$$
LANGUAGE plpgsql;

SELECT assert(COUNT(*) = 0)
  FROM fh_scores f
  LEFT JOIN country_codes c ON f.name = c.name
  WHERE c.name IS NULL;

SELECT assert(COUNT(*) = 0)
  FROM rwb_data r
  LEFT JOIN country_codes c ON r.cc3 = c.cc3
  WHERE c.cc3 IS NULL;

DROP FUNCTION assert(pred BOOLEAN);

UPDATE country_codes c
   SET fh_score = f.score
  FROM fh_scores f
 WHERE c.name = f.name;

UPDATE country_codes c
   SET rwb_rank = r.rank,
       rwb_score = r.score
  FROM rwb_data r
 WHERE c.cc3 = r.cc3;

-- Populate the clab_categories table.
-- Data taken from https://github.com/citizenlab/test-lists/blob/master/lists/00-LEGEND-category_codes.csv
INSERT INTO clab_categories (code, description) VALUES
('ALDR',    'Alcohol and drugs'),
('ANON',    'Anonymizers and censorship circumvention'),
('BLGSERV', 'Blogging services'),
('CACH',    'Cache testing'),
('COMM',    'Commercial sites'),
('DATE',    'Online dating'),
('DEV',     'Economic development'),
('EMAIL',   'Free email'),
('ENV',     'Environment'),
('FEXP',    'Freedom of expression and media freedom'),
('FREL',    'Foreign relations and military'),
('GAME',    'Online gaming'),
('GAYL',    'QUILTBAG advocacy and education'),
('GMB',     'Gambling'),
('GRP',     'Groups & social networking'),
('HACK',    'Hacking'),
('HAL',     'History, arts and literature'),
('HATE',    'Hate speech'),
('HOST',    'Web hosting services'),
('HUMR',    'Human rights'),
('KWRD',    'Keywords'),
('MILX',    'Militants, extremists and separatists'),
('MINF',    'Minority faiths'),
('MINR',    'Minority rights and ethnic content'),
('MISC',    'Miscellaneous'),
('MMED',    'Multimedia sharing'),
('P2P',     'Peer-to-peer file sharing'),
('POLR',    'Political reform'),
('POLT',    'Political transformation'),
('PORN',    'Pornography'),
('PROV',    'Provocative attire'),
('PUBH',    'Public health'),
('REL',     'Religious conversion, commentary and criticism'),
('SFTWR',   'Software downloads'),
('SRCH',    'Search engines'),
('TRNS',    'Translation'),
('USMIL',   'US military'),
('VOIP',    'Voice over Internet Protocol (VoIP)'),
('WOMR',    'Women''s rights'),
('WRZ',     'Warez'),
('XED',     'Sex education and family planning');

COMMIT;
