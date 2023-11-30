/*
 * MIT License
 * 
 * Copyright (c) the authors (listed in global LICENSE file)
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

grammar Goslin;


/* first rule is always start rule */
lipid : lipid_eof EOF;
lipid_eof : lipid_rule | lipid_rule adduct_info;
lipid_rule: lipid_pure | lipid_pure isotope;
lipid_pure : gl | pl | sl | sterol | mediatorc | saccharolipid;
isotope: SPACE round_open_bracket isotope_pair round_close_bracket | round_open_bracket isotope_pair round_close_bracket | DASH round_open_bracket isotope_pair round_close_bracket | DASH isotope_pair | SPACE isotope_pair | isotope_pair;
isotope_pair: isotope_element isotope_number;
isotope_number: number;
isotope_element: 'd' | 'D';


/* adduct information */
adduct_info : adduct_sep | adduct_separator adduct_sep;
adduct_sep : '[M' adduct ']' charge_sign | '[M' adduct ']' charge charge_sign;
adduct : adduct_set;
adduct_set : adduct_element | adduct_element adduct_set;
adduct_element : element | element number | number element | plus_minus element | plus_minus element number | plus_minus number element;

fa2 : fa2_unsorted | fa2_sorted;
fa2_unsorted: fa unsorted_fa_separator fa;
fa2_sorted: fa sorted_fa_separator fa;
fa3 : fa3_unsorted | fa3_sorted;
fa3_unsorted: fa unsorted_fa_separator fa unsorted_fa_separator fa;
fa3_sorted: fa sorted_fa_separator fa sorted_fa_separator fa;
fa4 : fa4_unsorted | fa4_sorted;
fa4_unsorted: fa unsorted_fa_separator fa unsorted_fa_separator fa unsorted_fa_separator fa;
fa4_sorted: fa sorted_fa_separator fa sorted_fa_separator fa sorted_fa_separator fa;

/* glycerolipid rules (7 classes) */
gl : sqml | mgl | dgl | sgl | tgl;
sqml : hg_sqml_full headgroup_separator fa;
mgl : hg_mgl_full headgroup_separator fa;
dgl : hg_dgl_full headgroup_separator gl_species | hg_dgl_full headgroup_separator dgl_subspecies;
sgl : hg_sgl_full headgroup_separator gl_species | hg_sgl_full headgroup_separator dgl_subspecies;
tgl : hg_tgl_full headgroup_separator gl_species | hg_tgl_full headgroup_separator tgl_subspecies;
gl_species : fa;
dgl_subspecies : fa2;
tgl_subspecies : fa3;

hg_sqml_full : hg_sqml | hg_mgl heavy_hg;
hg_mgl_full : hg_mgl | hg_mgl heavy_hg;
hg_dgl_full : hg_dgl | hg_dgl heavy_hg;
hg_sgl_full : hg_sgl | hg_sgl heavy_hg;
hg_tgl_full : hg_tgl | hg_tgl heavy_hg;

hg_sqml : 'SQMG';
hg_mgl : 'MAG' | 'MG';
hg_dgl : 'DAG' | 'DG';
hg_sgl : 'MGDG' | 'DGDG' | 'SQDG';
hg_tgl : 'TAG' | 'TG';



/* phospholipid rules (56 classes) */
pl : lpl | dpl | tpl | cl | mlcl | dlcl;
lpl : hg_lplc headgroup_separator fa;
dpl : hg_plc headgroup_separator pl_species | hg_plc headgroup_separator pl_subspecies;
tpl : hg_tplc headgroup_separator pl_species | hg_tplc headgroup_separator tpl_subspecies;
dlcl : hg_dlclc headgroup_separator pl_species | hg_dlclc headgroup_separator dlcl_subspecies;
mlcl : hg_mlclc headgroup_separator pl_species | hg_mlclc headgroup_separator mlcl_subspecies;
cl : hg_clc headgroup_separator pl_species | hg_clc headgroup_separator cl_subspecies;

pl_species : fa;
pl_subspecies : fa2;
tpl_subspecies : fa3;
dlcl_subspecies : fa2;
mlcl_subspecies : fa3;
cl_subspecies : fa4;

heavy_hg : heavy;


hg_clc : hg_cl | hg_cl heavy_hg;
hg_cl : 'CL' | 'SLBPA' | 'MLCL' | 'BMP';
hg_mlclc : hg_mlcl | hg_mlcl heavy_hg | hg_mlcl plasmalogen_hg | hg_mlcl heavy_hg plasmalogen_hg;
hg_mlcl : 'MLCL';
hg_dlclc : hg_dlcl | hg_dlcl heavy_hg | hg_dlcl plasmalogen_hg | hg_dlcl heavy_hg plasmalogen_hg;
hg_dlcl : 'DLCL';
hg_plc : hg_pl | hg_pl heavy_hg | hg_pl plasmalogen_hg | hg_pl heavy_hg plasmalogen_hg;
hg_pl : 'BMP' | 'CDP-DAG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | hg_pip | 'PS' | 'LBPA' | 'PGP' | 'PPA' | 'Glc-GP' | '6-Ac-Glc-GP' | hg_pim | 'PnC' | 'PnE' | 'PT' | 'PE-NMe2' | 'PE-NMe' | 'PIMIP' | 'CDPDAG';
hg_pim : 'PIM' hg_pim_number;
hg_pim_number : number;
hg_pip : hg_pip_pure | hg_pip_pure hg_pip_m | hg_pip_pure hg_pip_d | hg_pip_pure hg_pip_t;
hg_pip_pure : 'PIP';
hg_pip_m : '[3\']' | '[4\']' | '[5\']';
hg_pip_d : '2' | '2[3\',4\']' | '2[4\',5\']' | '2[3\',5\']';
hg_pip_t : '3' | '3[3\',4\',5\']';
hg_tplc : hg_tpl | hg_tpl heavy_hg;
hg_tpl : slbpa | 'NAPE';
slbpa : 'SLBPA';
hg_lplc : hg_lpl | hg_lpl heavy_hg | hg_lpl plasmalogen_hg | hg_lpl heavy_hg plasmalogen_hg;
hg_lpl : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 'LPS' | hg_lpim | 'CPA' | 'LCDPDAG' | 'LDMPE' | 'LMMPE' | 'LPIMIP' | 'LPIN';
hg_lpim : 'LPIM' hg_lpim_number;
hg_lpim_number : number;

plasmalogen_hg : plasmalogen_separator plasmalogen plasmalogen_separator | plasmalogen_separator plasmalogen | plasmalogen plasmalogen_separator;
plasmalogen : 'O' | 'o' | 'P' | 'p';


/* sphingolipid rules (21) */
sl : lsl | dsl | so_lsl;
lsl : hg_lslc headgroup_separator lcb;
so_lsl : hg_so_lslc headgroup_separator fa;
dsl : hg_dslc headgroup_separator sl_species | hg_dslc headgroup_separator sl_subspecies;

sl_species : lcb;
sl_subspecies : lcb sorted_fa_separator fa;

hg_lslc : hg_lsl | hg_lsl heavy_hg;
hg_lsl : 'LCB' | 'LCBP' | 'LHexCer' | 'LHex2Cer' | 'LHex3Cer' | 'LSM' | 'LIPC' | 'So' | 'Sa' | 'SPH' | 'Sph' | 'S1P' | 'SPH-P' | 'SIP' | 'Sa1P' | 'SPA1P' | 'SPA' | 'SPB' | 'SPBP';
hg_so_lslc : hg_so_lsl | hg_so_lsl heavy_hg;
hg_so_lsl : 'So' | 'Sa' | 'Sa1P' | 'S1P';
hg_dslc : hg_dsl | hg_dsl heavy_hg;
hg_dsl : 'Cer' | 'CerP' | 'EPC' | 'HexCer' | 'Hex2Cer' | 'Hex3Cer' | 'IPC' | 'MIP2C' | 'M(IP)2C' | 'MIPC' | 'SHexCer' | 'SM' | 'FMC-5' | 'FMC-6' | 'CerPE' | 'PE-Cer' | 'PI-Cer' | glyco_sphingo_lipid;
 glyco_sphingo_lipid : 'GA1' | 'Ga1' | 'GA2' | 'Ga2' |
 'GB3' | 'Gb3' | 'GB4' | 'Gb4' |
 'GD1' | 'Gd1' | 'GD2' | 'Gd2' | 'GD3' | 'Gd3' |
 'GM1' | 'Gm1' | 'GM2' | 'Gm2' | 'GM3' | 'Gm3' | 'GM4' | 'Gm4' |
 'GP1' | 'Gp1' |
 'GQ1' | 'Gq1' |
 'GT1' | 'Gt1' | 'GT2' | 'Gt2' | 'GT3' | 'Gt3';





/* sterol lipids (2 classes) */
sterol : stc | ste | stes;
stc : st | st heavy_hg;
st : 'Ch' | 'Cholesterol' | 'ST 27:1;1' | 'ST 27:2;1' | 'ST 28:3;1' | 'ST 30:2;1' | 'ST 29:2;1' | 'ST 28:2;1' | 'Desmosterol' | 'Stigmasterol' | 'Ergosterol' | 'Lanosterol' | 'Ergostadienol' | 'Campesterol' | 'Sitosterol' | 'Chol';
ste : hg_stc sorted_fa_separator fa | hg_stc unsorted_fa_separator fa;
stes : hg_stcs headgroup_separator fa;
hg_stc : hg_ste | hg_ste heavy_hg;
hg_ste : 'SE 27:1' | 'SE 27:2' | 'SE 28:3' | 'SE 30:2' | 'SE 29:2' | 'SE 28:2';
hg_stcs : hg_stes | hg_stes heavy_hg;
hg_stes : 'ChE' | 'CE' | 'ChoE' | 'CholE';


/* mediator lipids (1 class) */
mediatorc : mediator_iso | mediator_iso heavy_hg;
mediator_iso : mediator | med_iso mediator;
mediator : unstructured_mediator | trivial_mediator | mediator_functional_group mediator_fa | mediator_functional_group mediator_fa mediator_suffix | mediator_functional_group trivial_mediator;
med_iso : med_iso_positions med_iso_suffix | med_iso_positions med_iso_suffix '-' | med_iso_positions '-' med_iso_suffix | med_iso_positions '-' med_iso_suffix '-';
med_iso_suffix : 'iso';
med_iso_positions : number | number ',' med_iso_positions;
mediator_fa : mediator_carbon mediator_db;
mediator_carbon : 'H' | 'O' | 'E' | 'Do';
mediator_db : 'M' | 'D' | 'Tr' | 'T' | 'P' | 'H';
mediator_suffix: 'E';
mediator_functional_group : mediator_functional_group_clear | mediator_functional_group_clear '-' | mediator_tetranor mediator_functional_group_clear | mediator_tetranor mediator_functional_group_clear '-';
mediator_tetranor : 'tetranor-' | 'Tetranor-';
mediator_functional_group_clear: mediator_full_function | mediator_function_unknown_pos;
mediator_function_unknown_pos : mediator_functions;
mediator_functions : mediator_mono_functions | mediator_di_functions;
mediator_mono_functions: 'H' | 'Oxo' | 'oxo' | 'OXO' | 'Hp' | 'HP' | 'NO2';
mediator_di_functions: 'E' | 'Ep' | 'EP' | 'DH' | 'DiH' | 'diH';
mediator_full_function : mediator_position_group '-' mediator_mono_functions | mediator_di_pos '-' mediator_di_functions;
mediator_di_pos: mediator_position_group ',' mediator_position_group | mediator_position_group '_' mediator_position_group | mediator_position_group '(' mediator_position_group ')';
mediator_position_group : mediator_position | mediator_position mediator_position_isotope | mediator_position '(' mediator_position_isotope ')';
mediator_position : number;
mediator_position_isotope : 'S' | 'R';

trivial_mediator : 'AA' | 'LA' | 'ALA' | 'DHA' | 'EPA' | 'Linoleic acid' | 'Arachidonic acid' | 'TXB1' | 'TXB2' | 'TXB3' | 'Resolvin D1' | 'Resolvin D2' | 'Resolvin D3' | 'Resolvin D5' | 'LTB4' | 'Mar1' | 'Maresin 1' | 'Palmitic acid' | 'PDX' | 'PGB2' | 'PGD2' | 'PGE2' | 'PGF2alpha' | 'PGF1alpha' | 'OA' | 'Oleic acid' | 'iPF2alpha-VI';

unstructured_mediator : 'alpha-LA' | 'LTC4' | 'LTD4' | 'PGI2';



/* saccharolipids rules (3 classes) */
saccharolipid : sac_di | sac_f;
sac_di : hg_sac_di_c headgroup_separator sac_species | hg_sac_di_c headgroup_separator sac_di_subspecies;
hg_sac_di_c : hg_sac_di | hg_sac_di heavy_hg;
hg_sac_di : 'DAT' | 'AC2SGL';
sac_f : hg_sac_f_c headgroup_separator sac_species | hg_sac_f_c headgroup_separator sac_f_subspecies;
hg_sac_f_c : hg_sac_f | hg_sac_f heavy_hg;
hg_sac_f : 'PAT16' | 'PAT18';

sac_species : fa;
sac_di_subspecies : fa2;
sac_f_subspecies : fa4;



/* generic rules */
fa : fa_ester | fa_ether;
fa_ester : fa_pure | fa_pure heavy_fa;
fa_ether : plasmalogen_hg fa_pure | plasmalogen_hg fa_pure ether | fa_pure ether | plasmalogen_hg fa_pure heavy_fa | plasmalogen_hg fa_pure ether heavy_fa | fa_pure ether heavy_fa;
heavy_fa : heavy;
fa_pure : carbon carbon_db_separator db | carbon carbon_db_separator db db_hydroxyl_separator hydroxyl;
ether : 'a' | 'p';
lcb : lcb_pure | lcb_pure heavy_lcb;
heavy_lcb : heavy;
lcb_pure : carbon carbon_db_separator db db_hydroxyl_separator hydroxyl | old_hydroxyl carbon carbon_db_separator db | old_hydroxyl DASH carbon carbon_db_separator db;
carbon : number;
db : db_count | db_count db_positions;
db_count : number;
db_positions : ROB db_position RCB;
db_position : db_single_position | db_position db_position_separator db_position;
db_single_position : db_position_number | db_position_number cistrans;
db_position_number : number;
cistrans : 'E' | 'Z';

hydroxyl : number;
old_hydroxyl : 'd' | 't';
number :  digit | digit number;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';


heavy : '(+' adduct_heavy ')';
adduct_heavy : adduct_heavy_component | adduct_heavy adduct_heavy;
adduct_heavy_component : adduct_heavy_element adduct_heavy_number | adduct_heavy_element;
adduct_heavy_element: '[2]H' | '[13]C' | '[15]N' | '[17]O' | '[18]O' | '[32]P' | '[33]S' | '[34]S';
adduct_heavy_number : number;


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
FRAGMENT_SEPARATOR : ' - ';

adduct_separator : SPACE;
sorted_fa_separator : SLASH | BACKSLASH | SPACE SLASH SPACE | SPACE BACKSLASH SPACE;
unsorted_fa_separator : DASH | UNDERSCORE | SPACE DASH SPACE | SPACE UNDERSCORE SPACE;
plasmalogen_separator : headgroup_separator | DASH | DASH SPACE;
headgroup_separator : SPACE;
carbon_db_separator : COLON;
db_hydroxyl_separator : SEMICOLON;
db_position_separator : COMMA;
round_open_bracket : ROB;
round_close_bracket : RCB;

element: 'C' | 'H' | 'N' | 'O' | 'P' | 'S' | 'Br' | 'I' | 'F' | 'Cl' | 'As';
charge : '1' | '2' | '3' | '4';
charge_sign : plus_minus;
plus_minus : '-' | '+';
