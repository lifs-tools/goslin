////////////////////////////////////////////////////////////////////////////////
// MIT License
// 
// Copyright (c) 2017 Dominik Kopczynski   -   dominik.kopczynski {at} isas.de
//                    Nils Hoffmann  -  nils.hoffmann {at} isas.de
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
////////////////////////////////////////////////////////////////////////////////


grammar FattyAcids;

/* first rule is always start rule */
fatt_acid: fatty_rule EOF;
fatty_rule: pure_fa | fatty_base | fatty_prefix fatty_base | fatty_prefix fatty_separator fatty_base;
fatty_prefix: fatty_prefix fatty_prefix | fatty_prefix fatty_separator fatty_prefix | generic_prefix | polarity_suffix | penta_prefix | di_prefix | tri_prefix | tetra_prefix;

polarity_suffix: '(+/-)' | '(-)' | '(+)';

generic_prefix: generic_numbers generic_suffix | generic_numbers fatty_separator generic_suffix;
generic_numbers: generic_inner_numbers | '(' generic_inner_numbers ')';
generic_inner_numbers: generic_number | generic_inner_numbers fatty_separator generic_inner_numbers;
generic_number: number | number RS;
generic_suffix: 'Hp' | 'hydroperoxy' | 'H' | 'hydroxy' | 'COOH' | 'oxo' | 'keto' | 'K' | 'phenyl' | 'glyceryl' | 'methyl' | 'fluoro' | 'amino' | 'bromo' | 'Methyl' | 'trifluoro' | 'trans' | 'dimethylarsinoyl' | 'hexyl' | 'ethyl';





di_prefix: di_number di_suffix | di_number fatty_separator di_suffix;
di_number: generic_number ',' generic_number | '(' generic_number ',' generic_number ')';
di_suffix: 'DiH' | 'dihydroxy' | 'dihydro' | 'dehydro' | 'Ep' | 'epoxy' | 'dimethyl';

tri_prefix: tri_number tri_suffix | tri_number fatty_separator tri_suffix;
tri_number: generic_number ',' generic_number ',' generic_number | '(' generic_number ',' generic_number ',' generic_number ')';
tri_suffix: 'TriH' | 'trihydroxy' | 'trihydro' | 'trimethyl';

tetra_prefix: tetra_number tetra_suffix | tetra_number fatty_separator tetra_suffix;
tetra_number: generic_number ',' generic_number ',' generic_number ',' generic_number | '(' generic_number ',' generic_number ',' generic_number ',' generic_number ')';
tetra_suffix: 'tetrahydro' | 'tetramethyl';

penta_prefix: penta_number penta_suffix | penta_number fatty_separator penta_suffix;
penta_number: generic_number ',' generic_number ',' generic_number ',' generic_number ',' generic_number | '(' generic_number ',' generic_number ',' generic_number ',' generic_number ',' generic_number ')';
penta_suffix: 'Pentafluoro';


fatty_base: fatty_base_short | fatty_base_long | db_positions fatty_separator fatty_base_short | db_positions fatty_separator fatty_base_long;
db_positions: db_inner_positions | '(' db_inner_positions ')';
db_inner_positions: db_position | db_inner_positions ',' db_inner_positions;
db_position: number | number EZ;

fatty_base_short: 'EPE' | 'ETE' | 'ETrE' | 'ODE' | 'HTrE' | 'DoHE' | 'LTA4' | 'LTB4' | 'LTE4' | 'LTC4' | 'LTD4' | 'LTF4' | 'LTB5' | 'DPE' | 'DHA';



fatty_base_long: 'eicosapentaenoate' | 'eicosatetraenoate' | 'eicosatrienoate' | 'octadecadienoate' | 'docosahexaenoic acid' | 'eicosatetraenoic acid' | 'Pentadecenyl acetate' | 'eicosatrienoic acid' | 'eicosapentaenoic acid' | 'lauric acid' | 'capric acid' | 'Lauroleic acid' | 'Dodecen-1-ol' | 'Dodecadien-3-one' | decimal_base;

decimal_base: second_decimal_base | first_decimal_base second_decimal_base;
second_decimal_base: acid_based ' acid' | acetate_based ' acetate' | 'decenal' | 'decadienal';
acid_based: 'decanoic' | 'cosanoic' | 'decatrienoic' | 'decenoic' | 'decynoic' | 'cosapentaynoic' | 'cosatetraynoic' | 'cosatriynoic' | noic | 'valeric' | 'decadienoic';
acetate_based: 'decadienyl' | 'decatrienyl' | 'decenyl' | 'decyl';

noic: first_decimal_base noic_second | noic_second;
noic_second: noic_decimal noic_post_decimal | noic_post_decimal;
noic_post_decimal: noic_separator 'noic' | 'noic' | first_decimal_base noic_separator 'noic' | first_decimal_base 'noic';
noic_decimal: 'eicosa' | 'cose' | 'deca';
noic_separator: 'a' | 'e';



first_decimal_base: 'un' | 'Un' | 'do' | 'Do' | 'tri' | 'Tri' | 'tetra' | 'Tetra' | 'penta' | 'Penta' | 'hexa' | 'Hexa' | 'hepta' | 'Hepta' | 'octa' | 'Octa' | 'nona' | 'Nona' | 'di' | 'Di' | 'Pent' | 'pent';

fatty_separator: '-' | ' ';

pure_fa: carbon ':' db | carbon ':' db db_positions;
carbon: number;
db: number;


RS: 'R' | 'S';
EZ: 'E' | 'Z';

number: digit;
digit:  '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;

