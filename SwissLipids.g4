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



grammar SwissLipids;


/* first rule is always start rule */
lipid : lipid_pure EOF;
lipid_pure : fatty_acid | gl | pl | sl | cholesterol | saccharolipid;




/* fatty acyl rules */
fa : carbon carbon_db_separator db | ether carbon carbon_db_separator db;
lcb : hydroxyl carbon carbon_db_separator db;
carbon : number;
db : number;
ether : 'O-' | 'P-';
hydroxyl : 'm' | 'd' | 't';
fa2 : fa sorted_fa_separator fa;
fa3 : fa sorted_fa_separator fa sorted_fa_separator fa;
fa4 : fa sorted_fa_separator fa sorted_fa_separator fa sorted_fa_separator fa;



/* fatty acid rules */
fatty_acid : hg_fa fa_species;
hg_fa : 'FA' | 'fatty acid' headgroup_separator | 'fatty alcohol' headgroup_separator;
fa_species : ROB fa RCB;



/* glycerolipid rules (7 classes) */
gl : gl_hg gl_fa;
gl_fa : ROB fa_species RCB | ROB fa3 RCB;
gl_hg : 'MG' | 'DG' | 'TG';





/* phospholipid rules */

pl : pl_hg pl_fa;



pl_hg : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 




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
hg_pl : 'BMP' | 'CDP-DAG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | hg_pip | 'PS' | 'LBPA' | 'PGP' | 'PPA' | 'Glc-GP' | '6-Ac-Glc-GP' | hg_pim | 'PnC' | 'PnE' | 'PT' | 'PE-NMe2' | 'PE-NMe' | 'PIMIP';
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
hg_dsl : 'Cer' | 'CerP' | 'EPC' | 'GB4' | 'GD3' | 'GM3' | 'GM4' | 'Hex3Cer' | 'Hex2Cer' | 'HexCer' | 'IPC' | 'M(IP)2C' | 'MIPC' | 'SHexCer' | 'SM' | 'FMC-5' | 'FMC-6' ;





/* cholesterol lipids (2 classes) */
cholesterol : chc | che;
chc : ch | ch heavy_hg;
ch : 'Ch' | 'Cholesterol';
che : hg_chec headgroup_separator fa;
hg_chec : hg_che | hg_che heavy_hg;
hg_che : 'ChE' | 'CE';


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
number :  digit;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;

character : 'a' | 'b' | 'c' | 'd' | 'e' | 'f' | 'g' | 'h' | 'i' | 'j' | 'k' | 'l' | 'm' | 'n' | 'o' | 'p' | 'q' | 'r' | 's' | 't' | 'u' | 'v' | 'w' | 'x' | 'y' | 'z' | 'A' | 'B' | 'C' | 'D' | 'E' | 'F' | 'G' | 'H' | 'I' | 'J' | 'K' | 'L' | 'M' | 'N' | 'O' | 'P' | 'Q' | 'R' | 'S' | 'T' | 'U' | 'V' | 'W' | 'X' | 'Y' | 'Z' |'0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';
charge : '1' | '2' | '3' | '4';
charge_sign : '-' | '+';

