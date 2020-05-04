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
fatty_rule: pure_fa | fatty_base | fatty_prefix fatty_base;
fatty_prefix: fatty_prefix fatty_separator fatty_prefix | epoxy_prefix | oxo_prefix | hydro_prefix | peroxy_prefix | glyceryl_prefix;

epoxy_prefix: epoxy_numbers epoxy_suffix | epoxy_numbers fatty_separator epoxy_suffix;
epoxy_suffix: 'Ep' | 'epoxy';
epoxy_numbers: epoxy_number ',' epoxy_number | '(' epoxy_number ',' epoxy_number ')';
epoxy_number: number | number RS;

peroxy_prefix: peroxy_numbers peroxy_suffix | peroxy_numbers fatty_separator peroxy_suffix;
peroxy_numbers: peroxy_inner_numbers | '(' peroxy_inner_numbers ')';
peroxy_inner_numbers: peroxy_number | peroxy_inner_numbers fatty_separator peroxy_inner_numbers;
peroxy_number: number | number RS;
peroxy_suffix: 'Hp' | 'hydroperoxy';

oxo_prefix: oxo_number fatty_separator oxo_suffix;
oxo_number: number;
oxo_suffix: 'oxo' | 'keto' | 'K';

hydro_prefix: hydro_mono_prefix | hydro_di_prefix | hydro_tri_prefix;
hydro_mono_prefix: hydro_mono_number hydro_mono_suffix | hydro_mono_number fatty_separator hydro_mono_suffix;
hydro_mono_number: hydro_pure_number | '(' hydro_pure_number ')';
hydro_pure_number: number | numberRS;
hydro_mono_suffix: 'H' | 'hydroxy';

hydro_di_prefix: hydro_di_number hydro_di_suffix | hydro_di_number hydro_di_suffix;
hydro_di_number: hydro_pure_number fatty_separator hydro_pure_number | '(' hydro_pure_number ',' hydro_pure_number ')';
hydro_di_suffix: 'DiH' | 'dihydroxy';

hydro_tri_prefix: hydro_tri_number hydro_tri_suffix | hydro_tri_number hydro_tri_suffix;
hydro_tri_number: hydro_pure_number fatty_separatorhydro_pure_number fatty_separator hydro_pure_number | '(' hydro_pure_number ',' hydro_pure_number ',' hydro_pure_number ')';
hydro_tri_suffix: 'TriH' | 'trihydroxy';


fatty_base: fatty_base_short | fatty_base_long | db_positions fatty_separator fatty_base_short | db_positions fatty_separator fatty_base_long;
db_positions: db_inner_positions | '(' db_inner_positions ')';
db_inner_positions: db_position | db_inner_positions ',' db_inner_positions;
db_position: number | number EZ;

fatty_base_short: 'EPE' | 'ETE' | 'ETrE' | 'ODE';
fatty_base_long: 'eicosapentaenoate' | 'eicosatetraenoate' | 'eicosatrienoate' | 'octadecadienoate';
fatty_separator: '-' | ' ';

pure_fa: carbon ':' db | carbon ':' db db_positions;
carbon: number;
db: number;


numberRS: number RS;

RS: 'R' | 'S';
EZ: 'E' | 'Z';

number: digit;
digit:  '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' | digit digit;

