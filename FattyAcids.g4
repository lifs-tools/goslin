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

grammar FattyAcids;


/* first rule is always start rule, EOF = end of file */
lipid : fatty_acid EOF;

fatty_acid: regular_fatty_acid | wax | car | ethanolamine | amine | acetic_acid;
fatty_acid_recursion: regular_fatty_acid;
wax : wax_ester regular_fatty_acid;
wax_ester : fatty_acid_recursion SPACE | ROB fatty_acid_recursion RCB SPACE | methyl SPACE | methyl DASH;
methyl : 'methyl';
car : car_positions DASH car_fa '-4-(' car_spec ')butanoate';
car_fa : SOB regular_fatty_acid SCB | COB regular_fatty_acid CCB;
car_spec : 'trimethylammonio' | 'trimethylazaniumyl';

car_positions : functional_position | ROB car_position RCB DASH functional_position;
car_position : number;
ethanolamine : amine_prefix ROB fatty_acid_recursion RCB DASH 'ethanolamine';
amine : amine_prefix amine_n DASH regular_fatty_acid SPACE 'amine';
amine_prefix : 'n-' | '(+/-)n-';
amine_n : fatty_acid_recursion | ROB fatty_acid_recursion RCB | methyl;
acetic_acid : acetic_recursion 'acetic acid';
acetic_recursion : ROB fatty_acid_recursion RCB | SOB fatty_acid_recursion SCB | COB fatty_acid_recursion CCB;

regular_fatty_acid : ate_type |
                     ol_position_description | 
                     additional_len acid_type_regular |
                     additional_len acid_type_double |
                     additional_descriptions double_bond_positions fatty_length acid_type_double |
                     sum_add fatty_length acid_type_regular | 
                     sum_add fatty_length acid_type_double | 
                     fg_pos_summary fatty_length acid_type_double |
                     /* double_bond_positions fatty_length acid_type_double | */
                     fg_pos_summary double_bond_positions fatty_length acid_type_double |  
                     sum_add double_bond_positions fatty_length acid_type_double;

additional_len : additional_descriptions fatty_length | fatty_length;
sum_add : fg_pos_summary additional_descriptions;
ol_position_description : ol_position DASH fatty_length ol_ending |
         fg_pos_summary ol_position DASH fatty_length ol_ending | 
         fg_pos_summary DASH ol_position DASH fatty_length ol_ending | 
         sum_add ol_position DASH fatty_length ol_ending | 
         sum_add DASH ol_position DASH fatty_length ol_ending |
         additional_descriptions ol_position DASH fatty_length ol_ending |
         additional_descriptions DASH ol_position DASH fatty_length ol_ending;
ol_ending : 'ol' | 'nol';
ol_position : ol_pos | ol_pos PRIME | ol_pos cistrans_b | ol_pos PRIME cistrans_b;
ol_pos : number;


fatty_length : notation_specials | notation_regular | cycle notation_specials | cycle notation_regular | tetrahydrofuran notation_specials;
notation_regular : notation_last_digit | notation_last_digit notation_second_digit | notation_second_digit;
/* 1, 2, 2, 3, 4, 4, 4, 5, 6, 7, 8, 9 */
notation_last_digit : 'un' | 'hen' | 'do' | 'di' | 'tri' | 'buta' | 'but' | 'tetra' | 'penta' | 'pent' | 'hexa' | 'hex' | 'hepta' | 'hept' | 'octa' | 'oct' | 'nona' | 'non';
/* 0, 10, 10, 20, 20, 30 */
notation_second_digit: 'deca' | 'dec' | 'cosa' | 'cos' | 'eicosa' | 'eicos' | 'triaconta' | 'triacont' | 'tetraconta'  | 'tetracont' | 'pentaconta' | 'pantacont' | 'hexaconta' | 'hexacont' | 'heptaconta' | 'heptacont' | 'octaconta' | 'octacont' | 'nonaconta' | 'nonacont';
/* 4, 10, 20, 21, 21, 30, 30 */
notation_specials: 'etha' | 'eth' | 'buta' | 'but' | 'butr' | 'valer' | 'propa' | 'propi' | 'propio' | 'prop' | 'eicosa' | 'eicos' | 'icosa' | 'icos' | prosta | isoprop | furan;
isoprop: 'isoprop';
prosta : 'prosta' | 'prost' | 'prostan';
tetrahydrofuran : 'tetrahydro';
furan : 'furan';

acid_type_regular: acid_single_type | acid_single_type cyclo_position;
acid_type_double: db_num acid_type_regular;
acid_single_type: 'noic acid' | 'nic acid' | 'nal' | dioic | 'noyloxy' | 'noyl' | ol | dial | 'noate' | 'nate' | coa | yl | 'ne' | 'yloxy';
coa : 'noyl' coa_ending | 'yl' coa_ending | 'nyl' coa_ending;
coa_ending : 'coa' | '-coa';
yl : 'yl' | 'nyl' | 'n' DASH yl_ending DASH 'yl' | DASH yl_ending DASH 'yl';
yl_ending: number;

db_num: DASH double_bond_positions DASH db_length db_suffix | DASH double_bond_positions DASH db_suffix | db_length db_suffix | db_suffix;
db_suffix : 'e' | 'ne' | 'ene' | 'en' | 'n';
dial : 'dial';
db_length: notation_regular;
dioic : 'n' DASH functional_positions DASH dioic_acid | DASH functional_positions DASH dioic_acid | 'ne' dioic_acid;
dioic_acid : 'dioic acid';
ol : 'nol' | db_suffix DASH hydroxyl_positions DASH notation_regular 'ol' | db_suffix DASH hydroxyl_position DASH 'ol' | DASH hydroxyl_positions DASH notation_regular 'ol' | DASH hydroxyl_position DASH 'ol';
ate_type : ate | additional_descriptions ate;
ate : 'formate' | 'acetate' | 'butyrate' | 'propionate' | 'valerate' | isobut;
isobut : 'isobutyrate';


hydroxyl_positions : hydroxyl_positions pos_separator hydroxyl_positions | hydroxyl_position;
hydroxyl_position : hydroxyl_number | hydroxyl_number cistrans_b | hydroxyl_number PRIME cistrans_b;
hydroxyl_number : number;

additional_descriptions : additional_descriptions_m | additional_descriptions_m DASH;
additional_descriptions_m : additional_descriptions_m additional_descriptions_m | additional_description;
additional_description : functional_group | functional_group DASH | pos_neg | reduction | reduction DASH;
functional_group : multi_functional_group | single_functional_group | epoxy | methylene_group;
pos_neg : '(+/-)-' | '(+)-' | '(-)-';

double_bond_positions : double_bond_positions_pure DASH | ROB double_bond_positions_pure RCB DASH | double_bond_positions_pure | ROB double_bond_positions_pure RCB;
double_bond_positions_pure : double_bond_positions_pure pos_separator double_bond_positions_pure | double_bond_position;
double_bond_position : db_number | db_number cistrans_b | db_number PRIME | db_number PRIME cistrans_b | cistrans_b;
cistrans_b : cistrans | ROB cistrans RCB;
cistrans : 'e' | 'z' | 'r' | 's' | 'a' | 'b' | 'c';
db_number : number;
fg_pos_summary : functional_positions DASH;

multi_functional_group : functional_positions DASH functional_length functional_group_type | functional_positions DASH functional_group_type;
functional_length : notation_last_digit | notation_second_digit | notation_last_digit notation_second_digit;
functional_positions : functional_positions_pure | ROB functional_positions_pure RCB;
functional_positions_pure : functional_positions_pure pos_separator functional_positions_pure | functional_position;
single_functional_group : functional_position DASH functional_group_type_name | functional_position functional_group_type_name | recursion_description | recursion_description DASH;
functional_group_type_name : functional_group_type | ROB functional_group_type RCB;
functional_group_type : 'hydroxy' | 'oxo' | 'bromo' | 'thio' | 'keto' | 'methyl' | 'hydroperoxy' | homo | 'phospho' | 'fluro' | 'fluoro' | 'chloro' | methylene | 'sulfooxy' | 'amino' | 'sulfanyl' | 'methoxy' | 'iodo' | 'cyano' | 'nitro' | 'oh' | 'thio' | 'mercapto' | 'carboxy' | 'acetoxy' | 'cysteinyl' | 'phenyl' | 's-glutathionyl' | 's-cysteinyl' | 'butylperoxy' | 'dimethylarsinoyl' | 'methylsulfanyl' | 'imino' | 's-cysteinylglycinyl';
epoxy : functional_position pos_separator functional_position DASH 'epoxy' | functional_position ROB functional_position RCB DASH 'epoxy' | ROB functional_position pos_separator functional_position RCB DASH 'epoxy';
methylene_group : functional_positions DASH methylene;
methylene : 'methylene';
/* acetoxy : 'acetoxy'; */

functional_position : functional_position_pure | ROB functional_position_pure RCB;
functional_position_pure : functional_pos | functional_pos PRIME | functional_pos func_stereo | functional_pos PRIME func_stereo | func_stereo;
functional_pos : number;
func_stereo : cistrans_b;
reduction : functional_position DASH 'nor' | functional_positions DASH functional_length 'nor';
homo : 'homo';

cycle : 'cyclo';
cyclo_position : '-cyclo' SOB functional_position pos_separator functional_position SCB | ' cyclo' SOB functional_position pos_separator functional_position SCB | ' cyclo ' SOB functional_position pos_separator functional_position SCB | '-cyclo-' SOB functional_position pos_separator functional_position SCB | ' cyclo-' SOB functional_position pos_separator functional_position SCB;

recursion_description : recursion_position DASH recursion;
recursion : fatty_acid | ROB fatty_acid RCB | SOB fatty_acid SCB | COB fatty_acid CCB;
recursion_position : ROB functional_positions RCB | recursion_pos | recursion_pos cistrans_b;
recursion_pos : number;




/* separators */
SPACE : ' ';
COLON : ':';
SEMICOLON : ';';
DASH : '-' | '‐';
UNDERSCORE : '_';
SLASH : '/';
BACKSLASH : '\\';
COMMA: ',';
ROB: '(';
RCB: ')';
SOB: '[';
SCB: ']';
COB: '{';
CCB: '}';
PRIME: '\'';
pos_separator : COMMA;



number :  digit | digit number;
digit : '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';


