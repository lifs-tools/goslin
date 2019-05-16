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
lipid : lipid_rule EOF;
lipid_rule : lipid_pure | lipid_pure adduct_info;
lipid_pure : gl | pl | sl | cholesterol | mediatorc;


/* adduct information */
adduct_info : '[M' adduct ']' charge charge_sign | adduct_separator '[M' adduct ']' charge charge_sign;
adduct : '+H' | '+2H' | '+NH4' | '-H' | '-2H' | '+HCOO' | '+CH3COO' | adduct4 | adduct4 adduct4;
adduct4 : adduct2 | adduct2 adduct2;
adduct2 : character | character character;
character : 'a' | 'b' | 'c' | 'd' | 'e' | 'f' | 'g' | 'h' | 'i' | 'j' | 'k' | 'l' | 'm' | 'n' | 'o' | 'p' | 'q' | 'r' | 's' | 't' | 'u' | 'v' | 'w' | 'x' | 'y' | 'z' | 'A' | 'B' | 'C' | 'D' | 'E' | 'F' | 'G' | 'H' | 'I' | 'J' | 'K' | 'L' | 'M' | 'N' | 'O' | 'P' | 'Q' | 'R' | 'S' | 'T' | 'U' | 'V' | 'W' | 'X' | 'Y' | 'Z' |'0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | '+' | '-';
charge : '1' | '2' | '3' | '4';
charge_sign : '-' | '+';



/* glycerolipid rules */
gl : mgl | dgl | sgl | tgl;
mgl : hg_mgl headgroup_separator fa;
dgl : hg_dgl headgroup_separator fa unsorted_fa_separator fa | hg_dgl headgroup_separator fa sorted_fa_separator fa;
sgl : hg_sgl headgroup_separator fa unsorted_fa_separator fa | hg_sgl headgroup_separator fa sorted_fa_separator fa;
tgl : hg_tgl headgroup_separator fa unsorted_fa_separator fa unsorted_fa_separator fa | hg_tgl headgroup_separator fa sorted_fa_separator fa sorted_fa_separator fa;

hg_mgl : 'MAG';
hg_dgl : 'DAG';
hg_sgl : 'MGDG' | 'DGDG' | 'SQDG';
hg_tgl : 'TAG';



/* phospholipid rules */
pl : lpl | dpl | pl_o | cl | mlcl;
pl_o : lpl_o | dpl_o;
lpl : hg_lplc headgroup_separator fa;
lpl_o : hg_lpl_oc headgroup_separator fa;
dpl : hg_plc headgroup_separator fa unsorted_fa_separator fa | hg_plc headgroup_separator fa sorted_fa_separator fa;
dpl_o : hg_pl_oc headgroup_separator fa unsorted_fa_separator fa | hg_pl_oc headgroup_separator fa sorted_fa_separator fa;
cl : hg_clc headgroup_separator fa unsorted_fa_separator fa unsorted_fa_separator fa unsorted_fa_separator fa | hg_clc headgroup_separator fa sorted_fa_separator fa sorted_fa_separator fa sorted_fa_separator fa;
mlcl : hg_mlclc headgroup_separator fa unsorted_fa_separator fa unsorted_fa_separator fa | hg_mlclc headgroup_separator fa sorted_fa_separator fa sorted_fa_separator fa;

hg_clc : hg_cl | hg_cl heavy;
hg_cl : 'CL';
hg_mlclc : hg_mlcl | hg_mlcl heavy;
hg_mlcl : 'MLCL';
hg_plc : hg_pl | hg_pl heavy;
hg_pl : 'BMP' | 'CDPDAG' | 'DMPE' | 'MMPE' | 'PA' | 'PC' | 'PE' | 'PEt' | 'PG' | 'PI' | 'PIP' | 'PIP2' | 'PIP3' | 'PS';
hg_lplc : hg_lpl | hg_lpl heavy;
hg_lpl : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 'LPS';
hg_lpl_oc : hg_lpl_o | hg_lpl_o heavy;
hg_lpl_o : 'LPC O' | 'LPE O';
hg_pl_oc : hg_pl_o | hg_pl_o heavy;
hg_pl_o : 'PC O' | 'PE O';



/* sphingolipid rules */
sl : lsl | dsl;
lsl : hg_lslc headgroup_separator lcb;
dsl : hg_dslc headgroup_separator lcb sorted_fa_separator fa;

hg_lslc : hg_lsl | hg_lsl heavy;
hg_lsl : 'LCB' | 'LCBP' | 'LHexCer' | 'LSM';
hg_dslc : hg_dsl | hg_dsl heavy;
hg_dsl : 'Cer' | 'CerP' | 'EPC' | 'GB3' | 'GB4' | 'GD3' | 'GM3' | 'GM4' | 'Hex2Cer' | 'HexCer' | 'IPC' | 'M(IP)2C' | 'MIPC' | 'SHexCer' | 'SM';



/* cholesterol lipids */
cholesterol : chc | che;
chc : ch | ch heavy;
ch : 'Ch';
che : hg_chec headgroup_separator fa;
hg_chec : hg_che | hg_che heavy;
hg_che : 'ChE';


/* mediator lipids */
mediatorc : mediator | mediator heavy;
mediator : '10-HDoHE' | '11-HDoHE' | '11-HETE' | '11,12-DHET' | '11(12)-EET'| '12-HEPE' | '12-HETE' | '12-HHTrE' | '12-OxoETE' | '12(13)-EpOME' | '13-HODE' | '13-HOTrE' | '14,15-DHET' | '14(15)-EET' | '14(15)-EpETE' | '15-HEPE' | '15-HETE' | '15d-PGJ2' | '16-HDoHE' | '16-HETE' | '18-HEPE' | '5-HEPE' | '5-HETE' | '5-HpETE' | '5-OxoETE' | '5,12-DiHETE' | '5,6-DiHETE' | '5,6,15-LXA4' | '5(6)-EET' | '8-HDoHE' | '8-HETE' | '8,9-DHET' | '8(9)-EET' | '9-HEPE' | '9-HETE' | '9-HODE' | '9-HOTrE' | '9(10)-EpOME' | 'AA' | 'alpha-LA' | 'DHA' | 'EPA' | 'Linoleic acid' | 'LTB4' | 'LTC4' | 'LTD4' | 'Maresin 1' | 'Palmitic acid' | 'PGB2' | 'PGD2' | 'PGE2' | 'PGF2alpha' | 'PGI2' | 'Resolvin D1' | 'Resolvin D2' | 'Resolvin D3' | 'Resolvin D5' | 'tetranor-12-HETE' | 'TXB1' | 'TXB2' | 'TXB3';



/* generic rules */
fa : fa_pure | fa_pure ether;
fa_pure : carbon carbon_db_separator db | carbon carbon_db_separator db db_hydroxyl_separator hydroxyl | carbon carbon_db_separator db heavy | carbon carbon_db_separator db db_hydroxyl_separator hydroxyl heavy;
ether : 'a' | 'p';
lcb : carbon carbon_db_separator db db_hydroxyl_separator hydroxyl | old_hydroxyl carbon carbon_db_separator db;
carbon : number;
db : db_count | db_count round_open_bracket db_position round_close_bracket;
db_count : number;
db_position : number cistrans | number cistrans | db_position db_position_separator db_position;
cistrans : 'E' | 'Z';
hydroxyl : number;
old_hydroxyl : 'd' | 't';
number :  '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | number number;


heavy : '(+' isotopes  ')';
isotopes : isotopes isotopes | '[' number ']' element number;
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

sorted_fa_separator : SLASH | BACKSLASH;
adduct_separator : SPACE;
unsorted_fa_separator : DASH | UNDERSCORE;
headgroup_separator : SPACE;
carbon_db_separator : COLON;
db_hydroxyl_separator : SEMICOLON;
db_position_separator : COMMA;
round_open_bracket : ROB;
round_close_bracket : RCB;

