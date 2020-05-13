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
lipid_pure: pure_fa | gl | pl | sl | pk | sterol | mediator;
isoform: square_open_bracket isoform_inner square_close_bracket;
isoform_inner : 'rac' | 'iso' | 'iso' number | 'R';
isotope: SPACE round_open_bracket element number round_close_bracket | DASH round_open_bracket element number round_close_bracket | DASH element number;
element: 'd';


/* pure fatty acid */
pure_fa: hg_fa pure_fa_species | fa_no_hg;
fa_no_hg: fa;
pure_fa_species: round_open_bracket fa round_close_bracket | fa | round_open_bracket fa2 round_close_bracket;
hg_fa: 'FA' | 'WE' | 'CoA' | 'CAR' | 'FAHFA' | 'CoA';


fa2 : fa2_unsorted | fa2_sorted;
fa2_unsorted: fa DASH fa | fa UNDERSCORE fa;
fa2_sorted: fa SLASH fa | fa BACKSLASH fa;
fa3 : fa3_unsorted | fa3_sorted;
fa3_unsorted: fa DASH fa DASH fa | fa UNDERSCORE fa UNDERSCORE fa;
fa3_sorted: fa SLASH fa SLASH fa | fa BACKSLASH fa BACKSLASH fa;
fa4 : fa4_unsorted | fa4_sorted;
fa4_unsorted: fa DASH fa DASH fa DASH fa | fa UNDERSCORE fa UNDERSCORE fa UNDERSCORE fa;
fa4_sorted: fa SLASH fa SLASH fa SLASH fa | fa BACKSLASH fa BACKSLASH fa BACKSLASH fa;
lcb_fa_sorted: lcb SLASH fa | lcb BACKSLASH fa;
species_fa : fa;

/* glycerolipid rules */
gl: sgl | tgl;
sgl: hg_sglc sgl_species | hg_sglc sgl_subspecies;
sgl_species: round_open_bracket fa round_close_bracket | fa;
sgl_subspecies: round_open_bracket fa2 round_close_bracket | fa2;
tgl: hg_glc tgl_species | hg_glc tgl_subspecies;
tgl_species: round_open_bracket fa round_close_bracket | fa;
tgl_subspecies: round_open_bracket fa3 round_close_bracket | fa3;

hg_sglc: hg_sgl | hg_sgl headgroup_separator;
hg_sgl: 'MGDG' | 'DGDG' | 'SQDG' | 'SQMG' | 'DG' | 'DGCC' | 'PE-GlcDG';
hg_glc: hg_gl | hg_gl headgroup_separator;
hg_gl: 'MG' | 'DG' | 'TG';




/* phospholipid rules */
pl: lpl | dpl | cl | fourpl | threepl;
lpl: hg_lplc round_open_bracket fa_lpl round_close_bracket | hg_lplc fa_lpl;
fa_lpl: fa | fa2;
dpl: hg_ddpl dpl_species | hg_ddpl dpl_subspecies;
dpl_species: round_open_bracket fa round_close_bracket | fa;
dpl_subspecies: round_open_bracket fa2 round_close_bracket | fa2;
cl: hg_clc cl_species | hg_clc cl_subspecies;
cl_species: round_open_bracket fa round_close_bracket | fa;
cl_subspecies: round_open_bracket '1\'-' square_open_bracket fa2 square_close_bracket ',3\'-' square_open_bracket fa2 square_close_bracket round_close_bracket | hg_clc '1\'-' square_open_bracket fa2 square_close_bracket ',3\'-' square_open_bracket fa2 square_close_bracket;
fourpl: hg_fourplc round_open_bracket fa4 round_close_bracket | hg_fourplc fa4 | hg_fourplc round_open_bracket species_fa round_close_bracket | hg_fourplc species_fa;
threepl: hg_threeplc round_open_bracket fa3 round_close_bracket | hg_threeplc fa3 | hg_threeplc round_open_bracket species_fa round_close_bracket | hg_threeplc species_fa;

hg_ddpl: hg_dplc pip_position | hg_dplc;

hg_clc: hg_cl | hg_cl headgroup_separator;
hg_cl: 'CL';
hg_dplc: hg_dpl | hg_dpl headgroup_separator;
hg_dpl: 'LBPA' | 'CDP-DG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | 'PIP' | 'PIP2' | 'PIP3' | 'PS' | 'PIM1' | 'PIM2' | 'PIM3' | 'PIM4' | 'PIM5' | 'PIM6' | 'Glc-DG' | 'PGP' | 'PE-NMe2' | 'AC2SGL' | 'DAT' | 'PE-NMe' | 'PT' | 'Glc-GP' | 'PPA' | 'PnC' | 'PnE' | '6-Ac-Glc-GP';
hg_lplc: hg_lpl | hg_lpl headgroup_separator;
hg_lpl: 'LysoPC' | 'LPC' | 'LysoPE' | 'LPE' | 'LPI' | 'LPG' | 'LPS' | 'LPIM1' | 'LPIM2' | 'LPIM3' | 'LPIM4' | 'LPIM5' | 'LPIM6' | 'CPA' | 'LPA';
hg_fourplc: hg_fourpl | hg_fourpl headgroup_separator;
hg_fourpl: 'PAT16' | 'PAT18';
pip_position: square_open_bracket pip_pos square_close_bracket;
pip_pos: pip_pos COMMA pip_pos | number '\'';
hg_threeplc: hg_threepl | hg_threepl headgroup_separator;
hg_threepl: 'SLBPA' | 'PS-NAc' | 'NAPE';



/* sphingolipid rules */
sl: lsl | dsl | sphingoxine;
lsl: hg_lslc round_open_bracket lcb round_close_bracket | hg_lslc lcb;
dsl: hg_dslc dsl_species | hg_dslc dsl_subspecies;
dsl_species: round_open_bracket lcb round_close_bracket | lcb;
dsl_subspecies: round_open_bracket lcb_fa_sorted round_close_bracket | lcb_fa_sorted;

sphingoxine: sphingoxine_pure | sphingoxine_var;
sphingoxine_pure: sphingosine_name | sphinganine_name;
sphingoxine_var: ctype headgroup_separator sphingosine_name | ctype headgroup_separator sphinganine_name;
sphingosine_name: 'Sphingosine' | 'So' | 'Sphingosine-1-phosphate';
sphinganine_name: 'Sphinganine' | 'Sa' | 'Sphinganine-1-phosphate';
ctype: 'C' number;

hg_dslc: hg_dsl | hg_dsl headgroup_separator;
hg_dsl: 'Cer' | 'CerP' | 'EPC' | 'GB3' | 'GB4' | 'GD3' | 'GM3' | 'GM4' | 'Hex3Cer' | 'Hex2Cer' | 'HexCer' | 'IPC' | 'M(IP)2C' | 'MIPC' | 'SHexCer' | 'SulfoHexCer' | 'SM' | 'PE-Cer' | 'PI-Cer' | 'GlcCer' | 'FMC-5' | 'FMC-6' | 'LacCer' | 'GalCer' | 'C1P' | special_cer;
special_cer : special_cer_prefix '-Cer';
special_cer_prefix : '1-O-' special_cer_prefix_1_O | '(3\'-sulfo)Galbeta';
special_cer_prefix_1_O : 'myristoyl' | 'palmitoyl' | 'stearoyl' | 'eicosanoyl' | 'behenoyl' | 'lignoceroyl' | 'cerotoyl' | 'carboceroyl' | 'tricosanoyl';


hg_lslc: hg_lsl | hg_lsl headgroup_separator;
hg_lsl: 'SPH' | 'Sph' | 'S1P' | 'HexSph' | 'SPC' | 'SPH-P' | 'LysoSM' | 'SIP';



/* polyketides */
pk : pk_hg pk_fa;
pk_hg : 'RESORCINOL' | 'ANACARD' | 'PHENOL' | 'CATECHOL';
pk_fa : round_open_bracket fa round_close_bracket;



/* sterol lipids */
sterol: chc | chec;
chc: ch | ch headgroup_separator;
ch: 'Cholesterol';
chec: che | che headgroup_separator | che_fa;
che: fa headgroup_separator hg_che;
che_fa: hg_che round_open_bracket fa round_close_bracket;
hg_che: 'Cholesteryl ester' | 'Cholesterol ester' | 'CE';


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
fa: fa_unmod | fa_unmod fa_mod | fa_unmod fa_mod_separator fa_mod;
fa_unmod: round_open_bracket ether fa_pure round_close_bracket | round_open_bracket fa_pure round_close_bracket | ether fa_pure | fa_pure;
fa_mod: round_open_bracket modification round_close_bracket;
modification: modification ',' modification | number mod_text | mod_text;
mod_text: mod_text mod_text | square_open_bracket mod_text square_close_bracket | 'OH' | 'Ke' | 'S' | 'OOH' | 'My' | 'Me' | 'R' | 'Br' | 'CHO' | 'COOH' | 'Cp' | '(R)' | 'Ep' | 'OH2' | 'OH3' | 'OH4' | 'OH6' | 'cyclo' | 'cyclo2' | 'KE2' | 'Ke2' | 'NH2' | 'Me6' | 'Me2' | 'Me3'  | 'Y';
ether: 'P-' | 'O-';
fa_pure: carbon carbon_db_separator db | carbon carbon_db_separator db db_hydroxyl_separator hydroxyl;
lcb_fa: lcb_fa_unmod | lcb_fa_unmod lcb_fa_mod;
lcb_fa_unmod: carbon carbon_db_separator db;
lcb_fa_mod: round_open_bracket modification round_close_bracket;
lcb: hydroxyl_lcb lcb_fa | lcb_fa;
carbon: number;
db : db_count | db_count db_positions;
db_count : number;
db_positions : ROB db_position RCB;
db_position : db_single_position | db_position db_position_separator db_position;
db_single_position : db_position_number | db_position_number cistrans;
db_position_number : number;
cistrans : 'E' | 'Z';
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
fa_mod_separator: SPACE;
carbon_db_separator: COLON;
db_hydroxyl_separator: SEMICOLON;
db_position_separator: COMMA;
mediator_separator: COMMA;
mediator_name_separator: DASH;
round_open_bracket: ROB;
round_close_bracket: RCB;
square_open_bracket: SOB;
square_close_bracket: SCB;

