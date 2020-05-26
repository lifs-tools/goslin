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

/* adduct information */
grammar AdductInfo;

adduct_info : adduct_body | ADDUCT_SEPARATOR adduct_body;
adduct_body : '[M' adduct ']' charge charge_sign;
adduct : '+H' | '+2H' | '+NH4' | '-H' | '-2H' | '+HCOO' | '+CH3COO' | charge_sign arbitrary_adduct;
arbitrary_adduct : adduct4 | adduct4 adduct4;
adduct4 : adduct2 | adduct2 adduct2;
adduct2 : character | character character;

ADDUCT_SEPARATOR : ' ';
character : 'a' | 'b' | 'c' | 'd' | 'e' | 'f' | 'g' | 'h' | 'i' | 'j' | 'k' | 'l' | 'm' | 'n' | 'o' | 'p' | 'q' | 'r' | 's' | 't' | 'u' | 'v' | 'w' | 'x' | 'y' | 'z' | 'A' | 'B' | 'C' | 'D' | 'E' | 'F' | 'G' | 'H' | 'I' | 'J' | 'K' | 'L' | 'M' | 'N' | 'O' | 'P' | 'Q' | 'R' | 'S' | 'T' | 'U' | 'V' | 'W' | 'X' | 'Y' | 'Z' |'0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9';
charge : '1' | '2' | '3' | '4';
charge_sign : '-' | '+';
