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
fatty_prefix: fatty_prefix fatty_prefix | fatty_prefix fatty_separator fatty_prefix | epoxy_prefix | generic_prefix | polarity_suffix | pentafluor_prefix;

polarity_suffix: '(+/-)' | '(-)' | '(+)';

epoxy_prefix: epoxy_suffix | epoxy_numbers epoxy_suffix | epoxy_numbers fatty_separator epoxy_suffix;
epoxy_suffix: 'Ep' | 'epoxy';
epoxy_numbers: epoxy_number ',' epoxy_number | '(' epoxy_number ',' epoxy_number ')';
epoxy_number: number | number RS;


generic_prefix: generic_numbers generic_suffix | generic_numbers fatty_separator generic_suffix;
generic_numbers: generic_inner_numbers | '(' generic_inner_numbers ')';
generic_inner_numbers: generic_number | generic_inner_numbers fatty_separator generic_inner_numbers;
generic_number: number | number RS;
generic_suffix: 'Hp' | 'hydroperoxy' | 'H' | 'hydroxy' | 'oxo' | 'keto' | 'K' | 'phenyl' | 'glyceryl' | 'methyl' | 'fluoro' | 'amino' | 'bromo' | 'Methyl';



pentafluor_prefix: pentafluor_number pentafluor_suffix | pentafluor_number fatty_separator pentafluor_suffix;
pentafluor_number: generic_number ',' generic_number ',' generic_number ',' generic_number ',' generic_number | '(' generic_number ',' generic_number ',' generic_number ',' generic_number ',' generic_number ')';
pentafluor_suffix: 'Pentafluoro';

hydro_di_prefix: hydro_di_number hydro_di_suffix | hydro_di_number fatty_separator hydro_di_suffix;
hydro_di_number: generic_number ',' generic_number | '(' generic_number ',' generic_number ')';
hydro_di_suffix: 'DiH' | 'dihydroxy';

hydro_tri_prefix: hydro_tri_number hydro_tri_suffix | hydro_tri_number fatty_separator hydro_tri_suffix;
hydro_tri_number: generic_number ',' generic_number ',' generic_number | '(' generic_number ',' generic_number ',' generic_number ')';
hydro_tri_suffix: 'TriH' | 'trihydroxy';



fatty_base: fatty_base_short | fatty_base_long | db_positions fatty_separator fatty_base_short | db_positions fatty_separator fatty_base_long;
db_positions: db_inner_positions | '(' db_inner_positions ')';
db_inner_positions: db_position | db_inner_positions ',' db_inner_positions;
db_position: number | number EZ;

fatty_base_short: 'EPE' | 'ETE' | 'ETrE' | 'ODE' | 'HTrE' | 'DoHE';
fatty_base_long: 'eicosapentaenoate' | 'eicosatetraenoate' | 'eicosatrienoate' | 'octadecadienoate' | 'heptadecatrienoic acid' | 'docosahexaenoic acid' | 'eicosatetraenoic acid' | 'Pentadecenyl acetate' | 'eicosatrienoic acid' | 'pentadecenoic acid' | 'eicosapentaenoic acid' | 'dodecanoic acid' | 'lauric acid' | 'capric acid' | 'dodecenoic acid' | 'Lauroleic acid' | 'Dodecen-1-ol' | 'dodecenyl acetate' | 'decanoic acid' | 'dodecyl acetate' | 'undecanoic acid' | 'Dodecenyl acetate' | 'Dodecadien-3-one' | 'dodecatrienoic acid';
fatty_separator: '-' | ' ';

pure_fa: carbon ':' db | carbon ':' db db_positions;
carbon: number;
db: number;

numberRS: number RS;

RS: 'R' | 'S';
EZ: 'E' | 'Z';

number: digit;
digit:  '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;

