//
//  Local+Extensions.swift
//  NISdk
//
//  Created by Gautam Chibde on 17/04/24.
//

import Foundation

extension Locale {
    
    static var iso639_2LanguageCode: String? {
        let iso639_1LanguageCode = NISdk.sharedInstance.sdkLanguage
        
        let iso639_1to2Mapping: [String: String] = [
            "aa": "aar", // Afar
            "ab": "abk", // Abkhazian
            "af": "afr", // Afrikaans
            "ak": "aka", // Akan
            "sq": "sqi", // Albanian
            "am": "amh", // Amharic
            "ar": "ara", // Arabic
            "an": "arg", // Aragonese
            "hy": "hye", // Armenian
            "as": "asm", // Assamese
            "av": "ava", // Avaric
            "ae": "ave", // Avestan
            "ay": "aym", // Aymara
            "az": "aze", // Azerbaijani
            "bm": "bam", // Bambara
            "ba": "bak", // Bashkir
            "eu": "eus", // Basque
            "be": "bel", // Belarusian
            "bn": "ben", // Bengali
            "bh": "bih", // Bihari languages
            "bi": "bis", // Bislama
            "bs": "bos", // Bosnian
            "br": "bre", // Breton
            "bg": "bul", // Bulgarian
            "my": "mya", // Burmese
            "ca": "cat", // Catalan; Valencian
            "km": "khm", // Central Khmer
            "ch": "cha", // Chamorro
            "ce": "che", // Chechen
            "ny": "nya", // Chichewa; Chewa; Nyanja
            "zh": "zho", // Chinese
            "cu": "chu", // Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic
            "cv": "chv", // Chuvash
            "kw": "cor", // Cornish
            "co": "cos", // Corsican
            "cr": "cre", // Cree
            "hr": "hrv", // Croatian
            "cs": "ces", // Czech
            "da": "dan", // Danish
            "dv": "div", // Divehi; Dhivehi; Maldivian
            "nl": "nld", // Dutch; Flemish
            "dz": "dzo", // Dzongkha
            "en": "eng", // English
            "eo": "epo", // Esperanto
            "et": "est", // Estonian
            "ee": "ewe", // Ewe
            "fo": "fao", // Faroese
            "fj": "fij", // Fijian
            "fi": "fin", // Finnish
            "fr": "fra", // French
            "ff": "ful", // Fulah
            "gd": "gla", // Gaelic; Scottish Gaelic
            "gl": "glg", // Galician
            "lg": "lug", // Ganda
            "ka": "kat", // Georgian
            "de": "deu", // German
            "ki": "kik", // Gikuyu; Kikuyu
            "el": "ell", // Greek, Modern (1453-)
            "kl": "kal", // Greenlandic; Kalaallisut
            "gn": "grn", // Guarani
            "gu": "guj", // Gujarati
            "ht": "hat", // Haitian; Haitian Creole
            "ha": "hau", // Hausa
            "he": "heb", // Hebrew
            "hz": "her", // Herero
            "hi": "hin", // Hindi
            "ho": "hmo", // Hiri Motu
            "hu": "hun", // Hungarian
            "is": "isl", // Icelandic
            "io": "ido", // Ido
            "ig": "ibo", // Igbo
            "id": "ind", // Indonesian
            "ia": "ina", // Interlingua (International Auxiliary Language Association)
            "ie": "ile", // Interlingue; Occidental
            "iu": "iku", // Inuktitut
            "ik": "ipk", // Inupiaq
            "ga": "gle", // Irish
            "it": "ita", // Italian
            "ja": "jpn", // Japanese
            "jv": "jav", // Javanese
            "kn": "kan", // Kannada
            "kr": "kau", // Kanuri
            "ks": "kas", // Kashmiri
            "kk": "kaz", // Kazakh
            "rw": "kin", // Kinyarwanda
            "ky": "kir", // Kirghiz; Kyrgyz
            "kv": "kom", // Komi
            "kg": "kon", // Kongo
            "ko": "kor", // Korean
            "kj": "kua", // Kuanyama; Kwanyama
            "ku": "kur", // Kurdish
            "lo": "lao", // Lao
            "la": "lat", // Latin
            "lv": "lav", // Latvian
            "li": "lim", // Limburgan; Limburger; Limburgish
            "ln": "lin", // Lingala
            "lt": "lit", // Lithuanian
            "lu": "lub", // Luba-Katanga
            "lb": "ltz", // Luxembourgish; Letzeburgesch
            "mk": "mkd", // Macedonian
            "mg": "mlg", // Malagasy
            "ms": "msa", // Malay
            "ml": "mal", // Malayalam
            "mt": "mlt", // Maltese
            "gv": "glv", // Manx
            "mi": "mri", // Maori
            "mr": "mar", // Marathi
            "mh": "mah", // Marshallese
            "mo": "mol", // Moldavian; Moldovan
            "mn": "mon", // Mongolian
            "na": "nau", // Nauru
            "nv": "nav", // Navajo; Navaho
            "nd": "nde", // Ndebele, North; North Ndebele
            "nr": "nbl", // Ndebele, South; South Ndebele
            "ng": "ndo", // Ndonga
            "ne": "nep", // Nepali
            "se": "sme", // Northern Sami
            "no": "nob", // Norwegian Bokmål
            "nn": "nno", // Norwegian Nynorsk
            "oc": "oci", // Occitan (post 1500)
            "oj": "oji", // Ojibwa
            "or": "ori", // Oriya
            "om": "orm", // Oromo
            "os": "oss", // Ossetian; Ossetic
            "pi": "pli", // Pali
            "pa": "pan", // Panjabi; Punjabi
            "ps": "pus", // Pashto; Pushto
            "fa": "fas", // Persian
            "pl": "pol", // Polish
            "pt": "por", // Portuguese
            "qu": "que", // Quechua
            "ro": "ron", // Romanian; Moldavian; Moldovan
            "rm": "roh", // Romansh
            "rn": "run", // Rundi
            "ru": "rus", // Russian
            "sm": "smo", // Samoan
            "sg": "sag", // Sango
            "sa": "san", // Sanskrit
            "sc": "srd", // Sardinian
            "sr": "srp", // Serbian
            "sn": "sna", // Shona
            "ii": "iii", // Sichuan Yi; Nuosu
            "sd": "snd", // Sindhi
            "si": "sin", // Sinhala; Sinhalese
            "sk": "slk", // Slovak
            "sl": "slv", // Slovenian
            "so": "som", // Somali
            "st": "sot", // Sotho, Southern
            "es": "spa", // Spanish; Castilian
            "su": "sun", // Sundanese
            "sw": "swa", // Swahili
            "ss": "ssw", // Swati
            "sv": "swe", // Swedish
            "tl": "tgl", // Tagalog
            "ty": "tah", // Tahitian
            "tg": "tgk", // Tajik
            "ta": "tam", // Tamil
            "tt": "tat", // Tatar
            "te": "tel", // Telugu
            "th": "tha", // Thai
            "bo": "bod", // Tibetan
            "ti": "tir", // Tigrinya
            "to": "ton", // Tonga (Tonga Islands)
            "ts": "tso", // Tsonga
            "tn": "tsn", // Tswana
            "tr": "tur", // Turkish
            "tk": "tuk", // Turkmen
            "tw": "twi", // Twi
            "ug": "uig", // Uighur; Uyghur
            "uk": "ukr", // Ukrainian
            "ur": "urd", // Urdu
            "uz": "uzb", // Uzbek
            "ve": "ven", // Venda
            "vi": "vie", // Vietnamese
            "vo": "vol", // Volapük
            "wa": "wln", // Walloon
            "cy": "cym", // Welsh
            "fy": "fry", // Western Frisian
            "wo": "wol", // Wolof
            "xh": "xho", // Xhosa
            "yi": "yid", // Yiddish
            "yo": "yor", // Yoruba
            "za": "zha", // Zhuang; Chuang
            "zu": "zul"  // Zulu
        ]
        
        return iso639_1to2Mapping[iso639_1LanguageCode]
    }
}
