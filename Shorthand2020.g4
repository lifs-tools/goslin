/*
 * MIT License
 * 
 * Copyright (c) 2017 Dominik Kopczynski   -   dominik.kopczynski {at} isas.de
 *                    Bing Peng   -   bing.peng {at} isas.de
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
lipid_pure : gl | pl | sl | sterol | med | sac; /* glycero lipids, phospho lipids, sphingo lipids, sterol lipids, lipid mediators, saccharo lipids


/* adduct information */
adduct_info : '[M' adduct ']' charge charge_sign | adduct_separator '[M' adduct ']' charge charge_sign;
adduct : '+H' | '+2H' | '+NH4' | '-H' | '-2H' | '+HCOO' | '+CH3COO' | charge_sign arbitrary_adduct;
arbitrary_adduct : adduct4 | adduct4 adduct4;
adduct4 : adduct2 | adduct2 adduct2;
adduct2 : character | character character;



/* mediators */
med : med_species | med_subspecies;
med_species : med_hg_double fatty_acyl_chain;
med_subspecies : med_hg_single headgroup_separator fatty_acyl_chain | med_hg_double headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain | med_hg_triple headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain unsorted_fa_separator fatty_acyl_chain | med_hg_triple headgroup_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain sorted_fa_separator fatty_acyl_chain;
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
fa_pure_structure : carbon carbon_db_separator db | carbon carbon_db_separator db db_funcgroup_separator func_group | carbon carbon_db_separator db db_funcgroup_separator func_group_cycle | carbon carbon_db_separator db db_funcgroup_separator func_group_cycle db_funcgroup_separator func_group;
ether : ether_num ether_type | ether_type;
ether_num : 'm' | 'd' | 't' | 'q';
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
func_group_entity : func_group_entity funcgroup_separator func_group_entity | func_group_name | func_group_data | func_group_data_repetition;
func_group_data : func_group_pos func_group_ext_name | func_group_pos func_group_ext_name stereo | func_group_ext_name func_group_number | func_group_ext_name func_group_number stereo | func_group_placeholder;
func_group_data_repetition : func_group_data_repetition ',' func_group_data_repetition | func_group_data;
func_group_pos : number;
func_group_number : number;
stereo : SOB stereo_number stereo_type SCB | SOB stereo_type SCB;
stereo_number : number;
stereo_type : 'R' | 'S';
func_group_placeholder : 'O' | 'O' func_group_placeholder_number;
func_group_placeholder_number : number;
func_group_ext_name : round_open_bracket func_group_name round_close_bracket | func_group_name;
func_group_name : 'Et' | 'Me' | 'Br' | 'Cl' | 'F' | 'I' | 'NO2' | 'Ep' | 'OO' | 'OMe' | 'oxy' | 'NH2' | 'OOH' | 'SH' | 'OH' | 'oxo' | 'CN' | 'P' | 'S' | 'COOH' | 'G' | 'T';
func_group_cycle : SOB cycle_start '-' cycle_end 'cy' cycle_number ':' cycle_number_db SCB | SOB cycle_start '-' cycle_end 'cy' cycle_number ':' cycle_number_db ';' cycle_func_group_data SCB | SOB cycle_start '-' cycle_end 'cy' cycle_number ';' cycle_func_group_data SCB;
cycle_number : number;
cycle_start : number;
cycle_end : number;
cycle_func_group_data : func_group_entity;
cycle_number_db : cycle_number_db_cnt | cycle_number_db_cnt ROB cycle_number_db_positions RCB;
cycle_number_db_cnt : number;
cycle_number_db_positions : cycle_number_db_position;
cycle_number_db_position : cycle_number_db_position ',' cycle_number_db_position | number;


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

sorted_fa_separator : SLASH;
adduct_separator : SPACE;
unsorted_fa_separator : UNDERSCORE;
plasmalogen_separator : DASH;
headgroup_separator : SPACE;
carbon_db_separator : COLON;
db_funcgroup_separator : SEMICOLON;
db_position_separator : COMMA;
funcgroup_separator : SEMICOLON;
round_open_bracket : ROB;
round_close_bracket : RCB;

number :  digit;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;


