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

/*
 * Lipid names as written by LipidDataAnalyzer (LDA), e.g. LDA 2.8
 * (Hartler et al., Anal. Chem. 2020, doi:10.1021/acs.analchem.0c03016).
 *
 * Sphingolipids only:
 *   long chain base  <m|d|t|q|p|h><carbon>:<db>   m, d, t, q, p, h = 1 to 6 hydroxy groups
 *   N-acyl chain     <n|h|i|k><carbon>:<db>       n, h, i, k = 0 to 3 hydroxy groups
 * These are the default encodings of LDA (lcbHydroxylationEncoding.txt and
 * faHydroxylationEncoding.txt in https://github.com/ThallingerLab/LDA2).
 *   Cer d18:1/n16:0, Cer t18:0/h24:0, SM d18:1_n24:0, Cer1P d18:1/n16:0,
 *   SphBase d18:1, S1P d18:1, LSM d18:1, Cer d34:1 (species level)
 *
 * Head groups that have a different name in Goslin (SphBase = SPB,
 * Cer1P = CerP) are translated by the parser event handler.
 */

grammar LDA;


/* first rule is always start rule */
lipid : lipid_eof EOF;
lipid_eof : lipid_pure;
lipid_pure : sl;


/* sphingolipid rules */
sl : lsl | dsl;
lsl : hg_lsl headgroup_separator lcb;
dsl : hg_dsl headgroup_separator sl_species | hg_dsl headgroup_separator sl_subspecies;

sl_species : lcb;
sl_subspecies : sl_sorted | sl_unsorted;
sl_sorted : lcb sorted_fa_separator fa;
sl_unsorted : lcb unsorted_fa_separator fa;

hg_lsl : 'SphBase' | 'S1P' | 'LSM';
hg_dsl : 'Cer' | 'Cer1P' | 'SM' | 'HexCer' | 'LacCer';


/* chains */
lcb : lcb_hydroxyl carbon carbon_db_separator db;
lcb_hydroxyl : 'm' | 'd' | 't' | 'q' | 'p' | 'h';
fa : fa_hydroxyl carbon carbon_db_separator db;
fa_hydroxyl : 'n' | 'h' | 'i' | 'k';

carbon : number;
db : db_count;
db_count : number;
number :  digit | digit number;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';


/* separators */
SPACE : ' ';
COLON : ':';
UNDERSCORE : '_';
SLASH : '/';

headgroup_separator : SPACE;
sorted_fa_separator : SLASH;
unsorted_fa_separator : UNDERSCORE;
carbon_db_separator : COLON;
