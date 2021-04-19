/*
 * MIT License
 * 
 * Copyright (c) 2021 Dominik Kopczynski   -   dominik.kopczynski {at} isas.de
 *                    Nils Hoffmann  -  nils.hoffmann {at} isas.de
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the 'Software'), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:;
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHether IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
*/

/* This is a BNF / ANTLR4 grammar for lipid subspecies identifiers following
 * Liebisch et al. Volume 61, Issue 12, December 2020, Pages 1539-1555.
 */

grammar Shorthand2020;


/* first rule is always start rule */
lipid : lipid_eof EOF;
lipid_eof : lipid_pure | lipid_pure adduct_info;
lipid_pure : gl | pl | sl | sterol | med; /* glycero lipids, phospho lipids, sphingo lipids, sterol lipids, lipid mediators


/* adduct information */
adduct_info : '[M' adduct ']' charge charge_sign | adduct_separator '[M' adduct ']' charge charge_sign;
adduct : '+H' | '+2H' | '+NH4' | '-H' | '-2H' | '+HCOO' | '+CH3COO' | charge_sign arbitrary_adduct;
arbitrary_adduct : adduct4 | adduct4 adduct4;
adduct4 : adduct2 | adduct2 adduct2;
adduct2 : character | character character;



/* mediators */
med : med_species | med_subspecies;
med_species : med_hg_double fatty_acyl_chain;
med_subspecies : med_hg_single fatty_acyl_chain | med_hg_single headgroup_separator fatty_acyl_chain | med_hg_double headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain | med_hg_triple headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain unsorted_fa_separator fatty_acyl_chain | med_hg_triple headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain;
med_hg_single : 'FA' | 'FOH' | 'FAL' | 'CAR' | 'CoA' | 'NAE' | 'NAT';
med_hg_double : 'WE' | 'NA' | 'FAHFA';
med_hg_triple : 'WD';




/* fatty acyl chain */
lcb : fatty_acyl_chain;
fatty_acyl_chain : fa_pure | ether fa_pure | fatty_acyl_linkage | fatty_alkyl_linkage;
fatty_acyl_linkage : fatty_linkage_number 'O' ROB fa_pure RCB | 'O' ROB fa_pure RCB;
fatty_alkyl_linkage : fatty_linkage_number 'O' ROB med RCB | 'O' ROB med RCB;
fatty_linkage_number : number;
fa_pure : fa_pure_structure | fa_pure_structure stereo | fa_pure_structure sn;
sn : ROB 'sn-' sn_pos RCB;
sn_pos : number;
fa_pure_structure : carbon carbon_db_separator db | carbon carbon_db_separator db db_funcgroup_separator func_group;
/*fa_pure_structure : carbon carbon_db_separator db | carbon carbon_db_separator db db_funcgroup_separator func_group | carbon carbon_db_separator db db_funcgroup_separator func_group_cycle | carbon carbon_db_separator db db_funcgroup_separator func_group_cycle db_funcgroup_separator func_group; */
ether : ether_num ether_type | ether_type;
ether_num : 'm' | 'd' | 't' | 'e';
ether_type: 'O' plasmalogen_separator | 'P' plasmalogen_separator;
carbon : number;
db : db_count | db_count db_positions;
db_count : number;
db_positions : ROB db_position RCB;
db_position : db_single_position | db_position db_position_separator db_position;
db_single_position : db_position_number | db_position_number cistrans;
db_position_number : number;
cistrans : 'E' | 'Z';

func_group : func_group_entity;
func_group_entity : func_group_entity funcgroup_separator func_group_entity | func_group_data | func_group_data_repetition;
func_group_data_repetition : func_group_data_repetition func_repetition_separator func_group_data_repetition | func_group_data;
func_group_data : func_group_name | func_group_cycle | func_group_pos func_group_ext_name | func_group_pos func_group_ext_name stereo | func_group_ext_name func_group_count | func_group_ext_name func_group_count stereo | func_group_placeholder | fatty_acyl_linkage | fatty_alkyl_linkage;
func_group_pos : func_group_pos_number | func_group_pos_number ring_stereo;
ring_stereo : 'a' | 'b';
func_group_pos_number : number;
func_group_count : number;
stereo : SOB stereo_number stereo_type SCB | SOB stereo_type SCB;
stereo_number : number;
stereo_type : 'R' | 'S';
func_group_placeholder : 'O' | 'O' func_group_placeholder_number;
func_group_placeholder_number : number;
func_group_ext_name : round_open_bracket func_group_name round_close_bracket | func_group_name;
func_group_name : 'Et' | 'Me' | 'Br' | 'Cl' | 'F' | 'I' | 'NO2' | 'Ep' | 'OO' | 'OMe' | 'oxy' | 'NH2' | 'OOH' | 'SH' | 'OH' | 'oxo' | 'CN' | 'P' | 'S' | 'COOH' | 'G' | 'T' | 'COG' | 'COT' | carbohydrate | 'H' | 'O' carbohydrate | med;
func_group_cycle : SOB cycle_def carbon_db_separator cycle_db SCB | SOB cycle_def carbon_db_separator cycle_db funcgroup_separator cycle_func_group_data SCB | SOB cycle_def funcgroup_separator cycle_func_group_data SCB;
cycle_def : cycle_start cycle_separator cycle_end cycle_token cycle_number | cycle_token cycle_number;
cycle_token : 'cy';
cycle_number : number;
cycle_start : number;
cycle_end : number;
cycle_func_group_data : func_group_entity;
cycle_db : cycle_db_cnt | cycle_db_cnt ROB cycle_db_positions RCB;
cycle_db_cnt : number;
cycle_db_positions : cycle_db_position;
cycle_db_position : cycle_db_position db_position_separator cycle_db_position | cycle_db_position_number;
cycle_db_position_number : number;

fatty_acyl_chain2 : fa2_sorted | fa2_unsorted;
fa2_unsorted : fatty_acyl_chain unsorted_fa_separator fatty_acyl_chain;
fa2_sorted : fatty_acyl_chain sorted_fa_separator fatty_acyl_chain;

fatty_acyl_chain3 : f3_sorted | fa3_unsorted;
f3_sorted : fa2_sorted sorted_fa_separator fatty_acyl_chain;
fa3_unsorted : fa2_unsorted unsorted_fa_separator fatty_acyl_chain;

fatty_acyl_chain4 : f4_sorted | fa4_unsorted;
f4_sorted : fa2_sorted sorted_fa_separator fa2_sorted;
fa4_unsorted : fa2_unsorted unsorted_fa_separator fa2_unsorted;


/* glycero lipids */
gl : gl_species | gl_subpsecies | gl_species_double;
gl_species : gl_hg headgroup_separator fatty_acyl_chain;
gl_species_double : gl_hg_triple headgroup_separator fatty_acyl_chain2;
gl_subpsecies : gl_single | gl_double | gl_triple;
gl_hg : gl_hg_double | gl_hg_triple;
gl_hg_single : 'MG' | 'MGMG' | 'DGMG' | 'SQMG';
gl_hg_double : 'DG' | 'MGDG' | 'DGDG' | 'SQDG';
gl_hg_triple : 'TG';
gl_single : gl_hg_single headgroup_separator fatty_acyl_chain | gl_full;
gl_double : gl_hg_double headgroup_separator fatty_acyl_chain2 | gl_full;
gl_full : gl_hg_single headgroup_separator fatty_acyl_chain3 | gl_hg_double headgroup_separator fatty_acyl_chain3;
gl_triple : gl_hg_triple headgroup_separator fatty_acyl_chain3;


pl : pl_species | pl_subspecies | pl_species_double | pl_species_triple;
pl_species : pl_hg headgroup_separator fatty_acyl_chain;
pl_subspecies : pl_single | pl_double | pl_triple | pl_quadro;
pl_species_double : pl_hg_triple headgroup_separator fatty_acyl_chain2 | pl_hg_quadro headgroup_separator fatty_acyl_chain2;
pl_species_triple : pl_hg_quadro headgroup_separator fatty_acyl_chain3;
pl_single : pl_hg_single headgroup_separator fatty_acyl_chain | pl_full;
pl_full : pl_hg_single headgroup_separator fatty_acyl_chain2;
pl_double : pl_hg_double headgroup_separator fatty_acyl_chain2;
pl_triple : pl_hg_triple headgroup_separator fatty_acyl_chain3 | pl_full4;
pl_quadro : pl_hg_quadro headgroup_separator fatty_acyl_chain4;
pl_full4 : pl_hg_triple headgroup_separator fatty_acyl_chain4;
pl_hg : pl_hg_double | pl_hg_triple | pl_hg_quadro;
pl_hg_single : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 'LPS' | hg_lpim | 'CPA' | 'LCDPDAG' | 'LDMPE' | 'LMMPE' | 'LPIMIP' | 'LPIN' | 'PE-isoLG';
pl_hg_double : 'CDP-DAG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | hg_pip | 'PS' | 'LBPA' | 'PGP' | 'PPA' | 'Glc-GP' | '6-Ac-Glc-GP' | hg_pim | 'PnC' | 'PnE' | 'PT' | 'PE-NMe2' | 'PE-NMe' | 'PIMIP' | 'CDPDAG' | 'PS-N(' pl_hg_fa ')' | 'PE-N(' pl_hg_fa ')' | 'PS-N(' pl_hg_alk ')' | 'PE-N(' pl_hg_alk ')' | 'PS-CAP' | 'PS-MDA' | 'PE-CAP' | 'PE-Glc' | 'PE-GlcA' | 'PE-GlcK' | 'PE-CM' | 'PE-CE' | 'PE-FA' | 'PE-CA' | 'PE-MDA' | 'PE-HNE';
pl_hg_triple : 'LCL';
pl_hg_quadro : 'BMP' | 'CL';
hg_pip : hg_pip_pure | hg_pip_pure hg_pip_m | hg_pip_pure hg_pip_d | hg_pip_pure hg_pip_t;
hg_pip_pure : 'PIP';
hg_pip_m : '(3' apostroph ')' | '(4' apostroph ')' | '(5' apostroph ')';
hg_pip_d : '2' | '2(3' apostroph ',4' apostroph ')' | '2(4' apostroph ',5' apostroph ')' | '2(3' apostroph ',5' apostroph ')';
hg_pip_t : '3' | '3(3' apostroph ',4' apostroph ',5' apostroph ')';
hg_pim : 'PIM' hg_pim_number;
hg_pim_number : number;
hg_lpim : 'LPIM' hg_lpim_number;
hg_lpim_number : number;
pl_hg_fa : 'FA' | med;
pl_hg_alk : 'Alk' | fa_pure;


carbohydrate : 'Hex' | 'Gal' | 'Glc' | 'Man' | 'Neu' | 'HexNAc' | 'GalNAc' | 'GlcNAc' | 'NeuAc' | 'NeuGc' | 'Kdn' | 'GlcA' | 'Xyl' | 'Fuc' | 'NeuAc2' | 'SHex' | 'S(3' apostroph ')Hex' | 'NAc' | 'Nac' | 'SGal' | 'S(3' apostroph ')Gal' | 'HexA';


sl : sl_species | sl_subspecies;
sl_species : sl_hg_double headgroup_separator lcb;
sl_subspecies : sl_hg_single headgroup_separator lcb | sl_hg_single sl_hydroxyl headgroup_separator lcb | sl_double;
sl_double : sl_hg_double headgroup_separator lcb sorted_fa_separator fatty_acyl_chain | sl_hg_double sl_hydroxyl headgroup_separator lcb sorted_fa_separator fatty_acyl_chain;
sl_hydroxyl : ROB sl_hydroxyl_number RCB;
sl_hydroxyl_number : number;
sl_hg_single : 'SPB' | 'SPBP' | 'LIPC' | 'LSM';
sl_hg_double : sl_hg_double_name | carbohydrate sl_hg_double  | carbohydrate '-' sl_hg_double;
sl_hg_double_name : 'SM' | 'Cer' | 'CerP' | acer_hg | 'HexCer' | 'GlcCer' | 'GalCer' | 'Hex2Cer' | 'LacCer' | 'SHexCer' | 'IPC' | 'PI-Cer' | 'EPC' | 'PE-Cer' | 'GIPC' | 'MIPC' | 'M(IP)2C' | 'Hex3Cer' | 'S(3' apostroph ')HexCer' | 'S(3' apostroph ')GalCer';
acer_hg : acer_hg_pure | acer_med '-' acer_hg_pure;
acer_hg_pure : 'ACer';
acer_med : med;



/* sterol lipids */
sterol : st | st_ester;
st : st_hg headgroup_separator fatty_acyl_chain;
st_ester : st_hg_ester headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain;
st_hg : 'ST' | 'BA' | 'FC' | 'CE' | 'SG' | 'ASG';
st_hg_ester : 'SE';



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
FRAGMENT_SEPARATOR : ' - ';

apostroph : '\'' | '′';
sorted_fa_separator : SLASH;
adduct_separator : SPACE;
unsorted_fa_separator : UNDERSCORE;
plasmalogen_separator : DASH;
headgroup_separator : SPACE;
carbon_db_separator : COLON;
cycle_separator: DASH;
db_funcgroup_separator : SEMICOLON;
db_position_separator : COMMA;
funcgroup_separator : SEMICOLON;
func_repetition_separator : COMMA;
round_open_bracket : ROB;
round_close_bracket : RCB;

number :  digit;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;


