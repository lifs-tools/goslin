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
lipid_pure : fatty_acid | gl | pl | sl;




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






/* glycerolipid rules */
gl : gl_regular | gl_mono;

gl_regular : gl_hg gl_fa;
gl_fa : ROB fa_species RCB | ROB fa3 RCB;
gl_hg : 'MG' | 'DG' | 'TG';

gl_mono : gl_mono_hg gl_mono_fa;
gl_mono_fa : ROB fa_species RCB | ROB fa2 RCB;
gl_hg : 'MHDG' | 'MHDG' headgroup_separator | 'DHDG' | 'DHDG' headgroup_separator;





/* phospholipid rules */
pl : pl_regular | pl_four;

pl_regular : pl_hg pl_fa;
pl_fa : ROB fa_species RCB | ROB fa2 RCB;
pl_hg : 'LPA' | 'LPC' | 'LPE' | 'LPG' | 'LPI' | 'LPS' | 'PA' | 'PC' | 'PE' | 'PG' | 'PI' | 'PS' | 'PGP' | 'PIP2' | 'PIP' | 'PIP3';

pl_four : pl_four_hg pl_four_fa;
pl_four_fa : ROB fa_species RCB | ROB fa2 RCB | ROB fa4 RCB;
pl_four_hg : 'BMP' | 'LBPA' | 'Lysobisphosphatidate' headgroup_separator;






/* sphingolipid rules */
sl : sl_hg sl_fa;
sl_hg : 'HexCer' | 'Hex2Cer' | 'SM' | 'PE-Cer' | 'Cer' | 'CerP' | 'SulfoHexCer' | 'SulfoHex2Cer' | 'Gb3' | 'GA2' | 'GA1' | 'GM3' | 'GM2' | 'GM1' | 'GD3' | 'GT3' | 'GD1' | 'GT1' | 'GQ1' | 'GM4' | 'GD2' | 'GT2' | 'GP1' | 'SE';




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
