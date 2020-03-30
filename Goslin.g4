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
 * J.K. Pauling et al. 2017, PLoS One, 12(11):e0188394.
 */

grammar Goslin;


/* first rule is always start rule */
lipid : lipid_eof EOF;
lipid_eof : lipid_pure | lipid_pure adduct_info;
lipid_pure : gl | pl | sl | sterol | mediatorc | saccharolipid;


/* adduct information */
adduct_info : '[M' adduct ']' charge charge_sign | adduct_separator '[M' adduct ']' charge charge_sign;
adduct : '+H' | '+2H' | '+NH4' | '-H' | '-2H' | '+HCOO' | '+CH3COO' | charge_sign arbitrary_adduct;
arbitrary_adduct : adduct4 | adduct4 adduct4;
adduct4 : adduct2 | adduct2 adduct2;
adduct2 : character | character character;

fa2 : fa2_unsorted | fa2_sorted;
fa2_unsorted: fa DASH fa | fa UNDERSCORE fa;
fa2_sorted: fa SLASH fa | fa BACKSLASH fa;
fa3 : fa3_unsorted | fa3_sorted;
fa3_unsorted: fa DASH fa DASH fa | fa UNDERSCORE fa UNDERSCORE fa;
fa3_sorted: fa SLASH fa SLASH fa | fa BACKSLASH fa BACKSLASH fa;
fa4 : fa4_unsorted | fa4_sorted;
fa4_unsorted: fa DASH fa DASH fa DASH fa | fa UNDERSCORE fa UNDERSCORE fa UNDERSCORE fa;
fa4_sorted: fa SLASH fa SLASH fa SLASH fa | fa BACKSLASH fa BACKSLASH fa BACKSLASH fa;

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
hg_mgl : 'MAG';
hg_dgl : 'DAG';
hg_sgl : 'MGDG' | 'DGDG' | 'SQDG';
hg_tgl : 'TAG';



/* phospholipid rules (56 classes) */
pl : lpl | dpl | tpl | pl_o | cl | mlcl | dlcl;
pl_o : lpl_o | dpl_o;
lpl : hg_lplc headgroup_separator fa;
lpl_o : hg_lpl_oc plasmalogen_separator fa;
dpl : hg_plc headgroup_separator pl_species | hg_plc headgroup_separator pl_subspecies;
tpl : hg_tplc headgroup_separator pl_species | hg_tplc headgroup_separator tpl_subspecies;
dpl_o : hg_pl_oc plasmalogen_separator pl_species | hg_pl_oc plasmalogen_separator pl_subspecies;
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
hg_cl : 'CL';
hg_mlclc : hg_mlcl | hg_mlcl heavy_hg;
hg_mlcl : 'MLCL';
hg_dlclc : hg_dlcl | hg_dlcl heavy_hg;
hg_dlcl : 'DLCL';
hg_plc : hg_pl | hg_pl heavy_hg;
hg_pl : 'BMP' | 'CDP-DAG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | hg_pip | 'PS' | 'LBPA' | 'PGP' | 'PPA' | 'Glc-GP' | '6-Ac-Glc-GP' | hg_pim | 'PnC' | 'PnE' | 'PT' | 'PE-NMe2' | 'PE-NMe' | 'PIMIP' | 'CDPDAG';
hg_pim : 'PIM' hg_pim_number;
hg_pim_number : number;
hg_pip : hg_pip_pure | hg_pip_pure hg_pip_m | hg_pip_pure hg_pip_d | hg_pip_pure hg_pip_t;
hg_pip_pure : 'PIP';
hg_pip_m : '[3\']' | '[4\']' | '[5\']';
hg_pip_d : '2' | '2[3\',4\']' | '2[4\',5\']' | '2[3\',5\']';
hg_pip_t : '3' | '3[3\',4\',5\']';
hg_tplc : hg_tpl | hg_tpl heavy_hg;
hg_tpl : 'SLBPA' | 'NAPE';
hg_lplc : hg_lpl | hg_lpl heavy_hg;
hg_lpl : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 'LPS' | hg_lpim | 'CPA' | 'LCDPDAG' | 'LDMPE' | 'LMMPE' | 'LPIMIP' | 'LPIN';
hg_lpim : 'LPIM' hg_lpim_number;
hg_lpim_number : number;
hg_lpl_oc : hg_lpl_o ' O' | hg_lpl_o heavy_hg ' O';
hg_lpl_o : 'LPC' | 'LPE';
hg_pl_oc : hg_pl_o ' O' | hg_pl_o heavy_hg ' O';
hg_pl_o : 'PA' | 'PC' | 'PE' | 'PG' | 'PI' | 'PS';



/* sphingolipid rules (21) */
sl : lsl | dsl;
lsl : hg_lslc headgroup_separator lcb;
dsl : hg_dslc headgroup_separator sl_species | hg_dslc headgroup_separator sl_subspecies;

sl_species : lcb;
sl_subspecies : lcb sorted_fa_separator fa;

hg_lslc : hg_lsl | hg_lsl heavy_hg;
hg_lsl : 'LCB' | 'LCBP' | 'LHexCer' | 'LSM';
hg_dslc : hg_dsl | hg_dsl heavy_hg;
hg_dsl : 'Cer' | 'CerP' | 'EPC' | 'GB4' | 'GD3' | 'GB3' | 'GM3' | 'GM4' | 'Hex3Cer' | 'Hex2Cer' | 'HexCer' | 'IPC' | 'M(IP)2C' | 'MIPC' | 'SHexCer' | 'SM' | 'FMC-5' | 'FMC-6' ;





/* sterol lipids (2 classes) */
sterol : stc | ste | stes;
stc : st | st heavy_hg;
st : 'Ch' | 'Cholesterol' | 'ST 27:1;1' | 'ST 27:2;1' | 'ST 28:3;1' | 'ST 30:2;1' | 'ST 29:2;1' | 'ST 28:2;1';
ste : hg_stc sorted_fa_separator fa;
stes : hg_stcs headgroup_separator fa;
hg_stc : hg_ste | hg_ste heavy_hg;
hg_ste : 'SE 27:1' | 'SE 27:2' | 'SE 28:3' | 'SE 30:2' | 'SE 29:2' | 'SE 28:2';
hg_stcs : hg_stes | hg_stes heavy_hg;
hg_stes : 'ChE' | 'CE';


/* mediator lipids (1 class) */
mediatorc : mediator | mediator heavy_hg;
mediator : '10-HDoHE' | '11-HDoHE' | '11-HETE' | '11,12-DHET' | '11(12)-EET'| '12-HEPE' | '12-HETE' | '12-HHTrE' | '12-OxoETE' | '12(13)-EpOME' | '13-HODE' | '13-HOTrE' | '14,15-DHET' | '14(15)-EET' | '14(15)-EpETE' | '15-HEPE' | '15-HETE' | '15d-PGJ2' | '16-HDoHE' | '16-HETE' | '18-HEPE' | '5-HEPE' | '5-HETE' | '5-HpETE' | '5-OxoETE' | '5,12-DiHETE' | '5,6-DiHETE' | '5,6,15-LXA4' | '5(6)-EET' | '8-HDoHE' | '8-HETE' | '8,9-DHET' | '8(9)-EET' | '9-HEPE' | '9-HETE' | '9-HODE' | '9-HOTrE' | '9(10)-EpOME' | 'AA' | 'alpha-LA' | 'DHA' | 'EPA' | 'Linoleic acid' | 'LTB4' | 'LTC4' | 'LTD4' | 'Maresin 1' | 'Palmitic acid' | 'PGB2' | 'PGD2' | 'PGE2' | 'PGF2alpha' | 'PGI2' | 'Resolvin D1' | 'Resolvin D2' | 'Resolvin D3' | 'Resolvin D5' | 'tetranor-12-HETE' | 'TXB1' | 'TXB2' | 'TXB3';




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
fa : fa_pure | fa_pure heavy_fa | fa_pure ether | fa_pure ether heavy_fa;
heavy_fa : heavy;
fa_pure : carbon carbon_db_separator db | carbon carbon_db_separator db db_hydroxyl_separator hydroxyl;
ether : 'a' | 'p';
lcb : lcb_pure | lcb_pure heavy_lcb;
heavy_lcb : heavy;
lcb_pure : carbon carbon_db_separator db db_hydroxyl_separator hydroxyl | old_hydroxyl carbon carbon_db_separator db;
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
number :  digit;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;





heavy : '(+' isotopes  ')';
isotopes : isotopes isotopes | isotope;
isotope : '[' isotope_number ']' isotope_element isotope_count | '[' isotope_number ']' isotope_element;
isotope_number : number;
isotope_element : element;
isotope_count : number;
element : 'C' | 'H' | 'O' | 'N' | 'P' | 'S';

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

sorted_fa_separator : SLASH | BACKSLASH;
adduct_separator : SPACE;
unsorted_fa_separator : DASH | UNDERSCORE;
plasmalogen_separator : headgroup_separator | DASH;
headgroup_separator : SPACE;
carbon_db_separator : COLON;
db_hydroxyl_separator : SEMICOLON;
db_position_separator : COMMA;
round_open_bracket : ROB;
round_close_bracket : RCB;

character : 'a' | 'b' | 'c' | 'd' | 'e' | 'f' | 'g' | 'h' | 'i' | 'j' | 'k' | 'l' | 'm' | 'n' | 'o' | 'p' | 'q' | 'r' | 's' | 't' | 'u' | 'v' | 'w' | 'x' | 'y' | 'z' | 'A' | 'B' | 'C' | 'D' | 'E' | 'F' | 'G' | 'H' | 'I' | 'J' | 'K' | 'L' | 'M' | 'N' | 'O' | 'P' | 'Q' | 'R' | 'S' | 'T' | 'U' | 'V' | 'W' | 'X' | 'Y' | 'Z' |'0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';
charge : '1' | '2' | '3' | '4';
charge_sign : '-' | '+';

