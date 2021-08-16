////////////////////////////////////////////////////////////////////////////////
// MIT License
// 
// Copyright (c) the authors (listed in global LICENSE file)
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

//// This is a BNF grammer for lipid subspecies identifiers followed by
//// J.K. Pauling et al. 2017, PLoS One, 12(11):e0188394. 

grammar IonFormula;

/* first rule is always start rule */
Ion_Formula: Ion_Formula_Rule EOF;
Ion_Formula_Rule: '[M' Adduct ']' Charge | '[M' Heavy_Molecules Adduct ']' Charge;
Adduct: '+H' | '+2H' | '+NH4' | '-H' | '-2H' | '+HCOO' | '+CH3COO';
Charge: Charge_Digit Charge_Sign;
Charge_Digit: Digit;
Charge_Sign: '+' | '-';

Heavy_Molecules: Molecule_Groups;
Molecule_Groups: Molecule_Group | Molecule_Groups Molecule_Groups;
Molecule_Group: Count Heavy_Molecule_IUPAC;
Count: Number;
Heavy_Molecule_IUPAC: 'H2' | 'C13' | 'N15' | 'O17' | 'O18' | 'P32' | 'S34' | 'S33';

Number: Digit | Number Number;
Digit:  '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';
