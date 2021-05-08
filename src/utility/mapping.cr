require "../structures/word"

O_TO_OWO                                              = /o/
EW_TO_UWU                                             = /ew/
HEY_TO_HAY                                            = /([Hh])ey/
DEAD_TO_DED_UPPER                                     = /Dead/
DEAD_TO_DED_LOWER                                     = /dead/
N_VOWEL_T_TO_ND                                       = /n[aeiou]*t/
READ_TO_WEAD_UPPER                                    = /Read/
READ_TO_WEAD_LOWER                                    = /read/
BRACKETS_TO_STARTRAILS_FORE                           = /[({<]/
BRACKETS_TO_STARTRAILS_REAR                           = /[)}>]/
PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_FIRST  = /[.,](?![0-9])/
PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_SECOND = /[!;]+/
THAT_TO_DAT_UPPER                                     = /That/
THAT_TO_DAT_LOWER                                     = /that/
TH_TO_F_UPPER                                         = /TH(?!E)/
TH_TO_F_LOWER                                         = /[Tt]h(?![Ee])/
LE_TO_WAL                                             = /le$/
VE_TO_WE_UPPER                                        = /Ve/
VE_TO_WE_LOWER                                        = /ve/
RY_TO_WWY                                             = /ry/
RORL_TO_W_UPPER                                       = /(?:R|L)/
RORL_TO_W_LOWER                                       = /(?:r|l)/
LL_TO_WW                                              = /ll/
VOWEL_OR_R_EXCEPT_O_L_TO_WL_UPPER                     = /[AEIUR]([lL])$/
VOWEL_OR_R_EXCEPT_O_L_TO_WL_LOWER                     = /[aeiur]l$/
OLD_TO_OWLD_UPPER                                     = /OLD/
OLD_TO_OWLD_LOWER                                     = /([Oo])ld/
OL_TO_OWL_UPPER                                       = /OL/
OL_TO_OWL_LOWER                                       = /([Oo])l/
LORR_O_TO_WO_UPPER                                    = /[LR]([oO])/
LORR_O_TO_WO_LOWER                                    = /[lr]o/
SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_UPPER          = /([BCDFGHJKMNPQSTXYZ])([oO])/
SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_LOWER          = /([bcdfghjkmnpqstxyz])o/
VORW_LE_TO_WAL                                        = /[vw]le/
FI_TO_FWI_UPPER                                       = /FI/
FI_TO_FWI_LOWER                                       = /([Ff])i/
VER_TO_WER                                            = /([Vv])er/
POI_TO_PWOI                                           = /([Pp])oi/
SPECIFIC_CONSONANTS_LE_TO_LETTER_AND_WAL              = /([DdFfGgHhJjPpQqRrSsTtXxYyZz])le$/
CONSONANT_R_TO_CONSONANT_W                            = /([BbCcDdFfGgKkPpQqSsTtWwXxZz])r/
LY_TO_WY_UPPER                                        = /Ly/
LY_TO_WY_LOWER                                        = /ly/
PLE_TO_PWE                                            = /([Pp])le/
NR_TO_NW_UPPER                                        = /NR/
NR_TO_NW_LOWER                                        = /nr/
FUC_TO_FWUC                                           = /([Ff])uc/
MOM_TO_MWOM                                           = /([Mm])om/
ME_TO_MWE                                             = /([Mm])e/
N_VOWEL_TO_NY_FIRST                                   = /n([aeiou])/
N_VOWEL_TO_NY_SECOND                                  = /N([aeiou])/
N_VOWEL_TO_NY_THIRD                                   = /N([AEIOU])/
OVE_TO_UV_UPPER                                       = /OVE/
OVE_TO_UV_LOWER                                       = /ove/
HAHA_TO_HEHE_XD                                       = /\b(ha|hah|heh|hehe)+\b/
THE_TO_TEH                                            = /\b([Tt])he\b/
YOU_TO_U_UPPER                                        = /\bYou\b/
YOU_TO_U_LOWER                                        = /\byou\b/
TIME_TO_TIM                                           = /\b([Tt])ime\b/
OVER_TO_OWOR                                          = /([Oo])ver/
WORSE_TO_WOSE                                         = /([Ww])orse/

FACES = [
  "(・`ω´・)", ";;w;;", "owo", "UwU", ">w<", "^w^", "(* ^ ω ^)",
  "(⌒ω⌒)", "ヽ(*・ω・)ﾉ", "(o´∀`o)", "(o･ω･o)", "＼(＾▽＾)／",
  "(*^ω^)", "(◕‿◕✿)", "(◕ᴥ◕)", "ʕ•ᴥ•ʔ", "ʕ￫ᴥ￩ʔ", "(*^.^*)", "(｡♥‿♥｡)",
  "OwO", "uwu", "uvu", "UvU", "(*￣з￣)", "(つ✧ω✧)つ", "(/ =ω=)/",
  "(╯°□°）╯︵ ┻━┻", "┬─┬ ノ( ゜-゜ノ)", "¯_(ツ)_/¯",
]

module Mapping
  MAP_O_TO_OWO = ->(input : Word) {
    rng = Random.new
    replacement = rng.rand(2) > 0 ? "owo" : "o"
    input.replace(O_TO_OWO, replacement)
  }

  MAP_EW_TO_UWU = ->(input : Word) {
    input.replace(EW_TO_UWU, "uwu")
  }

  MAP_HEY_TO_HAY = ->(input : Word) {
    input.replace(HEY_TO_HAY, "\\1ay")
  }

  MAP_DEAD_TO_DED = ->(input : Word) {
    input.replace(DEAD_TO_DED_UPPER, "Ded").replace(DEAD_TO_DED_LOWER, "ded")
  }

  MAP_N_VOWEL_T_TO_ND = ->(input : Word) {
    input.replace(N_VOWEL_T_TO_ND, "nd")
  }

  MAP_READ_TO_WEAD = ->(input : Word) {
    input.replace(READ_TO_WEAD_UPPER, "Wead").replace(READ_TO_WEAD_LOWER, "wead")
  }

  MAP_BRACKETS_TO_STAR_TRAILS = ->(input : Word) {
    input.replace(BRACKETS_TO_STARTRAILS_FORE, "｡･:*:･ﾟ★,｡･:*:･ﾟ☆").replace(BRACKETS_TO_STARTRAILS_REAR, "☆ﾟ･:*:･｡,★ﾟ･:*:･｡")
  }

  MAP_PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS = ->(input : Word) {
    rng = Random.new
    input.replace_with_func_single(PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_FIRST, ->{ FACES[rng.rand(FACES.size)] })
      .replace_with_func_single(PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_SECOND, ->{ FACES[rng.rand(FACES.size)] })
  }

  MAP_THAT_TO_DAT = ->(input : Word) {
    input.replace(THAT_TO_DAT_LOWER, "dat").replace(THAT_TO_DAT_UPPER, "Dat")
  }

  MAP_TH_TO_F = ->(input : Word) {
    input.replace(TH_TO_F_LOWER, "f").replace(TH_TO_F_UPPER, "F")
  }

  MAP_LE_TO_WAL = ->(input : Word) {
    input.replace(LE_TO_WAL, "wal")
  }

  MAP_VE_TO_WE = ->(input : Word) {
    input.replace(VE_TO_WE_LOWER, "we").replace(VE_TO_WE_UPPER, "We")
  }

  MAP_RY_TO_WWY = ->(input : Word) {
    input.replace(RY_TO_WWY, "wwy")
  }

  MAP_R_OR_L_TO_W = ->(input : Word) {
    input.replace(RORL_TO_W_LOWER, "w").replace(RORL_TO_W_UPPER, "W")
  }

  MAP_LL_TO_WW = ->(input : Word) {
    input.replace(LL_TO_WW, "ww")
  }

  MAP_VOWEL_OR_R_EXCEPT_O_L_TO_WL = ->(input : Word) {
    input.replace(VOWEL_OR_R_EXCEPT_O_L_TO_WL_LOWER, "wl")
      .replace(VOWEL_OR_R_EXCEPT_O_L_TO_WL_UPPER, "W\\1")
  }

  MAP_OLD_TO_OWLD = ->(input : Word) {
    input.replace(OLD_TO_OWLD_LOWER, "\\1wld").replace(OLD_TO_OWLD_UPPER, "OWLD")
  }

  MAP_OL_TO_OWL = ->(input : Word) {
    input.replace(OL_TO_OWL_LOWER, "\\1wl").replace(OL_TO_OWL_UPPER, "OWL")
  }

  MAP_L_OR_R_O_TO_WO = ->(input : Word) {
    input.replace(LORR_O_TO_WO_LOWER, "wo")
      .replace(LORR_O_TO_WO_UPPER, "W\\1")
  }

  MAP_SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO = ->(input : Word) {
    input.replace(SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_LOWER, "\\1wo")
      .replace_with_func_multiple(SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_UPPER, ->(s1 : String, s2 : String) {
        msg = s1
        msg += s2.upcase == s2 ? "W" : "w"
        msg += s2
        msg
      })
  }

  MAP_V_OR_W_LE_TO_WAL = ->(input : Word) {
    input.replace(VORW_LE_TO_WAL, "wal")
  }

  MAP_FI_TO_FWI = ->(input : Word) {
    input.replace(FI_TO_FWI_LOWER, "\\1wi").replace(FI_TO_FWI_UPPER, "FWI")
  }

  MAP_VER_TO_WER = ->(input : Word) {
    input.replace(VER_TO_WER, "wer")
  }

  MAP_POI_TO_PWOI = ->(input : Word) {
    input.replace(POI_TO_PWOI, "\\1woi")
  }

  MAP_SPECIFIC_CONSONANTS_LE_TO_LETTER_AND_WAL = ->(input : Word) {
    input.replace(SPECIFIC_CONSONANTS_LE_TO_LETTER_AND_WAL, "\\1wal")
  }

  MAP_CONSONANT_R_TO_CONSONANT_W = ->(input : Word) {
    input.replace(CONSONANT_R_TO_CONSONANT_W, "\\1w")
  }

  MAP_LY_TO_WY = ->(input : Word) {
    input.replace(LY_TO_WY_LOWER, "wy")
      .replace(LY_TO_WY_UPPER, "Wy")
  }

  MAP_PLE_TO_PWE = ->(input : Word) {
    input.replace(PLE_TO_PWE, "\\1we")
  }

  MAP_NR_TO_NW = ->(input : Word) {
    input.replace(NR_TO_NW_LOWER, "nw").replace(NR_TO_NW_UPPER, "NW")
  }

  MAP_FUC_TO_FWUC = ->(input : Word) {
    input.replace(FUC_TO_FWUC, "\\1wuc")
  }

  MAP_MOM_TO_MWOM = ->(input : Word) {
    input.replace(MOM_TO_MWOM, "\\1wom")
  }

  MAP_ME_TO_MWE = ->(input : Word) {
    input.replace(ME_TO_MWE, "\\1we")
  }

  MAP_N_VOWEL_TO_NY = ->(input : Word) {
    input.replace(N_VOWEL_TO_NY_FIRST, "ny\\1")
      .replace(N_VOWEL_TO_NY_SECOND, "Ny\\1")
      .replace(N_VOWEL_TO_NY_THIRD, "NY\\1")
  }

  MAP_OVE_TO_UV = ->(input : Word) {
    input.replace(OVE_TO_UV_LOWER, "uv").replace(OVE_TO_UV_UPPER, "UV")
  }

  MAP_HAHA_TO_HEHE_XD = ->(input : Word) {
    input.replace(HAHA_TO_HEHE_XD, "hehe xD")
  }

  MAP_THE_TO_TEH = ->(input : Word) {
    input.replace(THE_TO_TEH, "\\1eh")
  }

  MAP_YOU_TO_U = ->(input : Word) {
    input.replace(YOU_TO_U_UPPER, "U").replace(YOU_TO_U_LOWER, "u")
  }

  MAP_TIME_TO_TIM = ->(input : Word) {
    input.replace(TIME_TO_TIM, "\\1im")
  }

  MAP_OVER_TO_OWOR = ->(input : Word) {
    input.replace(OVER_TO_OWOR, "\\1wor")
  }

  MAP_WORSE_TO_WOSE = ->(input : Word) {
    input.replace(WORSE_TO_WOSE, "\\1ose")
  }
end
