/*
 * MIT License
 * 
 * Copyright (c) 2020 Dominik Kopczynski   -   dominik.kopczynski {at} isas.de
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



grammar SwissLipids;


/* first rule is always start rule */
lipid : lipid_pure EOF;
lipid_pure : fatty_acid | gl | pl | sl | st;




/* fatty acyl rules */
fa : fa_core | fa_lcb_prefix fa_core | fa_core fa_lcb_suffix | fa_lcb_prefix fa_core fa_lcb_suffix;
fa_core : carbon carbon_db_separator db | ether carbon carbon_db_separator db;

lcb : lcb_core | fa_lcb_prefix lcb_core | lcb_core fa_lcb_suffix | fa_lcb_prefix lcb_core fa_lcb_suffix;
lcb_core : hydroxyl carbon carbon_db_separator db;

carbon : number;
db : db_count | db_count db_positions;
db_count : number;
db_positions : ROB db_position RCB;
db_position : db_single_position | db_position db_position_separator db_position;
db_single_position : db_position_number | db_position_number cistrans;
db_position_number : number;
cistrans : 'E' | 'Z';
ether : 'O-' | 'P-';
hydroxyl : 'm' | 'd' | 't';
fa_lcb_suffix : fa_lcb_suffix_core | fa_lcb_suffix_separator fa_lcb_suffix_core | ROB fa_lcb_suffix_core RCB;
fa_lcb_suffix_core : fa_lcb_suffix_number fa_lcb_suffix_type | fa_lcb_suffix_number fa_lcb_suffix_separator fa_lcb_suffix_type;
fa_lcb_suffix_type : 'OH' | 'me';
fa_lcb_suffix_number : number;
fa_lcb_prefix : fa_lcb_prefix_type | fa_lcb_prefix_type fa_lcb_prefix_separator;
fa_lcb_prefix_type : 'iso';

/* different fatty acyl types */
fa_species : fa;

fa2 : fa2_sorted | fa2_unsorted;
fa2_sorted : fa sorted_fa_separator fa;
fa2_unsorted : fa unsorted_fa_separator fa;

fa3 : fa3_sorted | fa3_unsorted;
fa3_sorted : fa sorted_fa_separator fa sorted_fa_separator fa;
fa3_unsorted : fa unsorted_fa_separator fa unsorted_fa_separator fa;

fa4 : fa4_sorted | fa4_unsorted;
fa4_sorted : fa sorted_fa_separator fa sorted_fa_separator fa sorted_fa_separator fa;
fa4_unsorted : fa unsorted_fa_separator fa unsorted_fa_separator fa unsorted_fa_separator fa;





/* fatty acid rules */
fatty_acid : fa_hg fa_fa | fa_hg headgroup_separator fa_fa | mediator;
fa_hg : 'FA' | 'fatty acid' | 'fatty alcohol' | 'NAE' | 'GP-NAE';
fa_fa : ROB fa RCB;







/* mediator rules */
mediator : mediator_single | mediator_single headgroup_separator med_positions;
mediator_single : mediator_single mediator_single | mediator_single '-' mediator_single | db_positions | med_positions | 'KETE' | 'keto' | 'oxo' | 'Hp' | 'EPE' | 'ETE' | 'ODE' | 'EPT' | 'H' | 'LXA4' | 'hydroxy' | 'Di' | 'RvE1' | 'glyceryl' | 'EpETrE' | 'DHE' | 'ETrE' | 'DHA' | 'DoHA' | 'LTB4' | 'PGE2' | ' PGE2' | 'PGF2alpha' | 'trihydroxy' | 'TriH' | 'OTrE' | 'dihydroxy' | 'Ep' | 'LXB4' | 'Tri' | 'PAHSA' | 'MUFA' | 'GPGP' | 'GPIP' | 'PGE1' | 'PGG2' | 'SFA' | 'PUFA' | 'PGI2' | 'TXA2' | 'CoA' | 'FAOH' | 'EA' | 'beta' | 'PGH2' | 'LTD4' | 'kete' | 'DPE' | ' PGD2' | 'PGD2' | 'PGF2' | 'LTC4' | 'LTA4' | 'PGD1' | 'PGA1' | 'LTDE4' | 'epoxyoleate' | 'epoxystearate' | 'carboxy' | 'PGH1' | 'EtrE' | 'HXA3' | 'HxA3' | 'HXA3-C';



med_positions : med_position | ROB med_position RCB;
med_position : med_position med_position_separator med_position | number med_suffix | number;
med_suffix : 'S' | 'R';







/* glycerolipid rules */
gl : gl_regular | gl_mono | gl_molecular;

gl_regular : gl_hg gl_fa | gl_hg headgroup_separator gl_fa;
gl_fa : ROB fa_species RCB | ROB fa3 RCB;
gl_hg : 'MG' | 'DG' | 'TG' |  'MAG' | 'DAG' | 'TAG';

gl_molecular : gl_molecular_hg gl_molecular_fa | gl_molecular_hg headgroup_separator gl_molecular_fa;
gl_molecular_fa : ROB fa2 RCB;
gl_molecular_hg : 'DG' | 'DAG';


gl_mono : gl_mono_hg gl_mono_fa | gl_mono_hg headgroup_separator gl_mono_fa;
gl_mono_fa : ROB fa_species RCB | ROB fa2 RCB;
gl_mono_hg : 'MHDG' | 'DHDG' | 'MGDG' | 'DGDG';







/* phospholipid rules */
pl : pl_regular | pl_three | pl_four;

pl_regular : pl_hg pl_fa | pl_hg headgroup_separator pl_fa;
pl_fa : ROB fa_species RCB | ROB fa2 RCB;
pl_hg : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 'LPS' | 'PA' | 'PC' | 'PE' | 'PG' | 'PI' | 'PS' | 'PGP' | 'PIP' | 'PIP[3]' | 'PIP[4]' | 'PIP[5]' | 'PIP2' | 'PIP2[3,4]' | 'PIP2[3,5]' | 'PIP2[4,5]' | 'PIP3' | 'PIP3[3,4,5]' | 'CDP-DAG';

pl_three : pl_three_hg pl_three_fa | pl_three_hg headgroup_separator pl_three_fa;
pl_three_fa : ROB fa_species RCB | ROB fa3 RCB;
pl_three_hg : 'NAPE';

pl_four : pl_four_hg pl_four_fa | pl_four_hg headgroup_separator pl_four_fa;
pl_four_fa : ROB fa_species RCB | ROB fa2 RCB | ROB fa4 RCB;
pl_four_hg : 'BMP' | 'LBPA' | 'Lysobisphosphatidate' | 'CL' | 'MLCL' | 'DLCL';




/* sphingolipid rules */
sl : sl_hg sl_lcb | sl_hg headgroup_separator sl_lcb;
sl_hg : sl_hg_names | sl_hg_prefix sl_hg_names | sl_hg_names sl_hg_suffix | sl_hg_prefix sl_hg_names sl_hg_suffix;
sl_hg_names : 'HexCer' | 'Hex2Cer' | 'SM' | 'PE-Cer' | 'Cer' | 'CerP' | 'Gb3' | 'GA2' | 'GA1' | 'GM3' | 'GM2' | 'GM1' | 'GD3' | 'GT3' | 'GD1' | 'GT1' | 'GQ1' | 'GM4' | 'GD2' | 'GT2' | 'GP1' | 'GD1a' | 'GM1b' | 'GT1b' | 'GQ1b' | 'GT1a' | 'GQ1c' | 'GP1c' | 'GD1c' | 'GD1b' | 'GT1c' | 'IPC' | 'MIPC' | 'M(IP)2C' | 'Gb3Cer' | 'Gb4Cer' | 'Forssman'  | 'MSGG' | 'DSGG' | 'NOR1' | 'NORint' | 'NOR2' | 'Globo-H' | 'Globo-A' | 'SB1a' | 'SM1b' | 'SM1a' | 'Branched-Forssman' | 'Globo-B' | 'Para-Forssman' | 'Globo-Lex-9';

sl_hg_prefix : sl_hg_prefix '-' | sl_hg_prefix sl_hg_prefix | ROB sl_hg_prefix RCB | 'Glc' | 'NAc' | 'Gal' | 'Fuc' | 'SO3' | 'NeuGc' | 'i' | 'NeuAc' | 'Lac' | 'Lex' | '(3\'-sulfo)' | 'Ac-O-9' | '(alpha2-8)' | '(alpha2-6)' | 'NeuAc' | 'Sulfo';
sl_hg_suffix : sl_hg_suffix sl_hg_suffix | sl_hg_suffix '/' | ROB sl_hg_suffix RCB | 'NeuAc' | 'NeuGc' | ' alpha';

sl_lcb : sl_lcb_species | sl_lcb_subspecies;
sl_lcb_species : ROB lcb RCB;
sl_lcb_subspecies : ROB lcb sorted_fa_separator fa RCB;




/* sterol rules */
st : st_species | st_sub1 | st_sub2;

st_species : st_species_hg st_species_fa | st_species_hg headgroup_separator st_species_fa;
st_species_hg : 'SE';
st_species_fa : ROB fa_species RCB;

st_sub1 : st_sub1_hg st_sub1_fa | st_sub1_hg headgroup_separator st_sub1_fa;
st_sub1_hg : 'CE';
st_sub1_fa : ROB fa RCB;

st_sub2 : st_sub2_hg sorted_fa_separator fa RCB;
st_sub2_hg : 'SE' ROB number COLON number;






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

unsorted_fa_separator : UNDERSCORE;
sorted_fa_separator : SLASH;
headgroup_separator : SPACE;
carbon_db_separator : COLON;
db_position_separator : COMMA;
med_position_separator : COMMA;
fa_lcb_suffix_separator : DASH;
fa_lcb_prefix_separator : DASH;

number :  digit;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;
