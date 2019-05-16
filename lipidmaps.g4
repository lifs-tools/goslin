////////////////////////////////////////////////////////////////////////////////
// MIT License
// 
// Copyright (c) 2017 Dominik Kopczynski   -   dominik.kopczynski {at} isas.de
//                    Bing Peng   -   bing.peng {at} isas.de
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

//// This is a BNF grammer for lipid subspecies identifiers followed by
//// J.K. Pauling et al. 2017, PLoS One, 12(11):e0188394. 

grammar LipidMaps;

/* first rule is always start rule */
lipid: lipid_rule EOF;
lipid_rule: lipid_mono | lipid_mono isotope;
lipid_mono: lipid_pure | lipid_pure isoform;
lipid_pure: Pure_FA | GL | PL | SL | Cholesterol | Mediator;
isoform: square_open_bracket "rac" square_close_bracket | square_open_bracket "iso" Number square_close_bracket;
isotope: " " round_open_bracket element Number round_close_bracket | "-" round_open_bracket element Number round_close_bracket | "-" element Number;
element: "d";


/* pure fatty acid */
Pure_FA: FA;


/* glycerolipid rules */
GL: SGL | TGL;
SGL: HG_SGLc round_open_bracket FA FA_separator FA round_close_bracket | HG_SGLc FA FA_separator FA;
TGL: HG_GLc round_open_bracket FA FA_separator FA FA_separator FA round_close_bracket | HG_GLc FA FA_separator FA FA_separator FA;

HG_SGLc: HG_SGL | HG_SGL " ";
HG_SGL: "MGDG" | "DGDG" | "SQDG" | "SQMG" | "DG";
HG_GLc: HG_GL | HG_GL " ";
HG_GL: "MG" | "DG" | "TG";




/* phospholipid rules */
PL: LPL | DPL | CL | 4PL;
LPL: HG_LPLc round_open_bracket FA round_close_bracket | HG_LPLc FA;
DPL: HG_PL round_open_bracket FA FA_separator FA round_close_bracket | HG_PL FA FA_separator FA;
CL: HG_CLc round_open_bracket "1'-" square_open_bracket FA FA_separator FA square_close_bracket ",3'-" square_open_bracket FA FA_separator FA square_close_bracket round_close_bracket | HG_CLc "1'-" square_open_bracket FA FA_separator FA square_close_bracket ",3'-" square_open_bracket FA FA_separator FA square_close_bracket;
4PL: HG_4PLc round_open_bracket FA FA_separator FA FA_separator FA FA_separator FA round_close_bracket | HG_4PLc FA FA_separator FA FA_separator FA FA_separator FA;

HG_PL: HG_CLc | HG_DPLc PIP_position | HG_DPLc | HG_LPLc;

HG_CLc: HG_CL | HG_CL headgroup_separator;
HG_CL: "CL";
HG_DPLc: HG_DPL | HG_DPL headgroup_separator;
HG_DPL: "LBPA" | "CDP-DG" | "DMPE" | "MMPE" | "PA" | "PC" | "PE" | "PEt" | "PG" | "PI" | "PIP" | "PIP2" | "PIP3" | "PS" | "PIM1" | "PIM2" | "PIM3" | "PIM4" | "PIM5" | "PIM6" | "Glc-DG" | "PGP" | "PE-NMe2" | "AC2SGL" | "DAT" | "PE-NMe" | "PT" | "Glc-GP" | "NAPE";
HG_LPLc: HG_LPL | HG_LPL headgroup_separator;
HG_LPL: "LysoPC" | "LysoPE" | "LPIM1" | "LPIM2" | "LPIM3" | "LPIM4" | "LPIM5" | "LPIM6" | "CPA" | "LPA";
HG_4PLc: HG_4PL | HG_4PL headgroup_separator;
HG_4PL: "PAT16" | "PAT18";
PIP_position: square_open_bracket PIP_pos square_close_bracket;
PIP_pos: PIP_pos "," PIP_pos | Number "'";



/* sphingolipid rules */
SL: LSL | DSL | SphingoXine;
LSL: HG_LSLc round_open_bracket LCB round_close_bracket | HG_LSLc LCB;
DSL: HG_DSLc round_open_bracket LCB FA_separator FA round_close_bracket | HG_DSLc LCB FA_separator FA;

SphingoXine: SphingoXine_pure | SphingoXine_var;
SphingoXine_pure: Sphingosine_name | Sphinganine_name;
SphingoXine_var: CType headgroup_separator Sphingosine_name | CType headgroup_separator Sphinganine_name;
Sphingosine_name: "Sphingosine" | "So" | "Sphingosine-1-phosphate";
Sphinganine_name: "Sphinganine" | "Sa" | "Sphinganine-1-phosphate";
CType: "C" Number;

HG_DSLc: HG_DSL | HG_DSL headgroup_separator;
HG_DSL: "Cer" | "CerP" | "EPC" | "GB3" | "GB4" | "GD3" | "GM3" | "GM4" | "Hex2Cer" | "HexCer" | "IPC" | "M(IP)2C" | "MIPC" | "SHexCer" | "SM" | "PE-Cer" | "PI-Cer" | "GlcCer" | "FMC-5" | "FMC-6" | "LacCer" | "GalCer" | "(3'-sulfo)Galbeta-Cer";

HG_LSLc: HG_LSL | HG_LSL headgroup_separator;
HG_LSL: "SPH" | "S1P" | "HexSph" | "SPC" | "SPH-P";



/* cholesterol lipids */
Cholesterol: Chc | ChEc;
Chc: Ch | Ch headgroup_separator;
Ch: "Cholesterol";
ChEc: ChE | ChE headgroup_separator;
ChE: FA headgroup_separator HG_ChE;
HG_ChE: "Cholesteryl ester";


/* mediator lipids */
Mediator: Mediator_Var | Mediator_Const;
Mediator_Var: Mediator_Prefix Mediator_Name_separator Mediator_Var_Names | "(+/-)-" Mediator_Prefix Mediator_Name_separator Mediator_Var_Names;
Mediator_Prefix: Mediator_Numbers | Mediator_Prefix Mediator_Prefix;
Mediator_Numbers: Mediator_Numbers Mediator_separator Mediator_Numbers | Mediator_Number_pure | Mediator_Number_pure Mediator_Pos;
Mediator_Number_pure: Number | round_open_bracket Number round_close_bracket;
Mediator_Pos: "R" | "S";
Mediator_Var_Names: Mediator_Var_Name | Mediator_Oxo "-" Mediator_Var_Name;
Mediator_Var_Name: "HHTrE" | "EpOME" | "HODE" | "HOTrE" | "DHET" | "EET" | "EpETE" | "HEPE" | "HETE" | "PGJ2" | "HDoHE" | "HpETE" | "ETE" | "DiHETE" | "LXA4";
Mediator_Const: "Arachidonic acid" | "Arachidonic Acid" | "alpha-LA" | "DHA" | "EPA" | "Linoleic acid" | "LTB4" | "LTC4" | "LTD4" | "Maresin 1" | "Palmitic acid" | "PGB2" | "PGD2" | "PGE2" | "PGF2alpha" | "PGI2" | "Resolvin D1" | "Resolvin D2" | "Resolvin D3" | "Resolvin D5" | "tetranor-12-HETE" | "TXB1" | "TXB2" | "TXB3";
Mediator_Oxo: "Oxo" | "oxo";



/* generic rules */
FA: FA_unmod | FA_unmod FA_mod;
FA_unmod: Ether FA_pure | FA_pure;
FA_mod: round_open_bracket modification round_close_bracket;
modification: modification "," modification | Number mod_text | mod_text;
mod_text: mod_text mod_text | square_open_bracket mod_text square_close_bracket | "OH" | "Ke" | "S" | "OOH" | "My" | "Me" | "R" | "Br" | "CHO" | "COOH" | "Cp" | "(R)";
Ether: "P-" | "O-";
FA_pure: Carbon Carbon_DB_separator DB | Carbon Carbon_DB_separator DB DB_hydroxyl_separator Hydroxyl;
LCB: Hydroxyl_LCB Carbon Carbon_DB_separator DB;
Carbon: Number;
DB: DB_count | DB_count round_open_bracket DB_position round_close_bracket;
DB_count: Number;
DB_position: Number | Number CisTrans | DB_position DB_position_separator DB_position;
CisTrans: "E" | "Z";
Hydroxyl: Number;
Hydroxyl_LCB: "m" | "d" | "t";
Number:  "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | Number Number;



/* separators */
FA_separator: "_" | "/" | "\\" | "-";
headgroup_separator: " ";
Carbon_DB_separator: ":";
DB_hydroxyl_separator: ";";
DB_position_separator: ",";
Mediator_separator: ",";
Mediator_Name_separator: "-";
round_open_bracket: "(";
round_close_bracket: ")";
square_open_bracket: "[";
square_close_bracket: "]";

