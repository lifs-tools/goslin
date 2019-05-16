////////////////////////////////////////////////////////////////////////////////
// MIT License
// 
// Copyright (c) 2017 Dominik Kopczynski   -   dominik.kopczynski {at} isas.de
//                    Bing Peng   -   bing.peng {at} isas.de
//                    Nils Hoffmann  -  nils.hoffmann {at} isas.de
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the 'Software'), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
////////////////////////////////////////////////////////////////////////////////

//// This is a BNF grammer for lipid subspecies identifiers followed by
//// J.K. Pauling et al. 2017, PLoS One, 12(11):e0188394. 

grammar LipidMaps;

/* first rule is always start rule */
lipid: lipid_rule EOF;
lipid_rule: lipid_mono | lipid_mono isotope;
lipid_mono: lipid_pure | lipid_pure isoform;
lipid_pure: pure_fa | gl | pl | sl | cholesterol | mediator;
isoform: square_open_bracket 'rac' square_close_bracket | square_open_bracket 'iso' number square_close_bracket;
isotope: ' ' round_open_bracket element number round_close_bracket | '-' round_open_bracket element number round_close_bracket | '-' element number;
element: 'd';


/* pure fatty acid */
pure_fa: fa;


/* glycerolipid rules */
gl: sgl | tgl;
sgl: hg_sglc round_open_bracket fa fa_separator fa round_close_bracket | hg_sglc fa fa_separator fa;
tgl: hg_glc round_open_bracket fa fa_separator fa fa_separator fa round_close_bracket | hg_glc fa fa_separator fa fa_separator fa;

hg_sglc: hg_sgl | hg_sgl ' ';
hg_sgl: 'MGDG' | 'DGDG' | 'SQDG' | 'SQMG' | 'DG';
hg_glc: hg_gl | hg_gl ' ';
hg_gl: 'MG' | 'DG' | 'TG';




/* phospholipid rules */
pl: lpl | dpl | cl | fourpl;
lpl: hg_lplc round_open_bracket fa round_close_bracket | hg_lplc fa;
dpl: hg_pl round_open_bracket fa fa_separator fa round_close_bracket | hg_pl fa fa_separator fa;
cl: hg_clc round_open_bracket '1\'-' square_open_bracket fa fa_separator fa square_close_bracket ',3\'-' square_open_bracket fa fa_separator fa square_close_bracket round_close_bracket | hg_clc '1\'-' square_open_bracket fa fa_separator fa square_close_bracket ',3\'-' square_open_bracket fa fa_separator fa square_close_bracket;
fourpl: hg_fourplc round_open_bracket fa fa_separator fa fa_separator fa fa_separator fa round_close_bracket | hg_fourplc fa fa_separator fa fa_separator fa fa_separator fa;

hg_pl: hg_clc | hg_dplc pip_position | hg_dplc | hg_lplc;

hg_clc: hg_cl | hg_cl headgroup_separator;
hg_cl: 'cl';
hg_dplc: hg_dpl | hg_dpl headgroup_separator;
hg_dpl: 'LBPA' | 'CDP-DG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | 'PIP' | 'PIP2' | 'PIP3' | 'PS' | 'PIM1' | 'PIM2' | 'PIM3' | 'PIM4' | 'PIM5' | 'PIM6' | 'Glc-DG' | 'PGP' | 'PE-NMe2' | 'AC2SGL' | 'DAT' | 'PE-NMe' | 'PT' | 'Glc-GP' | 'NAPE';
hg_lplc: hg_lpl | hg_lpl headgroup_separator;
hg_lpl: 'LysoPC' | 'LysoPE' | 'LPIM1' | 'LPIM2' | 'LPIM3' | 'LPIM4' | 'LPIM5' | 'LPIM6' | 'CPA' | 'LPA';
hg_fourplc: hg_fourpl | hg_fourpl headgroup_separator;
hg_fourpl: 'PAT16' | 'PAT18';
pip_position: square_open_bracket pip_pos square_close_bracket;
pip_pos: pip_pos ',' pip_pos | number '\'';



/* sphingolipid rules */
sl: lsl | dsl | sphingoxine;
lsl: hg_lslc round_open_bracket lcb round_close_bracket | hg_lslc lcb;
dsl: hg_dslc round_open_bracket lcb fa_separator fa round_close_bracket | hg_dslc lcb fa_separator fa;

sphingoxine: sphingoxine_pure | sphingoxine_var;
sphingoxine_pure: sphingosine_name | sphinganine_name;
sphingoxine_var: ctype headgroup_separator sphingosine_name | ctype headgroup_separator sphinganine_name;
sphingosine_name: 'Sphingosine' | 'So' | 'Sphingosine-1-phosphate';
sphinganine_name: 'Sphinganine' | 'Sa' | 'Sphinganine-1-phosphate';
ctype: 'C' number;

hg_dslc: hg_dsl | hg_dsl headgroup_separator;
hg_dsl: 'Cer' | 'CerP' | 'EPC' | 'GB3' | 'GB4' | 'GD3' | 'GM3' | 'GM4' | 'Hex2Cer' | 'HexCer' | 'IPC' | 'M(IP)2C' | 'MIPC' | 'SHexCer' | 'SM' | 'PE-Cer' | 'PI-Cer' | 'GlcCer' | 'FMC-5' | 'FMC-6' | 'LacCer' | 'GalCer' | '(3\'-sulfo)Galbeta-Cer';

hg_lslc: hg_lsl | hg_lsl headgroup_separator;
hg_lsl: 'SPH' | 'S1P' | 'HexSph' | 'SPC' | 'SPH-P';



/* cholesterol lipids */
cholesterol: chc | chec;
chc: ch | ch headgroup_separator;
ch: 'cholesterol';
chec: che | che headgroup_separator;
che: fa headgroup_separator hg_che;
hg_che: 'Cholesteryl ester';


/* mediator lipids */
mediator: mediator_var | mediator_const;
mediator_var: mediator_prefix mediator_name_separator mediator_var_names | '(+/-)-' mediator_prefix mediator_name_separator mediator_var_names;
mediator_prefix: mediator_numbers | mediator_prefix mediator_prefix;
mediator_numbers: mediator_numbers mediator_separator mediator_numbers | mediator_number_pure | mediator_number_pure mediator_pos;
mediator_number_pure: number | round_open_bracket number round_close_bracket;
mediator_pos: 'R' | 'S';
mediator_var_names: mediator_var_name | mediator_oxo '-' mediator_var_name;
mediator_var_name: 'HHTrE' | 'EpOME' | 'HODE' | 'HOTrE' | 'DHET' | 'EET' | 'EpETE' | 'HEPE' | 'HETE' | 'PGJ2' | 'HDoHE' | 'HpETE' | 'ETE' | 'DiHETE' | 'LXA4';
mediator_const: 'Arachidonic acid' | 'Arachidonic Acid' | 'alpha-LA' | 'DHA' | 'EPA' | 'Linoleic acid' | 'LTB4' | 'LTC4' | 'LTD4' | 'Maresin 1' | 'Palmitic acid' | 'PGB2' | 'PGD2' | 'PGE2' | 'PGF2alpha' | 'PGI2' | 'Resolvin D1' | 'Resolvin D2' | 'Resolvin D3' | 'Resolvin D5' | 'tetranor-12-HETE' | 'TXB1' | 'TXB2' | 'TXB3';
mediator_oxo: 'Oxo' | 'oxo';



/* generic rules */
fa: fa_unmod | fa_unmod fa_mod;
fa_unmod: ether fa_pure | fa_pure;
fa_mod: round_open_bracket modification round_close_bracket;
modification: modification ',' modification | number mod_text | mod_text;
mod_text: mod_text mod_text | square_open_bracket mod_text square_close_bracket | 'OH' | 'Ke' | 'S' | 'OOH' | 'My' | 'Me' | 'R' | 'Br' | 'CHO' | 'COOH' | 'Cp' | '(R)';
ether: 'P-' | 'O-';
fa_pure: carbon carbon_db_separator db | carbon carbon_db_separator db db_hydroxyl_separator hydroxyl;
lcb: hydroxyl_lcb carbon carbon_db_separator db;
carbon: number;
db: db_count | db_count round_open_bracket db_position round_close_bracket;
db_count: number;
db_position: number | number cistrans | db_position db_position_separator db_position;
cistrans: 'E' | 'Z';
hydroxyl: number;
hydroxyl_lcb: 'm' | 'd' | 't';
number:  '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | number number;

/* separators */
SPACE : ' ';
COLON : ':';
SEMICOLON : ';';
DASH : '-';
UNDERSCORE : '_';
SLASH : '/';
BACKSLASH : '\\';
COMMA: ',';
ROB: '(';
RCB: ')';
SOB: '[';
SCB: ']';

fa_separator: UNDERSCORE | SLASH | BACKSLASH | DASH;
headgroup_separator: SPACE;
carbon_db_separator: COLON;
db_hydroxyl_separator: SEMICOLON;
db_position_separator: COMMA;
mediator_separator: COMMA;
mediator_name_separator: DASH;
round_open_bracket: ROB;
round_close_bracket: RCB;
square_open_bracket: SOB;
square_close_bracket: SCB;

