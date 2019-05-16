// Generated from /home/nils.hoffmann/Projects/gitlab.isas.de/PaLiNom/src/main/antlr4/de/isas/lipidomics/palinom/Goslin.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class GoslinParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, T__53=54, T__54=55, T__55=56, T__56=57, T__57=58, T__58=59, 
		T__59=60, T__60=61, T__61=62, T__62=63, T__63=64, T__64=65, T__65=66, 
		T__66=67, T__67=68, T__68=69, T__69=70, T__70=71, T__71=72, T__72=73, 
		T__73=74, T__74=75, T__75=76, T__76=77, T__77=78, T__78=79, T__79=80, 
		T__80=81, T__81=82, T__82=83, T__83=84, T__84=85, T__85=86, T__86=87, 
		T__87=88, T__88=89, T__89=90, T__90=91, T__91=92, T__92=93, T__93=94, 
		T__94=95, T__95=96, T__96=97, T__97=98, T__98=99, T__99=100, T__100=101, 
		T__101=102, T__102=103, T__103=104, T__104=105, T__105=106, T__106=107, 
		T__107=108, T__108=109, T__109=110, T__110=111, T__111=112, T__112=113, 
		T__113=114, T__114=115, T__115=116, T__116=117, T__117=118, T__118=119, 
		T__119=120, T__120=121, T__121=122, T__122=123, T__123=124, T__124=125, 
		T__125=126, T__126=127, T__127=128, T__128=129, T__129=130, T__130=131, 
		T__131=132, T__132=133, T__133=134, T__134=135, T__135=136, T__136=137, 
		T__137=138, T__138=139, T__139=140, T__140=141, T__141=142, T__142=143, 
		T__143=144, T__144=145, T__145=146, T__146=147, T__147=148, T__148=149, 
		T__149=150, T__150=151, T__151=152, T__152=153, T__153=154, T__154=155, 
		T__155=156, T__156=157, T__157=158, T__158=159, T__159=160, T__160=161, 
		T__161=162, T__162=163, T__163=164, T__164=165, T__165=166, T__166=167, 
		T__167=168, T__168=169, T__169=170, T__170=171, T__171=172, T__172=173, 
		T__173=174, T__174=175, T__175=176, T__176=177, T__177=178, T__178=179, 
		T__179=180, T__180=181, T__181=182, T__182=183, T__183=184, T__184=185, 
		T__185=186, T__186=187, T__187=188, SPACE=189, COLON=190, SEMICOLON=191, 
		DASH=192, UNDERSCORE=193, SLASH=194, BACKSLASH=195, COMMA=196, ROB=197, 
		RCB=198;
	public static final int
		RULE_lipid_eof = 0, RULE_lipid = 1, RULE_lipid_pure = 2, RULE_adduct_info = 3, 
		RULE_adduct = 4, RULE_adduct4 = 5, RULE_adduct2 = 6, RULE_character = 7, 
		RULE_charge = 8, RULE_charge_sign = 9, RULE_gl = 10, RULE_mgl = 11, RULE_dgl = 12, 
		RULE_sgl = 13, RULE_tgl = 14, RULE_hg_mgl = 15, RULE_hg_dgl = 16, RULE_hg_sgl = 17, 
		RULE_hg_tgl = 18, RULE_pl = 19, RULE_pl_o = 20, RULE_lpl = 21, RULE_lpl_o = 22, 
		RULE_dpl = 23, RULE_dpl_o = 24, RULE_cl = 25, RULE_mlcl = 26, RULE_hg_clc = 27, 
		RULE_hg_cl = 28, RULE_hg_mlclc = 29, RULE_hg_mlcl = 30, RULE_hg_plc = 31, 
		RULE_hg_pl = 32, RULE_hg_lplc = 33, RULE_hg_lpl = 34, RULE_hg_lpl_oc = 35, 
		RULE_hg_lpl_o = 36, RULE_hg_pl_oc = 37, RULE_hg_pl_o = 38, RULE_sl = 39, 
		RULE_lsl = 40, RULE_dsl = 41, RULE_hg_lslc = 42, RULE_hg_lsl = 43, RULE_hg_dslc = 44, 
		RULE_hg_dsl = 45, RULE_cholesterol = 46, RULE_chc = 47, RULE_ch = 48, 
		RULE_che = 49, RULE_hg_chec = 50, RULE_hg_che = 51, RULE_mediatorc = 52, 
		RULE_mediator = 53, RULE_fa = 54, RULE_fa_pure = 55, RULE_ether = 56, 
		RULE_lcb = 57, RULE_carbon = 58, RULE_db = 59, RULE_db_count = 60, RULE_db_position = 61, 
		RULE_cistrans = 62, RULE_hydroxyl = 63, RULE_old_hydroxyl = 64, RULE_number = 65, 
		RULE_heavy = 66, RULE_isotopes = 67, RULE_element = 68, RULE_sorted_fa_separator = 69, 
		RULE_adduct_separator = 70, RULE_unsorted_fa_separator = 71, RULE_headgroup_separator = 72, 
		RULE_carbon_db_separator = 73, RULE_db_hydroxyl_separator = 74, RULE_db_position_separator = 75, 
		RULE_round_open_bracket = 76, RULE_round_close_bracket = 77;
	public static final String[] ruleNames = {
		"lipid_eof", "lipid", "lipid_pure", "adduct_info", "adduct", "adduct4", 
		"adduct2", "character", "charge", "charge_sign", "gl", "mgl", "dgl", "sgl", 
		"tgl", "hg_mgl", "hg_dgl", "hg_sgl", "hg_tgl", "pl", "pl_o", "lpl", "lpl_o", 
		"dpl", "dpl_o", "cl", "mlcl", "hg_clc", "hg_cl", "hg_mlclc", "hg_mlcl", 
		"hg_plc", "hg_pl", "hg_lplc", "hg_lpl", "hg_lpl_oc", "hg_lpl_o", "hg_pl_oc", 
		"hg_pl_o", "sl", "lsl", "dsl", "hg_lslc", "hg_lsl", "hg_dslc", "hg_dsl", 
		"cholesterol", "chc", "ch", "che", "hg_chec", "hg_che", "mediatorc", "mediator", 
		"fa", "fa_pure", "ether", "lcb", "carbon", "db", "db_count", "db_position", 
		"cistrans", "hydroxyl", "old_hydroxyl", "number", "heavy", "isotopes", 
		"element", "sorted_fa_separator", "adduct_separator", "unsorted_fa_separator", 
		"headgroup_separator", "carbon_db_separator", "db_hydroxyl_separator", 
		"db_position_separator", "round_open_bracket", "round_close_bracket"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'[M'", "']'", "'+H'", "'+2H'", "'+NH4'", "'-H'", "'-2H'", "'+HCOO'", 
		"'+CH3COO'", "'a'", "'b'", "'c'", "'d'", "'e'", "'f'", "'g'", "'h'", "'i'", 
		"'j'", "'k'", "'l'", "'m'", "'n'", "'o'", "'p'", "'q'", "'r'", "'s'", 
		"'t'", "'u'", "'v'", "'w'", "'x'", "'y'", "'z'", "'A'", "'B'", "'C'", 
		"'D'", "'E'", "'F'", "'G'", "'H'", "'I'", "'J'", "'K'", "'L'", "'M'", 
		"'N'", "'O'", "'P'", "'Q'", "'R'", "'S'", "'T'", "'U'", "'V'", "'W'", 
		"'X'", "'Y'", "'Z'", "'0'", "'1'", "'2'", "'3'", "'4'", "'5'", "'6'", 
		"'7'", "'8'", "'9'", "'+'", "'MAG'", "'DAG'", "'MGDG'", "'DGDG'", "'SQDG'", 
		"'TAG'", "'CL'", "'MLCL'", "'BMP'", "'CDPDAG'", "'DMPE'", "'MMPE'", "'PA'", 
		"'PC'", "'PE'", "'PEt'", "'PG'", "'PI'", "'PIP'", "'PIP2'", "'PIP3'", 
		"'PS'", "'LPA'", "'LPC'", "'LPE'", "'LPG'", "'LPI'", "'LPS'", "'LPC O'", 
		"'LPE O'", "'PC O'", "'PE O'", "'LCB'", "'LCBP'", "'LHexCer'", "'LSM'", 
		"'Cer'", "'CerP'", "'EPC'", "'GB3'", "'GB4'", "'GD3'", "'GM3'", "'GM4'", 
		"'Hex2Cer'", "'HexCer'", "'IPC'", "'M(IP)2C'", "'MIPC'", "'SHexCer'", 
		"'SM'", "'Ch'", "'ChE'", "'10-HDoHE'", "'11-HDoHE'", "'11-HETE'", "'11,12-DHET'", 
		"'11(12)-EET'", "'12-HEPE'", "'12-HETE'", "'12-HHTrE'", "'12-OxoETE'", 
		"'12(13)-EpOME'", "'13-HODE'", "'13-HOTrE'", "'14,15-DHET'", "'14(15)-EET'", 
		"'14(15)-EpETE'", "'15-HEPE'", "'15-HETE'", "'15d-PGJ2'", "'16-HDoHE'", 
		"'16-HETE'", "'18-HEPE'", "'5-HEPE'", "'5-HETE'", "'5-HpETE'", "'5-OxoETE'", 
		"'5,12-DiHETE'", "'5,6-DiHETE'", "'5,6,15-LXA4'", "'5(6)-EET'", "'8-HDoHE'", 
		"'8-HETE'", "'8,9-DHET'", "'8(9)-EET'", "'9-HEPE'", "'9-HETE'", "'9-HODE'", 
		"'9-HOTrE'", "'9(10)-EpOME'", "'AA'", "'alpha-LA'", "'DHA'", "'EPA'", 
		"'Linoleic acid'", "'LTB4'", "'LTC4'", "'LTD4'", "'Maresin 1'", "'Palmitic acid'", 
		"'PGB2'", "'PGD2'", "'PGE2'", "'PGF2alpha'", "'PGI2'", "'Resolvin D1'", 
		"'Resolvin D2'", "'Resolvin D3'", "'Resolvin D5'", "'tetranor-12-HETE'", 
		"'TXB1'", "'TXB2'", "'TXB3'", "'(+'", "'['", "' '", "':'", "';'", "'-'", 
		"'_'", "'/'", "'\\'", "','", "'('", "')'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, "SPACE", "COLON", 
		"SEMICOLON", "DASH", "UNDERSCORE", "SLASH", "BACKSLASH", "COMMA", "ROB", 
		"RCB"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Goslin.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public GoslinParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class Lipid_eofContext extends ParserRuleContext {
		public LipidContext lipid() {
			return getRuleContext(LipidContext.class,0);
		}
		public TerminalNode EOF() { return getToken(GoslinParser.EOF, 0); }
		public Lipid_eofContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lipid_eof; }
	}

	public final Lipid_eofContext lipid_eof() throws RecognitionException {
		Lipid_eofContext _localctx = new Lipid_eofContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_lipid_eof);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(156);
			lipid();
			setState(157);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LipidContext extends ParserRuleContext {
		public Lipid_pureContext lipid_pure() {
			return getRuleContext(Lipid_pureContext.class,0);
		}
		public Adduct_infoContext adduct_info() {
			return getRuleContext(Adduct_infoContext.class,0);
		}
		public LipidContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lipid; }
	}

	public final LipidContext lipid() throws RecognitionException {
		LipidContext _localctx = new LipidContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_lipid);
		try {
			setState(163);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(159);
				lipid_pure();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(160);
				lipid_pure();
				setState(161);
				adduct_info();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Lipid_pureContext extends ParserRuleContext {
		public GlContext gl() {
			return getRuleContext(GlContext.class,0);
		}
		public PlContext pl() {
			return getRuleContext(PlContext.class,0);
		}
		public SlContext sl() {
			return getRuleContext(SlContext.class,0);
		}
		public CholesterolContext cholesterol() {
			return getRuleContext(CholesterolContext.class,0);
		}
		public MediatorcContext mediatorc() {
			return getRuleContext(MediatorcContext.class,0);
		}
		public Lipid_pureContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lipid_pure; }
	}

	public final Lipid_pureContext lipid_pure() throws RecognitionException {
		Lipid_pureContext _localctx = new Lipid_pureContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_lipid_pure);
		try {
			setState(170);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__72:
			case T__73:
			case T__74:
			case T__75:
			case T__76:
			case T__77:
				enterOuterAlt(_localctx, 1);
				{
				setState(165);
				gl();
				}
				break;
			case T__78:
			case T__79:
			case T__80:
			case T__81:
			case T__82:
			case T__83:
			case T__84:
			case T__85:
			case T__86:
			case T__87:
			case T__88:
			case T__89:
			case T__90:
			case T__91:
			case T__92:
			case T__93:
			case T__94:
			case T__95:
			case T__96:
			case T__97:
			case T__98:
			case T__99:
			case T__100:
			case T__101:
			case T__102:
			case T__103:
				enterOuterAlt(_localctx, 2);
				{
				setState(166);
				pl();
				}
				break;
			case T__104:
			case T__105:
			case T__106:
			case T__107:
			case T__108:
			case T__109:
			case T__110:
			case T__111:
			case T__112:
			case T__113:
			case T__114:
			case T__115:
			case T__116:
			case T__117:
			case T__118:
			case T__119:
			case T__120:
			case T__121:
			case T__122:
				enterOuterAlt(_localctx, 3);
				{
				setState(167);
				sl();
				}
				break;
			case T__123:
			case T__124:
				enterOuterAlt(_localctx, 4);
				{
				setState(168);
				cholesterol();
				}
				break;
			case T__125:
			case T__126:
			case T__127:
			case T__128:
			case T__129:
			case T__130:
			case T__131:
			case T__132:
			case T__133:
			case T__134:
			case T__135:
			case T__136:
			case T__137:
			case T__138:
			case T__139:
			case T__140:
			case T__141:
			case T__142:
			case T__143:
			case T__144:
			case T__145:
			case T__146:
			case T__147:
			case T__148:
			case T__149:
			case T__150:
			case T__151:
			case T__152:
			case T__153:
			case T__154:
			case T__155:
			case T__156:
			case T__157:
			case T__158:
			case T__159:
			case T__160:
			case T__161:
			case T__162:
			case T__163:
			case T__164:
			case T__165:
			case T__166:
			case T__167:
			case T__168:
			case T__169:
			case T__170:
			case T__171:
			case T__172:
			case T__173:
			case T__174:
			case T__175:
			case T__176:
			case T__177:
			case T__178:
			case T__179:
			case T__180:
			case T__181:
			case T__182:
			case T__183:
			case T__184:
			case T__185:
				enterOuterAlt(_localctx, 5);
				{
				setState(169);
				mediatorc();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Adduct_infoContext extends ParserRuleContext {
		public AdductContext adduct() {
			return getRuleContext(AdductContext.class,0);
		}
		public ChargeContext charge() {
			return getRuleContext(ChargeContext.class,0);
		}
		public Charge_signContext charge_sign() {
			return getRuleContext(Charge_signContext.class,0);
		}
		public Adduct_separatorContext adduct_separator() {
			return getRuleContext(Adduct_separatorContext.class,0);
		}
		public Adduct_infoContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_adduct_info; }
	}

	public final Adduct_infoContext adduct_info() throws RecognitionException {
		Adduct_infoContext _localctx = new Adduct_infoContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_adduct_info);
		try {
			setState(185);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				enterOuterAlt(_localctx, 1);
				{
				setState(172);
				match(T__0);
				setState(173);
				adduct();
				setState(174);
				match(T__1);
				setState(175);
				charge();
				setState(176);
				charge_sign();
				}
				break;
			case SPACE:
				enterOuterAlt(_localctx, 2);
				{
				setState(178);
				adduct_separator();
				setState(179);
				match(T__0);
				setState(180);
				adduct();
				setState(181);
				match(T__1);
				setState(182);
				charge();
				setState(183);
				charge_sign();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AdductContext extends ParserRuleContext {
		public List<Adduct4Context> adduct4() {
			return getRuleContexts(Adduct4Context.class);
		}
		public Adduct4Context adduct4(int i) {
			return getRuleContext(Adduct4Context.class,i);
		}
		public AdductContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_adduct; }
	}

	public final AdductContext adduct() throws RecognitionException {
		AdductContext _localctx = new AdductContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_adduct);
		try {
			setState(198);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(187);
				match(T__2);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(188);
				match(T__3);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(189);
				match(T__4);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(190);
				match(T__5);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(191);
				match(T__6);
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(192);
				match(T__7);
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(193);
				match(T__8);
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(194);
				adduct4();
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(195);
				adduct4();
				setState(196);
				adduct4();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Adduct4Context extends ParserRuleContext {
		public List<Adduct2Context> adduct2() {
			return getRuleContexts(Adduct2Context.class);
		}
		public Adduct2Context adduct2(int i) {
			return getRuleContext(Adduct2Context.class,i);
		}
		public Adduct4Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_adduct4; }
	}

	public final Adduct4Context adduct4() throws RecognitionException {
		Adduct4Context _localctx = new Adduct4Context(_ctx, getState());
		enterRule(_localctx, 10, RULE_adduct4);
		try {
			setState(204);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(200);
				adduct2();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(201);
				adduct2();
				setState(202);
				adduct2();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Adduct2Context extends ParserRuleContext {
		public List<CharacterContext> character() {
			return getRuleContexts(CharacterContext.class);
		}
		public CharacterContext character(int i) {
			return getRuleContext(CharacterContext.class,i);
		}
		public Adduct2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_adduct2; }
	}

	public final Adduct2Context adduct2() throws RecognitionException {
		Adduct2Context _localctx = new Adduct2Context(_ctx, getState());
		enterRule(_localctx, 12, RULE_adduct2);
		try {
			setState(210);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(206);
				character();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(207);
				character();
				setState(208);
				character();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CharacterContext extends ParserRuleContext {
		public CharacterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_character; }
	}

	public final CharacterContext character() throws RecognitionException {
		CharacterContext _localctx = new CharacterContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_character);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(212);
			_la = _input.LA(1);
			if ( !(((((_la - 10)) & ~0x3f) == 0 && ((1L << (_la - 10)) & ((1L << (T__9 - 10)) | (1L << (T__10 - 10)) | (1L << (T__11 - 10)) | (1L << (T__12 - 10)) | (1L << (T__13 - 10)) | (1L << (T__14 - 10)) | (1L << (T__15 - 10)) | (1L << (T__16 - 10)) | (1L << (T__17 - 10)) | (1L << (T__18 - 10)) | (1L << (T__19 - 10)) | (1L << (T__20 - 10)) | (1L << (T__21 - 10)) | (1L << (T__22 - 10)) | (1L << (T__23 - 10)) | (1L << (T__24 - 10)) | (1L << (T__25 - 10)) | (1L << (T__26 - 10)) | (1L << (T__27 - 10)) | (1L << (T__28 - 10)) | (1L << (T__29 - 10)) | (1L << (T__30 - 10)) | (1L << (T__31 - 10)) | (1L << (T__32 - 10)) | (1L << (T__33 - 10)) | (1L << (T__34 - 10)) | (1L << (T__35 - 10)) | (1L << (T__36 - 10)) | (1L << (T__37 - 10)) | (1L << (T__38 - 10)) | (1L << (T__39 - 10)) | (1L << (T__40 - 10)) | (1L << (T__41 - 10)) | (1L << (T__42 - 10)) | (1L << (T__43 - 10)) | (1L << (T__44 - 10)) | (1L << (T__45 - 10)) | (1L << (T__46 - 10)) | (1L << (T__47 - 10)) | (1L << (T__48 - 10)) | (1L << (T__49 - 10)) | (1L << (T__50 - 10)) | (1L << (T__51 - 10)) | (1L << (T__52 - 10)) | (1L << (T__53 - 10)) | (1L << (T__54 - 10)) | (1L << (T__55 - 10)) | (1L << (T__56 - 10)) | (1L << (T__57 - 10)) | (1L << (T__58 - 10)) | (1L << (T__59 - 10)) | (1L << (T__60 - 10)) | (1L << (T__61 - 10)) | (1L << (T__62 - 10)) | (1L << (T__63 - 10)) | (1L << (T__64 - 10)) | (1L << (T__65 - 10)) | (1L << (T__66 - 10)) | (1L << (T__67 - 10)) | (1L << (T__68 - 10)) | (1L << (T__69 - 10)) | (1L << (T__70 - 10)) | (1L << (T__71 - 10)))) != 0) || _la==DASH) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ChargeContext extends ParserRuleContext {
		public ChargeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_charge; }
	}

	public final ChargeContext charge() throws RecognitionException {
		ChargeContext _localctx = new ChargeContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_charge);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(214);
			_la = _input.LA(1);
			if ( !(((((_la - 63)) & ~0x3f) == 0 && ((1L << (_la - 63)) & ((1L << (T__62 - 63)) | (1L << (T__63 - 63)) | (1L << (T__64 - 63)) | (1L << (T__65 - 63)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Charge_signContext extends ParserRuleContext {
		public Charge_signContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_charge_sign; }
	}

	public final Charge_signContext charge_sign() throws RecognitionException {
		Charge_signContext _localctx = new Charge_signContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_charge_sign);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(216);
			_la = _input.LA(1);
			if ( !(_la==T__71 || _la==DASH) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class GlContext extends ParserRuleContext {
		public MglContext mgl() {
			return getRuleContext(MglContext.class,0);
		}
		public DglContext dgl() {
			return getRuleContext(DglContext.class,0);
		}
		public SglContext sgl() {
			return getRuleContext(SglContext.class,0);
		}
		public TglContext tgl() {
			return getRuleContext(TglContext.class,0);
		}
		public GlContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_gl; }
	}

	public final GlContext gl() throws RecognitionException {
		GlContext _localctx = new GlContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_gl);
		try {
			setState(222);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__72:
				enterOuterAlt(_localctx, 1);
				{
				setState(218);
				mgl();
				}
				break;
			case T__73:
				enterOuterAlt(_localctx, 2);
				{
				setState(219);
				dgl();
				}
				break;
			case T__74:
			case T__75:
			case T__76:
				enterOuterAlt(_localctx, 3);
				{
				setState(220);
				sgl();
				}
				break;
			case T__77:
				enterOuterAlt(_localctx, 4);
				{
				setState(221);
				tgl();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MglContext extends ParserRuleContext {
		public Hg_mglContext hg_mgl() {
			return getRuleContext(Hg_mglContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public FaContext fa() {
			return getRuleContext(FaContext.class,0);
		}
		public MglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mgl; }
	}

	public final MglContext mgl() throws RecognitionException {
		MglContext _localctx = new MglContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_mgl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(224);
			hg_mgl();
			setState(225);
			headgroup_separator();
			setState(226);
			fa();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DglContext extends ParserRuleContext {
		public Hg_dglContext hg_dgl() {
			return getRuleContext(Hg_dglContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator() {
			return getRuleContext(Unsorted_fa_separatorContext.class,0);
		}
		public Sorted_fa_separatorContext sorted_fa_separator() {
			return getRuleContext(Sorted_fa_separatorContext.class,0);
		}
		public DglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dgl; }
	}

	public final DglContext dgl() throws RecognitionException {
		DglContext _localctx = new DglContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_dgl);
		try {
			setState(240);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(228);
				hg_dgl();
				setState(229);
				headgroup_separator();
				setState(230);
				fa();
				setState(231);
				unsorted_fa_separator();
				setState(232);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(234);
				hg_dgl();
				setState(235);
				headgroup_separator();
				setState(236);
				fa();
				setState(237);
				sorted_fa_separator();
				setState(238);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SglContext extends ParserRuleContext {
		public Hg_sglContext hg_sgl() {
			return getRuleContext(Hg_sglContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator() {
			return getRuleContext(Unsorted_fa_separatorContext.class,0);
		}
		public Sorted_fa_separatorContext sorted_fa_separator() {
			return getRuleContext(Sorted_fa_separatorContext.class,0);
		}
		public SglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sgl; }
	}

	public final SglContext sgl() throws RecognitionException {
		SglContext _localctx = new SglContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_sgl);
		try {
			setState(254);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(242);
				hg_sgl();
				setState(243);
				headgroup_separator();
				setState(244);
				fa();
				setState(245);
				unsorted_fa_separator();
				setState(246);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(248);
				hg_sgl();
				setState(249);
				headgroup_separator();
				setState(250);
				fa();
				setState(251);
				sorted_fa_separator();
				setState(252);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TglContext extends ParserRuleContext {
		public Hg_tglContext hg_tgl() {
			return getRuleContext(Hg_tglContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public List<Unsorted_fa_separatorContext> unsorted_fa_separator() {
			return getRuleContexts(Unsorted_fa_separatorContext.class);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator(int i) {
			return getRuleContext(Unsorted_fa_separatorContext.class,i);
		}
		public List<Sorted_fa_separatorContext> sorted_fa_separator() {
			return getRuleContexts(Sorted_fa_separatorContext.class);
		}
		public Sorted_fa_separatorContext sorted_fa_separator(int i) {
			return getRuleContext(Sorted_fa_separatorContext.class,i);
		}
		public TglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_tgl; }
	}

	public final TglContext tgl() throws RecognitionException {
		TglContext _localctx = new TglContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_tgl);
		try {
			setState(272);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(256);
				hg_tgl();
				setState(257);
				headgroup_separator();
				setState(258);
				fa();
				setState(259);
				unsorted_fa_separator();
				setState(260);
				fa();
				setState(261);
				unsorted_fa_separator();
				setState(262);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(264);
				hg_tgl();
				setState(265);
				headgroup_separator();
				setState(266);
				fa();
				setState(267);
				sorted_fa_separator();
				setState(268);
				fa();
				setState(269);
				sorted_fa_separator();
				setState(270);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_mglContext extends ParserRuleContext {
		public Hg_mglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_mgl; }
	}

	public final Hg_mglContext hg_mgl() throws RecognitionException {
		Hg_mglContext _localctx = new Hg_mglContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_hg_mgl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(274);
			match(T__72);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_dglContext extends ParserRuleContext {
		public Hg_dglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_dgl; }
	}

	public final Hg_dglContext hg_dgl() throws RecognitionException {
		Hg_dglContext _localctx = new Hg_dglContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_hg_dgl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(276);
			match(T__73);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_sglContext extends ParserRuleContext {
		public Hg_sglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_sgl; }
	}

	public final Hg_sglContext hg_sgl() throws RecognitionException {
		Hg_sglContext _localctx = new Hg_sglContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_hg_sgl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(278);
			_la = _input.LA(1);
			if ( !(((((_la - 75)) & ~0x3f) == 0 && ((1L << (_la - 75)) & ((1L << (T__74 - 75)) | (1L << (T__75 - 75)) | (1L << (T__76 - 75)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_tglContext extends ParserRuleContext {
		public Hg_tglContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_tgl; }
	}

	public final Hg_tglContext hg_tgl() throws RecognitionException {
		Hg_tglContext _localctx = new Hg_tglContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_hg_tgl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(280);
			match(T__77);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PlContext extends ParserRuleContext {
		public LplContext lpl() {
			return getRuleContext(LplContext.class,0);
		}
		public DplContext dpl() {
			return getRuleContext(DplContext.class,0);
		}
		public Pl_oContext pl_o() {
			return getRuleContext(Pl_oContext.class,0);
		}
		public ClContext cl() {
			return getRuleContext(ClContext.class,0);
		}
		public MlclContext mlcl() {
			return getRuleContext(MlclContext.class,0);
		}
		public PlContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pl; }
	}

	public final PlContext pl() throws RecognitionException {
		PlContext _localctx = new PlContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_pl);
		try {
			setState(287);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__94:
			case T__95:
			case T__96:
			case T__97:
			case T__98:
			case T__99:
				enterOuterAlt(_localctx, 1);
				{
				setState(282);
				lpl();
				}
				break;
			case T__80:
			case T__81:
			case T__82:
			case T__83:
			case T__84:
			case T__85:
			case T__86:
			case T__87:
			case T__88:
			case T__89:
			case T__90:
			case T__91:
			case T__92:
			case T__93:
				enterOuterAlt(_localctx, 2);
				{
				setState(283);
				dpl();
				}
				break;
			case T__100:
			case T__101:
			case T__102:
			case T__103:
				enterOuterAlt(_localctx, 3);
				{
				setState(284);
				pl_o();
				}
				break;
			case T__78:
				enterOuterAlt(_localctx, 4);
				{
				setState(285);
				cl();
				}
				break;
			case T__79:
				enterOuterAlt(_localctx, 5);
				{
				setState(286);
				mlcl();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Pl_oContext extends ParserRuleContext {
		public Lpl_oContext lpl_o() {
			return getRuleContext(Lpl_oContext.class,0);
		}
		public Dpl_oContext dpl_o() {
			return getRuleContext(Dpl_oContext.class,0);
		}
		public Pl_oContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pl_o; }
	}

	public final Pl_oContext pl_o() throws RecognitionException {
		Pl_oContext _localctx = new Pl_oContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_pl_o);
		try {
			setState(291);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__100:
			case T__101:
				enterOuterAlt(_localctx, 1);
				{
				setState(289);
				lpl_o();
				}
				break;
			case T__102:
			case T__103:
				enterOuterAlt(_localctx, 2);
				{
				setState(290);
				dpl_o();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LplContext extends ParserRuleContext {
		public Hg_lplcContext hg_lplc() {
			return getRuleContext(Hg_lplcContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public FaContext fa() {
			return getRuleContext(FaContext.class,0);
		}
		public LplContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lpl; }
	}

	public final LplContext lpl() throws RecognitionException {
		LplContext _localctx = new LplContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_lpl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(293);
			hg_lplc();
			setState(294);
			headgroup_separator();
			setState(295);
			fa();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Lpl_oContext extends ParserRuleContext {
		public Hg_lpl_ocContext hg_lpl_oc() {
			return getRuleContext(Hg_lpl_ocContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public FaContext fa() {
			return getRuleContext(FaContext.class,0);
		}
		public Lpl_oContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lpl_o; }
	}

	public final Lpl_oContext lpl_o() throws RecognitionException {
		Lpl_oContext _localctx = new Lpl_oContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_lpl_o);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(297);
			hg_lpl_oc();
			setState(298);
			headgroup_separator();
			setState(299);
			fa();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DplContext extends ParserRuleContext {
		public Hg_plcContext hg_plc() {
			return getRuleContext(Hg_plcContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator() {
			return getRuleContext(Unsorted_fa_separatorContext.class,0);
		}
		public Sorted_fa_separatorContext sorted_fa_separator() {
			return getRuleContext(Sorted_fa_separatorContext.class,0);
		}
		public DplContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dpl; }
	}

	public final DplContext dpl() throws RecognitionException {
		DplContext _localctx = new DplContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_dpl);
		try {
			setState(313);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(301);
				hg_plc();
				setState(302);
				headgroup_separator();
				setState(303);
				fa();
				setState(304);
				unsorted_fa_separator();
				setState(305);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(307);
				hg_plc();
				setState(308);
				headgroup_separator();
				setState(309);
				fa();
				setState(310);
				sorted_fa_separator();
				setState(311);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Dpl_oContext extends ParserRuleContext {
		public Hg_pl_ocContext hg_pl_oc() {
			return getRuleContext(Hg_pl_ocContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator() {
			return getRuleContext(Unsorted_fa_separatorContext.class,0);
		}
		public Sorted_fa_separatorContext sorted_fa_separator() {
			return getRuleContext(Sorted_fa_separatorContext.class,0);
		}
		public Dpl_oContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dpl_o; }
	}

	public final Dpl_oContext dpl_o() throws RecognitionException {
		Dpl_oContext _localctx = new Dpl_oContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_dpl_o);
		try {
			setState(327);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(315);
				hg_pl_oc();
				setState(316);
				headgroup_separator();
				setState(317);
				fa();
				setState(318);
				unsorted_fa_separator();
				setState(319);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(321);
				hg_pl_oc();
				setState(322);
				headgroup_separator();
				setState(323);
				fa();
				setState(324);
				sorted_fa_separator();
				setState(325);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClContext extends ParserRuleContext {
		public Hg_clcContext hg_clc() {
			return getRuleContext(Hg_clcContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public List<Unsorted_fa_separatorContext> unsorted_fa_separator() {
			return getRuleContexts(Unsorted_fa_separatorContext.class);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator(int i) {
			return getRuleContext(Unsorted_fa_separatorContext.class,i);
		}
		public List<Sorted_fa_separatorContext> sorted_fa_separator() {
			return getRuleContexts(Sorted_fa_separatorContext.class);
		}
		public Sorted_fa_separatorContext sorted_fa_separator(int i) {
			return getRuleContext(Sorted_fa_separatorContext.class,i);
		}
		public ClContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cl; }
	}

	public final ClContext cl() throws RecognitionException {
		ClContext _localctx = new ClContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_cl);
		try {
			setState(349);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(329);
				hg_clc();
				setState(330);
				headgroup_separator();
				setState(331);
				fa();
				setState(332);
				unsorted_fa_separator();
				setState(333);
				fa();
				setState(334);
				unsorted_fa_separator();
				setState(335);
				fa();
				setState(336);
				unsorted_fa_separator();
				setState(337);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(339);
				hg_clc();
				setState(340);
				headgroup_separator();
				setState(341);
				fa();
				setState(342);
				sorted_fa_separator();
				setState(343);
				fa();
				setState(344);
				sorted_fa_separator();
				setState(345);
				fa();
				setState(346);
				sorted_fa_separator();
				setState(347);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MlclContext extends ParserRuleContext {
		public Hg_mlclcContext hg_mlclc() {
			return getRuleContext(Hg_mlclcContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public List<FaContext> fa() {
			return getRuleContexts(FaContext.class);
		}
		public FaContext fa(int i) {
			return getRuleContext(FaContext.class,i);
		}
		public List<Unsorted_fa_separatorContext> unsorted_fa_separator() {
			return getRuleContexts(Unsorted_fa_separatorContext.class);
		}
		public Unsorted_fa_separatorContext unsorted_fa_separator(int i) {
			return getRuleContext(Unsorted_fa_separatorContext.class,i);
		}
		public List<Sorted_fa_separatorContext> sorted_fa_separator() {
			return getRuleContexts(Sorted_fa_separatorContext.class);
		}
		public Sorted_fa_separatorContext sorted_fa_separator(int i) {
			return getRuleContext(Sorted_fa_separatorContext.class,i);
		}
		public MlclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mlcl; }
	}

	public final MlclContext mlcl() throws RecognitionException {
		MlclContext _localctx = new MlclContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_mlcl);
		try {
			setState(367);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(351);
				hg_mlclc();
				setState(352);
				headgroup_separator();
				setState(353);
				fa();
				setState(354);
				unsorted_fa_separator();
				setState(355);
				fa();
				setState(356);
				unsorted_fa_separator();
				setState(357);
				fa();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(359);
				hg_mlclc();
				setState(360);
				headgroup_separator();
				setState(361);
				fa();
				setState(362);
				sorted_fa_separator();
				setState(363);
				fa();
				setState(364);
				sorted_fa_separator();
				setState(365);
				fa();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_clcContext extends ParserRuleContext {
		public Hg_clContext hg_cl() {
			return getRuleContext(Hg_clContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_clcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_clc; }
	}

	public final Hg_clcContext hg_clc() throws RecognitionException {
		Hg_clcContext _localctx = new Hg_clcContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_hg_clc);
		try {
			setState(373);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(369);
				hg_cl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(370);
				hg_cl();
				setState(371);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_clContext extends ParserRuleContext {
		public Hg_clContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_cl; }
	}

	public final Hg_clContext hg_cl() throws RecognitionException {
		Hg_clContext _localctx = new Hg_clContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_hg_cl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(375);
			match(T__78);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_mlclcContext extends ParserRuleContext {
		public Hg_mlclContext hg_mlcl() {
			return getRuleContext(Hg_mlclContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_mlclcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_mlclc; }
	}

	public final Hg_mlclcContext hg_mlclc() throws RecognitionException {
		Hg_mlclcContext _localctx = new Hg_mlclcContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_hg_mlclc);
		try {
			setState(381);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(377);
				hg_mlcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(378);
				hg_mlcl();
				setState(379);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_mlclContext extends ParserRuleContext {
		public Hg_mlclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_mlcl; }
	}

	public final Hg_mlclContext hg_mlcl() throws RecognitionException {
		Hg_mlclContext _localctx = new Hg_mlclContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_hg_mlcl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(383);
			match(T__79);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_plcContext extends ParserRuleContext {
		public Hg_plContext hg_pl() {
			return getRuleContext(Hg_plContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_plcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_plc; }
	}

	public final Hg_plcContext hg_plc() throws RecognitionException {
		Hg_plcContext _localctx = new Hg_plcContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_hg_plc);
		try {
			setState(389);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(385);
				hg_pl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(386);
				hg_pl();
				setState(387);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_plContext extends ParserRuleContext {
		public Hg_plContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_pl; }
	}

	public final Hg_plContext hg_pl() throws RecognitionException {
		Hg_plContext _localctx = new Hg_plContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_hg_pl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(391);
			_la = _input.LA(1);
			if ( !(((((_la - 81)) & ~0x3f) == 0 && ((1L << (_la - 81)) & ((1L << (T__80 - 81)) | (1L << (T__81 - 81)) | (1L << (T__82 - 81)) | (1L << (T__83 - 81)) | (1L << (T__84 - 81)) | (1L << (T__85 - 81)) | (1L << (T__86 - 81)) | (1L << (T__87 - 81)) | (1L << (T__88 - 81)) | (1L << (T__89 - 81)) | (1L << (T__90 - 81)) | (1L << (T__91 - 81)) | (1L << (T__92 - 81)) | (1L << (T__93 - 81)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_lplcContext extends ParserRuleContext {
		public Hg_lplContext hg_lpl() {
			return getRuleContext(Hg_lplContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_lplcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_lplc; }
	}

	public final Hg_lplcContext hg_lplc() throws RecognitionException {
		Hg_lplcContext _localctx = new Hg_lplcContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_hg_lplc);
		try {
			setState(397);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(393);
				hg_lpl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(394);
				hg_lpl();
				setState(395);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_lplContext extends ParserRuleContext {
		public Hg_lplContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_lpl; }
	}

	public final Hg_lplContext hg_lpl() throws RecognitionException {
		Hg_lplContext _localctx = new Hg_lplContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_hg_lpl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(399);
			_la = _input.LA(1);
			if ( !(((((_la - 95)) & ~0x3f) == 0 && ((1L << (_la - 95)) & ((1L << (T__94 - 95)) | (1L << (T__95 - 95)) | (1L << (T__96 - 95)) | (1L << (T__97 - 95)) | (1L << (T__98 - 95)) | (1L << (T__99 - 95)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_lpl_ocContext extends ParserRuleContext {
		public Hg_lpl_oContext hg_lpl_o() {
			return getRuleContext(Hg_lpl_oContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_lpl_ocContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_lpl_oc; }
	}

	public final Hg_lpl_ocContext hg_lpl_oc() throws RecognitionException {
		Hg_lpl_ocContext _localctx = new Hg_lpl_ocContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_hg_lpl_oc);
		try {
			setState(405);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(401);
				hg_lpl_o();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(402);
				hg_lpl_o();
				setState(403);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_lpl_oContext extends ParserRuleContext {
		public Hg_lpl_oContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_lpl_o; }
	}

	public final Hg_lpl_oContext hg_lpl_o() throws RecognitionException {
		Hg_lpl_oContext _localctx = new Hg_lpl_oContext(_ctx, getState());
		enterRule(_localctx, 72, RULE_hg_lpl_o);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(407);
			_la = _input.LA(1);
			if ( !(_la==T__100 || _la==T__101) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_pl_ocContext extends ParserRuleContext {
		public Hg_pl_oContext hg_pl_o() {
			return getRuleContext(Hg_pl_oContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_pl_ocContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_pl_oc; }
	}

	public final Hg_pl_ocContext hg_pl_oc() throws RecognitionException {
		Hg_pl_ocContext _localctx = new Hg_pl_ocContext(_ctx, getState());
		enterRule(_localctx, 74, RULE_hg_pl_oc);
		try {
			setState(413);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(409);
				hg_pl_o();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(410);
				hg_pl_o();
				setState(411);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_pl_oContext extends ParserRuleContext {
		public Hg_pl_oContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_pl_o; }
	}

	public final Hg_pl_oContext hg_pl_o() throws RecognitionException {
		Hg_pl_oContext _localctx = new Hg_pl_oContext(_ctx, getState());
		enterRule(_localctx, 76, RULE_hg_pl_o);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(415);
			_la = _input.LA(1);
			if ( !(_la==T__102 || _la==T__103) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SlContext extends ParserRuleContext {
		public LslContext lsl() {
			return getRuleContext(LslContext.class,0);
		}
		public DslContext dsl() {
			return getRuleContext(DslContext.class,0);
		}
		public SlContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sl; }
	}

	public final SlContext sl() throws RecognitionException {
		SlContext _localctx = new SlContext(_ctx, getState());
		enterRule(_localctx, 78, RULE_sl);
		try {
			setState(419);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__104:
			case T__105:
			case T__106:
			case T__107:
				enterOuterAlt(_localctx, 1);
				{
				setState(417);
				lsl();
				}
				break;
			case T__108:
			case T__109:
			case T__110:
			case T__111:
			case T__112:
			case T__113:
			case T__114:
			case T__115:
			case T__116:
			case T__117:
			case T__118:
			case T__119:
			case T__120:
			case T__121:
			case T__122:
				enterOuterAlt(_localctx, 2);
				{
				setState(418);
				dsl();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LslContext extends ParserRuleContext {
		public Hg_lslcContext hg_lslc() {
			return getRuleContext(Hg_lslcContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public LcbContext lcb() {
			return getRuleContext(LcbContext.class,0);
		}
		public LslContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lsl; }
	}

	public final LslContext lsl() throws RecognitionException {
		LslContext _localctx = new LslContext(_ctx, getState());
		enterRule(_localctx, 80, RULE_lsl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(421);
			hg_lslc();
			setState(422);
			headgroup_separator();
			setState(423);
			lcb();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DslContext extends ParserRuleContext {
		public Hg_dslcContext hg_dslc() {
			return getRuleContext(Hg_dslcContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public LcbContext lcb() {
			return getRuleContext(LcbContext.class,0);
		}
		public Sorted_fa_separatorContext sorted_fa_separator() {
			return getRuleContext(Sorted_fa_separatorContext.class,0);
		}
		public FaContext fa() {
			return getRuleContext(FaContext.class,0);
		}
		public DslContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dsl; }
	}

	public final DslContext dsl() throws RecognitionException {
		DslContext _localctx = new DslContext(_ctx, getState());
		enterRule(_localctx, 82, RULE_dsl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(425);
			hg_dslc();
			setState(426);
			headgroup_separator();
			setState(427);
			lcb();
			setState(428);
			sorted_fa_separator();
			setState(429);
			fa();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_lslcContext extends ParserRuleContext {
		public Hg_lslContext hg_lsl() {
			return getRuleContext(Hg_lslContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_lslcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_lslc; }
	}

	public final Hg_lslcContext hg_lslc() throws RecognitionException {
		Hg_lslcContext _localctx = new Hg_lslcContext(_ctx, getState());
		enterRule(_localctx, 84, RULE_hg_lslc);
		try {
			setState(435);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(431);
				hg_lsl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(432);
				hg_lsl();
				setState(433);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_lslContext extends ParserRuleContext {
		public Hg_lslContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_lsl; }
	}

	public final Hg_lslContext hg_lsl() throws RecognitionException {
		Hg_lslContext _localctx = new Hg_lslContext(_ctx, getState());
		enterRule(_localctx, 86, RULE_hg_lsl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(437);
			_la = _input.LA(1);
			if ( !(((((_la - 105)) & ~0x3f) == 0 && ((1L << (_la - 105)) & ((1L << (T__104 - 105)) | (1L << (T__105 - 105)) | (1L << (T__106 - 105)) | (1L << (T__107 - 105)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_dslcContext extends ParserRuleContext {
		public Hg_dslContext hg_dsl() {
			return getRuleContext(Hg_dslContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_dslcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_dslc; }
	}

	public final Hg_dslcContext hg_dslc() throws RecognitionException {
		Hg_dslcContext _localctx = new Hg_dslcContext(_ctx, getState());
		enterRule(_localctx, 88, RULE_hg_dslc);
		try {
			setState(443);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(439);
				hg_dsl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(440);
				hg_dsl();
				setState(441);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_dslContext extends ParserRuleContext {
		public Hg_dslContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_dsl; }
	}

	public final Hg_dslContext hg_dsl() throws RecognitionException {
		Hg_dslContext _localctx = new Hg_dslContext(_ctx, getState());
		enterRule(_localctx, 90, RULE_hg_dsl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(445);
			_la = _input.LA(1);
			if ( !(((((_la - 109)) & ~0x3f) == 0 && ((1L << (_la - 109)) & ((1L << (T__108 - 109)) | (1L << (T__109 - 109)) | (1L << (T__110 - 109)) | (1L << (T__111 - 109)) | (1L << (T__112 - 109)) | (1L << (T__113 - 109)) | (1L << (T__114 - 109)) | (1L << (T__115 - 109)) | (1L << (T__116 - 109)) | (1L << (T__117 - 109)) | (1L << (T__118 - 109)) | (1L << (T__119 - 109)) | (1L << (T__120 - 109)) | (1L << (T__121 - 109)) | (1L << (T__122 - 109)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CholesterolContext extends ParserRuleContext {
		public ChcContext chc() {
			return getRuleContext(ChcContext.class,0);
		}
		public CheContext che() {
			return getRuleContext(CheContext.class,0);
		}
		public CholesterolContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cholesterol; }
	}

	public final CholesterolContext cholesterol() throws RecognitionException {
		CholesterolContext _localctx = new CholesterolContext(_ctx, getState());
		enterRule(_localctx, 92, RULE_cholesterol);
		try {
			setState(449);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__123:
				enterOuterAlt(_localctx, 1);
				{
				setState(447);
				chc();
				}
				break;
			case T__124:
				enterOuterAlt(_localctx, 2);
				{
				setState(448);
				che();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ChcContext extends ParserRuleContext {
		public ChContext ch() {
			return getRuleContext(ChContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public ChcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_chc; }
	}

	public final ChcContext chc() throws RecognitionException {
		ChcContext _localctx = new ChcContext(_ctx, getState());
		enterRule(_localctx, 94, RULE_chc);
		try {
			setState(455);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(451);
				ch();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(452);
				ch();
				setState(453);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ChContext extends ParserRuleContext {
		public ChContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ch; }
	}

	public final ChContext ch() throws RecognitionException {
		ChContext _localctx = new ChContext(_ctx, getState());
		enterRule(_localctx, 96, RULE_ch);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(457);
			match(T__123);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CheContext extends ParserRuleContext {
		public Hg_checContext hg_chec() {
			return getRuleContext(Hg_checContext.class,0);
		}
		public Headgroup_separatorContext headgroup_separator() {
			return getRuleContext(Headgroup_separatorContext.class,0);
		}
		public FaContext fa() {
			return getRuleContext(FaContext.class,0);
		}
		public CheContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_che; }
	}

	public final CheContext che() throws RecognitionException {
		CheContext _localctx = new CheContext(_ctx, getState());
		enterRule(_localctx, 98, RULE_che);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(459);
			hg_chec();
			setState(460);
			headgroup_separator();
			setState(461);
			fa();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_checContext extends ParserRuleContext {
		public Hg_cheContext hg_che() {
			return getRuleContext(Hg_cheContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Hg_checContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_chec; }
	}

	public final Hg_checContext hg_chec() throws RecognitionException {
		Hg_checContext _localctx = new Hg_checContext(_ctx, getState());
		enterRule(_localctx, 100, RULE_hg_chec);
		try {
			setState(467);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(463);
				hg_che();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(464);
				hg_che();
				setState(465);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Hg_cheContext extends ParserRuleContext {
		public Hg_cheContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hg_che; }
	}

	public final Hg_cheContext hg_che() throws RecognitionException {
		Hg_cheContext _localctx = new Hg_cheContext(_ctx, getState());
		enterRule(_localctx, 102, RULE_hg_che);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(469);
			match(T__124);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MediatorcContext extends ParserRuleContext {
		public MediatorContext mediator() {
			return getRuleContext(MediatorContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public MediatorcContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mediatorc; }
	}

	public final MediatorcContext mediatorc() throws RecognitionException {
		MediatorcContext _localctx = new MediatorcContext(_ctx, getState());
		enterRule(_localctx, 104, RULE_mediatorc);
		try {
			setState(475);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(471);
				mediator();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(472);
				mediator();
				setState(473);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MediatorContext extends ParserRuleContext {
		public MediatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mediator; }
	}

	public final MediatorContext mediator() throws RecognitionException {
		MediatorContext _localctx = new MediatorContext(_ctx, getState());
		enterRule(_localctx, 106, RULE_mediator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(477);
			_la = _input.LA(1);
			if ( !(((((_la - 126)) & ~0x3f) == 0 && ((1L << (_la - 126)) & ((1L << (T__125 - 126)) | (1L << (T__126 - 126)) | (1L << (T__127 - 126)) | (1L << (T__128 - 126)) | (1L << (T__129 - 126)) | (1L << (T__130 - 126)) | (1L << (T__131 - 126)) | (1L << (T__132 - 126)) | (1L << (T__133 - 126)) | (1L << (T__134 - 126)) | (1L << (T__135 - 126)) | (1L << (T__136 - 126)) | (1L << (T__137 - 126)) | (1L << (T__138 - 126)) | (1L << (T__139 - 126)) | (1L << (T__140 - 126)) | (1L << (T__141 - 126)) | (1L << (T__142 - 126)) | (1L << (T__143 - 126)) | (1L << (T__144 - 126)) | (1L << (T__145 - 126)) | (1L << (T__146 - 126)) | (1L << (T__147 - 126)) | (1L << (T__148 - 126)) | (1L << (T__149 - 126)) | (1L << (T__150 - 126)) | (1L << (T__151 - 126)) | (1L << (T__152 - 126)) | (1L << (T__153 - 126)) | (1L << (T__154 - 126)) | (1L << (T__155 - 126)) | (1L << (T__156 - 126)) | (1L << (T__157 - 126)) | (1L << (T__158 - 126)) | (1L << (T__159 - 126)) | (1L << (T__160 - 126)) | (1L << (T__161 - 126)) | (1L << (T__162 - 126)) | (1L << (T__163 - 126)) | (1L << (T__164 - 126)) | (1L << (T__165 - 126)) | (1L << (T__166 - 126)) | (1L << (T__167 - 126)) | (1L << (T__168 - 126)) | (1L << (T__169 - 126)) | (1L << (T__170 - 126)) | (1L << (T__171 - 126)) | (1L << (T__172 - 126)) | (1L << (T__173 - 126)) | (1L << (T__174 - 126)) | (1L << (T__175 - 126)) | (1L << (T__176 - 126)) | (1L << (T__177 - 126)) | (1L << (T__178 - 126)) | (1L << (T__179 - 126)) | (1L << (T__180 - 126)) | (1L << (T__181 - 126)) | (1L << (T__182 - 126)) | (1L << (T__183 - 126)) | (1L << (T__184 - 126)) | (1L << (T__185 - 126)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FaContext extends ParserRuleContext {
		public Fa_pureContext fa_pure() {
			return getRuleContext(Fa_pureContext.class,0);
		}
		public EtherContext ether() {
			return getRuleContext(EtherContext.class,0);
		}
		public FaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fa; }
	}

	public final FaContext fa() throws RecognitionException {
		FaContext _localctx = new FaContext(_ctx, getState());
		enterRule(_localctx, 108, RULE_fa);
		try {
			setState(483);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(479);
				fa_pure();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(480);
				fa_pure();
				setState(481);
				ether();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Fa_pureContext extends ParserRuleContext {
		public CarbonContext carbon() {
			return getRuleContext(CarbonContext.class,0);
		}
		public Carbon_db_separatorContext carbon_db_separator() {
			return getRuleContext(Carbon_db_separatorContext.class,0);
		}
		public DbContext db() {
			return getRuleContext(DbContext.class,0);
		}
		public Db_hydroxyl_separatorContext db_hydroxyl_separator() {
			return getRuleContext(Db_hydroxyl_separatorContext.class,0);
		}
		public HydroxylContext hydroxyl() {
			return getRuleContext(HydroxylContext.class,0);
		}
		public HeavyContext heavy() {
			return getRuleContext(HeavyContext.class,0);
		}
		public Fa_pureContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fa_pure; }
	}

	public final Fa_pureContext fa_pure() throws RecognitionException {
		Fa_pureContext _localctx = new Fa_pureContext(_ctx, getState());
		enterRule(_localctx, 110, RULE_fa_pure);
		try {
			setState(507);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,30,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(485);
				carbon();
				setState(486);
				carbon_db_separator();
				setState(487);
				db();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(489);
				carbon();
				setState(490);
				carbon_db_separator();
				setState(491);
				db();
				setState(492);
				db_hydroxyl_separator();
				setState(493);
				hydroxyl();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(495);
				carbon();
				setState(496);
				carbon_db_separator();
				setState(497);
				db();
				setState(498);
				heavy();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(500);
				carbon();
				setState(501);
				carbon_db_separator();
				setState(502);
				db();
				setState(503);
				db_hydroxyl_separator();
				setState(504);
				hydroxyl();
				setState(505);
				heavy();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class EtherContext extends ParserRuleContext {
		public EtherContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ether; }
	}

	public final EtherContext ether() throws RecognitionException {
		EtherContext _localctx = new EtherContext(_ctx, getState());
		enterRule(_localctx, 112, RULE_ether);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(509);
			_la = _input.LA(1);
			if ( !(_la==T__9 || _la==T__24) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LcbContext extends ParserRuleContext {
		public CarbonContext carbon() {
			return getRuleContext(CarbonContext.class,0);
		}
		public Carbon_db_separatorContext carbon_db_separator() {
			return getRuleContext(Carbon_db_separatorContext.class,0);
		}
		public DbContext db() {
			return getRuleContext(DbContext.class,0);
		}
		public Db_hydroxyl_separatorContext db_hydroxyl_separator() {
			return getRuleContext(Db_hydroxyl_separatorContext.class,0);
		}
		public HydroxylContext hydroxyl() {
			return getRuleContext(HydroxylContext.class,0);
		}
		public Old_hydroxylContext old_hydroxyl() {
			return getRuleContext(Old_hydroxylContext.class,0);
		}
		public LcbContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lcb; }
	}

	public final LcbContext lcb() throws RecognitionException {
		LcbContext _localctx = new LcbContext(_ctx, getState());
		enterRule(_localctx, 114, RULE_lcb);
		try {
			setState(522);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__61:
			case T__62:
			case T__63:
			case T__64:
			case T__65:
			case T__66:
			case T__67:
			case T__68:
			case T__69:
			case T__70:
				enterOuterAlt(_localctx, 1);
				{
				setState(511);
				carbon();
				setState(512);
				carbon_db_separator();
				setState(513);
				db();
				setState(514);
				db_hydroxyl_separator();
				setState(515);
				hydroxyl();
				}
				break;
			case T__12:
			case T__28:
				enterOuterAlt(_localctx, 2);
				{
				setState(517);
				old_hydroxyl();
				setState(518);
				carbon();
				setState(519);
				carbon_db_separator();
				setState(520);
				db();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CarbonContext extends ParserRuleContext {
		public NumberContext number() {
			return getRuleContext(NumberContext.class,0);
		}
		public CarbonContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_carbon; }
	}

	public final CarbonContext carbon() throws RecognitionException {
		CarbonContext _localctx = new CarbonContext(_ctx, getState());
		enterRule(_localctx, 116, RULE_carbon);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(524);
			number(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DbContext extends ParserRuleContext {
		public Db_countContext db_count() {
			return getRuleContext(Db_countContext.class,0);
		}
		public Round_open_bracketContext round_open_bracket() {
			return getRuleContext(Round_open_bracketContext.class,0);
		}
		public Db_positionContext db_position() {
			return getRuleContext(Db_positionContext.class,0);
		}
		public Round_close_bracketContext round_close_bracket() {
			return getRuleContext(Round_close_bracketContext.class,0);
		}
		public DbContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_db; }
	}

	public final DbContext db() throws RecognitionException {
		DbContext _localctx = new DbContext(_ctx, getState());
		enterRule(_localctx, 118, RULE_db);
		try {
			setState(532);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,32,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(526);
				db_count();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(527);
				db_count();
				setState(528);
				round_open_bracket();
				setState(529);
				db_position(0);
				setState(530);
				round_close_bracket();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Db_countContext extends ParserRuleContext {
		public NumberContext number() {
			return getRuleContext(NumberContext.class,0);
		}
		public Db_countContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_db_count; }
	}

	public final Db_countContext db_count() throws RecognitionException {
		Db_countContext _localctx = new Db_countContext(_ctx, getState());
		enterRule(_localctx, 120, RULE_db_count);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(534);
			number(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Db_positionContext extends ParserRuleContext {
		public NumberContext number() {
			return getRuleContext(NumberContext.class,0);
		}
		public CistransContext cistrans() {
			return getRuleContext(CistransContext.class,0);
		}
		public List<Db_positionContext> db_position() {
			return getRuleContexts(Db_positionContext.class);
		}
		public Db_positionContext db_position(int i) {
			return getRuleContext(Db_positionContext.class,i);
		}
		public Db_position_separatorContext db_position_separator() {
			return getRuleContext(Db_position_separatorContext.class,0);
		}
		public Db_positionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_db_position; }
	}

	public final Db_positionContext db_position() throws RecognitionException {
		return db_position(0);
	}

	private Db_positionContext db_position(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		Db_positionContext _localctx = new Db_positionContext(_ctx, _parentState);
		Db_positionContext _prevctx = _localctx;
		int _startState = 122;
		enterRecursionRule(_localctx, 122, RULE_db_position, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(543);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,33,_ctx) ) {
			case 1:
				{
				setState(537);
				number(0);
				setState(538);
				cistrans();
				}
				break;
			case 2:
				{
				setState(540);
				number(0);
				setState(541);
				cistrans();
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(551);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new Db_positionContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_db_position);
					setState(545);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(546);
					db_position_separator();
					setState(547);
					db_position(2);
					}
					} 
				}
				setState(553);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,34,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class CistransContext extends ParserRuleContext {
		public CistransContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cistrans; }
	}

	public final CistransContext cistrans() throws RecognitionException {
		CistransContext _localctx = new CistransContext(_ctx, getState());
		enterRule(_localctx, 124, RULE_cistrans);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(554);
			_la = _input.LA(1);
			if ( !(_la==T__39 || _la==T__60) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class HydroxylContext extends ParserRuleContext {
		public NumberContext number() {
			return getRuleContext(NumberContext.class,0);
		}
		public HydroxylContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_hydroxyl; }
	}

	public final HydroxylContext hydroxyl() throws RecognitionException {
		HydroxylContext _localctx = new HydroxylContext(_ctx, getState());
		enterRule(_localctx, 126, RULE_hydroxyl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(556);
			number(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Old_hydroxylContext extends ParserRuleContext {
		public Old_hydroxylContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_old_hydroxyl; }
	}

	public final Old_hydroxylContext old_hydroxyl() throws RecognitionException {
		Old_hydroxylContext _localctx = new Old_hydroxylContext(_ctx, getState());
		enterRule(_localctx, 128, RULE_old_hydroxyl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(558);
			_la = _input.LA(1);
			if ( !(_la==T__12 || _la==T__28) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NumberContext extends ParserRuleContext {
		public List<NumberContext> number() {
			return getRuleContexts(NumberContext.class);
		}
		public NumberContext number(int i) {
			return getRuleContext(NumberContext.class,i);
		}
		public NumberContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_number; }
	}

	public final NumberContext number() throws RecognitionException {
		return number(0);
	}

	private NumberContext number(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		NumberContext _localctx = new NumberContext(_ctx, _parentState);
		NumberContext _prevctx = _localctx;
		int _startState = 130;
		enterRecursionRule(_localctx, 130, RULE_number, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(571);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__61:
				{
				setState(561);
				match(T__61);
				}
				break;
			case T__62:
				{
				setState(562);
				match(T__62);
				}
				break;
			case T__63:
				{
				setState(563);
				match(T__63);
				}
				break;
			case T__64:
				{
				setState(564);
				match(T__64);
				}
				break;
			case T__65:
				{
				setState(565);
				match(T__65);
				}
				break;
			case T__66:
				{
				setState(566);
				match(T__66);
				}
				break;
			case T__67:
				{
				setState(567);
				match(T__67);
				}
				break;
			case T__68:
				{
				setState(568);
				match(T__68);
				}
				break;
			case T__69:
				{
				setState(569);
				match(T__69);
				}
				break;
			case T__70:
				{
				setState(570);
				match(T__70);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(577);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,36,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new NumberContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_number);
					setState(573);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(574);
					number(2);
					}
					} 
				}
				setState(579);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,36,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class HeavyContext extends ParserRuleContext {
		public IsotopesContext isotopes() {
			return getRuleContext(IsotopesContext.class,0);
		}
		public HeavyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_heavy; }
	}

	public final HeavyContext heavy() throws RecognitionException {
		HeavyContext _localctx = new HeavyContext(_ctx, getState());
		enterRule(_localctx, 132, RULE_heavy);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(580);
			match(T__186);
			setState(581);
			isotopes(0);
			setState(582);
			match(RCB);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IsotopesContext extends ParserRuleContext {
		public List<NumberContext> number() {
			return getRuleContexts(NumberContext.class);
		}
		public NumberContext number(int i) {
			return getRuleContext(NumberContext.class,i);
		}
		public ElementContext element() {
			return getRuleContext(ElementContext.class,0);
		}
		public List<IsotopesContext> isotopes() {
			return getRuleContexts(IsotopesContext.class);
		}
		public IsotopesContext isotopes(int i) {
			return getRuleContext(IsotopesContext.class,i);
		}
		public IsotopesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_isotopes; }
	}

	public final IsotopesContext isotopes() throws RecognitionException {
		return isotopes(0);
	}

	private IsotopesContext isotopes(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		IsotopesContext _localctx = new IsotopesContext(_ctx, _parentState);
		IsotopesContext _prevctx = _localctx;
		int _startState = 134;
		enterRecursionRule(_localctx, 134, RULE_isotopes, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(585);
			match(T__187);
			setState(586);
			number(0);
			setState(587);
			match(T__1);
			setState(588);
			element();
			setState(589);
			number(0);
			}
			_ctx.stop = _input.LT(-1);
			setState(595);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,37,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new IsotopesContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_isotopes);
					setState(591);
					if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
					setState(592);
					isotopes(3);
					}
					} 
				}
				setState(597);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,37,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class ElementContext extends ParserRuleContext {
		public ElementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_element; }
	}

	public final ElementContext element() throws RecognitionException {
		ElementContext _localctx = new ElementContext(_ctx, getState());
		enterRule(_localctx, 136, RULE_element);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(598);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__37) | (1L << T__42) | (1L << T__48) | (1L << T__49) | (1L << T__50) | (1L << T__53))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Sorted_fa_separatorContext extends ParserRuleContext {
		public TerminalNode SLASH() { return getToken(GoslinParser.SLASH, 0); }
		public TerminalNode BACKSLASH() { return getToken(GoslinParser.BACKSLASH, 0); }
		public Sorted_fa_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sorted_fa_separator; }
	}

	public final Sorted_fa_separatorContext sorted_fa_separator() throws RecognitionException {
		Sorted_fa_separatorContext _localctx = new Sorted_fa_separatorContext(_ctx, getState());
		enterRule(_localctx, 138, RULE_sorted_fa_separator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(600);
			_la = _input.LA(1);
			if ( !(_la==SLASH || _la==BACKSLASH) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Adduct_separatorContext extends ParserRuleContext {
		public TerminalNode SPACE() { return getToken(GoslinParser.SPACE, 0); }
		public Adduct_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_adduct_separator; }
	}

	public final Adduct_separatorContext adduct_separator() throws RecognitionException {
		Adduct_separatorContext _localctx = new Adduct_separatorContext(_ctx, getState());
		enterRule(_localctx, 140, RULE_adduct_separator);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(602);
			match(SPACE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Unsorted_fa_separatorContext extends ParserRuleContext {
		public TerminalNode DASH() { return getToken(GoslinParser.DASH, 0); }
		public TerminalNode UNDERSCORE() { return getToken(GoslinParser.UNDERSCORE, 0); }
		public Unsorted_fa_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unsorted_fa_separator; }
	}

	public final Unsorted_fa_separatorContext unsorted_fa_separator() throws RecognitionException {
		Unsorted_fa_separatorContext _localctx = new Unsorted_fa_separatorContext(_ctx, getState());
		enterRule(_localctx, 142, RULE_unsorted_fa_separator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(604);
			_la = _input.LA(1);
			if ( !(_la==DASH || _la==UNDERSCORE) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Headgroup_separatorContext extends ParserRuleContext {
		public TerminalNode SPACE() { return getToken(GoslinParser.SPACE, 0); }
		public Headgroup_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_headgroup_separator; }
	}

	public final Headgroup_separatorContext headgroup_separator() throws RecognitionException {
		Headgroup_separatorContext _localctx = new Headgroup_separatorContext(_ctx, getState());
		enterRule(_localctx, 144, RULE_headgroup_separator);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(606);
			match(SPACE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Carbon_db_separatorContext extends ParserRuleContext {
		public TerminalNode COLON() { return getToken(GoslinParser.COLON, 0); }
		public Carbon_db_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_carbon_db_separator; }
	}

	public final Carbon_db_separatorContext carbon_db_separator() throws RecognitionException {
		Carbon_db_separatorContext _localctx = new Carbon_db_separatorContext(_ctx, getState());
		enterRule(_localctx, 146, RULE_carbon_db_separator);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(608);
			match(COLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Db_hydroxyl_separatorContext extends ParserRuleContext {
		public TerminalNode SEMICOLON() { return getToken(GoslinParser.SEMICOLON, 0); }
		public Db_hydroxyl_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_db_hydroxyl_separator; }
	}

	public final Db_hydroxyl_separatorContext db_hydroxyl_separator() throws RecognitionException {
		Db_hydroxyl_separatorContext _localctx = new Db_hydroxyl_separatorContext(_ctx, getState());
		enterRule(_localctx, 148, RULE_db_hydroxyl_separator);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(610);
			match(SEMICOLON);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Db_position_separatorContext extends ParserRuleContext {
		public TerminalNode COMMA() { return getToken(GoslinParser.COMMA, 0); }
		public Db_position_separatorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_db_position_separator; }
	}

	public final Db_position_separatorContext db_position_separator() throws RecognitionException {
		Db_position_separatorContext _localctx = new Db_position_separatorContext(_ctx, getState());
		enterRule(_localctx, 150, RULE_db_position_separator);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(612);
			match(COMMA);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Round_open_bracketContext extends ParserRuleContext {
		public TerminalNode ROB() { return getToken(GoslinParser.ROB, 0); }
		public Round_open_bracketContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_round_open_bracket; }
	}

	public final Round_open_bracketContext round_open_bracket() throws RecognitionException {
		Round_open_bracketContext _localctx = new Round_open_bracketContext(_ctx, getState());
		enterRule(_localctx, 152, RULE_round_open_bracket);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(614);
			match(ROB);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Round_close_bracketContext extends ParserRuleContext {
		public TerminalNode RCB() { return getToken(GoslinParser.RCB, 0); }
		public Round_close_bracketContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_round_close_bracket; }
	}

	public final Round_close_bracketContext round_close_bracket() throws RecognitionException {
		Round_close_bracketContext _localctx = new Round_close_bracketContext(_ctx, getState());
		enterRule(_localctx, 154, RULE_round_close_bracket);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(616);
			match(RCB);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 61:
			return db_position_sempred((Db_positionContext)_localctx, predIndex);
		case 65:
			return number_sempred((NumberContext)_localctx, predIndex);
		case 67:
			return isotopes_sempred((IsotopesContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean db_position_sempred(Db_positionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean number_sempred(NumberContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean isotopes_sempred(IsotopesContext _localctx, int predIndex) {
		switch (predIndex) {
		case 2:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\u00c8\u026d\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4I"+
		"\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\3\2\3\2\3\2\3\3\3\3\3\3\3\3\5"+
		"\3\u00a6\n\3\3\4\3\4\3\4\3\4\3\4\5\4\u00ad\n\4\3\5\3\5\3\5\3\5\3\5\3\5"+
		"\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5\5\u00bc\n\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6"+
		"\3\6\3\6\3\6\3\6\5\6\u00c9\n\6\3\7\3\7\3\7\3\7\5\7\u00cf\n\7\3\b\3\b\3"+
		"\b\3\b\5\b\u00d5\n\b\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\f\3\f\5\f\u00e1"+
		"\n\f\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\16\5\16\u00f3\n\16\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\3\17\5\17\u0101\n\17\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\5\20\u0113\n\20\3\21\3\21\3\22"+
		"\3\22\3\23\3\23\3\24\3\24\3\25\3\25\3\25\3\25\3\25\5\25\u0122\n\25\3\26"+
		"\3\26\5\26\u0126\n\26\3\27\3\27\3\27\3\27\3\30\3\30\3\30\3\30\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\5\31\u013c\n\31\3\32"+
		"\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\5\32\u014a\n\32"+
		"\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33"+
		"\3\33\3\33\3\33\3\33\3\33\3\33\5\33\u0160\n\33\3\34\3\34\3\34\3\34\3\34"+
		"\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\5\34\u0172\n\34"+
		"\3\35\3\35\3\35\3\35\5\35\u0178\n\35\3\36\3\36\3\37\3\37\3\37\3\37\5\37"+
		"\u0180\n\37\3 \3 \3!\3!\3!\3!\5!\u0188\n!\3\"\3\"\3#\3#\3#\3#\5#\u0190"+
		"\n#\3$\3$\3%\3%\3%\3%\5%\u0198\n%\3&\3&\3\'\3\'\3\'\3\'\5\'\u01a0\n\'"+
		"\3(\3(\3)\3)\5)\u01a6\n)\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3,\3,\3,\3,\5,"+
		"\u01b6\n,\3-\3-\3.\3.\3.\3.\5.\u01be\n.\3/\3/\3\60\3\60\5\60\u01c4\n\60"+
		"\3\61\3\61\3\61\3\61\5\61\u01ca\n\61\3\62\3\62\3\63\3\63\3\63\3\63\3\64"+
		"\3\64\3\64\3\64\5\64\u01d6\n\64\3\65\3\65\3\66\3\66\3\66\3\66\5\66\u01de"+
		"\n\66\3\67\3\67\38\38\38\38\58\u01e6\n8\39\39\39\39\39\39\39\39\39\39"+
		"\39\39\39\39\39\39\39\39\39\39\39\39\59\u01fe\n9\3:\3:\3;\3;\3;\3;\3;"+
		"\3;\3;\3;\3;\3;\3;\5;\u020d\n;\3<\3<\3=\3=\3=\3=\3=\3=\5=\u0217\n=\3>"+
		"\3>\3?\3?\3?\3?\3?\3?\3?\5?\u0222\n?\3?\3?\3?\3?\7?\u0228\n?\f?\16?\u022b"+
		"\13?\3@\3@\3A\3A\3B\3B\3C\3C\3C\3C\3C\3C\3C\3C\3C\3C\3C\5C\u023e\nC\3"+
		"C\3C\7C\u0242\nC\fC\16C\u0245\13C\3D\3D\3D\3D\3E\3E\3E\3E\3E\3E\3E\3E"+
		"\3E\7E\u0254\nE\fE\16E\u0257\13E\3F\3F\3G\3G\3H\3H\3I\3I\3J\3J\3K\3K\3"+
		"L\3L\3M\3M\3N\3N\3O\3O\3O\2\5|\u0084\u0088P\2\4\6\b\n\f\16\20\22\24\26"+
		"\30\32\34\36 \"$&(*,.\60\62\64\668:<>@BDFHJLNPRTVXZ\\^`bdfhjlnprtvxz|"+
		"~\u0080\u0082\u0084\u0086\u0088\u008a\u008c\u008e\u0090\u0092\u0094\u0096"+
		"\u0098\u009a\u009c\2\23\4\2\fJ\u00c2\u00c2\3\2AD\4\2JJ\u00c2\u00c2\3\2"+
		"MO\3\2S`\3\2af\3\2gh\3\2ij\3\2kn\3\2o}\3\2\u0080\u00bc\4\2\f\f\33\33\4"+
		"\2**??\4\2\17\17\37\37\6\2((--\63\6588\3\2\u00c4\u00c5\3\2\u00c2\u00c3"+
		"\2\u025d\2\u009e\3\2\2\2\4\u00a5\3\2\2\2\6\u00ac\3\2\2\2\b\u00bb\3\2\2"+
		"\2\n\u00c8\3\2\2\2\f\u00ce\3\2\2\2\16\u00d4\3\2\2\2\20\u00d6\3\2\2\2\22"+
		"\u00d8\3\2\2\2\24\u00da\3\2\2\2\26\u00e0\3\2\2\2\30\u00e2\3\2\2\2\32\u00f2"+
		"\3\2\2\2\34\u0100\3\2\2\2\36\u0112\3\2\2\2 \u0114\3\2\2\2\"\u0116\3\2"+
		"\2\2$\u0118\3\2\2\2&\u011a\3\2\2\2(\u0121\3\2\2\2*\u0125\3\2\2\2,\u0127"+
		"\3\2\2\2.\u012b\3\2\2\2\60\u013b\3\2\2\2\62\u0149\3\2\2\2\64\u015f\3\2"+
		"\2\2\66\u0171\3\2\2\28\u0177\3\2\2\2:\u0179\3\2\2\2<\u017f\3\2\2\2>\u0181"+
		"\3\2\2\2@\u0187\3\2\2\2B\u0189\3\2\2\2D\u018f\3\2\2\2F\u0191\3\2\2\2H"+
		"\u0197\3\2\2\2J\u0199\3\2\2\2L\u019f\3\2\2\2N\u01a1\3\2\2\2P\u01a5\3\2"+
		"\2\2R\u01a7\3\2\2\2T\u01ab\3\2\2\2V\u01b5\3\2\2\2X\u01b7\3\2\2\2Z\u01bd"+
		"\3\2\2\2\\\u01bf\3\2\2\2^\u01c3\3\2\2\2`\u01c9\3\2\2\2b\u01cb\3\2\2\2"+
		"d\u01cd\3\2\2\2f\u01d5\3\2\2\2h\u01d7\3\2\2\2j\u01dd\3\2\2\2l\u01df\3"+
		"\2\2\2n\u01e5\3\2\2\2p\u01fd\3\2\2\2r\u01ff\3\2\2\2t\u020c\3\2\2\2v\u020e"+
		"\3\2\2\2x\u0216\3\2\2\2z\u0218\3\2\2\2|\u0221\3\2\2\2~\u022c\3\2\2\2\u0080"+
		"\u022e\3\2\2\2\u0082\u0230\3\2\2\2\u0084\u023d\3\2\2\2\u0086\u0246\3\2"+
		"\2\2\u0088\u024a\3\2\2\2\u008a\u0258\3\2\2\2\u008c\u025a\3\2\2\2\u008e"+
		"\u025c\3\2\2\2\u0090\u025e\3\2\2\2\u0092\u0260\3\2\2\2\u0094\u0262\3\2"+
		"\2\2\u0096\u0264\3\2\2\2\u0098\u0266\3\2\2\2\u009a\u0268\3\2\2\2\u009c"+
		"\u026a\3\2\2\2\u009e\u009f\5\4\3\2\u009f\u00a0\7\2\2\3\u00a0\3\3\2\2\2"+
		"\u00a1\u00a6\5\6\4\2\u00a2\u00a3\5\6\4\2\u00a3\u00a4\5\b\5\2\u00a4\u00a6"+
		"\3\2\2\2\u00a5\u00a1\3\2\2\2\u00a5\u00a2\3\2\2\2\u00a6\5\3\2\2\2\u00a7"+
		"\u00ad\5\26\f\2\u00a8\u00ad\5(\25\2\u00a9\u00ad\5P)\2\u00aa\u00ad\5^\60"+
		"\2\u00ab\u00ad\5j\66\2\u00ac\u00a7\3\2\2\2\u00ac\u00a8\3\2\2\2\u00ac\u00a9"+
		"\3\2\2\2\u00ac\u00aa\3\2\2\2\u00ac\u00ab\3\2\2\2\u00ad\7\3\2\2\2\u00ae"+
		"\u00af\7\3\2\2\u00af\u00b0\5\n\6\2\u00b0\u00b1\7\4\2\2\u00b1\u00b2\5\22"+
		"\n\2\u00b2\u00b3\5\24\13\2\u00b3\u00bc\3\2\2\2\u00b4\u00b5\5\u008eH\2"+
		"\u00b5\u00b6\7\3\2\2\u00b6\u00b7\5\n\6\2\u00b7\u00b8\7\4\2\2\u00b8\u00b9"+
		"\5\22\n\2\u00b9\u00ba\5\24\13\2\u00ba\u00bc\3\2\2\2\u00bb\u00ae\3\2\2"+
		"\2\u00bb\u00b4\3\2\2\2\u00bc\t\3\2\2\2\u00bd\u00c9\7\5\2\2\u00be\u00c9"+
		"\7\6\2\2\u00bf\u00c9\7\7\2\2\u00c0\u00c9\7\b\2\2\u00c1\u00c9\7\t\2\2\u00c2"+
		"\u00c9\7\n\2\2\u00c3\u00c9\7\13\2\2\u00c4\u00c9\5\f\7\2\u00c5\u00c6\5"+
		"\f\7\2\u00c6\u00c7\5\f\7\2\u00c7\u00c9\3\2\2\2\u00c8\u00bd\3\2\2\2\u00c8"+
		"\u00be\3\2\2\2\u00c8\u00bf\3\2\2\2\u00c8\u00c0\3\2\2\2\u00c8\u00c1\3\2"+
		"\2\2\u00c8\u00c2\3\2\2\2\u00c8\u00c3\3\2\2\2\u00c8\u00c4\3\2\2\2\u00c8"+
		"\u00c5\3\2\2\2\u00c9\13\3\2\2\2\u00ca\u00cf\5\16\b\2\u00cb\u00cc\5\16"+
		"\b\2\u00cc\u00cd\5\16\b\2\u00cd\u00cf\3\2\2\2\u00ce\u00ca\3\2\2\2\u00ce"+
		"\u00cb\3\2\2\2\u00cf\r\3\2\2\2\u00d0\u00d5\5\20\t\2\u00d1\u00d2\5\20\t"+
		"\2\u00d2\u00d3\5\20\t\2\u00d3\u00d5\3\2\2\2\u00d4\u00d0\3\2\2\2\u00d4"+
		"\u00d1\3\2\2\2\u00d5\17\3\2\2\2\u00d6\u00d7\t\2\2\2\u00d7\21\3\2\2\2\u00d8"+
		"\u00d9\t\3\2\2\u00d9\23\3\2\2\2\u00da\u00db\t\4\2\2\u00db\25\3\2\2\2\u00dc"+
		"\u00e1\5\30\r\2\u00dd\u00e1\5\32\16\2\u00de\u00e1\5\34\17\2\u00df\u00e1"+
		"\5\36\20\2\u00e0\u00dc\3\2\2\2\u00e0\u00dd\3\2\2\2\u00e0\u00de\3\2\2\2"+
		"\u00e0\u00df\3\2\2\2\u00e1\27\3\2\2\2\u00e2\u00e3\5 \21\2\u00e3\u00e4"+
		"\5\u0092J\2\u00e4\u00e5\5n8\2\u00e5\31\3\2\2\2\u00e6\u00e7\5\"\22\2\u00e7"+
		"\u00e8\5\u0092J\2\u00e8\u00e9\5n8\2\u00e9\u00ea\5\u0090I\2\u00ea\u00eb"+
		"\5n8\2\u00eb\u00f3\3\2\2\2\u00ec\u00ed\5\"\22\2\u00ed\u00ee\5\u0092J\2"+
		"\u00ee\u00ef\5n8\2\u00ef\u00f0\5\u008cG\2\u00f0\u00f1\5n8\2\u00f1\u00f3"+
		"\3\2\2\2\u00f2\u00e6\3\2\2\2\u00f2\u00ec\3\2\2\2\u00f3\33\3\2\2\2\u00f4"+
		"\u00f5\5$\23\2\u00f5\u00f6\5\u0092J\2\u00f6\u00f7\5n8\2\u00f7\u00f8\5"+
		"\u0090I\2\u00f8\u00f9\5n8\2\u00f9\u0101\3\2\2\2\u00fa\u00fb\5$\23\2\u00fb"+
		"\u00fc\5\u0092J\2\u00fc\u00fd\5n8\2\u00fd\u00fe\5\u008cG\2\u00fe\u00ff"+
		"\5n8\2\u00ff\u0101\3\2\2\2\u0100\u00f4\3\2\2\2\u0100\u00fa\3\2\2\2\u0101"+
		"\35\3\2\2\2\u0102\u0103\5&\24\2\u0103\u0104\5\u0092J\2\u0104\u0105\5n"+
		"8\2\u0105\u0106\5\u0090I\2\u0106\u0107\5n8\2\u0107\u0108\5\u0090I\2\u0108"+
		"\u0109\5n8\2\u0109\u0113\3\2\2\2\u010a\u010b\5&\24\2\u010b\u010c\5\u0092"+
		"J\2\u010c\u010d\5n8\2\u010d\u010e\5\u008cG\2\u010e\u010f\5n8\2\u010f\u0110"+
		"\5\u008cG\2\u0110\u0111\5n8\2\u0111\u0113\3\2\2\2\u0112\u0102\3\2\2\2"+
		"\u0112\u010a\3\2\2\2\u0113\37\3\2\2\2\u0114\u0115\7K\2\2\u0115!\3\2\2"+
		"\2\u0116\u0117\7L\2\2\u0117#\3\2\2\2\u0118\u0119\t\5\2\2\u0119%\3\2\2"+
		"\2\u011a\u011b\7P\2\2\u011b\'\3\2\2\2\u011c\u0122\5,\27\2\u011d\u0122"+
		"\5\60\31\2\u011e\u0122\5*\26\2\u011f\u0122\5\64\33\2\u0120\u0122\5\66"+
		"\34\2\u0121\u011c\3\2\2\2\u0121\u011d\3\2\2\2\u0121\u011e\3\2\2\2\u0121"+
		"\u011f\3\2\2\2\u0121\u0120\3\2\2\2\u0122)\3\2\2\2\u0123\u0126\5.\30\2"+
		"\u0124\u0126\5\62\32\2\u0125\u0123\3\2\2\2\u0125\u0124\3\2\2\2\u0126+"+
		"\3\2\2\2\u0127\u0128\5D#\2\u0128\u0129\5\u0092J\2\u0129\u012a\5n8\2\u012a"+
		"-\3\2\2\2\u012b\u012c\5H%\2\u012c\u012d\5\u0092J\2\u012d\u012e\5n8\2\u012e"+
		"/\3\2\2\2\u012f\u0130\5@!\2\u0130\u0131\5\u0092J\2\u0131\u0132\5n8\2\u0132"+
		"\u0133\5\u0090I\2\u0133\u0134\5n8\2\u0134\u013c\3\2\2\2\u0135\u0136\5"+
		"@!\2\u0136\u0137\5\u0092J\2\u0137\u0138\5n8\2\u0138\u0139\5\u008cG\2\u0139"+
		"\u013a\5n8\2\u013a\u013c\3\2\2\2\u013b\u012f\3\2\2\2\u013b\u0135\3\2\2"+
		"\2\u013c\61\3\2\2\2\u013d\u013e\5L\'\2\u013e\u013f\5\u0092J\2\u013f\u0140"+
		"\5n8\2\u0140\u0141\5\u0090I\2\u0141\u0142\5n8\2\u0142\u014a\3\2\2\2\u0143"+
		"\u0144\5L\'\2\u0144\u0145\5\u0092J\2\u0145\u0146\5n8\2\u0146\u0147\5\u008c"+
		"G\2\u0147\u0148\5n8\2\u0148\u014a\3\2\2\2\u0149\u013d\3\2\2\2\u0149\u0143"+
		"\3\2\2\2\u014a\63\3\2\2\2\u014b\u014c\58\35\2\u014c\u014d\5\u0092J\2\u014d"+
		"\u014e\5n8\2\u014e\u014f\5\u0090I\2\u014f\u0150\5n8\2\u0150\u0151\5\u0090"+
		"I\2\u0151\u0152\5n8\2\u0152\u0153\5\u0090I\2\u0153\u0154\5n8\2\u0154\u0160"+
		"\3\2\2\2\u0155\u0156\58\35\2\u0156\u0157\5\u0092J\2\u0157\u0158\5n8\2"+
		"\u0158\u0159\5\u008cG\2\u0159\u015a\5n8\2\u015a\u015b\5\u008cG\2\u015b"+
		"\u015c\5n8\2\u015c\u015d\5\u008cG\2\u015d\u015e\5n8\2\u015e\u0160\3\2"+
		"\2\2\u015f\u014b\3\2\2\2\u015f\u0155\3\2\2\2\u0160\65\3\2\2\2\u0161\u0162"+
		"\5<\37\2\u0162\u0163\5\u0092J\2\u0163\u0164\5n8\2\u0164\u0165\5\u0090"+
		"I\2\u0165\u0166\5n8\2\u0166\u0167\5\u0090I\2\u0167\u0168\5n8\2\u0168\u0172"+
		"\3\2\2\2\u0169\u016a\5<\37\2\u016a\u016b\5\u0092J\2\u016b\u016c\5n8\2"+
		"\u016c\u016d\5\u008cG\2\u016d\u016e\5n8\2\u016e\u016f\5\u008cG\2\u016f"+
		"\u0170\5n8\2\u0170\u0172\3\2\2\2\u0171\u0161\3\2\2\2\u0171\u0169\3\2\2"+
		"\2\u0172\67\3\2\2\2\u0173\u0178\5:\36\2\u0174\u0175\5:\36\2\u0175\u0176"+
		"\5\u0086D\2\u0176\u0178\3\2\2\2\u0177\u0173\3\2\2\2\u0177\u0174\3\2\2"+
		"\2\u01789\3\2\2\2\u0179\u017a\7Q\2\2\u017a;\3\2\2\2\u017b\u0180\5> \2"+
		"\u017c\u017d\5> \2\u017d\u017e\5\u0086D\2\u017e\u0180\3\2\2\2\u017f\u017b"+
		"\3\2\2\2\u017f\u017c\3\2\2\2\u0180=\3\2\2\2\u0181\u0182\7R\2\2\u0182?"+
		"\3\2\2\2\u0183\u0188\5B\"\2\u0184\u0185\5B\"\2\u0185\u0186\5\u0086D\2"+
		"\u0186\u0188\3\2\2\2\u0187\u0183\3\2\2\2\u0187\u0184\3\2\2\2\u0188A\3"+
		"\2\2\2\u0189\u018a\t\6\2\2\u018aC\3\2\2\2\u018b\u0190\5F$\2\u018c\u018d"+
		"\5F$\2\u018d\u018e\5\u0086D\2\u018e\u0190\3\2\2\2\u018f\u018b\3\2\2\2"+
		"\u018f\u018c\3\2\2\2\u0190E\3\2\2\2\u0191\u0192\t\7\2\2\u0192G\3\2\2\2"+
		"\u0193\u0198\5J&\2\u0194\u0195\5J&\2\u0195\u0196\5\u0086D\2\u0196\u0198"+
		"\3\2\2\2\u0197\u0193\3\2\2\2\u0197\u0194\3\2\2\2\u0198I\3\2\2\2\u0199"+
		"\u019a\t\b\2\2\u019aK\3\2\2\2\u019b\u01a0\5N(\2\u019c\u019d\5N(\2\u019d"+
		"\u019e\5\u0086D\2\u019e\u01a0\3\2\2\2\u019f\u019b\3\2\2\2\u019f\u019c"+
		"\3\2\2\2\u01a0M\3\2\2\2\u01a1\u01a2\t\t\2\2\u01a2O\3\2\2\2\u01a3\u01a6"+
		"\5R*\2\u01a4\u01a6\5T+\2\u01a5\u01a3\3\2\2\2\u01a5\u01a4\3\2\2\2\u01a6"+
		"Q\3\2\2\2\u01a7\u01a8\5V,\2\u01a8\u01a9\5\u0092J\2\u01a9\u01aa\5t;\2\u01aa"+
		"S\3\2\2\2\u01ab\u01ac\5Z.\2\u01ac\u01ad\5\u0092J\2\u01ad\u01ae\5t;\2\u01ae"+
		"\u01af\5\u008cG\2\u01af\u01b0\5n8\2\u01b0U\3\2\2\2\u01b1\u01b6\5X-\2\u01b2"+
		"\u01b3\5X-\2\u01b3\u01b4\5\u0086D\2\u01b4\u01b6\3\2\2\2\u01b5\u01b1\3"+
		"\2\2\2\u01b5\u01b2\3\2\2\2\u01b6W\3\2\2\2\u01b7\u01b8\t\n\2\2\u01b8Y\3"+
		"\2\2\2\u01b9\u01be\5\\/\2\u01ba\u01bb\5\\/\2\u01bb\u01bc\5\u0086D\2\u01bc"+
		"\u01be\3\2\2\2\u01bd\u01b9\3\2\2\2\u01bd\u01ba\3\2\2\2\u01be[\3\2\2\2"+
		"\u01bf\u01c0\t\13\2\2\u01c0]\3\2\2\2\u01c1\u01c4\5`\61\2\u01c2\u01c4\5"+
		"d\63\2\u01c3\u01c1\3\2\2\2\u01c3\u01c2\3\2\2\2\u01c4_\3\2\2\2\u01c5\u01ca"+
		"\5b\62\2\u01c6\u01c7\5b\62\2\u01c7\u01c8\5\u0086D\2\u01c8\u01ca\3\2\2"+
		"\2\u01c9\u01c5\3\2\2\2\u01c9\u01c6\3\2\2\2\u01caa\3\2\2\2\u01cb\u01cc"+
		"\7~\2\2\u01ccc\3\2\2\2\u01cd\u01ce\5f\64\2\u01ce\u01cf\5\u0092J\2\u01cf"+
		"\u01d0\5n8\2\u01d0e\3\2\2\2\u01d1\u01d6\5h\65\2\u01d2\u01d3\5h\65\2\u01d3"+
		"\u01d4\5\u0086D\2\u01d4\u01d6\3\2\2\2\u01d5\u01d1\3\2\2\2\u01d5\u01d2"+
		"\3\2\2\2\u01d6g\3\2\2\2\u01d7\u01d8\7\177\2\2\u01d8i\3\2\2\2\u01d9\u01de"+
		"\5l\67\2\u01da\u01db\5l\67\2\u01db\u01dc\5\u0086D\2\u01dc\u01de\3\2\2"+
		"\2\u01dd\u01d9\3\2\2\2\u01dd\u01da\3\2\2\2\u01dek\3\2\2\2\u01df\u01e0"+
		"\t\f\2\2\u01e0m\3\2\2\2\u01e1\u01e6\5p9\2\u01e2\u01e3\5p9\2\u01e3\u01e4"+
		"\5r:\2\u01e4\u01e6\3\2\2\2\u01e5\u01e1\3\2\2\2\u01e5\u01e2\3\2\2\2\u01e6"+
		"o\3\2\2\2\u01e7\u01e8\5v<\2\u01e8\u01e9\5\u0094K\2\u01e9\u01ea\5x=\2\u01ea"+
		"\u01fe\3\2\2\2\u01eb\u01ec\5v<\2\u01ec\u01ed\5\u0094K\2\u01ed\u01ee\5"+
		"x=\2\u01ee\u01ef\5\u0096L\2\u01ef\u01f0\5\u0080A\2\u01f0\u01fe\3\2\2\2"+
		"\u01f1\u01f2\5v<\2\u01f2\u01f3\5\u0094K\2\u01f3\u01f4\5x=\2\u01f4\u01f5"+
		"\5\u0086D\2\u01f5\u01fe\3\2\2\2\u01f6\u01f7\5v<\2\u01f7\u01f8\5\u0094"+
		"K\2\u01f8\u01f9\5x=\2\u01f9\u01fa\5\u0096L\2\u01fa\u01fb\5\u0080A\2\u01fb"+
		"\u01fc\5\u0086D\2\u01fc\u01fe\3\2\2\2\u01fd\u01e7\3\2\2\2\u01fd\u01eb"+
		"\3\2\2\2\u01fd\u01f1\3\2\2\2\u01fd\u01f6\3\2\2\2\u01feq\3\2\2\2\u01ff"+
		"\u0200\t\r\2\2\u0200s\3\2\2\2\u0201\u0202\5v<\2\u0202\u0203\5\u0094K\2"+
		"\u0203\u0204\5x=\2\u0204\u0205\5\u0096L\2\u0205\u0206\5\u0080A\2\u0206"+
		"\u020d\3\2\2\2\u0207\u0208\5\u0082B\2\u0208\u0209\5v<\2\u0209\u020a\5"+
		"\u0094K\2\u020a\u020b\5x=\2\u020b\u020d\3\2\2\2\u020c\u0201\3\2\2\2\u020c"+
		"\u0207\3\2\2\2\u020du\3\2\2\2\u020e\u020f\5\u0084C\2\u020fw\3\2\2\2\u0210"+
		"\u0217\5z>\2\u0211\u0212\5z>\2\u0212\u0213\5\u009aN\2\u0213\u0214\5|?"+
		"\2\u0214\u0215\5\u009cO\2\u0215\u0217\3\2\2\2\u0216\u0210\3\2\2\2\u0216"+
		"\u0211\3\2\2\2\u0217y\3\2\2\2\u0218\u0219\5\u0084C\2\u0219{\3\2\2\2\u021a"+
		"\u021b\b?\1\2\u021b\u021c\5\u0084C\2\u021c\u021d\5~@\2\u021d\u0222\3\2"+
		"\2\2\u021e\u021f\5\u0084C\2\u021f\u0220\5~@\2\u0220\u0222\3\2\2\2\u0221"+
		"\u021a\3\2\2\2\u0221\u021e\3\2\2\2\u0222\u0229\3\2\2\2\u0223\u0224\f\3"+
		"\2\2\u0224\u0225\5\u0098M\2\u0225\u0226\5|?\4\u0226\u0228\3\2\2\2\u0227"+
		"\u0223\3\2\2\2\u0228\u022b\3\2\2\2\u0229\u0227\3\2\2\2\u0229\u022a\3\2"+
		"\2\2\u022a}\3\2\2\2\u022b\u0229\3\2\2\2\u022c\u022d\t\16\2\2\u022d\177"+
		"\3\2\2\2\u022e\u022f\5\u0084C\2\u022f\u0081\3\2\2\2\u0230\u0231\t\17\2"+
		"\2\u0231\u0083\3\2\2\2\u0232\u0233\bC\1\2\u0233\u023e\7@\2\2\u0234\u023e"+
		"\7A\2\2\u0235\u023e\7B\2\2\u0236\u023e\7C\2\2\u0237\u023e\7D\2\2\u0238"+
		"\u023e\7E\2\2\u0239\u023e\7F\2\2\u023a\u023e\7G\2\2\u023b\u023e\7H\2\2"+
		"\u023c\u023e\7I\2\2\u023d\u0232\3\2\2\2\u023d\u0234\3\2\2\2\u023d\u0235"+
		"\3\2\2\2\u023d\u0236\3\2\2\2\u023d\u0237\3\2\2\2\u023d\u0238\3\2\2\2\u023d"+
		"\u0239\3\2\2\2\u023d\u023a\3\2\2\2\u023d\u023b\3\2\2\2\u023d\u023c\3\2"+
		"\2\2\u023e\u0243\3\2\2\2\u023f\u0240\f\3\2\2\u0240\u0242\5\u0084C\4\u0241"+
		"\u023f\3\2\2\2\u0242\u0245\3\2\2\2\u0243\u0241\3\2\2\2\u0243\u0244\3\2"+
		"\2\2\u0244\u0085\3\2\2\2\u0245\u0243\3\2\2\2\u0246\u0247\7\u00bd\2\2\u0247"+
		"\u0248\5\u0088E\2\u0248\u0249\7\u00c8\2\2\u0249\u0087\3\2\2\2\u024a\u024b"+
		"\bE\1\2\u024b\u024c\7\u00be\2\2\u024c\u024d\5\u0084C\2\u024d\u024e\7\4"+
		"\2\2\u024e\u024f\5\u008aF\2\u024f\u0250\5\u0084C\2\u0250\u0255\3\2\2\2"+
		"\u0251\u0252\f\4\2\2\u0252\u0254\5\u0088E\5\u0253\u0251\3\2\2\2\u0254"+
		"\u0257\3\2\2\2\u0255\u0253\3\2\2\2\u0255\u0256\3\2\2\2\u0256\u0089\3\2"+
		"\2\2\u0257\u0255\3\2\2\2\u0258\u0259\t\20\2\2\u0259\u008b\3\2\2\2\u025a"+
		"\u025b\t\21\2\2\u025b\u008d\3\2\2\2\u025c\u025d\7\u00bf\2\2\u025d\u008f"+
		"\3\2\2\2\u025e\u025f\t\22\2\2\u025f\u0091\3\2\2\2\u0260\u0261\7\u00bf"+
		"\2\2\u0261\u0093\3\2\2\2\u0262\u0263\7\u00c0\2\2\u0263\u0095\3\2\2\2\u0264"+
		"\u0265\7\u00c1\2\2\u0265\u0097\3\2\2\2\u0266\u0267\7\u00c6\2\2\u0267\u0099"+
		"\3\2\2\2\u0268\u0269\7\u00c7\2\2\u0269\u009b\3\2\2\2\u026a\u026b\7\u00c8"+
		"\2\2\u026b\u009d\3\2\2\2(\u00a5\u00ac\u00bb\u00c8\u00ce\u00d4\u00e0\u00f2"+
		"\u0100\u0112\u0121\u0125\u013b\u0149\u015f\u0171\u0177\u017f\u0187\u018f"+
		"\u0197\u019f\u01a5\u01b5\u01bd\u01c3\u01c9\u01d5\u01dd\u01e5\u01fd\u020c"+
		"\u0216\u0221\u0229\u023d\u0243\u0255";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}