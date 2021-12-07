(*
quine: cv -v -isafety -jobs 24 -no_carry_constraint -slicing basemul.cl
Parsing Cryptoline file:                [OK]            0.049982 seconds
Checking well-formedness:               [OK]            0.042775 seconds
Transforming to SSA form:               [OK]            0.013076 seconds
Rewriting assignments:                  [OK]            0.014241 seconds
Verifying program safety:
         Overall                        [OK]            70.501580 seconds
Verifying range assertions:             [OK]            0.015161 seconds
Verifying range specification:          [OK]            61.753347 seconds
Rewriting value-preserved casting:      [OK]            0.001597 seconds
Verifying algebraic assertions:         [OK]            64.699999 seconds
Verifying algebraic specification:      [OK]            12.542230 seconds
Verification result:                    [OK]            209.643783 seconds
*)
proc main (
sint16 x,
sint16 a000, sint16 a001, sint16 a002, sint16 a003,
sint16 a004, sint16 a005, sint16 a006, sint16 a007,
sint16 a008, sint16 a009, sint16 a010, sint16 a011,
sint16 a012, sint16 a013, sint16 a014, sint16 a015,
sint16 a016, sint16 a017, sint16 a018, sint16 a019,
sint16 a020, sint16 a021, sint16 a022, sint16 a023,
sint16 a024, sint16 a025, sint16 a026, sint16 a027,
sint16 a028, sint16 a029, sint16 a030, sint16 a031,
sint16 a032, sint16 a033, sint16 a034, sint16 a035,
sint16 a036, sint16 a037, sint16 a038, sint16 a039,
sint16 a040, sint16 a041, sint16 a042, sint16 a043,
sint16 a044, sint16 a045, sint16 a046, sint16 a047,
sint16 a048, sint16 a049, sint16 a050, sint16 a051,
sint16 a052, sint16 a053, sint16 a054, sint16 a055,
sint16 a056, sint16 a057, sint16 a058, sint16 a059,
sint16 a060, sint16 a061, sint16 a062, sint16 a063,
sint16 a064, sint16 a065, sint16 a066, sint16 a067,
sint16 a068, sint16 a069, sint16 a070, sint16 a071,
sint16 a072, sint16 a073, sint16 a074, sint16 a075,
sint16 a076, sint16 a077, sint16 a078, sint16 a079,
sint16 a080, sint16 a081, sint16 a082, sint16 a083,
sint16 a084, sint16 a085, sint16 a086, sint16 a087,
sint16 a088, sint16 a089, sint16 a090, sint16 a091,
sint16 a092, sint16 a093, sint16 a094, sint16 a095,
sint16 a096, sint16 a097, sint16 a098, sint16 a099,
sint16 a100, sint16 a101, sint16 a102, sint16 a103,
sint16 a104, sint16 a105, sint16 a106, sint16 a107,
sint16 a108, sint16 a109, sint16 a110, sint16 a111,
sint16 a112, sint16 a113, sint16 a114, sint16 a115,
sint16 a116, sint16 a117, sint16 a118, sint16 a119,
sint16 a120, sint16 a121, sint16 a122, sint16 a123,
sint16 a124, sint16 a125, sint16 a126, sint16 a127,
sint16 b000, sint16 b001, sint16 b002, sint16 b003,
sint16 b004, sint16 b005, sint16 b006, sint16 b007,
sint16 b008, sint16 b009, sint16 b010, sint16 b011,
sint16 b012, sint16 b013, sint16 b014, sint16 b015,
sint16 b016, sint16 b017, sint16 b018, sint16 b019,
sint16 b020, sint16 b021, sint16 b022, sint16 b023,
sint16 b024, sint16 b025, sint16 b026, sint16 b027,
sint16 b028, sint16 b029, sint16 b030, sint16 b031,
sint16 b032, sint16 b033, sint16 b034, sint16 b035,
sint16 b036, sint16 b037, sint16 b038, sint16 b039,
sint16 b040, sint16 b041, sint16 b042, sint16 b043,
sint16 b044, sint16 b045, sint16 b046, sint16 b047,
sint16 b048, sint16 b049, sint16 b050, sint16 b051,
sint16 b052, sint16 b053, sint16 b054, sint16 b055,
sint16 b056, sint16 b057, sint16 b058, sint16 b059,
sint16 b060, sint16 b061, sint16 b062, sint16 b063,
sint16 b064, sint16 b065, sint16 b066, sint16 b067,
sint16 b068, sint16 b069, sint16 b070, sint16 b071,
sint16 b072, sint16 b073, sint16 b074, sint16 b075,
sint16 b076, sint16 b077, sint16 b078, sint16 b079,
sint16 b080, sint16 b081, sint16 b082, sint16 b083,
sint16 b084, sint16 b085, sint16 b086, sint16 b087,
sint16 b088, sint16 b089, sint16 b090, sint16 b091,
sint16 b092, sint16 b093, sint16 b094, sint16 b095,
sint16 b096, sint16 b097, sint16 b098, sint16 b099,
sint16 b100, sint16 b101, sint16 b102, sint16 b103,
sint16 b104, sint16 b105, sint16 b106, sint16 b107,
sint16 b108, sint16 b109, sint16 b110, sint16 b111,
sint16 b112, sint16 b113, sint16 b114, sint16 b115,
sint16 b116, sint16 b117, sint16 b118, sint16 b119,
sint16 b120, sint16 b121, sint16 b122, sint16 b123,
sint16 b124, sint16 b125, sint16 b126, sint16 b127,
sint16 c000, sint16 c001, sint16 c002, sint16 c003,
sint16 c004, sint16 c005, sint16 c006, sint16 c007,
sint16 c008, sint16 c009, sint16 c010, sint16 c011,
sint16 c012, sint16 c013, sint16 c014, sint16 c015,
sint16 c016, sint16 c017, sint16 c018, sint16 c019,
sint16 c020, sint16 c021, sint16 c022, sint16 c023,
sint16 c024, sint16 c025, sint16 c026, sint16 c027,
sint16 c028, sint16 c029, sint16 c030, sint16 c031,
sint16 c032, sint16 c033, sint16 c034, sint16 c035,
sint16 c036, sint16 c037, sint16 c038, sint16 c039,
sint16 c040, sint16 c041, sint16 c042, sint16 c043,
sint16 c044, sint16 c045, sint16 c046, sint16 c047,
sint16 c048, sint16 c049, sint16 c050, sint16 c051,
sint16 c052, sint16 c053, sint16 c054, sint16 c055,
sint16 c056, sint16 c057, sint16 c058, sint16 c059,
sint16 c060, sint16 c061, sint16 c062, sint16 c063,
sint16 c064, sint16 c065, sint16 c066, sint16 c067,
sint16 c068, sint16 c069, sint16 c070, sint16 c071,
sint16 c072, sint16 c073, sint16 c074, sint16 c075,
sint16 c076, sint16 c077, sint16 c078, sint16 c079,
sint16 c080, sint16 c081, sint16 c082, sint16 c083,
sint16 c084, sint16 c085, sint16 c086, sint16 c087,
sint16 c088, sint16 c089, sint16 c090, sint16 c091,
sint16 c092, sint16 c093, sint16 c094, sint16 c095,
sint16 c096, sint16 c097, sint16 c098, sint16 c099,
sint16 c100, sint16 c101, sint16 c102, sint16 c103,
sint16 c104, sint16 c105, sint16 c106, sint16 c107,
sint16 c108, sint16 c109, sint16 c110, sint16 c111,
sint16 c112, sint16 c113, sint16 c114, sint16 c115,
sint16 c116, sint16 c117, sint16 c118, sint16 c119,
sint16 c120, sint16 c121, sint16 c122, sint16 c123,
sint16 c124, sint16 c125, sint16 c126, sint16 c127,
sint16 d000, sint16 d001, sint16 d002, sint16 d003,
sint16 d004, sint16 d005, sint16 d006, sint16 d007,
sint16 d008, sint16 d009, sint16 d010, sint16 d011,
sint16 d012, sint16 d013, sint16 d014, sint16 d015,
sint16 d016, sint16 d017, sint16 d018, sint16 d019,
sint16 d020, sint16 d021, sint16 d022, sint16 d023,
sint16 d024, sint16 d025, sint16 d026, sint16 d027,
sint16 d028, sint16 d029, sint16 d030, sint16 d031,
sint16 d032, sint16 d033, sint16 d034, sint16 d035,
sint16 d036, sint16 d037, sint16 d038, sint16 d039,
sint16 d040, sint16 d041, sint16 d042, sint16 d043,
sint16 d044, sint16 d045, sint16 d046, sint16 d047,
sint16 d048, sint16 d049, sint16 d050, sint16 d051,
sint16 d052, sint16 d053, sint16 d054, sint16 d055,
sint16 d056, sint16 d057, sint16 d058, sint16 d059,
sint16 d060, sint16 d061, sint16 d062, sint16 d063,
sint16 d064, sint16 d065, sint16 d066, sint16 d067,
sint16 d068, sint16 d069, sint16 d070, sint16 d071,
sint16 d072, sint16 d073, sint16 d074, sint16 d075,
sint16 d076, sint16 d077, sint16 d078, sint16 d079,
sint16 d080, sint16 d081, sint16 d082, sint16 d083,
sint16 d084, sint16 d085, sint16 d086, sint16 d087,
sint16 d088, sint16 d089, sint16 d090, sint16 d091,
sint16 d092, sint16 d093, sint16 d094, sint16 d095,
sint16 d096, sint16 d097, sint16 d098, sint16 d099,
sint16 d100, sint16 d101, sint16 d102, sint16 d103,
sint16 d104, sint16 d105, sint16 d106, sint16 d107,
sint16 d108, sint16 d109, sint16 d110, sint16 d111,
sint16 d112, sint16 d113, sint16 d114, sint16 d115,
sint16 d116, sint16 d117, sint16 d118, sint16 d119,
sint16 d120, sint16 d121, sint16 d122, sint16 d123,
sint16 d124, sint16 d125, sint16 d126, sint16 d127) =
{
true && and [
(-3329)@16 <=s a000, a000 <=s (3329)@16, (-3329)@16 <=s a001, a001 <=s (3329)@16,
(-3329)@16 <=s a002, a002 <=s (3329)@16, (-3329)@16 <=s a003, a003 <=s (3329)@16,
(-3329)@16 <=s a004, a004 <=s (3329)@16, (-3329)@16 <=s a005, a005 <=s (3329)@16,
(-3329)@16 <=s a006, a006 <=s (3329)@16, (-3329)@16 <=s a007, a007 <=s (3329)@16,
(-3329)@16 <=s a008, a008 <=s (3329)@16, (-3329)@16 <=s a009, a009 <=s (3329)@16,
(-3329)@16 <=s a010, a010 <=s (3329)@16, (-3329)@16 <=s a011, a011 <=s (3329)@16,
(-3329)@16 <=s a012, a012 <=s (3329)@16, (-3329)@16 <=s a013, a013 <=s (3329)@16,
(-3329)@16 <=s a014, a014 <=s (3329)@16, (-3329)@16 <=s a015, a015 <=s (3329)@16,
(-3329)@16 <=s a016, a016 <=s (3329)@16, (-3329)@16 <=s a017, a017 <=s (3329)@16,
(-3329)@16 <=s a018, a018 <=s (3329)@16, (-3329)@16 <=s a019, a019 <=s (3329)@16,
(-3329)@16 <=s a020, a020 <=s (3329)@16, (-3329)@16 <=s a021, a021 <=s (3329)@16,
(-3329)@16 <=s a022, a022 <=s (3329)@16, (-3329)@16 <=s a023, a023 <=s (3329)@16,
(-3329)@16 <=s a024, a024 <=s (3329)@16, (-3329)@16 <=s a025, a025 <=s (3329)@16,
(-3329)@16 <=s a026, a026 <=s (3329)@16, (-3329)@16 <=s a027, a027 <=s (3329)@16,
(-3329)@16 <=s a028, a028 <=s (3329)@16, (-3329)@16 <=s a029, a029 <=s (3329)@16,
(-3329)@16 <=s a030, a030 <=s (3329)@16, (-3329)@16 <=s a031, a031 <=s (3329)@16,
(-3329)@16 <=s a032, a032 <=s (3329)@16, (-3329)@16 <=s a033, a033 <=s (3329)@16,
(-3329)@16 <=s a034, a034 <=s (3329)@16, (-3329)@16 <=s a035, a035 <=s (3329)@16,
(-3329)@16 <=s a036, a036 <=s (3329)@16, (-3329)@16 <=s a037, a037 <=s (3329)@16,
(-3329)@16 <=s a038, a038 <=s (3329)@16, (-3329)@16 <=s a039, a039 <=s (3329)@16,
(-3329)@16 <=s a040, a040 <=s (3329)@16, (-3329)@16 <=s a041, a041 <=s (3329)@16,
(-3329)@16 <=s a042, a042 <=s (3329)@16, (-3329)@16 <=s a043, a043 <=s (3329)@16,
(-3329)@16 <=s a044, a044 <=s (3329)@16, (-3329)@16 <=s a045, a045 <=s (3329)@16,
(-3329)@16 <=s a046, a046 <=s (3329)@16, (-3329)@16 <=s a047, a047 <=s (3329)@16,
(-3329)@16 <=s a048, a048 <=s (3329)@16, (-3329)@16 <=s a049, a049 <=s (3329)@16,
(-3329)@16 <=s a050, a050 <=s (3329)@16, (-3329)@16 <=s a051, a051 <=s (3329)@16,
(-3329)@16 <=s a052, a052 <=s (3329)@16, (-3329)@16 <=s a053, a053 <=s (3329)@16,
(-3329)@16 <=s a054, a054 <=s (3329)@16, (-3329)@16 <=s a055, a055 <=s (3329)@16,
(-3329)@16 <=s a056, a056 <=s (3329)@16, (-3329)@16 <=s a057, a057 <=s (3329)@16,
(-3329)@16 <=s a058, a058 <=s (3329)@16, (-3329)@16 <=s a059, a059 <=s (3329)@16,
(-3329)@16 <=s a060, a060 <=s (3329)@16, (-3329)@16 <=s a061, a061 <=s (3329)@16,
(-3329)@16 <=s a062, a062 <=s (3329)@16, (-3329)@16 <=s a063, a063 <=s (3329)@16,
(-3329)@16 <=s a064, a064 <=s (3329)@16, (-3329)@16 <=s a065, a065 <=s (3329)@16,
(-3329)@16 <=s a066, a066 <=s (3329)@16, (-3329)@16 <=s a067, a067 <=s (3329)@16,
(-3329)@16 <=s a068, a068 <=s (3329)@16, (-3329)@16 <=s a069, a069 <=s (3329)@16,
(-3329)@16 <=s a070, a070 <=s (3329)@16, (-3329)@16 <=s a071, a071 <=s (3329)@16,
(-3329)@16 <=s a072, a072 <=s (3329)@16, (-3329)@16 <=s a073, a073 <=s (3329)@16,
(-3329)@16 <=s a074, a074 <=s (3329)@16, (-3329)@16 <=s a075, a075 <=s (3329)@16,
(-3329)@16 <=s a076, a076 <=s (3329)@16, (-3329)@16 <=s a077, a077 <=s (3329)@16,
(-3329)@16 <=s a078, a078 <=s (3329)@16, (-3329)@16 <=s a079, a079 <=s (3329)@16,
(-3329)@16 <=s a080, a080 <=s (3329)@16, (-3329)@16 <=s a081, a081 <=s (3329)@16,
(-3329)@16 <=s a082, a082 <=s (3329)@16, (-3329)@16 <=s a083, a083 <=s (3329)@16,
(-3329)@16 <=s a084, a084 <=s (3329)@16, (-3329)@16 <=s a085, a085 <=s (3329)@16,
(-3329)@16 <=s a086, a086 <=s (3329)@16, (-3329)@16 <=s a087, a087 <=s (3329)@16,
(-3329)@16 <=s a088, a088 <=s (3329)@16, (-3329)@16 <=s a089, a089 <=s (3329)@16,
(-3329)@16 <=s a090, a090 <=s (3329)@16, (-3329)@16 <=s a091, a091 <=s (3329)@16,
(-3329)@16 <=s a092, a092 <=s (3329)@16, (-3329)@16 <=s a093, a093 <=s (3329)@16,
(-3329)@16 <=s a094, a094 <=s (3329)@16, (-3329)@16 <=s a095, a095 <=s (3329)@16,
(-3329)@16 <=s a096, a096 <=s (3329)@16, (-3329)@16 <=s a097, a097 <=s (3329)@16,
(-3329)@16 <=s a098, a098 <=s (3329)@16, (-3329)@16 <=s a099, a099 <=s (3329)@16,
(-3329)@16 <=s a100, a100 <=s (3329)@16, (-3329)@16 <=s a101, a101 <=s (3329)@16,
(-3329)@16 <=s a102, a102 <=s (3329)@16, (-3329)@16 <=s a103, a103 <=s (3329)@16,
(-3329)@16 <=s a104, a104 <=s (3329)@16, (-3329)@16 <=s a105, a105 <=s (3329)@16,
(-3329)@16 <=s a106, a106 <=s (3329)@16, (-3329)@16 <=s a107, a107 <=s (3329)@16,
(-3329)@16 <=s a108, a108 <=s (3329)@16, (-3329)@16 <=s a109, a109 <=s (3329)@16,
(-3329)@16 <=s a110, a110 <=s (3329)@16, (-3329)@16 <=s a111, a111 <=s (3329)@16,
(-3329)@16 <=s a112, a112 <=s (3329)@16, (-3329)@16 <=s a113, a113 <=s (3329)@16,
(-3329)@16 <=s a114, a114 <=s (3329)@16, (-3329)@16 <=s a115, a115 <=s (3329)@16,
(-3329)@16 <=s a116, a116 <=s (3329)@16, (-3329)@16 <=s a117, a117 <=s (3329)@16,
(-3329)@16 <=s a118, a118 <=s (3329)@16, (-3329)@16 <=s a119, a119 <=s (3329)@16,
(-3329)@16 <=s a120, a120 <=s (3329)@16, (-3329)@16 <=s a121, a121 <=s (3329)@16,
(-3329)@16 <=s a122, a122 <=s (3329)@16, (-3329)@16 <=s a123, a123 <=s (3329)@16,
(-3329)@16 <=s a124, a124 <=s (3329)@16, (-3329)@16 <=s a125, a125 <=s (3329)@16,
(-3329)@16 <=s a126, a126 <=s (3329)@16, (-3329)@16 <=s a127, a127 <=s (3329)@16,
(-3329)@16 <=s b000, b000 <=s (3329)@16, (-3329)@16 <=s b001, b001 <=s (3329)@16,
(-3329)@16 <=s b002, b002 <=s (3329)@16, (-3329)@16 <=s b003, b003 <=s (3329)@16,
(-3329)@16 <=s b004, b004 <=s (3329)@16, (-3329)@16 <=s b005, b005 <=s (3329)@16,
(-3329)@16 <=s b006, b006 <=s (3329)@16, (-3329)@16 <=s b007, b007 <=s (3329)@16,
(-3329)@16 <=s b008, b008 <=s (3329)@16, (-3329)@16 <=s b009, b009 <=s (3329)@16,
(-3329)@16 <=s b010, b010 <=s (3329)@16, (-3329)@16 <=s b011, b011 <=s (3329)@16,
(-3329)@16 <=s b012, b012 <=s (3329)@16, (-3329)@16 <=s b013, b013 <=s (3329)@16,
(-3329)@16 <=s b014, b014 <=s (3329)@16, (-3329)@16 <=s b015, b015 <=s (3329)@16,
(-3329)@16 <=s b016, b016 <=s (3329)@16, (-3329)@16 <=s b017, b017 <=s (3329)@16,
(-3329)@16 <=s b018, b018 <=s (3329)@16, (-3329)@16 <=s b019, b019 <=s (3329)@16,
(-3329)@16 <=s b020, b020 <=s (3329)@16, (-3329)@16 <=s b021, b021 <=s (3329)@16,
(-3329)@16 <=s b022, b022 <=s (3329)@16, (-3329)@16 <=s b023, b023 <=s (3329)@16,
(-3329)@16 <=s b024, b024 <=s (3329)@16, (-3329)@16 <=s b025, b025 <=s (3329)@16,
(-3329)@16 <=s b026, b026 <=s (3329)@16, (-3329)@16 <=s b027, b027 <=s (3329)@16,
(-3329)@16 <=s b028, b028 <=s (3329)@16, (-3329)@16 <=s b029, b029 <=s (3329)@16,
(-3329)@16 <=s b030, b030 <=s (3329)@16, (-3329)@16 <=s b031, b031 <=s (3329)@16,
(-3329)@16 <=s b032, b032 <=s (3329)@16, (-3329)@16 <=s b033, b033 <=s (3329)@16,
(-3329)@16 <=s b034, b034 <=s (3329)@16, (-3329)@16 <=s b035, b035 <=s (3329)@16,
(-3329)@16 <=s b036, b036 <=s (3329)@16, (-3329)@16 <=s b037, b037 <=s (3329)@16,
(-3329)@16 <=s b038, b038 <=s (3329)@16, (-3329)@16 <=s b039, b039 <=s (3329)@16,
(-3329)@16 <=s b040, b040 <=s (3329)@16, (-3329)@16 <=s b041, b041 <=s (3329)@16,
(-3329)@16 <=s b042, b042 <=s (3329)@16, (-3329)@16 <=s b043, b043 <=s (3329)@16,
(-3329)@16 <=s b044, b044 <=s (3329)@16, (-3329)@16 <=s b045, b045 <=s (3329)@16,
(-3329)@16 <=s b046, b046 <=s (3329)@16, (-3329)@16 <=s b047, b047 <=s (3329)@16,
(-3329)@16 <=s b048, b048 <=s (3329)@16, (-3329)@16 <=s b049, b049 <=s (3329)@16,
(-3329)@16 <=s b050, b050 <=s (3329)@16, (-3329)@16 <=s b051, b051 <=s (3329)@16,
(-3329)@16 <=s b052, b052 <=s (3329)@16, (-3329)@16 <=s b053, b053 <=s (3329)@16,
(-3329)@16 <=s b054, b054 <=s (3329)@16, (-3329)@16 <=s b055, b055 <=s (3329)@16,
(-3329)@16 <=s b056, b056 <=s (3329)@16, (-3329)@16 <=s b057, b057 <=s (3329)@16,
(-3329)@16 <=s b058, b058 <=s (3329)@16, (-3329)@16 <=s b059, b059 <=s (3329)@16,
(-3329)@16 <=s b060, b060 <=s (3329)@16, (-3329)@16 <=s b061, b061 <=s (3329)@16,
(-3329)@16 <=s b062, b062 <=s (3329)@16, (-3329)@16 <=s b063, b063 <=s (3329)@16,
(-3329)@16 <=s b064, b064 <=s (3329)@16, (-3329)@16 <=s b065, b065 <=s (3329)@16,
(-3329)@16 <=s b066, b066 <=s (3329)@16, (-3329)@16 <=s b067, b067 <=s (3329)@16,
(-3329)@16 <=s b068, b068 <=s (3329)@16, (-3329)@16 <=s b069, b069 <=s (3329)@16,
(-3329)@16 <=s b070, b070 <=s (3329)@16, (-3329)@16 <=s b071, b071 <=s (3329)@16,
(-3329)@16 <=s b072, b072 <=s (3329)@16, (-3329)@16 <=s b073, b073 <=s (3329)@16,
(-3329)@16 <=s b074, b074 <=s (3329)@16, (-3329)@16 <=s b075, b075 <=s (3329)@16,
(-3329)@16 <=s b076, b076 <=s (3329)@16, (-3329)@16 <=s b077, b077 <=s (3329)@16,
(-3329)@16 <=s b078, b078 <=s (3329)@16, (-3329)@16 <=s b079, b079 <=s (3329)@16,
(-3329)@16 <=s b080, b080 <=s (3329)@16, (-3329)@16 <=s b081, b081 <=s (3329)@16,
(-3329)@16 <=s b082, b082 <=s (3329)@16, (-3329)@16 <=s b083, b083 <=s (3329)@16,
(-3329)@16 <=s b084, b084 <=s (3329)@16, (-3329)@16 <=s b085, b085 <=s (3329)@16,
(-3329)@16 <=s b086, b086 <=s (3329)@16, (-3329)@16 <=s b087, b087 <=s (3329)@16,
(-3329)@16 <=s b088, b088 <=s (3329)@16, (-3329)@16 <=s b089, b089 <=s (3329)@16,
(-3329)@16 <=s b090, b090 <=s (3329)@16, (-3329)@16 <=s b091, b091 <=s (3329)@16,
(-3329)@16 <=s b092, b092 <=s (3329)@16, (-3329)@16 <=s b093, b093 <=s (3329)@16,
(-3329)@16 <=s b094, b094 <=s (3329)@16, (-3329)@16 <=s b095, b095 <=s (3329)@16,
(-3329)@16 <=s b096, b096 <=s (3329)@16, (-3329)@16 <=s b097, b097 <=s (3329)@16,
(-3329)@16 <=s b098, b098 <=s (3329)@16, (-3329)@16 <=s b099, b099 <=s (3329)@16,
(-3329)@16 <=s b100, b100 <=s (3329)@16, (-3329)@16 <=s b101, b101 <=s (3329)@16,
(-3329)@16 <=s b102, b102 <=s (3329)@16, (-3329)@16 <=s b103, b103 <=s (3329)@16,
(-3329)@16 <=s b104, b104 <=s (3329)@16, (-3329)@16 <=s b105, b105 <=s (3329)@16,
(-3329)@16 <=s b106, b106 <=s (3329)@16, (-3329)@16 <=s b107, b107 <=s (3329)@16,
(-3329)@16 <=s b108, b108 <=s (3329)@16, (-3329)@16 <=s b109, b109 <=s (3329)@16,
(-3329)@16 <=s b110, b110 <=s (3329)@16, (-3329)@16 <=s b111, b111 <=s (3329)@16,
(-3329)@16 <=s b112, b112 <=s (3329)@16, (-3329)@16 <=s b113, b113 <=s (3329)@16,
(-3329)@16 <=s b114, b114 <=s (3329)@16, (-3329)@16 <=s b115, b115 <=s (3329)@16,
(-3329)@16 <=s b116, b116 <=s (3329)@16, (-3329)@16 <=s b117, b117 <=s (3329)@16,
(-3329)@16 <=s b118, b118 <=s (3329)@16, (-3329)@16 <=s b119, b119 <=s (3329)@16,
(-3329)@16 <=s b120, b120 <=s (3329)@16, (-3329)@16 <=s b121, b121 <=s (3329)@16,
(-3329)@16 <=s b122, b122 <=s (3329)@16, (-3329)@16 <=s b123, b123 <=s (3329)@16,
(-3329)@16 <=s b124, b124 <=s (3329)@16, (-3329)@16 <=s b125, b125 <=s (3329)@16,
(-3329)@16 <=s b126, b126 <=s (3329)@16, (-3329)@16 <=s b127, b127 <=s (3329)@16,
(-3329)@16 <=s c000, c000 <=s (3329)@16, (-3329)@16 <=s c001, c001 <=s (3329)@16,
(-3329)@16 <=s c002, c002 <=s (3329)@16, (-3329)@16 <=s c003, c003 <=s (3329)@16,
(-3329)@16 <=s c004, c004 <=s (3329)@16, (-3329)@16 <=s c005, c005 <=s (3329)@16,
(-3329)@16 <=s c006, c006 <=s (3329)@16, (-3329)@16 <=s c007, c007 <=s (3329)@16,
(-3329)@16 <=s c008, c008 <=s (3329)@16, (-3329)@16 <=s c009, c009 <=s (3329)@16,
(-3329)@16 <=s c010, c010 <=s (3329)@16, (-3329)@16 <=s c011, c011 <=s (3329)@16,
(-3329)@16 <=s c012, c012 <=s (3329)@16, (-3329)@16 <=s c013, c013 <=s (3329)@16,
(-3329)@16 <=s c014, c014 <=s (3329)@16, (-3329)@16 <=s c015, c015 <=s (3329)@16,
(-3329)@16 <=s c016, c016 <=s (3329)@16, (-3329)@16 <=s c017, c017 <=s (3329)@16,
(-3329)@16 <=s c018, c018 <=s (3329)@16, (-3329)@16 <=s c019, c019 <=s (3329)@16,
(-3329)@16 <=s c020, c020 <=s (3329)@16, (-3329)@16 <=s c021, c021 <=s (3329)@16,
(-3329)@16 <=s c022, c022 <=s (3329)@16, (-3329)@16 <=s c023, c023 <=s (3329)@16,
(-3329)@16 <=s c024, c024 <=s (3329)@16, (-3329)@16 <=s c025, c025 <=s (3329)@16,
(-3329)@16 <=s c026, c026 <=s (3329)@16, (-3329)@16 <=s c027, c027 <=s (3329)@16,
(-3329)@16 <=s c028, c028 <=s (3329)@16, (-3329)@16 <=s c029, c029 <=s (3329)@16,
(-3329)@16 <=s c030, c030 <=s (3329)@16, (-3329)@16 <=s c031, c031 <=s (3329)@16,
(-3329)@16 <=s c032, c032 <=s (3329)@16, (-3329)@16 <=s c033, c033 <=s (3329)@16,
(-3329)@16 <=s c034, c034 <=s (3329)@16, (-3329)@16 <=s c035, c035 <=s (3329)@16,
(-3329)@16 <=s c036, c036 <=s (3329)@16, (-3329)@16 <=s c037, c037 <=s (3329)@16,
(-3329)@16 <=s c038, c038 <=s (3329)@16, (-3329)@16 <=s c039, c039 <=s (3329)@16,
(-3329)@16 <=s c040, c040 <=s (3329)@16, (-3329)@16 <=s c041, c041 <=s (3329)@16,
(-3329)@16 <=s c042, c042 <=s (3329)@16, (-3329)@16 <=s c043, c043 <=s (3329)@16,
(-3329)@16 <=s c044, c044 <=s (3329)@16, (-3329)@16 <=s c045, c045 <=s (3329)@16,
(-3329)@16 <=s c046, c046 <=s (3329)@16, (-3329)@16 <=s c047, c047 <=s (3329)@16,
(-3329)@16 <=s c048, c048 <=s (3329)@16, (-3329)@16 <=s c049, c049 <=s (3329)@16,
(-3329)@16 <=s c050, c050 <=s (3329)@16, (-3329)@16 <=s c051, c051 <=s (3329)@16,
(-3329)@16 <=s c052, c052 <=s (3329)@16, (-3329)@16 <=s c053, c053 <=s (3329)@16,
(-3329)@16 <=s c054, c054 <=s (3329)@16, (-3329)@16 <=s c055, c055 <=s (3329)@16,
(-3329)@16 <=s c056, c056 <=s (3329)@16, (-3329)@16 <=s c057, c057 <=s (3329)@16,
(-3329)@16 <=s c058, c058 <=s (3329)@16, (-3329)@16 <=s c059, c059 <=s (3329)@16,
(-3329)@16 <=s c060, c060 <=s (3329)@16, (-3329)@16 <=s c061, c061 <=s (3329)@16,
(-3329)@16 <=s c062, c062 <=s (3329)@16, (-3329)@16 <=s c063, c063 <=s (3329)@16,
(-3329)@16 <=s c064, c064 <=s (3329)@16, (-3329)@16 <=s c065, c065 <=s (3329)@16,
(-3329)@16 <=s c066, c066 <=s (3329)@16, (-3329)@16 <=s c067, c067 <=s (3329)@16,
(-3329)@16 <=s c068, c068 <=s (3329)@16, (-3329)@16 <=s c069, c069 <=s (3329)@16,
(-3329)@16 <=s c070, c070 <=s (3329)@16, (-3329)@16 <=s c071, c071 <=s (3329)@16,
(-3329)@16 <=s c072, c072 <=s (3329)@16, (-3329)@16 <=s c073, c073 <=s (3329)@16,
(-3329)@16 <=s c074, c074 <=s (3329)@16, (-3329)@16 <=s c075, c075 <=s (3329)@16,
(-3329)@16 <=s c076, c076 <=s (3329)@16, (-3329)@16 <=s c077, c077 <=s (3329)@16,
(-3329)@16 <=s c078, c078 <=s (3329)@16, (-3329)@16 <=s c079, c079 <=s (3329)@16,
(-3329)@16 <=s c080, c080 <=s (3329)@16, (-3329)@16 <=s c081, c081 <=s (3329)@16,
(-3329)@16 <=s c082, c082 <=s (3329)@16, (-3329)@16 <=s c083, c083 <=s (3329)@16,
(-3329)@16 <=s c084, c084 <=s (3329)@16, (-3329)@16 <=s c085, c085 <=s (3329)@16,
(-3329)@16 <=s c086, c086 <=s (3329)@16, (-3329)@16 <=s c087, c087 <=s (3329)@16,
(-3329)@16 <=s c088, c088 <=s (3329)@16, (-3329)@16 <=s c089, c089 <=s (3329)@16,
(-3329)@16 <=s c090, c090 <=s (3329)@16, (-3329)@16 <=s c091, c091 <=s (3329)@16,
(-3329)@16 <=s c092, c092 <=s (3329)@16, (-3329)@16 <=s c093, c093 <=s (3329)@16,
(-3329)@16 <=s c094, c094 <=s (3329)@16, (-3329)@16 <=s c095, c095 <=s (3329)@16,
(-3329)@16 <=s c096, c096 <=s (3329)@16, (-3329)@16 <=s c097, c097 <=s (3329)@16,
(-3329)@16 <=s c098, c098 <=s (3329)@16, (-3329)@16 <=s c099, c099 <=s (3329)@16,
(-3329)@16 <=s c100, c100 <=s (3329)@16, (-3329)@16 <=s c101, c101 <=s (3329)@16,
(-3329)@16 <=s c102, c102 <=s (3329)@16, (-3329)@16 <=s c103, c103 <=s (3329)@16,
(-3329)@16 <=s c104, c104 <=s (3329)@16, (-3329)@16 <=s c105, c105 <=s (3329)@16,
(-3329)@16 <=s c106, c106 <=s (3329)@16, (-3329)@16 <=s c107, c107 <=s (3329)@16,
(-3329)@16 <=s c108, c108 <=s (3329)@16, (-3329)@16 <=s c109, c109 <=s (3329)@16,
(-3329)@16 <=s c110, c110 <=s (3329)@16, (-3329)@16 <=s c111, c111 <=s (3329)@16,
(-3329)@16 <=s c112, c112 <=s (3329)@16, (-3329)@16 <=s c113, c113 <=s (3329)@16,
(-3329)@16 <=s c114, c114 <=s (3329)@16, (-3329)@16 <=s c115, c115 <=s (3329)@16,
(-3329)@16 <=s c116, c116 <=s (3329)@16, (-3329)@16 <=s c117, c117 <=s (3329)@16,
(-3329)@16 <=s c118, c118 <=s (3329)@16, (-3329)@16 <=s c119, c119 <=s (3329)@16,
(-3329)@16 <=s c120, c120 <=s (3329)@16, (-3329)@16 <=s c121, c121 <=s (3329)@16,
(-3329)@16 <=s c122, c122 <=s (3329)@16, (-3329)@16 <=s c123, c123 <=s (3329)@16,
(-3329)@16 <=s c124, c124 <=s (3329)@16, (-3329)@16 <=s c125, c125 <=s (3329)@16,
(-3329)@16 <=s c126, c126 <=s (3329)@16, (-3329)@16 <=s c127, c127 <=s (3329)@16,
(-3329)@16 <=s d000, d000 <=s (3329)@16, (-3329)@16 <=s d001, d001 <=s (3329)@16,
(-3329)@16 <=s d002, d002 <=s (3329)@16, (-3329)@16 <=s d003, d003 <=s (3329)@16,
(-3329)@16 <=s d004, d004 <=s (3329)@16, (-3329)@16 <=s d005, d005 <=s (3329)@16,
(-3329)@16 <=s d006, d006 <=s (3329)@16, (-3329)@16 <=s d007, d007 <=s (3329)@16,
(-3329)@16 <=s d008, d008 <=s (3329)@16, (-3329)@16 <=s d009, d009 <=s (3329)@16,
(-3329)@16 <=s d010, d010 <=s (3329)@16, (-3329)@16 <=s d011, d011 <=s (3329)@16,
(-3329)@16 <=s d012, d012 <=s (3329)@16, (-3329)@16 <=s d013, d013 <=s (3329)@16,
(-3329)@16 <=s d014, d014 <=s (3329)@16, (-3329)@16 <=s d015, d015 <=s (3329)@16,
(-3329)@16 <=s d016, d016 <=s (3329)@16, (-3329)@16 <=s d017, d017 <=s (3329)@16,
(-3329)@16 <=s d018, d018 <=s (3329)@16, (-3329)@16 <=s d019, d019 <=s (3329)@16,
(-3329)@16 <=s d020, d020 <=s (3329)@16, (-3329)@16 <=s d021, d021 <=s (3329)@16,
(-3329)@16 <=s d022, d022 <=s (3329)@16, (-3329)@16 <=s d023, d023 <=s (3329)@16,
(-3329)@16 <=s d024, d024 <=s (3329)@16, (-3329)@16 <=s d025, d025 <=s (3329)@16,
(-3329)@16 <=s d026, d026 <=s (3329)@16, (-3329)@16 <=s d027, d027 <=s (3329)@16,
(-3329)@16 <=s d028, d028 <=s (3329)@16, (-3329)@16 <=s d029, d029 <=s (3329)@16,
(-3329)@16 <=s d030, d030 <=s (3329)@16, (-3329)@16 <=s d031, d031 <=s (3329)@16,
(-3329)@16 <=s d032, d032 <=s (3329)@16, (-3329)@16 <=s d033, d033 <=s (3329)@16,
(-3329)@16 <=s d034, d034 <=s (3329)@16, (-3329)@16 <=s d035, d035 <=s (3329)@16,
(-3329)@16 <=s d036, d036 <=s (3329)@16, (-3329)@16 <=s d037, d037 <=s (3329)@16,
(-3329)@16 <=s d038, d038 <=s (3329)@16, (-3329)@16 <=s d039, d039 <=s (3329)@16,
(-3329)@16 <=s d040, d040 <=s (3329)@16, (-3329)@16 <=s d041, d041 <=s (3329)@16,
(-3329)@16 <=s d042, d042 <=s (3329)@16, (-3329)@16 <=s d043, d043 <=s (3329)@16,
(-3329)@16 <=s d044, d044 <=s (3329)@16, (-3329)@16 <=s d045, d045 <=s (3329)@16,
(-3329)@16 <=s d046, d046 <=s (3329)@16, (-3329)@16 <=s d047, d047 <=s (3329)@16,
(-3329)@16 <=s d048, d048 <=s (3329)@16, (-3329)@16 <=s d049, d049 <=s (3329)@16,
(-3329)@16 <=s d050, d050 <=s (3329)@16, (-3329)@16 <=s d051, d051 <=s (3329)@16,
(-3329)@16 <=s d052, d052 <=s (3329)@16, (-3329)@16 <=s d053, d053 <=s (3329)@16,
(-3329)@16 <=s d054, d054 <=s (3329)@16, (-3329)@16 <=s d055, d055 <=s (3329)@16,
(-3329)@16 <=s d056, d056 <=s (3329)@16, (-3329)@16 <=s d057, d057 <=s (3329)@16,
(-3329)@16 <=s d058, d058 <=s (3329)@16, (-3329)@16 <=s d059, d059 <=s (3329)@16,
(-3329)@16 <=s d060, d060 <=s (3329)@16, (-3329)@16 <=s d061, d061 <=s (3329)@16,
(-3329)@16 <=s d062, d062 <=s (3329)@16, (-3329)@16 <=s d063, d063 <=s (3329)@16,
(-3329)@16 <=s d064, d064 <=s (3329)@16, (-3329)@16 <=s d065, d065 <=s (3329)@16,
(-3329)@16 <=s d066, d066 <=s (3329)@16, (-3329)@16 <=s d067, d067 <=s (3329)@16,
(-3329)@16 <=s d068, d068 <=s (3329)@16, (-3329)@16 <=s d069, d069 <=s (3329)@16,
(-3329)@16 <=s d070, d070 <=s (3329)@16, (-3329)@16 <=s d071, d071 <=s (3329)@16,
(-3329)@16 <=s d072, d072 <=s (3329)@16, (-3329)@16 <=s d073, d073 <=s (3329)@16,
(-3329)@16 <=s d074, d074 <=s (3329)@16, (-3329)@16 <=s d075, d075 <=s (3329)@16,
(-3329)@16 <=s d076, d076 <=s (3329)@16, (-3329)@16 <=s d077, d077 <=s (3329)@16,
(-3329)@16 <=s d078, d078 <=s (3329)@16, (-3329)@16 <=s d079, d079 <=s (3329)@16,
(-3329)@16 <=s d080, d080 <=s (3329)@16, (-3329)@16 <=s d081, d081 <=s (3329)@16,
(-3329)@16 <=s d082, d082 <=s (3329)@16, (-3329)@16 <=s d083, d083 <=s (3329)@16,
(-3329)@16 <=s d084, d084 <=s (3329)@16, (-3329)@16 <=s d085, d085 <=s (3329)@16,
(-3329)@16 <=s d086, d086 <=s (3329)@16, (-3329)@16 <=s d087, d087 <=s (3329)@16,
(-3329)@16 <=s d088, d088 <=s (3329)@16, (-3329)@16 <=s d089, d089 <=s (3329)@16,
(-3329)@16 <=s d090, d090 <=s (3329)@16, (-3329)@16 <=s d091, d091 <=s (3329)@16,
(-3329)@16 <=s d092, d092 <=s (3329)@16, (-3329)@16 <=s d093, d093 <=s (3329)@16,
(-3329)@16 <=s d094, d094 <=s (3329)@16, (-3329)@16 <=s d095, d095 <=s (3329)@16,
(-3329)@16 <=s d096, d096 <=s (3329)@16, (-3329)@16 <=s d097, d097 <=s (3329)@16,
(-3329)@16 <=s d098, d098 <=s (3329)@16, (-3329)@16 <=s d099, d099 <=s (3329)@16,
(-3329)@16 <=s d100, d100 <=s (3329)@16, (-3329)@16 <=s d101, d101 <=s (3329)@16,
(-3329)@16 <=s d102, d102 <=s (3329)@16, (-3329)@16 <=s d103, d103 <=s (3329)@16,
(-3329)@16 <=s d104, d104 <=s (3329)@16, (-3329)@16 <=s d105, d105 <=s (3329)@16,
(-3329)@16 <=s d106, d106 <=s (3329)@16, (-3329)@16 <=s d107, d107 <=s (3329)@16,
(-3329)@16 <=s d108, d108 <=s (3329)@16, (-3329)@16 <=s d109, d109 <=s (3329)@16,
(-3329)@16 <=s d110, d110 <=s (3329)@16, (-3329)@16 <=s d111, d111 <=s (3329)@16,
(-3329)@16 <=s d112, d112 <=s (3329)@16, (-3329)@16 <=s d113, d113 <=s (3329)@16,
(-3329)@16 <=s d114, d114 <=s (3329)@16, (-3329)@16 <=s d115, d115 <=s (3329)@16,
(-3329)@16 <=s d116, d116 <=s (3329)@16, (-3329)@16 <=s d117, d117 <=s (3329)@16,
(-3329)@16 <=s d118, d118 <=s (3329)@16, (-3329)@16 <=s d119, d119 <=s (3329)@16,
(-3329)@16 <=s d120, d120 <=s (3329)@16, (-3329)@16 <=s d121, d121 <=s (3329)@16,
(-3329)@16 <=s d122, d122 <=s (3329)@16, (-3329)@16 <=s d123, d123 <=s (3329)@16,
(-3329)@16 <=s d124, d124 <=s (3329)@16, (-3329)@16 <=s d125, d125 <=s (3329)@16,
(-3329)@16 <=s d126, d126 <=s (3329)@16, (-3329)@16 <=s d127, d127 <=s (3329)@16
]
}

(*********** initialization ***********)



mov [L0x7fffffffdac0, L0x7fffffffdac2, L0x7fffffffdac4, L0x7fffffffdac6, L0x7fffffffdac8, L0x7fffffffdaca, L0x7fffffffdacc, L0x7fffffffdace, L0x7fffffffdad0, L0x7fffffffdad2, L0x7fffffffdad4, L0x7fffffffdad6, L0x7fffffffdad8, L0x7fffffffdada, L0x7fffffffdadc, L0x7fffffffdade]
    [a000, a001, a002, a003, a004, a005, a006, a007, a008, a009, a010, a011, a012, a013, a014, a015];
mov [L0x7fffffffdae0, L0x7fffffffdae2, L0x7fffffffdae4, L0x7fffffffdae6, L0x7fffffffdae8, L0x7fffffffdaea, L0x7fffffffdaec, L0x7fffffffdaee, L0x7fffffffdaf0, L0x7fffffffdaf2, L0x7fffffffdaf4, L0x7fffffffdaf6, L0x7fffffffdaf8, L0x7fffffffdafa, L0x7fffffffdafc, L0x7fffffffdafe]
    [b000, b001, b002, b003, b004, b005, b006, b007, b008, b009, b010, b011, b012, b013, b014, b015];
mov [L0x7fffffffdb00, L0x7fffffffdb02, L0x7fffffffdb04, L0x7fffffffdb06, L0x7fffffffdb08, L0x7fffffffdb0a, L0x7fffffffdb0c, L0x7fffffffdb0e, L0x7fffffffdb10, L0x7fffffffdb12, L0x7fffffffdb14, L0x7fffffffdb16, L0x7fffffffdb18, L0x7fffffffdb1a, L0x7fffffffdb1c, L0x7fffffffdb1e]
    [a016, a017, a018, a019, a020, a021, a022, a023, a024, a025, a026, a027, a028, a029, a030, a031];
mov [L0x7fffffffdb20, L0x7fffffffdb22, L0x7fffffffdb24, L0x7fffffffdb26, L0x7fffffffdb28, L0x7fffffffdb2a, L0x7fffffffdb2c, L0x7fffffffdb2e, L0x7fffffffdb30, L0x7fffffffdb32, L0x7fffffffdb34, L0x7fffffffdb36, L0x7fffffffdb38, L0x7fffffffdb3a, L0x7fffffffdb3c, L0x7fffffffdb3e]
    [b016, b017, b018, b019, b020, b021, b022, b023, b024, b025, b026, b027, b028, b029, b030, b031];
mov [L0x7fffffffdb40, L0x7fffffffdb42, L0x7fffffffdb44, L0x7fffffffdb46, L0x7fffffffdb48, L0x7fffffffdb4a, L0x7fffffffdb4c, L0x7fffffffdb4e, L0x7fffffffdb50, L0x7fffffffdb52, L0x7fffffffdb54, L0x7fffffffdb56, L0x7fffffffdb58, L0x7fffffffdb5a, L0x7fffffffdb5c, L0x7fffffffdb5e]
    [a032, a033, a034, a035, a036, a037, a038, a039, a040, a041, a042, a043, a044, a045, a046, a047];
mov [L0x7fffffffdb60, L0x7fffffffdb62, L0x7fffffffdb64, L0x7fffffffdb66, L0x7fffffffdb68, L0x7fffffffdb6a, L0x7fffffffdb6c, L0x7fffffffdb6e, L0x7fffffffdb70, L0x7fffffffdb72, L0x7fffffffdb74, L0x7fffffffdb76, L0x7fffffffdb78, L0x7fffffffdb7a, L0x7fffffffdb7c, L0x7fffffffdb7e]
    [b032, b033, b034, b035, b036, b037, b038, b039, b040, b041, b042, b043, b044, b045, b046, b047];
mov [L0x7fffffffdb80, L0x7fffffffdb82, L0x7fffffffdb84, L0x7fffffffdb86, L0x7fffffffdb88, L0x7fffffffdb8a, L0x7fffffffdb8c, L0x7fffffffdb8e, L0x7fffffffdb90, L0x7fffffffdb92, L0x7fffffffdb94, L0x7fffffffdb96, L0x7fffffffdb98, L0x7fffffffdb9a, L0x7fffffffdb9c, L0x7fffffffdb9e]
    [a048, a049, a050, a051, a052, a053, a054, a055, a056, a057, a058, a059, a060, a061, a062, a063];
mov [L0x7fffffffdba0, L0x7fffffffdba2, L0x7fffffffdba4, L0x7fffffffdba6, L0x7fffffffdba8, L0x7fffffffdbaa, L0x7fffffffdbac, L0x7fffffffdbae, L0x7fffffffdbb0, L0x7fffffffdbb2, L0x7fffffffdbb4, L0x7fffffffdbb6, L0x7fffffffdbb8, L0x7fffffffdbba, L0x7fffffffdbbc, L0x7fffffffdbbe]
    [b048, b049, b050, b051, b052, b053, b054, b055, b056, b057, b058, b059, b060, b061, b062, b063];
mov [L0x7fffffffdbc0, L0x7fffffffdbc2, L0x7fffffffdbc4, L0x7fffffffdbc6, L0x7fffffffdbc8, L0x7fffffffdbca, L0x7fffffffdbcc, L0x7fffffffdbce, L0x7fffffffdbd0, L0x7fffffffdbd2, L0x7fffffffdbd4, L0x7fffffffdbd6, L0x7fffffffdbd8, L0x7fffffffdbda, L0x7fffffffdbdc, L0x7fffffffdbde]
    [a064, a065, a066, a067, a068, a069, a070, a071, a072, a073, a074, a075, a076, a077, a078, a079];
mov [L0x7fffffffdbe0, L0x7fffffffdbe2, L0x7fffffffdbe4, L0x7fffffffdbe6, L0x7fffffffdbe8, L0x7fffffffdbea, L0x7fffffffdbec, L0x7fffffffdbee, L0x7fffffffdbf0, L0x7fffffffdbf2, L0x7fffffffdbf4, L0x7fffffffdbf6, L0x7fffffffdbf8, L0x7fffffffdbfa, L0x7fffffffdbfc, L0x7fffffffdbfe]
    [b064, b065, b066, b067, b068, b069, b070, b071, b072, b073, b074, b075, b076, b077, b078, b079];
mov [L0x7fffffffdc00, L0x7fffffffdc02, L0x7fffffffdc04, L0x7fffffffdc06, L0x7fffffffdc08, L0x7fffffffdc0a, L0x7fffffffdc0c, L0x7fffffffdc0e, L0x7fffffffdc10, L0x7fffffffdc12, L0x7fffffffdc14, L0x7fffffffdc16, L0x7fffffffdc18, L0x7fffffffdc1a, L0x7fffffffdc1c, L0x7fffffffdc1e]
    [a080, a081, a082, a083, a084, a085, a086, a087, a088, a089, a090, a091, a092, a093, a094, a095];
mov [L0x7fffffffdc20, L0x7fffffffdc22, L0x7fffffffdc24, L0x7fffffffdc26, L0x7fffffffdc28, L0x7fffffffdc2a, L0x7fffffffdc2c, L0x7fffffffdc2e, L0x7fffffffdc30, L0x7fffffffdc32, L0x7fffffffdc34, L0x7fffffffdc36, L0x7fffffffdc38, L0x7fffffffdc3a, L0x7fffffffdc3c, L0x7fffffffdc3e]
    [b080, b081, b082, b083, b084, b085, b086, b087, b088, b089, b090, b091, b092, b093, b094, b095];
mov [L0x7fffffffdc40, L0x7fffffffdc42, L0x7fffffffdc44, L0x7fffffffdc46, L0x7fffffffdc48, L0x7fffffffdc4a, L0x7fffffffdc4c, L0x7fffffffdc4e, L0x7fffffffdc50, L0x7fffffffdc52, L0x7fffffffdc54, L0x7fffffffdc56, L0x7fffffffdc58, L0x7fffffffdc5a, L0x7fffffffdc5c, L0x7fffffffdc5e]
    [a096, a097, a098, a099, a100, a101, a102, a103, a104, a105, a106, a107, a108, a109, a110, a111];
mov [L0x7fffffffdc60, L0x7fffffffdc62, L0x7fffffffdc64, L0x7fffffffdc66, L0x7fffffffdc68, L0x7fffffffdc6a, L0x7fffffffdc6c, L0x7fffffffdc6e, L0x7fffffffdc70, L0x7fffffffdc72, L0x7fffffffdc74, L0x7fffffffdc76, L0x7fffffffdc78, L0x7fffffffdc7a, L0x7fffffffdc7c, L0x7fffffffdc7e]
    [b096, b097, b098, b099, b100, b101, b102, b103, b104, b105, b106, b107, b108, b109, b110, b111];
mov [L0x7fffffffdc80, L0x7fffffffdc82, L0x7fffffffdc84, L0x7fffffffdc86, L0x7fffffffdc88, L0x7fffffffdc8a, L0x7fffffffdc8c, L0x7fffffffdc8e, L0x7fffffffdc90, L0x7fffffffdc92, L0x7fffffffdc94, L0x7fffffffdc96, L0x7fffffffdc98, L0x7fffffffdc9a, L0x7fffffffdc9c, L0x7fffffffdc9e]
    [a112, a113, a114, a115, a116, a117, a118, a119, a120, a121, a122, a123, a124, a125, a126, a127];
mov [L0x7fffffffdca0, L0x7fffffffdca2, L0x7fffffffdca4, L0x7fffffffdca6, L0x7fffffffdca8, L0x7fffffffdcaa, L0x7fffffffdcac, L0x7fffffffdcae, L0x7fffffffdcb0, L0x7fffffffdcb2, L0x7fffffffdcb4, L0x7fffffffdcb6, L0x7fffffffdcb8, L0x7fffffffdcba, L0x7fffffffdcbc, L0x7fffffffdcbe]
    [b112, b113, b114, b115, b116, b117, b118, b119, b120, b121, b122, b123, b124, b125, b126, b127];
mov [L0x7fffffffdcc0, L0x7fffffffdcc2, L0x7fffffffdcc4, L0x7fffffffdcc6, L0x7fffffffdcc8, L0x7fffffffdcca, L0x7fffffffdccc, L0x7fffffffdcce, L0x7fffffffdcd0, L0x7fffffffdcd2, L0x7fffffffdcd4, L0x7fffffffdcd6, L0x7fffffffdcd8, L0x7fffffffdcda, L0x7fffffffdcdc, L0x7fffffffdcde]
    [c000, c001, c002, c003, c004, c005, c006, c007, c008, c009, c010, c011, c012, c013, c014, c015];
mov [L0x7fffffffdce0, L0x7fffffffdce2, L0x7fffffffdce4, L0x7fffffffdce6, L0x7fffffffdce8, L0x7fffffffdcea, L0x7fffffffdcec, L0x7fffffffdcee, L0x7fffffffdcf0, L0x7fffffffdcf2, L0x7fffffffdcf4, L0x7fffffffdcf6, L0x7fffffffdcf8, L0x7fffffffdcfa, L0x7fffffffdcfc, L0x7fffffffdcfe]
    [d000, d001, d002, d003, d004, d005, d006, d007, d008, d009, d010, d011, d012, d013, d014, d015];
mov [L0x7fffffffdd00, L0x7fffffffdd02, L0x7fffffffdd04, L0x7fffffffdd06, L0x7fffffffdd08, L0x7fffffffdd0a, L0x7fffffffdd0c, L0x7fffffffdd0e, L0x7fffffffdd10, L0x7fffffffdd12, L0x7fffffffdd14, L0x7fffffffdd16, L0x7fffffffdd18, L0x7fffffffdd1a, L0x7fffffffdd1c, L0x7fffffffdd1e]
    [c016, c017, c018, c019, c020, c021, c022, c023, c024, c025, c026, c027, c028, c029, c030, c031];
mov [L0x7fffffffdd20, L0x7fffffffdd22, L0x7fffffffdd24, L0x7fffffffdd26, L0x7fffffffdd28, L0x7fffffffdd2a, L0x7fffffffdd2c, L0x7fffffffdd2e, L0x7fffffffdd30, L0x7fffffffdd32, L0x7fffffffdd34, L0x7fffffffdd36, L0x7fffffffdd38, L0x7fffffffdd3a, L0x7fffffffdd3c, L0x7fffffffdd3e]
    [d016, d017, d018, d019, d020, d021, d022, d023, d024, d025, d026, d027, d028, d029, d030, d031];
mov [L0x7fffffffdd40, L0x7fffffffdd42, L0x7fffffffdd44, L0x7fffffffdd46, L0x7fffffffdd48, L0x7fffffffdd4a, L0x7fffffffdd4c, L0x7fffffffdd4e, L0x7fffffffdd50, L0x7fffffffdd52, L0x7fffffffdd54, L0x7fffffffdd56, L0x7fffffffdd58, L0x7fffffffdd5a, L0x7fffffffdd5c, L0x7fffffffdd5e]
    [c032, c033, c034, c035, c036, c037, c038, c039, c040, c041, c042, c043, c044, c045, c046, c047];
mov [L0x7fffffffdd60, L0x7fffffffdd62, L0x7fffffffdd64, L0x7fffffffdd66, L0x7fffffffdd68, L0x7fffffffdd6a, L0x7fffffffdd6c, L0x7fffffffdd6e, L0x7fffffffdd70, L0x7fffffffdd72, L0x7fffffffdd74, L0x7fffffffdd76, L0x7fffffffdd78, L0x7fffffffdd7a, L0x7fffffffdd7c, L0x7fffffffdd7e]
    [d032, d033, d034, d035, d036, d037, d038, d039, d040, d041, d042, d043, d044, d045, d046, d047];
mov [L0x7fffffffdd80, L0x7fffffffdd82, L0x7fffffffdd84, L0x7fffffffdd86, L0x7fffffffdd88, L0x7fffffffdd8a, L0x7fffffffdd8c, L0x7fffffffdd8e, L0x7fffffffdd90, L0x7fffffffdd92, L0x7fffffffdd94, L0x7fffffffdd96, L0x7fffffffdd98, L0x7fffffffdd9a, L0x7fffffffdd9c, L0x7fffffffdd9e]
    [c048, c049, c050, c051, c052, c053, c054, c055, c056, c057, c058, c059, c060, c061, c062, c063];
mov [L0x7fffffffdda0, L0x7fffffffdda2, L0x7fffffffdda4, L0x7fffffffdda6, L0x7fffffffdda8, L0x7fffffffddaa, L0x7fffffffddac, L0x7fffffffddae, L0x7fffffffddb0, L0x7fffffffddb2, L0x7fffffffddb4, L0x7fffffffddb6, L0x7fffffffddb8, L0x7fffffffddba, L0x7fffffffddbc, L0x7fffffffddbe]
    [d048, d049, d050, d051, d052, d053, d054, d055, d056, d057, d058, d059, d060, d061, d062, d063];
mov [L0x7fffffffddc0, L0x7fffffffddc2, L0x7fffffffddc4, L0x7fffffffddc6, L0x7fffffffddc8, L0x7fffffffddca, L0x7fffffffddcc, L0x7fffffffddce, L0x7fffffffddd0, L0x7fffffffddd2, L0x7fffffffddd4, L0x7fffffffddd6, L0x7fffffffddd8, L0x7fffffffddda, L0x7fffffffdddc, L0x7fffffffddde]
    [c064, c065, c066, c067, c068, c069, c070, c071, c072, c073, c074, c075, c076, c077, c078, c079];
mov [L0x7fffffffdde0, L0x7fffffffdde2, L0x7fffffffdde4, L0x7fffffffdde6, L0x7fffffffdde8, L0x7fffffffddea, L0x7fffffffddec, L0x7fffffffddee, L0x7fffffffddf0, L0x7fffffffddf2, L0x7fffffffddf4, L0x7fffffffddf6, L0x7fffffffddf8, L0x7fffffffddfa, L0x7fffffffddfc, L0x7fffffffddfe]
    [d064, d065, d066, d067, d068, d069, d070, d071, d072, d073, d074, d075, d076, d077, d078, d079];
mov [L0x7fffffffde00, L0x7fffffffde02, L0x7fffffffde04, L0x7fffffffde06, L0x7fffffffde08, L0x7fffffffde0a, L0x7fffffffde0c, L0x7fffffffde0e, L0x7fffffffde10, L0x7fffffffde12, L0x7fffffffde14, L0x7fffffffde16, L0x7fffffffde18, L0x7fffffffde1a, L0x7fffffffde1c, L0x7fffffffde1e]
    [c080, c081, c082, c083, c084, c085, c086, c087, c088, c089, c090, c091, c092, c093, c094, c095];
mov [L0x7fffffffde20, L0x7fffffffde22, L0x7fffffffde24, L0x7fffffffde26, L0x7fffffffde28, L0x7fffffffde2a, L0x7fffffffde2c, L0x7fffffffde2e, L0x7fffffffde30, L0x7fffffffde32, L0x7fffffffde34, L0x7fffffffde36, L0x7fffffffde38, L0x7fffffffde3a, L0x7fffffffde3c, L0x7fffffffde3e]
    [d080, d081, d082, d083, d084, d085, d086, d087, d088, d089, d090, d091, d092, d093, d094, d095];
mov [L0x7fffffffde40, L0x7fffffffde42, L0x7fffffffde44, L0x7fffffffde46, L0x7fffffffde48, L0x7fffffffde4a, L0x7fffffffde4c, L0x7fffffffde4e, L0x7fffffffde50, L0x7fffffffde52, L0x7fffffffde54, L0x7fffffffde56, L0x7fffffffde58, L0x7fffffffde5a, L0x7fffffffde5c, L0x7fffffffde5e]
    [c096, c097, c098, c099, c100, c101, c102, c103, c104, c105, c106, c107, c108, c109, c110, c111];
mov [L0x7fffffffde60, L0x7fffffffde62, L0x7fffffffde64, L0x7fffffffde66, L0x7fffffffde68, L0x7fffffffde6a, L0x7fffffffde6c, L0x7fffffffde6e, L0x7fffffffde70, L0x7fffffffde72, L0x7fffffffde74, L0x7fffffffde76, L0x7fffffffde78, L0x7fffffffde7a, L0x7fffffffde7c, L0x7fffffffde7e]
    [d096, d097, d098, d099, d100, d101, d102, d103, d104, d105, d106, d107, d108, d109, d110, d111];
mov [L0x7fffffffde80, L0x7fffffffde82, L0x7fffffffde84, L0x7fffffffde86, L0x7fffffffde88, L0x7fffffffde8a, L0x7fffffffde8c, L0x7fffffffde8e, L0x7fffffffde90, L0x7fffffffde92, L0x7fffffffde94, L0x7fffffffde96, L0x7fffffffde98, L0x7fffffffde9a, L0x7fffffffde9c, L0x7fffffffde9e]
    [c112, c113, c114, c115, c116, c117, c118, c119, c120, c121, c122, c123, c124, c125, c126, c127];
mov [L0x7fffffffdea0, L0x7fffffffdea2, L0x7fffffffdea4, L0x7fffffffdea6, L0x7fffffffdea8, L0x7fffffffdeaa, L0x7fffffffdeac, L0x7fffffffdeae, L0x7fffffffdeb0, L0x7fffffffdeb2, L0x7fffffffdeb4, L0x7fffffffdeb6, L0x7fffffffdeb8, L0x7fffffffdeba, L0x7fffffffdebc, L0x7fffffffdebe]
    [d112, d113, d114, d115, d116, d117, d118, d119, d120, d121, d122, d123, d124, d125, d126, d127];



(*********** constants ***********)



mov L0x5555555760a0 (  3329)@sint16; mov L0x5555555760a2 (  3329)@sint16;
mov L0x5555555760a4 (  3329)@sint16; mov L0x5555555760a6 (  3329)@sint16;
mov L0x5555555760a8 (  3329)@sint16; mov L0x5555555760aa (  3329)@sint16;
mov L0x5555555760ac (  3329)@sint16; mov L0x5555555760ae (  3329)@sint16;
mov L0x5555555760b0 (  3329)@sint16; mov L0x5555555760b2 (  3329)@sint16;
mov L0x5555555760b4 (  3329)@sint16; mov L0x5555555760b6 (  3329)@sint16;
mov L0x5555555760b8 (  3329)@sint16; mov L0x5555555760ba (  3329)@sint16;
mov L0x5555555760bc (  3329)@sint16; mov L0x5555555760be (  3329)@sint16;
mov L0x5555555760c0 ( -3327)@sint16; mov L0x5555555760c2 ( -3327)@sint16;
mov L0x5555555760c4 ( -3327)@sint16; mov L0x5555555760c6 ( -3327)@sint16;
mov L0x5555555760c8 ( -3327)@sint16; mov L0x5555555760ca ( -3327)@sint16;
mov L0x5555555760cc ( -3327)@sint16; mov L0x5555555760ce ( -3327)@sint16;
mov L0x5555555760d0 ( -3327)@sint16; mov L0x5555555760d2 ( -3327)@sint16;
mov L0x5555555760d4 ( -3327)@sint16; mov L0x5555555760d6 ( -3327)@sint16;
mov L0x5555555760d8 ( -3327)@sint16; mov L0x5555555760da ( -3327)@sint16;
mov L0x5555555760dc ( -3327)@sint16; mov L0x5555555760de ( -3327)@sint16;
mov L0x5555555760e0 ( 20159)@sint16; mov L0x5555555760e2 ( 20159)@sint16;
mov L0x5555555760e4 ( 20159)@sint16; mov L0x5555555760e6 ( 20159)@sint16;
mov L0x5555555760e8 ( 20159)@sint16; mov L0x5555555760ea ( 20159)@sint16;
mov L0x5555555760ec ( 20159)@sint16; mov L0x5555555760ee ( 20159)@sint16;
mov L0x5555555760f0 ( 20159)@sint16; mov L0x5555555760f2 ( 20159)@sint16;
mov L0x5555555760f4 ( 20159)@sint16; mov L0x5555555760f6 ( 20159)@sint16;
mov L0x5555555760f8 ( 20159)@sint16; mov L0x5555555760fa ( 20159)@sint16;
mov L0x5555555760fc ( 20159)@sint16; mov L0x5555555760fe ( 20159)@sint16;
mov L0x555555576100 (-10079)@sint16; mov L0x555555576102 (-10079)@sint16;
mov L0x555555576104 (-10079)@sint16; mov L0x555555576106 (-10079)@sint16;
mov L0x555555576108 (-10079)@sint16; mov L0x55555557610a (-10079)@sint16;
mov L0x55555557610c (-10079)@sint16; mov L0x55555557610e (-10079)@sint16;
mov L0x555555576110 (-10079)@sint16; mov L0x555555576112 (-10079)@sint16;
mov L0x555555576114 (-10079)@sint16; mov L0x555555576116 (-10079)@sint16;
mov L0x555555576118 (-10079)@sint16; mov L0x55555557611a (-10079)@sint16;
mov L0x55555557611c (-10079)@sint16; mov L0x55555557611e (-10079)@sint16;
mov L0x555555576120 (  1441)@sint16; mov L0x555555576122 (  1441)@sint16;
mov L0x555555576124 (  1441)@sint16; mov L0x555555576126 (  1441)@sint16;
mov L0x555555576128 (  1441)@sint16; mov L0x55555557612a (  1441)@sint16;
mov L0x55555557612c (  1441)@sint16; mov L0x55555557612e (  1441)@sint16;
mov L0x555555576130 (  1441)@sint16; mov L0x555555576132 (  1441)@sint16;
mov L0x555555576134 (  1441)@sint16; mov L0x555555576136 (  1441)@sint16;
mov L0x555555576138 (  1441)@sint16; mov L0x55555557613a (  1441)@sint16;
mov L0x55555557613c (  1441)@sint16; mov L0x55555557613e (  1441)@sint16;
mov L0x555555576140 ( 20553)@sint16; mov L0x555555576142 ( 20553)@sint16;
mov L0x555555576144 ( 20553)@sint16; mov L0x555555576146 ( 20553)@sint16;
mov L0x555555576148 ( 20553)@sint16; mov L0x55555557614a ( 20553)@sint16;
mov L0x55555557614c ( 20553)@sint16; mov L0x55555557614e ( 20553)@sint16;
mov L0x555555576150 ( 20553)@sint16; mov L0x555555576152 ( 20553)@sint16;
mov L0x555555576154 ( 20553)@sint16; mov L0x555555576156 ( 20553)@sint16;
mov L0x555555576158 ( 20553)@sint16; mov L0x55555557615a ( 20553)@sint16;
mov L0x55555557615c ( 20553)@sint16; mov L0x55555557615e ( 20553)@sint16;
mov L0x555555576160 (  1353)@sint16; mov L0x555555576162 (  1353)@sint16;
mov L0x555555576164 (  1353)@sint16; mov L0x555555576166 (  1353)@sint16;
mov L0x555555576168 (  1353)@sint16; mov L0x55555557616a (  1353)@sint16;
mov L0x55555557616c (  1353)@sint16; mov L0x55555557616e (  1353)@sint16;
mov L0x555555576170 (  1353)@sint16; mov L0x555555576172 (  1353)@sint16;
mov L0x555555576174 (  1353)@sint16; mov L0x555555576176 (  1353)@sint16;
mov L0x555555576178 (  1353)@sint16; mov L0x55555557617a (  1353)@sint16;
mov L0x55555557617c (  1353)@sint16; mov L0x55555557617e (  1353)@sint16;
mov L0x555555576180 (  4095)@sint16; mov L0x555555576182 (  4095)@sint16;
mov L0x555555576184 (  4095)@sint16; mov L0x555555576186 (  4095)@sint16;
mov L0x555555576188 (  4095)@sint16; mov L0x55555557618a (  4095)@sint16;
mov L0x55555557618c (  4095)@sint16; mov L0x55555557618e (  4095)@sint16;
mov L0x555555576190 (  4095)@sint16; mov L0x555555576192 (  4095)@sint16;
mov L0x555555576194 (  4095)@sint16; mov L0x555555576196 (  4095)@sint16;
mov L0x555555576198 (  4095)@sint16; mov L0x55555557619a (  4095)@sint16;
mov L0x55555557619c (  4095)@sint16; mov L0x55555557619e (  4095)@sint16;
mov L0x5555555761a0 (  3854)@sint16; mov L0x5555555761a2 (  3340)@sint16;
mov L0x5555555761a4 (  2826)@sint16; mov L0x5555555761a6 (  2312)@sint16;
mov L0x5555555761a8 (  1798)@sint16; mov L0x5555555761aa (  1284)@sint16;
mov L0x5555555761ac (   770)@sint16; mov L0x5555555761ae (   256)@sint16;
mov L0x5555555761b0 (  3854)@sint16; mov L0x5555555761b2 (  3340)@sint16;
mov L0x5555555761b4 (  2826)@sint16; mov L0x5555555761b6 (  2312)@sint16;
mov L0x5555555761b8 (  1798)@sint16; mov L0x5555555761ba (  1284)@sint16;
mov L0x5555555761bc (   770)@sint16; mov L0x5555555761be (   256)@sint16;
mov L0x5555555761c0 (     7)@sint16; mov L0x5555555761c2 (     0)@sint16;
mov L0x5555555761c4 (     6)@sint16; mov L0x5555555761c6 (     0)@sint16;
mov L0x5555555761c8 (     5)@sint16; mov L0x5555555761ca (     0)@sint16;
mov L0x5555555761cc (     4)@sint16; mov L0x5555555761ce (     0)@sint16;
mov L0x5555555761d0 (     3)@sint16; mov L0x5555555761d2 (     0)@sint16;
mov L0x5555555761d4 (     2)@sint16; mov L0x5555555761d6 (     0)@sint16;
mov L0x5555555761d8 (     1)@sint16; mov L0x5555555761da (     0)@sint16;
mov L0x5555555761dc (     0)@sint16; mov L0x5555555761de (     0)@sint16;
mov L0x5555555761e0 ( 31498)@sint16; mov L0x5555555761e2 ( 31498)@sint16;
mov L0x5555555761e4 ( 31498)@sint16; mov L0x5555555761e6 ( 31498)@sint16;
mov L0x5555555761e8 (  -758)@sint16; mov L0x5555555761ea (  -758)@sint16;
mov L0x5555555761ec (  -758)@sint16; mov L0x5555555761ee (  -758)@sint16;
mov L0x5555555761f0 (  5237)@sint16; mov L0x5555555761f2 (  5237)@sint16;
mov L0x5555555761f4 (  5237)@sint16; mov L0x5555555761f6 (  5237)@sint16;
mov L0x5555555761f8 (  1397)@sint16; mov L0x5555555761fa (  1397)@sint16;
mov L0x5555555761fc (  1397)@sint16; mov L0x5555555761fe (  1397)@sint16;
mov L0x555555576200 ( 14745)@sint16; mov L0x555555576202 ( 14745)@sint16;
mov L0x555555576204 ( 14745)@sint16; mov L0x555555576206 ( 14745)@sint16;
mov L0x555555576208 ( 14745)@sint16; mov L0x55555557620a ( 14745)@sint16;
mov L0x55555557620c ( 14745)@sint16; mov L0x55555557620e ( 14745)@sint16;
mov L0x555555576210 ( 14745)@sint16; mov L0x555555576212 ( 14745)@sint16;
mov L0x555555576214 ( 14745)@sint16; mov L0x555555576216 ( 14745)@sint16;
mov L0x555555576218 ( 14745)@sint16; mov L0x55555557621a ( 14745)@sint16;
mov L0x55555557621c ( 14745)@sint16; mov L0x55555557621e ( 14745)@sint16;
mov L0x555555576220 (  -359)@sint16; mov L0x555555576222 (  -359)@sint16;
mov L0x555555576224 (  -359)@sint16; mov L0x555555576226 (  -359)@sint16;
mov L0x555555576228 (  -359)@sint16; mov L0x55555557622a (  -359)@sint16;
mov L0x55555557622c (  -359)@sint16; mov L0x55555557622e (  -359)@sint16;
mov L0x555555576230 (  -359)@sint16; mov L0x555555576232 (  -359)@sint16;
mov L0x555555576234 (  -359)@sint16; mov L0x555555576236 (  -359)@sint16;
mov L0x555555576238 (  -359)@sint16; mov L0x55555557623a (  -359)@sint16;
mov L0x55555557623c (  -359)@sint16; mov L0x55555557623e (  -359)@sint16;
mov L0x555555576240 ( 13525)@sint16; mov L0x555555576242 ( 13525)@sint16;
mov L0x555555576244 ( 13525)@sint16; mov L0x555555576246 ( 13525)@sint16;
mov L0x555555576248 ( 13525)@sint16; mov L0x55555557624a ( 13525)@sint16;
mov L0x55555557624c ( 13525)@sint16; mov L0x55555557624e ( 13525)@sint16;
mov L0x555555576250 (-12402)@sint16; mov L0x555555576252 (-12402)@sint16;
mov L0x555555576254 (-12402)@sint16; mov L0x555555576256 (-12402)@sint16;
mov L0x555555576258 (-12402)@sint16; mov L0x55555557625a (-12402)@sint16;
mov L0x55555557625c (-12402)@sint16; mov L0x55555557625e (-12402)@sint16;
mov L0x555555576260 (  1493)@sint16; mov L0x555555576262 (  1493)@sint16;
mov L0x555555576264 (  1493)@sint16; mov L0x555555576266 (  1493)@sint16;
mov L0x555555576268 (  1493)@sint16; mov L0x55555557626a (  1493)@sint16;
mov L0x55555557626c (  1493)@sint16; mov L0x55555557626e (  1493)@sint16;
mov L0x555555576270 (  1422)@sint16; mov L0x555555576272 (  1422)@sint16;
mov L0x555555576274 (  1422)@sint16; mov L0x555555576276 (  1422)@sint16;
mov L0x555555576278 (  1422)@sint16; mov L0x55555557627a (  1422)@sint16;
mov L0x55555557627c (  1422)@sint16; mov L0x55555557627e (  1422)@sint16;
mov L0x555555576280 (-20907)@sint16; mov L0x555555576282 (-20907)@sint16;
mov L0x555555576284 (-20907)@sint16; mov L0x555555576286 (-20907)@sint16;
mov L0x555555576288 ( 27758)@sint16; mov L0x55555557628a ( 27758)@sint16;
mov L0x55555557628c ( 27758)@sint16; mov L0x55555557628e ( 27758)@sint16;
mov L0x555555576290 ( -3799)@sint16; mov L0x555555576292 ( -3799)@sint16;
mov L0x555555576294 ( -3799)@sint16; mov L0x555555576296 ( -3799)@sint16;
mov L0x555555576298 (-15690)@sint16; mov L0x55555557629a (-15690)@sint16;
mov L0x55555557629c (-15690)@sint16; mov L0x55555557629e (-15690)@sint16;
mov L0x5555555762a0 (  -171)@sint16; mov L0x5555555762a2 (  -171)@sint16;
mov L0x5555555762a4 (  -171)@sint16; mov L0x5555555762a6 (  -171)@sint16;
mov L0x5555555762a8 (   622)@sint16; mov L0x5555555762aa (   622)@sint16;
mov L0x5555555762ac (   622)@sint16; mov L0x5555555762ae (   622)@sint16;
mov L0x5555555762b0 (  1577)@sint16; mov L0x5555555762b2 (  1577)@sint16;
mov L0x5555555762b4 (  1577)@sint16; mov L0x5555555762b6 (  1577)@sint16;
mov L0x5555555762b8 (   182)@sint16; mov L0x5555555762ba (   182)@sint16;
mov L0x5555555762bc (   182)@sint16; mov L0x5555555762be (   182)@sint16;
mov L0x5555555762c0 ( -5827)@sint16; mov L0x5555555762c2 ( -5827)@sint16;
mov L0x5555555762c4 ( 17363)@sint16; mov L0x5555555762c6 ( 17363)@sint16;
mov L0x5555555762c8 (-26360)@sint16; mov L0x5555555762ca (-26360)@sint16;
mov L0x5555555762cc (-29057)@sint16; mov L0x5555555762ce (-29057)@sint16;
mov L0x5555555762d0 (  5571)@sint16; mov L0x5555555762d2 (  5571)@sint16;
mov L0x5555555762d4 ( -1102)@sint16; mov L0x5555555762d6 ( -1102)@sint16;
mov L0x5555555762d8 ( 21438)@sint16; mov L0x5555555762da ( 21438)@sint16;
mov L0x5555555762dc (-26242)@sint16; mov L0x5555555762de (-26242)@sint16;
mov L0x5555555762e0 (   573)@sint16; mov L0x5555555762e2 (   573)@sint16;
mov L0x5555555762e4 ( -1325)@sint16; mov L0x5555555762e6 ( -1325)@sint16;
mov L0x5555555762e8 (   264)@sint16; mov L0x5555555762ea (   264)@sint16;
mov L0x5555555762ec (   383)@sint16; mov L0x5555555762ee (   383)@sint16;
mov L0x5555555762f0 (  -829)@sint16; mov L0x5555555762f2 (  -829)@sint16;
mov L0x5555555762f4 (  1458)@sint16; mov L0x5555555762f6 (  1458)@sint16;
mov L0x5555555762f8 ( -1602)@sint16; mov L0x5555555762fa ( -1602)@sint16;
mov L0x5555555762fc (  -130)@sint16; mov L0x5555555762fe (  -130)@sint16;
mov L0x555555576300 ( -5689)@sint16; mov L0x555555576302 ( -6516)@sint16;
mov L0x555555576304 (  1496)@sint16; mov L0x555555576306 ( 30967)@sint16;
mov L0x555555576308 (-23565)@sint16; mov L0x55555557630a ( 20179)@sint16;
mov L0x55555557630c ( 20710)@sint16; mov L0x55555557630e ( 25080)@sint16;
mov L0x555555576310 (-12796)@sint16; mov L0x555555576312 ( 26616)@sint16;
mov L0x555555576314 ( 16064)@sint16; mov L0x555555576316 (-12442)@sint16;
mov L0x555555576318 (  9134)@sint16; mov L0x55555557631a (  -650)@sint16;
mov L0x55555557631c (-25986)@sint16; mov L0x55555557631e ( 27837)@sint16;
mov L0x555555576320 (  1223)@sint16; mov L0x555555576322 (   652)@sint16;
mov L0x555555576324 (  -552)@sint16; mov L0x555555576326 (  1015)@sint16;
mov L0x555555576328 ( -1293)@sint16; mov L0x55555557632a (  1491)@sint16;
mov L0x55555557632c (  -282)@sint16; mov L0x55555557632e ( -1544)@sint16;
mov L0x555555576330 (   516)@sint16; mov L0x555555576332 (    -8)@sint16;
mov L0x555555576334 (  -320)@sint16; mov L0x555555576336 (  -666)@sint16;
mov L0x555555576338 ( -1618)@sint16; mov L0x55555557633a ( -1162)@sint16;
mov L0x55555557633c (   126)@sint16; mov L0x55555557633e (  1469)@sint16;
mov L0x555555576340 (  -335)@sint16; mov L0x555555576342 (-11477)@sint16;
mov L0x555555576344 (-32227)@sint16; mov L0x555555576346 ( 20494)@sint16;
mov L0x555555576348 (-27738)@sint16; mov L0x55555557634a (   945)@sint16;
mov L0x55555557634c (-14883)@sint16; mov L0x55555557634e (  6182)@sint16;
mov L0x555555576350 ( 32010)@sint16; mov L0x555555576352 ( 10631)@sint16;
mov L0x555555576354 ( 29175)@sint16; mov L0x555555576356 (-28762)@sint16;
mov L0x555555576358 (-18486)@sint16; mov L0x55555557635a ( 17560)@sint16;
mov L0x55555557635c (-14430)@sint16; mov L0x55555557635e ( -5276)@sint16;
mov L0x555555576360 ( -1103)@sint16; mov L0x555555576362 (   555)@sint16;
mov L0x555555576364 ( -1251)@sint16; mov L0x555555576366 (  1550)@sint16;
mov L0x555555576368 (   422)@sint16; mov L0x55555557636a (   177)@sint16;
mov L0x55555557636c (  -291)@sint16; mov L0x55555557636e (  1574)@sint16;
mov L0x555555576370 (  -246)@sint16; mov L0x555555576372 (  1159)@sint16;
mov L0x555555576374 (  -777)@sint16; mov L0x555555576376 (  -602)@sint16;
mov L0x555555576378 ( -1590)@sint16; mov L0x55555557637a (  -872)@sint16;
mov L0x55555557637c (   418)@sint16; mov L0x55555557637e (  -156)@sint16;
mov L0x555555576380 ( 11182)@sint16; mov L0x555555576382 ( 13387)@sint16;
mov L0x555555576384 (-14233)@sint16; mov L0x555555576386 (-21655)@sint16;
mov L0x555555576388 ( 13131)@sint16; mov L0x55555557638a ( -4587)@sint16;
mov L0x55555557638c ( 23092)@sint16; mov L0x55555557638e (  5493)@sint16;
mov L0x555555576390 (-32502)@sint16; mov L0x555555576392 ( 30317)@sint16;
mov L0x555555576394 (-18741)@sint16; mov L0x555555576396 ( 12639)@sint16;
mov L0x555555576398 ( 20100)@sint16; mov L0x55555557639a ( 18525)@sint16;
mov L0x55555557639c ( 19529)@sint16; mov L0x55555557639e (-12619)@sint16;
mov L0x5555555763a0 (   430)@sint16; mov L0x5555555763a2 (   843)@sint16;
mov L0x5555555763a4 (   871)@sint16; mov L0x5555555763a6 (   105)@sint16;
mov L0x5555555763a8 (   587)@sint16; mov L0x5555555763aa (  -235)@sint16;
mov L0x5555555763ac (  -460)@sint16; mov L0x5555555763ae (  1653)@sint16;
mov L0x5555555763b0 (   778)@sint16; mov L0x5555555763b2 (  -147)@sint16;
mov L0x5555555763b4 (  1483)@sint16; mov L0x5555555763b6 (  1119)@sint16;
mov L0x5555555763b8 (   644)@sint16; mov L0x5555555763ba (   349)@sint16;
mov L0x5555555763bc (   329)@sint16; mov L0x5555555763be (   -75)@sint16;
mov L0x5555555763c0 (   787)@sint16; mov L0x5555555763c2 (   787)@sint16;
mov L0x5555555763c4 (   787)@sint16; mov L0x5555555763c6 (   787)@sint16;
mov L0x5555555763c8 (   787)@sint16; mov L0x5555555763ca (   787)@sint16;
mov L0x5555555763cc (   787)@sint16; mov L0x5555555763ce (   787)@sint16;
mov L0x5555555763d0 (   787)@sint16; mov L0x5555555763d2 (   787)@sint16;
mov L0x5555555763d4 (   787)@sint16; mov L0x5555555763d6 (   787)@sint16;
mov L0x5555555763d8 (   787)@sint16; mov L0x5555555763da (   787)@sint16;
mov L0x5555555763dc (   787)@sint16; mov L0x5555555763de (   787)@sint16;
mov L0x5555555763e0 ( -1517)@sint16; mov L0x5555555763e2 ( -1517)@sint16;
mov L0x5555555763e4 ( -1517)@sint16; mov L0x5555555763e6 ( -1517)@sint16;
mov L0x5555555763e8 ( -1517)@sint16; mov L0x5555555763ea ( -1517)@sint16;
mov L0x5555555763ec ( -1517)@sint16; mov L0x5555555763ee ( -1517)@sint16;
mov L0x5555555763f0 ( -1517)@sint16; mov L0x5555555763f2 ( -1517)@sint16;
mov L0x5555555763f4 ( -1517)@sint16; mov L0x5555555763f6 ( -1517)@sint16;
mov L0x5555555763f8 ( -1517)@sint16; mov L0x5555555763fa ( -1517)@sint16;
mov L0x5555555763fc ( -1517)@sint16; mov L0x5555555763fe ( -1517)@sint16;
mov L0x555555576400 ( 28191)@sint16; mov L0x555555576402 ( 28191)@sint16;
mov L0x555555576404 ( 28191)@sint16; mov L0x555555576406 ( 28191)@sint16;
mov L0x555555576408 ( 28191)@sint16; mov L0x55555557640a ( 28191)@sint16;
mov L0x55555557640c ( 28191)@sint16; mov L0x55555557640e ( 28191)@sint16;
mov L0x555555576410 (-16694)@sint16; mov L0x555555576412 (-16694)@sint16;
mov L0x555555576414 (-16694)@sint16; mov L0x555555576416 (-16694)@sint16;
mov L0x555555576418 (-16694)@sint16; mov L0x55555557641a (-16694)@sint16;
mov L0x55555557641c (-16694)@sint16; mov L0x55555557641e (-16694)@sint16;
mov L0x555555576420 (   287)@sint16; mov L0x555555576422 (   287)@sint16;
mov L0x555555576424 (   287)@sint16; mov L0x555555576426 (   287)@sint16;
mov L0x555555576428 (   287)@sint16; mov L0x55555557642a (   287)@sint16;
mov L0x55555557642c (   287)@sint16; mov L0x55555557642e (   287)@sint16;
mov L0x555555576430 (   202)@sint16; mov L0x555555576432 (   202)@sint16;
mov L0x555555576434 (   202)@sint16; mov L0x555555576436 (   202)@sint16;
mov L0x555555576438 (   202)@sint16; mov L0x55555557643a (   202)@sint16;
mov L0x55555557643c (   202)@sint16; mov L0x55555557643e (   202)@sint16;
mov L0x555555576440 ( 10690)@sint16; mov L0x555555576442 ( 10690)@sint16;
mov L0x555555576444 ( 10690)@sint16; mov L0x555555576446 ( 10690)@sint16;
mov L0x555555576448 (  1358)@sint16; mov L0x55555557644a (  1358)@sint16;
mov L0x55555557644c (  1358)@sint16; mov L0x55555557644e (  1358)@sint16;
mov L0x555555576450 (-11202)@sint16; mov L0x555555576452 (-11202)@sint16;
mov L0x555555576454 (-11202)@sint16; mov L0x555555576456 (-11202)@sint16;
mov L0x555555576458 ( 31164)@sint16; mov L0x55555557645a ( 31164)@sint16;
mov L0x55555557645c ( 31164)@sint16; mov L0x55555557645e ( 31164)@sint16;
mov L0x555555576460 (   962)@sint16; mov L0x555555576462 (   962)@sint16;
mov L0x555555576464 (   962)@sint16; mov L0x555555576466 (   962)@sint16;
mov L0x555555576468 ( -1202)@sint16; mov L0x55555557646a ( -1202)@sint16;
mov L0x55555557646c ( -1202)@sint16; mov L0x55555557646e ( -1202)@sint16;
mov L0x555555576470 ( -1474)@sint16; mov L0x555555576472 ( -1474)@sint16;
mov L0x555555576474 ( -1474)@sint16; mov L0x555555576476 ( -1474)@sint16;
mov L0x555555576478 (  1468)@sint16; mov L0x55555557647a (  1468)@sint16;
mov L0x55555557647c (  1468)@sint16; mov L0x55555557647e (  1468)@sint16;
mov L0x555555576480 (-28073)@sint16; mov L0x555555576482 (-28073)@sint16;
mov L0x555555576484 ( 24313)@sint16; mov L0x555555576486 ( 24313)@sint16;
mov L0x555555576488 (-10532)@sint16; mov L0x55555557648a (-10532)@sint16;
mov L0x55555557648c (  8800)@sint16; mov L0x55555557648e (  8800)@sint16;
mov L0x555555576490 ( 18426)@sint16; mov L0x555555576492 ( 18426)@sint16;
mov L0x555555576494 (  8859)@sint16; mov L0x555555576496 (  8859)@sint16;
mov L0x555555576498 ( 26675)@sint16; mov L0x55555557649a ( 26675)@sint16;
mov L0x55555557649c (-16163)@sint16; mov L0x55555557649e (-16163)@sint16;
mov L0x5555555764a0 (  -681)@sint16; mov L0x5555555764a2 (  -681)@sint16;
mov L0x5555555764a4 (  1017)@sint16; mov L0x5555555764a6 (  1017)@sint16;
mov L0x5555555764a8 (   732)@sint16; mov L0x5555555764aa (   732)@sint16;
mov L0x5555555764ac (   608)@sint16; mov L0x5555555764ae (   608)@sint16;
mov L0x5555555764b0 ( -1542)@sint16; mov L0x5555555764b2 ( -1542)@sint16;
mov L0x5555555764b4 (   411)@sint16; mov L0x5555555764b6 (   411)@sint16;
mov L0x5555555764b8 (  -205)@sint16; mov L0x5555555764ba (  -205)@sint16;
mov L0x5555555764bc ( -1571)@sint16; mov L0x5555555764be ( -1571)@sint16;
mov L0x5555555764c0 ( 19883)@sint16; mov L0x5555555764c2 (-28250)@sint16;
mov L0x5555555764c4 (-15887)@sint16; mov L0x5555555764c6 ( -8898)@sint16;
mov L0x5555555764c8 (-28309)@sint16; mov L0x5555555764ca (  9075)@sint16;
mov L0x5555555764cc (-30199)@sint16; mov L0x5555555764ce ( 18249)@sint16;
mov L0x5555555764d0 ( 13426)@sint16; mov L0x5555555764d2 ( 14017)@sint16;
mov L0x5555555764d4 (-29156)@sint16; mov L0x5555555764d6 (-12757)@sint16;
mov L0x5555555764d8 ( 16832)@sint16; mov L0x5555555764da (  4311)@sint16;
mov L0x5555555764dc (-24155)@sint16; mov L0x5555555764de (-17915)@sint16;
mov L0x5555555764e0 (  -853)@sint16; mov L0x5555555764e2 (   -90)@sint16;
mov L0x5555555764e4 (  -271)@sint16; mov L0x5555555764e6 (   830)@sint16;
mov L0x5555555764e8 (   107)@sint16; mov L0x5555555764ea ( -1421)@sint16;
mov L0x5555555764ec (  -247)@sint16; mov L0x5555555764ee (  -951)@sint16;
mov L0x5555555764f0 (  -398)@sint16; mov L0x5555555764f2 (   961)@sint16;
mov L0x5555555764f4 ( -1508)@sint16; mov L0x5555555764f6 (  -725)@sint16;
mov L0x5555555764f8 (   448)@sint16; mov L0x5555555764fa ( -1065)@sint16;
mov L0x5555555764fc (   677)@sint16; mov L0x5555555764fe ( -1275)@sint16;
mov L0x555555576500 (-31183)@sint16; mov L0x555555576502 ( 25435)@sint16;
mov L0x555555576504 ( -7382)@sint16; mov L0x555555576506 ( 24391)@sint16;
mov L0x555555576508 (-20927)@sint16; mov L0x55555557650a ( 10946)@sint16;
mov L0x55555557650c ( 24214)@sint16; mov L0x55555557650e ( 16989)@sint16;
mov L0x555555576510 ( 10335)@sint16; mov L0x555555576512 ( -7934)@sint16;
mov L0x555555576514 (-22502)@sint16; mov L0x555555576516 ( 10906)@sint16;
mov L0x555555576518 ( 31636)@sint16; mov L0x55555557651a ( 28644)@sint16;
mov L0x55555557651c ( 23998)@sint16; mov L0x55555557651e (-17422)@sint16;
mov L0x555555576520 (   817)@sint16; mov L0x555555576522 (   603)@sint16;
mov L0x555555576524 (  1322)@sint16; mov L0x555555576526 ( -1465)@sint16;
mov L0x555555576528 ( -1215)@sint16; mov L0x55555557652a (  1218)@sint16;
mov L0x55555557652c (  -874)@sint16; mov L0x55555557652e ( -1187)@sint16;
mov L0x555555576530 ( -1185)@sint16; mov L0x555555576532 ( -1278)@sint16;
mov L0x555555576534 ( -1510)@sint16; mov L0x555555576536 (  -870)@sint16;
mov L0x555555576538 (  -108)@sint16; mov L0x55555557653a (   996)@sint16;
mov L0x55555557653c (   958)@sint16; mov L0x55555557653e (  1522)@sint16;
mov L0x555555576540 ( 20297)@sint16; mov L0x555555576542 (  2146)@sint16;
mov L0x555555576544 ( 15355)@sint16; mov L0x555555576546 (-32384)@sint16;
mov L0x555555576548 ( -6280)@sint16; mov L0x55555557654a (-14903)@sint16;
mov L0x55555557654c (-11044)@sint16; mov L0x55555557654e ( 14469)@sint16;
mov L0x555555576550 (-21498)@sint16; mov L0x555555576552 (-20198)@sint16;
mov L0x555555576554 ( 23210)@sint16; mov L0x555555576556 (-17442)@sint16;
mov L0x555555576558 (-23860)@sint16; mov L0x55555557655a (-20257)@sint16;
mov L0x55555557655c (  7756)@sint16; mov L0x55555557655e ( 23132)@sint16;
mov L0x555555576560 (  1097)@sint16; mov L0x555555576562 (   610)@sint16;
mov L0x555555576564 ( -1285)@sint16; mov L0x555555576566 (   384)@sint16;
mov L0x555555576568 (  -136)@sint16; mov L0x55555557656a ( -1335)@sint16;
mov L0x55555557656c (   220)@sint16; mov L0x55555557656e ( -1659)@sint16;
mov L0x555555576570 ( -1530)@sint16; mov L0x555555576572 (   794)@sint16;
mov L0x555555576574 (  -854)@sint16; mov L0x555555576576 (   478)@sint16;
mov L0x555555576578 (  -308)@sint16; mov L0x55555557657a (   991)@sint16;
mov L0x55555557657c ( -1460)@sint16; mov L0x55555557657e (  1628)@sint16;
mov L0x555555576580 (    32)@sint16; mov L0x555555576582 (    32)@sint16;
mov L0x555555576584 (    32)@sint16; mov L0x555555576586 (    32)@sint16;
mov L0x555555576588 (    32)@sint16; mov L0x55555557658a (    32)@sint16;
mov L0x55555557658c (    32)@sint16; mov L0x55555557658e (    32)@sint16;
mov L0x555555576590 (    32)@sint16; mov L0x555555576592 (    32)@sint16;
mov L0x555555576594 (    32)@sint16; mov L0x555555576596 (    32)@sint16;
mov L0x555555576598 (    32)@sint16; mov L0x55555557659a (    32)@sint16;
mov L0x55555557659c (    32)@sint16; mov L0x55555557659e (    32)@sint16;



(* #! -> SP = 0x7fffffffdab8 *)
#! 0x7fffffffdab8 = 0x7fffffffdab8;
(* #endbr64                                         #! PC = 0x555555558e70 *)
#endbr64                                         #! 0x555555558e70 = 0x555555558e70;
(* #lea    0x1d225(%rip),%rcx        # 0x5555555760a0 <PQCLEAN_KYBER768_AVX2_qdata>#! PC = 0x555555558e74 *)
#lea    0x1d225(%rip),%rcx        # 0x5555555760a0 <PQCLEAN_KYBER768_AVX2_qdata>#! 0x555555558e74 = 0x555555558e74;
(* #jmpq   0x555555559f25 <_PQCLEAN_KYBER768_AVX2_basemul_avx>#! PC = 0x555555558e7b *)
#jmpq   0x555555559f25 <_PQCLEAN_KYBER768_AVX2_basemul_avx>#! 0x555555558e7b = 0x555555558e7b;
(* #mov    %rsp,%r8                                 #! PC = 0x555555559f25 *)
#mov    %rsp,%r8                                 #! 0x555555559f25 = 0x555555559f25;
(* #and    $0xffffffffffffffe0,%rsp                 #! PC = 0x555555559f28 *)
#and    $0xffffffffffffffe0,%rsp                 #! 0x555555559f28 = 0x555555559f28;
(* #sub    $0x20,%rsp                               #! PC = 0x555555559f2c *)
#sub    $0x20,%rsp                               #! 0x555555559f2c = 0x555555559f2c;
(* #lea    0x2a0(%rcx),%r9                          #! PC = 0x555555559f30 *)
#lea    %%EA,%r9                          #! 0x555555559f30 = 0x555555559f30;
(* vmovdqa 0x20(%rcx),%ymm0                        #! EA = L0x5555555760c0; Value = 0xf301f301f301f301; PC = 0x555555559f37 *)
mov %ymm0 [L0x5555555760c0, L0x5555555760c2, L0x5555555760c4, L0x5555555760c6, L0x5555555760c8, L0x5555555760ca, L0x5555555760cc, L0x5555555760ce, L0x5555555760d0, L0x5555555760d2, L0x5555555760d4, L0x5555555760d6, L0x5555555760d8, L0x5555555760da, L0x5555555760dc, L0x5555555760de];
(* vmovdqa (%rsi),%ymm1                            #! EA = L0x7fffffffdac0; Value = 0x0000000000000000; PC = 0x555555559f3c *)
mov %ymm1 [L0x7fffffffdac0, L0x7fffffffdac2, L0x7fffffffdac4, L0x7fffffffdac6, L0x7fffffffdac8, L0x7fffffffdaca, L0x7fffffffdacc, L0x7fffffffdace, L0x7fffffffdad0, L0x7fffffffdad2, L0x7fffffffdad4, L0x7fffffffdad6, L0x7fffffffdad8, L0x7fffffffdada, L0x7fffffffdadc, L0x7fffffffdade];
(* vmovdqa 0x20(%rsi),%ymm2                        #! EA = L0x7fffffffdae0; Value = 0x00007ffff7fcf580; PC = 0x555555559f40 *)
mov %ymm2 [L0x7fffffffdae0, L0x7fffffffdae2, L0x7fffffffdae4, L0x7fffffffdae6, L0x7fffffffdae8, L0x7fffffffdaea, L0x7fffffffdaec, L0x7fffffffdaee, L0x7fffffffdaf0, L0x7fffffffdaf2, L0x7fffffffdaf4, L0x7fffffffdaf6, L0x7fffffffdaf8, L0x7fffffffdafa, L0x7fffffffdafc, L0x7fffffffdafe];
(* vmovdqa 0x40(%rsi),%ymm3                        #! EA = L0x7fffffffdb00; Value = 0x00000000000000c3; PC = 0x555555559f45 *)
mov %ymm3 [L0x7fffffffdb00, L0x7fffffffdb02, L0x7fffffffdb04, L0x7fffffffdb06, L0x7fffffffdb08, L0x7fffffffdb0a, L0x7fffffffdb0c, L0x7fffffffdb0e, L0x7fffffffdb10, L0x7fffffffdb12, L0x7fffffffdb14, L0x7fffffffdb16, L0x7fffffffdb18, L0x7fffffffdb1a, L0x7fffffffdb1c, L0x7fffffffdb1e];
(* vmovdqa 0x60(%rsi),%ymm4                        #! EA = L0x7fffffffdb20; Value = 0x00007fffffffdbb4; PC = 0x555555559f4a *)
mov %ymm4 [L0x7fffffffdb20, L0x7fffffffdb22, L0x7fffffffdb24, L0x7fffffffdb26, L0x7fffffffdb28, L0x7fffffffdb2a, L0x7fffffffdb2c, L0x7fffffffdb2e, L0x7fffffffdb30, L0x7fffffffdb32, L0x7fffffffdb34, L0x7fffffffdb36, L0x7fffffffdb38, L0x7fffffffdb3a, L0x7fffffffdb3c, L0x7fffffffdb3e];
(* vpmullw %ymm0,%ymm1,%ymm9                       #! PC = 0x555555559f4f *)
smull %mulHymm1 %mulL %ymm0 %ymm1;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm2,%ymm10                      #! PC = 0x555555559f53 *)
smull %mulHymm2 %mulL %ymm0 %ymm2;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm3,%ymm11                      #! PC = 0x555555559f57 *)
smull %mulHymm3 %mulL %ymm0 %ymm3;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm4,%ymm12                      #! PC = 0x555555559f5b *)
smull %mulHymm4 %mulL %ymm0 %ymm4;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa (%rdx),%ymm5                            #! EA = L0x7fffffffdcc0; Value = 0x00007ffff7ffc6e2; PC = 0x555555559f5f *)
mov %ymm5 [L0x7fffffffdcc0, L0x7fffffffdcc2, L0x7fffffffdcc4, L0x7fffffffdcc6, L0x7fffffffdcc8, L0x7fffffffdcca, L0x7fffffffdccc, L0x7fffffffdcce, L0x7fffffffdcd0, L0x7fffffffdcd2, L0x7fffffffdcd4, L0x7fffffffdcd6, L0x7fffffffdcd8, L0x7fffffffdcda, L0x7fffffffdcdc, L0x7fffffffdcde];
(* vmovdqa 0x20(%rdx),%ymm6                        #! EA = L0x7fffffffdce0; Value = 0x0000000800000007; PC = 0x555555559f63 *)
mov %ymm6 [L0x7fffffffdce0, L0x7fffffffdce2, L0x7fffffffdce4, L0x7fffffffdce6, L0x7fffffffdce8, L0x7fffffffdcea, L0x7fffffffdcec, L0x7fffffffdcee, L0x7fffffffdcf0, L0x7fffffffdcf2, L0x7fffffffdcf4, L0x7fffffffdcf6, L0x7fffffffdcf8, L0x7fffffffdcfa, L0x7fffffffdcfc, L0x7fffffffdcfe];
(* vpmulhw %ymm5,%ymm1,%ymm13                      #! PC = 0x555555559f68 *)
smull %ymm13 %__mont0 %ymm5 %ymm1;
(* vpmulhw %ymm6,%ymm1,%ymm1                       #! PC = 0x555555559f6c *)
smull %ymm1 %__mont1 %ymm6 %ymm1;
(* vpmulhw %ymm5,%ymm2,%ymm14                      #! PC = 0x555555559f70 *)
smull %ymm14 %__mont2 %ymm5 %ymm2;
(* vpmulhw %ymm6,%ymm2,%ymm2                       #! PC = 0x555555559f74 *)
smull %ymm2 %__mont3 %ymm6 %ymm2;
(* vmovdqa 0x40(%rdx),%ymm7                        #! EA = L0x7fffffffdd00; Value = 0x0000000000000009; PC = 0x555555559f78 *)
mov %ymm7 [L0x7fffffffdd00, L0x7fffffffdd02, L0x7fffffffdd04, L0x7fffffffdd06, L0x7fffffffdd08, L0x7fffffffdd0a, L0x7fffffffdd0c, L0x7fffffffdd0e, L0x7fffffffdd10, L0x7fffffffdd12, L0x7fffffffdd14, L0x7fffffffdd16, L0x7fffffffdd18, L0x7fffffffdd1a, L0x7fffffffdd1c, L0x7fffffffdd1e];
(* vmovdqa 0x60(%rdx),%ymm8                        #! EA = L0x7fffffffdd20; Value = 0x00007ffff7fb1000; PC = 0x555555559f7d *)
mov %ymm8 [L0x7fffffffdd20, L0x7fffffffdd22, L0x7fffffffdd24, L0x7fffffffdd26, L0x7fffffffdd28, L0x7fffffffdd2a, L0x7fffffffdd2c, L0x7fffffffdd2e, L0x7fffffffdd30, L0x7fffffffdd32, L0x7fffffffdd34, L0x7fffffffdd36, L0x7fffffffdd38, L0x7fffffffdd3a, L0x7fffffffdd3c, L0x7fffffffdd3e];
(* vpmulhw %ymm7,%ymm3,%ymm15                      #! PC = 0x555555559f82 *)
smull %ymm15 %__mont4 %ymm7 %ymm3;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x555555559f86 *)
smull %ymm3 %__mont5 %ymm8 %ymm3;
(* vpmulhw %ymm7,%ymm4,%ymm0                       #! PC = 0x555555559f8b *)
smull %ymm0 %__mont6 %ymm7 %ymm4;
(* vpmulhw %ymm8,%ymm4,%ymm4                       #! PC = 0x555555559f8f *)
smull %ymm4 %__mont7 %ymm8 %ymm4;
(* vmovdqa %ymm13,(%rsp)                           #! EA = L0x7fffffffda80; PC = 0x555555559f94 *)
mov %tmp_rsp %ymm13;
(* vpmullw %ymm5,%ymm9,%ymm13                      #! PC = 0x555555559f99 *)
smull %mulHymm9 %mulL %ymm5 %ymm9;
cast [] %ymm13@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm9,%ymm9                       #! PC = 0x555555559f9d *)
smull %mulHymm9 %mulL %ymm6 %ymm9;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm5,%ymm10,%ymm5                      #! PC = 0x555555559fa1 *)
smull %mulHymm10 %mulL %ymm5 %ymm10;
cast [] %ymm5@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm10,%ymm10                     #! PC = 0x555555559fa5 *)
smull %mulHymm10 %mulL %ymm6 %ymm10;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm11,%ymm6                      #! PC = 0x555555559fa9 *)
smull %mulHymm11 %mulL %ymm7 %ymm11;
cast [] %ymm6@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm11,%ymm11                     #! PC = 0x555555559fad *)
smull %mulHymm11 %mulL %ymm8 %ymm11;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm12,%ymm7                      #! PC = 0x555555559fb2 *)
smull %mulHymm12 %mulL %ymm7 %ymm12;
cast [] %ymm7@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm12,%ymm12                     #! PC = 0x555555559fb6 *)
smull %mulHymm12 %mulL %ymm8 %ymm12;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa (%rcx),%ymm8                            #! EA = L0x5555555760a0; Value = 0x0d010d010d010d01; PC = 0x555555559fbb *)
mov %ymm8 [L0x5555555760a0, L0x5555555760a2, L0x5555555760a4, L0x5555555760a6, L0x5555555760a8, L0x5555555760aa, L0x5555555760ac, L0x5555555760ae, L0x5555555760b0, L0x5555555760b2, L0x5555555760b4, L0x5555555760b6, L0x5555555760b8, L0x5555555760ba, L0x5555555760bc, L0x5555555760be];
(* vpmulhw %ymm8,%ymm13,%ymm13                     #! PC = 0x555555559fbf *)
smull %ymm13 %mulLymm13 %ymm8 %ymm13;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont0;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm13;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm9,%ymm9                       #! PC = 0x555555559fc4 *)
smull %ymm9 %mulLymm9 %ymm8 %ymm9;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont1;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm9;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm5,%ymm5                       #! PC = 0x555555559fc9 *)
smull %ymm5 %mulLymm5 %ymm8 %ymm5;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont2;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm5;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x555555559fce *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont3;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm10;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm6,%ymm6                       #! PC = 0x555555559fd3 *)
smull %ymm6 %mulLymm6 %ymm8 %ymm6;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont4;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm6;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm11,%ymm11                     #! PC = 0x555555559fd8 *)
smull %ymm11 %mulLymm11 %ymm8 %ymm11;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont5;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm11;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm7,%ymm7                       #! PC = 0x555555559fdd *)
smull %ymm7 %mulLymm7 %ymm8 %ymm7;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont6;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm7;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm12,%ymm12                     #! PC = 0x555555559fe2 *)
smull %ymm12 %mulLymm12 %ymm8 %ymm12;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont7;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm12;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw (%rsp),%ymm13,%ymm13                     #! EA = L0x7fffffffda80; Value = 0x0000000000000000; PC = 0x555555559fe7 *)
sub %ymm13 %ymm13 %tmp_rsp;
(* vpsubw %ymm9,%ymm1,%ymm9                        #! PC = 0x555555559fec *)
sub %ymm9 %ymm1 %ymm9;
(* vpsubw %ymm5,%ymm14,%ymm5                       #! PC = 0x555555559ff1 *)
sub %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm10,%ymm2,%ymm10                      #! PC = 0x555555559ff5 *)
sub %ymm10 %ymm2 %ymm10;
(* vpsubw %ymm6,%ymm15,%ymm6                       #! PC = 0x555555559ffa *)
sub %ymm6 %ymm15 %ymm6;
(* vpsubw %ymm11,%ymm3,%ymm11                      #! PC = 0x555555559ffe *)
sub %ymm11 %ymm3 %ymm11;
(* vpsubw %ymm7,%ymm0,%ymm7                        #! PC = 0x55555555a003 *)
sub %ymm7 %ymm0 %ymm7;
(* vpsubw %ymm12,%ymm4,%ymm12                      #! PC = 0x55555555a007 *)
sub %ymm12 %ymm4 %ymm12;
(* vmovdqa (%r9),%ymm0                             #! EA = L0x555555576340; Value = 0x500e821dd32bfeb1; PC = 0x55555555a00c *)
mov %ymm0 [L0x555555576340, L0x555555576342, L0x555555576344, L0x555555576346, L0x555555576348, L0x55555557634a, L0x55555557634c, L0x55555557634e, L0x555555576350, L0x555555576352, L0x555555576354, L0x555555576356, L0x555555576358, L0x55555557635a, L0x55555557635c, L0x55555557635e];
(* vmovdqa 0x20(%r9),%ymm1                         #! EA = L0x555555576360; Value = 0x060efb1d022bfbb1; PC = 0x55555555a011 *)
mov %ymm1 [L0x555555576360, L0x555555576362, L0x555555576364, L0x555555576366, L0x555555576368, L0x55555557636a, L0x55555557636c, L0x55555557636e, L0x555555576370, L0x555555576372, L0x555555576374, L0x555555576376, L0x555555576378, L0x55555557637a, L0x55555557637c, L0x55555557637e];
(* vpmullw %ymm0,%ymm10,%ymm2                      #! PC = 0x55555555a017 *)
smull %mulHymm10 %mulL %ymm0 %ymm10;
cast [] %ymm2@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm12,%ymm3                      #! PC = 0x55555555a01b *)
smull %mulHymm12 %mulL %ymm0 %ymm12;
cast [] %ymm3@sint16[16] %mulL;
(* vpmulhw %ymm1,%ymm10,%ymm10                     #! PC = 0x55555555a01f *)
smull %ymm10 %mulLymm10 %ymm1 %ymm10;
(* vpmulhw %ymm1,%ymm12,%ymm12                     #! PC = 0x55555555a023 *)
smull %ymm12 %mulLymm12 %ymm1 %ymm12;
(* vpmulhw %ymm8,%ymm2,%ymm2                       #! PC = 0x55555555a027 *)
smull %ymm2 %mulLymm2 %ymm8 %ymm2;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm10;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm2;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a02c *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm12;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm3;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw %ymm2,%ymm10,%ymm10                      #! PC = 0x55555555a031 *)
sub %ymm10 %ymm10 %ymm2;
(* vpsubw %ymm3,%ymm12,%ymm12                      #! PC = 0x55555555a035 *)
sub %ymm12 %ymm12 %ymm3;
(* vpaddw %ymm5,%ymm9,%ymm9                        #! PC = 0x55555555a039 *)
add %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm7,%ymm11,%ymm11                      #! PC = 0x55555555a03d *)
add %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm13,%ymm10,%ymm13                     #! PC = 0x55555555a041 *)
sub %ymm13 %ymm10 %ymm13;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555a046 *)
sub %ymm6 %ymm6 %ymm12;
(* vmovdqa %ymm13,(%rdi)                           #! EA = L0x7fffffffdec0; PC = 0x55555555a04b *)
mov [L0x7fffffffdec0, L0x7fffffffdec2, L0x7fffffffdec4, L0x7fffffffdec6, L0x7fffffffdec8, L0x7fffffffdeca, L0x7fffffffdecc, L0x7fffffffdece, L0x7fffffffded0, L0x7fffffffded2, L0x7fffffffded4, L0x7fffffffded6, L0x7fffffffded8, L0x7fffffffdeda, L0x7fffffffdedc, L0x7fffffffdede] %ymm13;
(* vmovdqa %ymm9,0x20(%rdi)                        #! EA = L0x7fffffffdee0; PC = 0x55555555a04f *)
mov [L0x7fffffffdee0, L0x7fffffffdee2, L0x7fffffffdee4, L0x7fffffffdee6, L0x7fffffffdee8, L0x7fffffffdeea, L0x7fffffffdeec, L0x7fffffffdeee, L0x7fffffffdef0, L0x7fffffffdef2, L0x7fffffffdef4, L0x7fffffffdef6, L0x7fffffffdef8, L0x7fffffffdefa, L0x7fffffffdefc, L0x7fffffffdefe] %ymm9;
(* vmovdqa %ymm6,0x40(%rdi)                        #! EA = L0x7fffffffdf00; PC = 0x55555555a054 *)
mov [L0x7fffffffdf00, L0x7fffffffdf02, L0x7fffffffdf04, L0x7fffffffdf06, L0x7fffffffdf08, L0x7fffffffdf0a, L0x7fffffffdf0c, L0x7fffffffdf0e, L0x7fffffffdf10, L0x7fffffffdf12, L0x7fffffffdf14, L0x7fffffffdf16, L0x7fffffffdf18, L0x7fffffffdf1a, L0x7fffffffdf1c, L0x7fffffffdf1e] %ymm6;
(* vmovdqa %ymm11,0x60(%rdi)                       #! EA = L0x7fffffffdf20; PC = 0x55555555a059 *)
mov [L0x7fffffffdf20, L0x7fffffffdf22, L0x7fffffffdf24, L0x7fffffffdf26, L0x7fffffffdf28, L0x7fffffffdf2a, L0x7fffffffdf2c, L0x7fffffffdf2e, L0x7fffffffdf30, L0x7fffffffdf32, L0x7fffffffdf34, L0x7fffffffdf36, L0x7fffffffdf38, L0x7fffffffdf3a, L0x7fffffffdf3c, L0x7fffffffdf3e] %ymm11;
(* vmovdqa 0x20(%rcx),%ymm0                        #! EA = L0x5555555760c0; Value = 0xf301f301f301f301; PC = 0x55555555a062 *)
mov %ymm0 [L0x5555555760c0, L0x5555555760c2, L0x5555555760c4, L0x5555555760c6, L0x5555555760c8, L0x5555555760ca, L0x5555555760cc, L0x5555555760ce, L0x5555555760d0, L0x5555555760d2, L0x5555555760d4, L0x5555555760d6, L0x5555555760d8, L0x5555555760da, L0x5555555760dc, L0x5555555760de];
(* vmovdqa 0x80(%rsi),%ymm1                        #! EA = L0x7fffffffdb40; Value = 0x0000000000000000; PC = 0x55555555a067 *)
mov %ymm1 [L0x7fffffffdb40, L0x7fffffffdb42, L0x7fffffffdb44, L0x7fffffffdb46, L0x7fffffffdb48, L0x7fffffffdb4a, L0x7fffffffdb4c, L0x7fffffffdb4e, L0x7fffffffdb50, L0x7fffffffdb52, L0x7fffffffdb54, L0x7fffffffdb56, L0x7fffffffdb58, L0x7fffffffdb5a, L0x7fffffffdb5c, L0x7fffffffdb5e];
(* vmovdqa 0xa0(%rsi),%ymm2                        #! EA = L0x7fffffffdb60; Value = 0x00000000019dfe69; PC = 0x55555555a06f *)
mov %ymm2 [L0x7fffffffdb60, L0x7fffffffdb62, L0x7fffffffdb64, L0x7fffffffdb66, L0x7fffffffdb68, L0x7fffffffdb6a, L0x7fffffffdb6c, L0x7fffffffdb6e, L0x7fffffffdb70, L0x7fffffffdb72, L0x7fffffffdb74, L0x7fffffffdb76, L0x7fffffffdb78, L0x7fffffffdb7a, L0x7fffffffdb7c, L0x7fffffffdb7e];
(* vmovdqa 0xc0(%rsi),%ymm3                        #! EA = L0x7fffffffdb80; Value = 0x00007ffff7fcf580; PC = 0x55555555a077 *)
mov %ymm3 [L0x7fffffffdb80, L0x7fffffffdb82, L0x7fffffffdb84, L0x7fffffffdb86, L0x7fffffffdb88, L0x7fffffffdb8a, L0x7fffffffdb8c, L0x7fffffffdb8e, L0x7fffffffdb90, L0x7fffffffdb92, L0x7fffffffdb94, L0x7fffffffdb96, L0x7fffffffdb98, L0x7fffffffdb9a, L0x7fffffffdb9c, L0x7fffffffdb9e];
(* vmovdqa 0xe0(%rsi),%ymm4                        #! EA = L0x7fffffffdba0; Value = 0x0000000000000003; PC = 0x55555555a07f *)
mov %ymm4 [L0x7fffffffdba0, L0x7fffffffdba2, L0x7fffffffdba4, L0x7fffffffdba6, L0x7fffffffdba8, L0x7fffffffdbaa, L0x7fffffffdbac, L0x7fffffffdbae, L0x7fffffffdbb0, L0x7fffffffdbb2, L0x7fffffffdbb4, L0x7fffffffdbb6, L0x7fffffffdbb8, L0x7fffffffdbba, L0x7fffffffdbbc, L0x7fffffffdbbe];
(* vpmullw %ymm0,%ymm1,%ymm9                       #! PC = 0x55555555a087 *)
smull %mulHymm1 %mulL %ymm0 %ymm1;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm2,%ymm10                      #! PC = 0x55555555a08b *)
smull %mulHymm2 %mulL %ymm0 %ymm2;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm3,%ymm11                      #! PC = 0x55555555a08f *)
smull %mulHymm3 %mulL %ymm0 %ymm3;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm4,%ymm12                      #! PC = 0x55555555a093 *)
smull %mulHymm4 %mulL %ymm0 %ymm4;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa 0x80(%rdx),%ymm5                        #! EA = L0x7fffffffdd40; Value = 0x0000000000000000; PC = 0x55555555a097 *)
mov %ymm5 [L0x7fffffffdd40, L0x7fffffffdd42, L0x7fffffffdd44, L0x7fffffffdd46, L0x7fffffffdd48, L0x7fffffffdd4a, L0x7fffffffdd4c, L0x7fffffffdd4e, L0x7fffffffdd50, L0x7fffffffdd52, L0x7fffffffdd54, L0x7fffffffdd56, L0x7fffffffdd58, L0x7fffffffdd5a, L0x7fffffffdd5c, L0x7fffffffdd5e];
(* vmovdqa 0xa0(%rdx),%ymm6                        #! EA = L0x7fffffffdd60; Value = 0x00007fffffffdde0; PC = 0x55555555a09f *)
mov %ymm6 [L0x7fffffffdd60, L0x7fffffffdd62, L0x7fffffffdd64, L0x7fffffffdd66, L0x7fffffffdd68, L0x7fffffffdd6a, L0x7fffffffdd6c, L0x7fffffffdd6e, L0x7fffffffdd70, L0x7fffffffdd72, L0x7fffffffdd74, L0x7fffffffdd76, L0x7fffffffdd78, L0x7fffffffdd7a, L0x7fffffffdd7c, L0x7fffffffdd7e];
(* vpmulhw %ymm5,%ymm1,%ymm13                      #! PC = 0x55555555a0a7 *)
smull %ymm13 %__mont0 %ymm5 %ymm1;
(* vpmulhw %ymm6,%ymm1,%ymm1                       #! PC = 0x55555555a0ab *)
smull %ymm1 %__mont1 %ymm6 %ymm1;
(* vpmulhw %ymm5,%ymm2,%ymm14                      #! PC = 0x55555555a0af *)
smull %ymm14 %__mont2 %ymm5 %ymm2;
(* vpmulhw %ymm6,%ymm2,%ymm2                       #! PC = 0x55555555a0b3 *)
smull %ymm2 %__mont3 %ymm6 %ymm2;
(* vmovdqa 0xc0(%rdx),%ymm7                        #! EA = L0x7fffffffdd80; Value = 0x00007ffff7ffd048; PC = 0x55555555a0b7 *)
mov %ymm7 [L0x7fffffffdd80, L0x7fffffffdd82, L0x7fffffffdd84, L0x7fffffffdd86, L0x7fffffffdd88, L0x7fffffffdd8a, L0x7fffffffdd8c, L0x7fffffffdd8e, L0x7fffffffdd90, L0x7fffffffdd92, L0x7fffffffdd94, L0x7fffffffdd96, L0x7fffffffdd98, L0x7fffffffdd9a, L0x7fffffffdd9c, L0x7fffffffdd9e];
(* vmovdqa 0xe0(%rdx),%ymm8                        #! EA = L0x7fffffffdda0; Value = 0x00007ffff7fcfb00; PC = 0x55555555a0bf *)
mov %ymm8 [L0x7fffffffdda0, L0x7fffffffdda2, L0x7fffffffdda4, L0x7fffffffdda6, L0x7fffffffdda8, L0x7fffffffddaa, L0x7fffffffddac, L0x7fffffffddae, L0x7fffffffddb0, L0x7fffffffddb2, L0x7fffffffddb4, L0x7fffffffddb6, L0x7fffffffddb8, L0x7fffffffddba, L0x7fffffffddbc, L0x7fffffffddbe];
(* vpmulhw %ymm7,%ymm3,%ymm15                      #! PC = 0x55555555a0c7 *)
smull %ymm15 %__mont4 %ymm7 %ymm3;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a0cb *)
smull %ymm3 %__mont5 %ymm8 %ymm3;
(* vpmulhw %ymm7,%ymm4,%ymm0                       #! PC = 0x55555555a0d0 *)
smull %ymm0 %__mont6 %ymm7 %ymm4;
(* vpmulhw %ymm8,%ymm4,%ymm4                       #! PC = 0x55555555a0d4 *)
smull %ymm4 %__mont7 %ymm8 %ymm4;
(* vmovdqa %ymm13,(%rsp)                           #! EA = L0x7fffffffda80; PC = 0x55555555a0d9 *)
mov %tmp_rsp %ymm13;
(* vpmullw %ymm5,%ymm9,%ymm13                      #! PC = 0x55555555a0de *)
smull %mulHymm9 %mulL %ymm5 %ymm9;
cast [] %ymm13@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm9,%ymm9                       #! PC = 0x55555555a0e2 *)
smull %mulHymm9 %mulL %ymm6 %ymm9;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm5,%ymm10,%ymm5                      #! PC = 0x55555555a0e6 *)
smull %mulHymm10 %mulL %ymm5 %ymm10;
cast [] %ymm5@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm10,%ymm10                     #! PC = 0x55555555a0ea *)
smull %mulHymm10 %mulL %ymm6 %ymm10;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm11,%ymm6                      #! PC = 0x55555555a0ee *)
smull %mulHymm11 %mulL %ymm7 %ymm11;
cast [] %ymm6@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm11,%ymm11                     #! PC = 0x55555555a0f2 *)
smull %mulHymm11 %mulL %ymm8 %ymm11;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm12,%ymm7                      #! PC = 0x55555555a0f7 *)
smull %mulHymm12 %mulL %ymm7 %ymm12;
cast [] %ymm7@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555555a0fb *)
smull %mulHymm12 %mulL %ymm8 %ymm12;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa (%rcx),%ymm8                            #! EA = L0x5555555760a0; Value = 0x0d010d010d010d01; PC = 0x55555555a100 *)
mov %ymm8 [L0x5555555760a0, L0x5555555760a2, L0x5555555760a4, L0x5555555760a6, L0x5555555760a8, L0x5555555760aa, L0x5555555760ac, L0x5555555760ae, L0x5555555760b0, L0x5555555760b2, L0x5555555760b4, L0x5555555760b6, L0x5555555760b8, L0x5555555760ba, L0x5555555760bc, L0x5555555760be];
(* vpmulhw %ymm8,%ymm13,%ymm13                     #! PC = 0x55555555a104 *)
smull %ymm13 %mulLymm13 %ymm8 %ymm13;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont0;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm13;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm9,%ymm9                       #! PC = 0x55555555a109 *)
smull %ymm9 %mulLymm9 %ymm8 %ymm9;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont1;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm9;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm5,%ymm5                       #! PC = 0x55555555a10e *)
smull %ymm5 %mulLymm5 %ymm8 %ymm5;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont2;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm5;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555555a113 *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont3;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm10;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm6,%ymm6                       #! PC = 0x55555555a118 *)
smull %ymm6 %mulLymm6 %ymm8 %ymm6;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont4;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm6;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm11,%ymm11                     #! PC = 0x55555555a11d *)
smull %ymm11 %mulLymm11 %ymm8 %ymm11;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont5;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm11;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm7,%ymm7                       #! PC = 0x55555555a122 *)
smull %ymm7 %mulLymm7 %ymm8 %ymm7;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont6;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm7;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555555a127 *)
smull %ymm12 %mulLymm12 %ymm8 %ymm12;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont7;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm12;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw (%rsp),%ymm13,%ymm13                     #! EA = L0x7fffffffda80; Value = 0x0000000000000000; PC = 0x55555555a12c *)
sub %ymm13 %ymm13 %tmp_rsp;
(* vpsubw %ymm9,%ymm1,%ymm9                        #! PC = 0x55555555a131 *)
sub %ymm9 %ymm1 %ymm9;
(* vpsubw %ymm5,%ymm14,%ymm5                       #! PC = 0x55555555a136 *)
sub %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm10,%ymm2,%ymm10                      #! PC = 0x55555555a13a *)
sub %ymm10 %ymm2 %ymm10;
(* vpsubw %ymm6,%ymm15,%ymm6                       #! PC = 0x55555555a13f *)
sub %ymm6 %ymm15 %ymm6;
(* vpsubw %ymm11,%ymm3,%ymm11                      #! PC = 0x55555555a143 *)
sub %ymm11 %ymm3 %ymm11;
(* vpsubw %ymm7,%ymm0,%ymm7                        #! PC = 0x55555555a148 *)
sub %ymm7 %ymm0 %ymm7;
(* vpsubw %ymm12,%ymm4,%ymm12                      #! PC = 0x55555555a14c *)
sub %ymm12 %ymm4 %ymm12;
(* vmovdqa (%r9),%ymm0                             #! EA = L0x555555576380; Value = 0xab69c867344b2bae; PC = 0x55555555a151 *)
mov %ymm0 [L0x555555576380, L0x555555576382, L0x555555576384, L0x555555576386, L0x555555576388, L0x55555557638a, L0x55555557638c, L0x55555557638e, L0x555555576390, L0x555555576392, L0x555555576394, L0x555555576396, L0x555555576398, L0x55555557639a, L0x55555557639c, L0x55555557639e];
(* vmovdqa 0x20(%r9),%ymm1                         #! EA = L0x5555555763a0; Value = 0x00690367034b01ae; PC = 0x55555555a156 *)
mov %ymm1 [L0x5555555763a0, L0x5555555763a2, L0x5555555763a4, L0x5555555763a6, L0x5555555763a8, L0x5555555763aa, L0x5555555763ac, L0x5555555763ae, L0x5555555763b0, L0x5555555763b2, L0x5555555763b4, L0x5555555763b6, L0x5555555763b8, L0x5555555763ba, L0x5555555763bc, L0x5555555763be];
(* vpmullw %ymm0,%ymm10,%ymm2                      #! PC = 0x55555555a15c *)
smull %mulHymm10 %mulL %ymm0 %ymm10;
cast [] %ymm2@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm12,%ymm3                      #! PC = 0x55555555a160 *)
smull %mulHymm12 %mulL %ymm0 %ymm12;
cast [] %ymm3@sint16[16] %mulL;
(* vpmulhw %ymm1,%ymm10,%ymm10                     #! PC = 0x55555555a164 *)
smull %ymm10 %mulLymm10 %ymm1 %ymm10;
(* vpmulhw %ymm1,%ymm12,%ymm12                     #! PC = 0x55555555a168 *)
smull %ymm12 %mulLymm12 %ymm1 %ymm12;
(* vpmulhw %ymm8,%ymm2,%ymm2                       #! PC = 0x55555555a16c *)
smull %ymm2 %mulLymm2 %ymm8 %ymm2;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm10;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm2;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a171 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm12;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm3;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw %ymm2,%ymm10,%ymm10                      #! PC = 0x55555555a176 *)
sub %ymm10 %ymm10 %ymm2;
(* vpsubw %ymm3,%ymm12,%ymm12                      #! PC = 0x55555555a17a *)
sub %ymm12 %ymm12 %ymm3;
(* vpaddw %ymm5,%ymm9,%ymm9                        #! PC = 0x55555555a17e *)
add %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm7,%ymm11,%ymm11                      #! PC = 0x55555555a182 *)
add %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm13,%ymm10,%ymm13                     #! PC = 0x55555555a186 *)
sub %ymm13 %ymm10 %ymm13;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555a18b *)
sub %ymm6 %ymm6 %ymm12;
(* vmovdqa %ymm13,0x80(%rdi)                       #! EA = L0x7fffffffdf40; PC = 0x55555555a190 *)
mov [L0x7fffffffdf40, L0x7fffffffdf42, L0x7fffffffdf44, L0x7fffffffdf46, L0x7fffffffdf48, L0x7fffffffdf4a, L0x7fffffffdf4c, L0x7fffffffdf4e, L0x7fffffffdf50, L0x7fffffffdf52, L0x7fffffffdf54, L0x7fffffffdf56, L0x7fffffffdf58, L0x7fffffffdf5a, L0x7fffffffdf5c, L0x7fffffffdf5e] %ymm13;
(* vmovdqa %ymm9,0xa0(%rdi)                        #! EA = L0x7fffffffdf60; PC = 0x55555555a198 *)
mov [L0x7fffffffdf60, L0x7fffffffdf62, L0x7fffffffdf64, L0x7fffffffdf66, L0x7fffffffdf68, L0x7fffffffdf6a, L0x7fffffffdf6c, L0x7fffffffdf6e, L0x7fffffffdf70, L0x7fffffffdf72, L0x7fffffffdf74, L0x7fffffffdf76, L0x7fffffffdf78, L0x7fffffffdf7a, L0x7fffffffdf7c, L0x7fffffffdf7e] %ymm9;
(* vmovdqa %ymm6,0xc0(%rdi)                        #! EA = L0x7fffffffdf80; PC = 0x55555555a1a0 *)
mov [L0x7fffffffdf80, L0x7fffffffdf82, L0x7fffffffdf84, L0x7fffffffdf86, L0x7fffffffdf88, L0x7fffffffdf8a, L0x7fffffffdf8c, L0x7fffffffdf8e, L0x7fffffffdf90, L0x7fffffffdf92, L0x7fffffffdf94, L0x7fffffffdf96, L0x7fffffffdf98, L0x7fffffffdf9a, L0x7fffffffdf9c, L0x7fffffffdf9e] %ymm6;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffdfa0; PC = 0x55555555a1a8 *)
mov [L0x7fffffffdfa0, L0x7fffffffdfa2, L0x7fffffffdfa4, L0x7fffffffdfa6, L0x7fffffffdfa8, L0x7fffffffdfaa, L0x7fffffffdfac, L0x7fffffffdfae, L0x7fffffffdfb0, L0x7fffffffdfb2, L0x7fffffffdfb4, L0x7fffffffdfb6, L0x7fffffffdfb8, L0x7fffffffdfba, L0x7fffffffdfbc, L0x7fffffffdfbe] %ymm11;
(* vmovdqa 0x20(%rcx),%ymm0                        #! EA = L0x5555555760c0; Value = 0xf301f301f301f301; PC = 0x55555555a1b7 *)
mov %ymm0 [L0x5555555760c0, L0x5555555760c2, L0x5555555760c4, L0x5555555760c6, L0x5555555760c8, L0x5555555760ca, L0x5555555760cc, L0x5555555760ce, L0x5555555760d0, L0x5555555760d2, L0x5555555760d4, L0x5555555760d6, L0x5555555760d8, L0x5555555760da, L0x5555555760dc, L0x5555555760de];
(* vmovdqa 0x100(%rsi),%ymm1                       #! EA = L0x7fffffffdbc0; Value = 0x0000000000000000; PC = 0x55555555a1bc *)
mov %ymm1 [L0x7fffffffdbc0, L0x7fffffffdbc2, L0x7fffffffdbc4, L0x7fffffffdbc6, L0x7fffffffdbc8, L0x7fffffffdbca, L0x7fffffffdbcc, L0x7fffffffdbce, L0x7fffffffdbd0, L0x7fffffffdbd2, L0x7fffffffdbd4, L0x7fffffffdbd6, L0x7fffffffdbd8, L0x7fffffffdbda, L0x7fffffffdbdc, L0x7fffffffdbde];
(* vmovdqa 0x120(%rsi),%ymm2                       #! EA = L0x7fffffffdbe0; Value = 0x00007ffff7fcf9c1; PC = 0x55555555a1c4 *)
mov %ymm2 [L0x7fffffffdbe0, L0x7fffffffdbe2, L0x7fffffffdbe4, L0x7fffffffdbe6, L0x7fffffffdbe8, L0x7fffffffdbea, L0x7fffffffdbec, L0x7fffffffdbee, L0x7fffffffdbf0, L0x7fffffffdbf2, L0x7fffffffdbf4, L0x7fffffffdbf6, L0x7fffffffdbf8, L0x7fffffffdbfa, L0x7fffffffdbfc, L0x7fffffffdbfe];
(* vmovdqa 0x140(%rsi),%ymm3                       #! EA = L0x7fffffffdc00; Value = 0x0000000000000001; PC = 0x55555555a1cc *)
mov %ymm3 [L0x7fffffffdc00, L0x7fffffffdc02, L0x7fffffffdc04, L0x7fffffffdc06, L0x7fffffffdc08, L0x7fffffffdc0a, L0x7fffffffdc0c, L0x7fffffffdc0e, L0x7fffffffdc10, L0x7fffffffdc12, L0x7fffffffdc14, L0x7fffffffdc16, L0x7fffffffdc18, L0x7fffffffdc1a, L0x7fffffffdc1c, L0x7fffffffdc1e];
(* vmovdqa 0x160(%rsi),%ymm4                       #! EA = L0x7fffffffdc20; Value = 0x0000000000000001; PC = 0x55555555a1d4 *)
mov %ymm4 [L0x7fffffffdc20, L0x7fffffffdc22, L0x7fffffffdc24, L0x7fffffffdc26, L0x7fffffffdc28, L0x7fffffffdc2a, L0x7fffffffdc2c, L0x7fffffffdc2e, L0x7fffffffdc30, L0x7fffffffdc32, L0x7fffffffdc34, L0x7fffffffdc36, L0x7fffffffdc38, L0x7fffffffdc3a, L0x7fffffffdc3c, L0x7fffffffdc3e];
(* vpmullw %ymm0,%ymm1,%ymm9                       #! PC = 0x55555555a1dc *)
smull %mulHymm1 %mulL %ymm0 %ymm1;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm2,%ymm10                      #! PC = 0x55555555a1e0 *)
smull %mulHymm2 %mulL %ymm0 %ymm2;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm3,%ymm11                      #! PC = 0x55555555a1e4 *)
smull %mulHymm3 %mulL %ymm0 %ymm3;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm4,%ymm12                      #! PC = 0x55555555a1e8 *)
smull %mulHymm4 %mulL %ymm0 %ymm4;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa 0x100(%rdx),%ymm5                       #! EA = L0x7fffffffddc0; Value = 0x0000000000000000; PC = 0x55555555a1ec *)
mov %ymm5 [L0x7fffffffddc0, L0x7fffffffddc2, L0x7fffffffddc4, L0x7fffffffddc6, L0x7fffffffddc8, L0x7fffffffddca, L0x7fffffffddcc, L0x7fffffffddce, L0x7fffffffddd0, L0x7fffffffddd2, L0x7fffffffddd4, L0x7fffffffddd6, L0x7fffffffddd8, L0x7fffffffddda, L0x7fffffffdddc, L0x7fffffffddde];
(* vmovdqa 0x120(%rdx),%ymm6                       #! EA = L0x7fffffffdde0; Value = 0x0000000000000001; PC = 0x55555555a1f4 *)
mov %ymm6 [L0x7fffffffdde0, L0x7fffffffdde2, L0x7fffffffdde4, L0x7fffffffdde6, L0x7fffffffdde8, L0x7fffffffddea, L0x7fffffffddec, L0x7fffffffddee, L0x7fffffffddf0, L0x7fffffffddf2, L0x7fffffffddf4, L0x7fffffffddf6, L0x7fffffffddf8, L0x7fffffffddfa, L0x7fffffffddfc, L0x7fffffffddfe];
(* vpmulhw %ymm5,%ymm1,%ymm13                      #! PC = 0x55555555a1fc *)
smull %ymm13 %__mont0 %ymm5 %ymm1;
(* vpmulhw %ymm6,%ymm1,%ymm1                       #! PC = 0x55555555a200 *)
smull %ymm1 %__mont1 %ymm6 %ymm1;
(* vpmulhw %ymm5,%ymm2,%ymm14                      #! PC = 0x55555555a204 *)
smull %ymm14 %__mont2 %ymm5 %ymm2;
(* vpmulhw %ymm6,%ymm2,%ymm2                       #! PC = 0x55555555a208 *)
smull %ymm2 %__mont3 %ymm6 %ymm2;
(* vmovdqa 0x140(%rdx),%ymm7                       #! EA = L0x7fffffffde00; Value = 0x00007ffff7ffe190; PC = 0x55555555a20c *)
mov %ymm7 [L0x7fffffffde00, L0x7fffffffde02, L0x7fffffffde04, L0x7fffffffde06, L0x7fffffffde08, L0x7fffffffde0a, L0x7fffffffde0c, L0x7fffffffde0e, L0x7fffffffde10, L0x7fffffffde12, L0x7fffffffde14, L0x7fffffffde16, L0x7fffffffde18, L0x7fffffffde1a, L0x7fffffffde1c, L0x7fffffffde1e];
(* vmovdqa 0x160(%rdx),%ymm8                       #! EA = L0x7fffffffde20; Value = 0x0000000000000000; PC = 0x55555555a214 *)
mov %ymm8 [L0x7fffffffde20, L0x7fffffffde22, L0x7fffffffde24, L0x7fffffffde26, L0x7fffffffde28, L0x7fffffffde2a, L0x7fffffffde2c, L0x7fffffffde2e, L0x7fffffffde30, L0x7fffffffde32, L0x7fffffffde34, L0x7fffffffde36, L0x7fffffffde38, L0x7fffffffde3a, L0x7fffffffde3c, L0x7fffffffde3e];
(* vpmulhw %ymm7,%ymm3,%ymm15                      #! PC = 0x55555555a21c *)
smull %ymm15 %__mont4 %ymm7 %ymm3;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a220 *)
smull %ymm3 %__mont5 %ymm8 %ymm3;
(* vpmulhw %ymm7,%ymm4,%ymm0                       #! PC = 0x55555555a225 *)
smull %ymm0 %__mont6 %ymm7 %ymm4;
(* vpmulhw %ymm8,%ymm4,%ymm4                       #! PC = 0x55555555a229 *)
smull %ymm4 %__mont7 %ymm8 %ymm4;
(* vmovdqa %ymm13,(%rsp)                           #! EA = L0x7fffffffda80; PC = 0x55555555a22e *)
mov %tmp_rsp %ymm13;
(* vpmullw %ymm5,%ymm9,%ymm13                      #! PC = 0x55555555a233 *)
smull %mulHymm9 %mulL %ymm5 %ymm9;
cast [] %ymm13@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm9,%ymm9                       #! PC = 0x55555555a237 *)
smull %mulHymm9 %mulL %ymm6 %ymm9;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm5,%ymm10,%ymm5                      #! PC = 0x55555555a23b *)
smull %mulHymm10 %mulL %ymm5 %ymm10;
cast [] %ymm5@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm10,%ymm10                     #! PC = 0x55555555a23f *)
smull %mulHymm10 %mulL %ymm6 %ymm10;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm11,%ymm6                      #! PC = 0x55555555a243 *)
smull %mulHymm11 %mulL %ymm7 %ymm11;
cast [] %ymm6@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm11,%ymm11                     #! PC = 0x55555555a247 *)
smull %mulHymm11 %mulL %ymm8 %ymm11;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm12,%ymm7                      #! PC = 0x55555555a24c *)
smull %mulHymm12 %mulL %ymm7 %ymm12;
cast [] %ymm7@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555555a250 *)
smull %mulHymm12 %mulL %ymm8 %ymm12;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa (%rcx),%ymm8                            #! EA = L0x5555555760a0; Value = 0x0d010d010d010d01; PC = 0x55555555a255 *)
mov %ymm8 [L0x5555555760a0, L0x5555555760a2, L0x5555555760a4, L0x5555555760a6, L0x5555555760a8, L0x5555555760aa, L0x5555555760ac, L0x5555555760ae, L0x5555555760b0, L0x5555555760b2, L0x5555555760b4, L0x5555555760b6, L0x5555555760b8, L0x5555555760ba, L0x5555555760bc, L0x5555555760be];
(* vpmulhw %ymm8,%ymm13,%ymm13                     #! PC = 0x55555555a259 *)
smull %ymm13 %mulLymm13 %ymm8 %ymm13;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont0;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm13;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm9,%ymm9                       #! PC = 0x55555555a25e *)
smull %ymm9 %mulLymm9 %ymm8 %ymm9;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont1;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm9;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm5,%ymm5                       #! PC = 0x55555555a263 *)
smull %ymm5 %mulLymm5 %ymm8 %ymm5;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont2;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm5;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555555a268 *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont3;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm10;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm6,%ymm6                       #! PC = 0x55555555a26d *)
smull %ymm6 %mulLymm6 %ymm8 %ymm6;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont4;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm6;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm11,%ymm11                     #! PC = 0x55555555a272 *)
smull %ymm11 %mulLymm11 %ymm8 %ymm11;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont5;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm11;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm7,%ymm7                       #! PC = 0x55555555a277 *)
smull %ymm7 %mulLymm7 %ymm8 %ymm7;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont6;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm7;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555555a27c *)
smull %ymm12 %mulLymm12 %ymm8 %ymm12;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont7;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm12;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw (%rsp),%ymm13,%ymm13                     #! EA = L0x7fffffffda80; Value = 0x0000000000000000; PC = 0x55555555a281 *)
sub %ymm13 %ymm13 %tmp_rsp;
(* vpsubw %ymm9,%ymm1,%ymm9                        #! PC = 0x55555555a286 *)
sub %ymm9 %ymm1 %ymm9;
(* vpsubw %ymm5,%ymm14,%ymm5                       #! PC = 0x55555555a28b *)
sub %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm10,%ymm2,%ymm10                      #! PC = 0x55555555a28f *)
sub %ymm10 %ymm2 %ymm10;
(* vpsubw %ymm6,%ymm15,%ymm6                       #! PC = 0x55555555a294 *)
sub %ymm6 %ymm15 %ymm6;
(* vpsubw %ymm11,%ymm3,%ymm11                      #! PC = 0x55555555a298 *)
sub %ymm11 %ymm3 %ymm11;
(* vpsubw %ymm7,%ymm0,%ymm7                        #! PC = 0x55555555a29d *)
sub %ymm7 %ymm0 %ymm7;
(* vpsubw %ymm12,%ymm4,%ymm12                      #! PC = 0x55555555a2a1 *)
sub %ymm12 %ymm4 %ymm12;
(* vmovdqa (%r9),%ymm0                             #! EA = L0x555555576500; Value = 0x5f47e32a635b8631; PC = 0x55555555a2a6 *)
mov %ymm0 [L0x555555576500, L0x555555576502, L0x555555576504, L0x555555576506, L0x555555576508, L0x55555557650a, L0x55555557650c, L0x55555557650e, L0x555555576510, L0x555555576512, L0x555555576514, L0x555555576516, L0x555555576518, L0x55555557651a, L0x55555557651c, L0x55555557651e];
(* vmovdqa 0x20(%r9),%ymm1                         #! EA = L0x555555576520; Value = 0xfa47052a025b0331; PC = 0x55555555a2ab *)
mov %ymm1 [L0x555555576520, L0x555555576522, L0x555555576524, L0x555555576526, L0x555555576528, L0x55555557652a, L0x55555557652c, L0x55555557652e, L0x555555576530, L0x555555576532, L0x555555576534, L0x555555576536, L0x555555576538, L0x55555557653a, L0x55555557653c, L0x55555557653e];
(* vpmullw %ymm0,%ymm10,%ymm2                      #! PC = 0x55555555a2b1 *)
smull %mulHymm10 %mulL %ymm0 %ymm10;
cast [] %ymm2@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm12,%ymm3                      #! PC = 0x55555555a2b5 *)
smull %mulHymm12 %mulL %ymm0 %ymm12;
cast [] %ymm3@sint16[16] %mulL;
(* vpmulhw %ymm1,%ymm10,%ymm10                     #! PC = 0x55555555a2b9 *)
smull %ymm10 %mulLymm10 %ymm1 %ymm10;
(* vpmulhw %ymm1,%ymm12,%ymm12                     #! PC = 0x55555555a2bd *)
smull %ymm12 %mulLymm12 %ymm1 %ymm12;
(* vpmulhw %ymm8,%ymm2,%ymm2                       #! PC = 0x55555555a2c1 *)
smull %ymm2 %mulLymm2 %ymm8 %ymm2;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm10;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm2;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a2c6 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm12;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm3;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw %ymm2,%ymm10,%ymm10                      #! PC = 0x55555555a2cb *)
sub %ymm10 %ymm10 %ymm2;
(* vpsubw %ymm3,%ymm12,%ymm12                      #! PC = 0x55555555a2cf *)
sub %ymm12 %ymm12 %ymm3;
(* vpaddw %ymm5,%ymm9,%ymm9                        #! PC = 0x55555555a2d3 *)
add %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm7,%ymm11,%ymm11                      #! PC = 0x55555555a2d7 *)
add %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm13,%ymm10,%ymm13                     #! PC = 0x55555555a2db *)
sub %ymm13 %ymm10 %ymm13;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555a2e0 *)
sub %ymm6 %ymm6 %ymm12;
(* vmovdqa %ymm13,0x100(%rdi)                      #! EA = L0x7fffffffdfc0; PC = 0x55555555a2e5 *)
mov [L0x7fffffffdfc0, L0x7fffffffdfc2, L0x7fffffffdfc4, L0x7fffffffdfc6, L0x7fffffffdfc8, L0x7fffffffdfca, L0x7fffffffdfcc, L0x7fffffffdfce, L0x7fffffffdfd0, L0x7fffffffdfd2, L0x7fffffffdfd4, L0x7fffffffdfd6, L0x7fffffffdfd8, L0x7fffffffdfda, L0x7fffffffdfdc, L0x7fffffffdfde] %ymm13;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffdfe0; PC = 0x55555555a2ed *)
mov [L0x7fffffffdfe0, L0x7fffffffdfe2, L0x7fffffffdfe4, L0x7fffffffdfe6, L0x7fffffffdfe8, L0x7fffffffdfea, L0x7fffffffdfec, L0x7fffffffdfee, L0x7fffffffdff0, L0x7fffffffdff2, L0x7fffffffdff4, L0x7fffffffdff6, L0x7fffffffdff8, L0x7fffffffdffa, L0x7fffffffdffc, L0x7fffffffdffe] %ymm9;
(* vmovdqa %ymm6,0x140(%rdi)                       #! EA = L0x7fffffffe000; PC = 0x55555555a2f5 *)
mov [L0x7fffffffe000, L0x7fffffffe002, L0x7fffffffe004, L0x7fffffffe006, L0x7fffffffe008, L0x7fffffffe00a, L0x7fffffffe00c, L0x7fffffffe00e, L0x7fffffffe010, L0x7fffffffe012, L0x7fffffffe014, L0x7fffffffe016, L0x7fffffffe018, L0x7fffffffe01a, L0x7fffffffe01c, L0x7fffffffe01e] %ymm6;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffe020; PC = 0x55555555a2fd *)
mov [L0x7fffffffe020, L0x7fffffffe022, L0x7fffffffe024, L0x7fffffffe026, L0x7fffffffe028, L0x7fffffffe02a, L0x7fffffffe02c, L0x7fffffffe02e, L0x7fffffffe030, L0x7fffffffe032, L0x7fffffffe034, L0x7fffffffe036, L0x7fffffffe038, L0x7fffffffe03a, L0x7fffffffe03c, L0x7fffffffe03e] %ymm11;
(* vmovdqa 0x20(%rcx),%ymm0                        #! EA = L0x5555555760c0; Value = 0xf301f301f301f301; PC = 0x55555555a309 *)
mov %ymm0 [L0x5555555760c0, L0x5555555760c2, L0x5555555760c4, L0x5555555760c6, L0x5555555760c8, L0x5555555760ca, L0x5555555760cc, L0x5555555760ce, L0x5555555760d0, L0x5555555760d2, L0x5555555760d4, L0x5555555760d6, L0x5555555760d8, L0x5555555760da, L0x5555555760dc, L0x5555555760de];
(* vmovdqa 0x180(%rsi),%ymm1                       #! EA = L0x7fffffffdc40; Value = 0x00007ffff7ffd9e8; PC = 0x55555555a30e *)
mov %ymm1 [L0x7fffffffdc40, L0x7fffffffdc42, L0x7fffffffdc44, L0x7fffffffdc46, L0x7fffffffdc48, L0x7fffffffdc4a, L0x7fffffffdc4c, L0x7fffffffdc4e, L0x7fffffffdc50, L0x7fffffffdc52, L0x7fffffffdc54, L0x7fffffffdc56, L0x7fffffffdc58, L0x7fffffffdc5a, L0x7fffffffdc5c, L0x7fffffffdc5e];
(* vmovdqa 0x1a0(%rsi),%ymm2                       #! EA = L0x7fffffffdc60; Value = 0x00007ffff7ff42bf; PC = 0x55555555a316 *)
mov %ymm2 [L0x7fffffffdc60, L0x7fffffffdc62, L0x7fffffffdc64, L0x7fffffffdc66, L0x7fffffffdc68, L0x7fffffffdc6a, L0x7fffffffdc6c, L0x7fffffffdc6e, L0x7fffffffdc70, L0x7fffffffdc72, L0x7fffffffdc74, L0x7fffffffdc76, L0x7fffffffdc78, L0x7fffffffdc7a, L0x7fffffffdc7c, L0x7fffffffdc7e];
(* vmovdqa 0x1c0(%rsi),%ymm3                       #! EA = L0x7fffffffdc80; Value = 0x00007ffff7dc7790; PC = 0x55555555a31e *)
mov %ymm3 [L0x7fffffffdc80, L0x7fffffffdc82, L0x7fffffffdc84, L0x7fffffffdc86, L0x7fffffffdc88, L0x7fffffffdc8a, L0x7fffffffdc8c, L0x7fffffffdc8e, L0x7fffffffdc90, L0x7fffffffdc92, L0x7fffffffdc94, L0x7fffffffdc96, L0x7fffffffdc98, L0x7fffffffdc9a, L0x7fffffffdc9c, L0x7fffffffdc9e];
(* vmovdqa 0x1e0(%rsi),%ymm4                       #! EA = L0x7fffffffdca0; Value = 0x00007fffffffddb0; PC = 0x55555555a326 *)
mov %ymm4 [L0x7fffffffdca0, L0x7fffffffdca2, L0x7fffffffdca4, L0x7fffffffdca6, L0x7fffffffdca8, L0x7fffffffdcaa, L0x7fffffffdcac, L0x7fffffffdcae, L0x7fffffffdcb0, L0x7fffffffdcb2, L0x7fffffffdcb4, L0x7fffffffdcb6, L0x7fffffffdcb8, L0x7fffffffdcba, L0x7fffffffdcbc, L0x7fffffffdcbe];
(* vpmullw %ymm0,%ymm1,%ymm9                       #! PC = 0x55555555a32e *)
smull %mulHymm1 %mulL %ymm0 %ymm1;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm2,%ymm10                      #! PC = 0x55555555a332 *)
smull %mulHymm2 %mulL %ymm0 %ymm2;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm3,%ymm11                      #! PC = 0x55555555a336 *)
smull %mulHymm3 %mulL %ymm0 %ymm3;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm4,%ymm12                      #! PC = 0x55555555a33a *)
smull %mulHymm4 %mulL %ymm0 %ymm4;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa 0x180(%rdx),%ymm5                       #! EA = L0x7fffffffde40; Value = 0x0000000000000000; PC = 0x55555555a33e *)
mov %ymm5 [L0x7fffffffde40, L0x7fffffffde42, L0x7fffffffde44, L0x7fffffffde46, L0x7fffffffde48, L0x7fffffffde4a, L0x7fffffffde4c, L0x7fffffffde4e, L0x7fffffffde50, L0x7fffffffde52, L0x7fffffffde54, L0x7fffffffde56, L0x7fffffffde58, L0x7fffffffde5a, L0x7fffffffde5c, L0x7fffffffde5e];
(* vmovdqa 0x1a0(%rdx),%ymm6                       #! EA = L0x7fffffffde60; Value = 0x00007ffff7ffe160; PC = 0x55555555a346 *)
mov %ymm6 [L0x7fffffffde60, L0x7fffffffde62, L0x7fffffffde64, L0x7fffffffde66, L0x7fffffffde68, L0x7fffffffde6a, L0x7fffffffde6c, L0x7fffffffde6e, L0x7fffffffde70, L0x7fffffffde72, L0x7fffffffde74, L0x7fffffffde76, L0x7fffffffde78, L0x7fffffffde7a, L0x7fffffffde7c, L0x7fffffffde7e];
(* vpmulhw %ymm5,%ymm1,%ymm13                      #! PC = 0x55555555a34e *)
smull %ymm13 %__mont0 %ymm5 %ymm1;
(* vpmulhw %ymm6,%ymm1,%ymm1                       #! PC = 0x55555555a352 *)
smull %ymm1 %__mont1 %ymm6 %ymm1;
(* vpmulhw %ymm5,%ymm2,%ymm14                      #! PC = 0x55555555a356 *)
smull %ymm14 %__mont2 %ymm5 %ymm2;
(* vpmulhw %ymm6,%ymm2,%ymm2                       #! PC = 0x55555555a35a *)
smull %ymm2 %__mont3 %ymm6 %ymm2;
(* vmovdqa 0x1c0(%rdx),%ymm7                       #! EA = L0x7fffffffde80; Value = 0x0000000000000000; PC = 0x55555555a35e *)
mov %ymm7 [L0x7fffffffde80, L0x7fffffffde82, L0x7fffffffde84, L0x7fffffffde86, L0x7fffffffde88, L0x7fffffffde8a, L0x7fffffffde8c, L0x7fffffffde8e, L0x7fffffffde90, L0x7fffffffde92, L0x7fffffffde94, L0x7fffffffde96, L0x7fffffffde98, L0x7fffffffde9a, L0x7fffffffde9c, L0x7fffffffde9e];
(* vmovdqa 0x1e0(%rdx),%ymm8                       #! EA = L0x7fffffffdea0; Value = 0x0000002000000000; PC = 0x55555555a366 *)
mov %ymm8 [L0x7fffffffdea0, L0x7fffffffdea2, L0x7fffffffdea4, L0x7fffffffdea6, L0x7fffffffdea8, L0x7fffffffdeaa, L0x7fffffffdeac, L0x7fffffffdeae, L0x7fffffffdeb0, L0x7fffffffdeb2, L0x7fffffffdeb4, L0x7fffffffdeb6, L0x7fffffffdeb8, L0x7fffffffdeba, L0x7fffffffdebc, L0x7fffffffdebe];
(* vpmulhw %ymm7,%ymm3,%ymm15                      #! PC = 0x55555555a36e *)
smull %ymm15 %__mont4 %ymm7 %ymm3;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a372 *)
smull %ymm3 %__mont5 %ymm8 %ymm3;
(* vpmulhw %ymm7,%ymm4,%ymm0                       #! PC = 0x55555555a377 *)
smull %ymm0 %__mont6 %ymm7 %ymm4;
(* vpmulhw %ymm8,%ymm4,%ymm4                       #! PC = 0x55555555a37b *)
smull %ymm4 %__mont7 %ymm8 %ymm4;
(* vmovdqa %ymm13,(%rsp)                           #! EA = L0x7fffffffda80; PC = 0x55555555a380 *)
mov %tmp_rsp %ymm13;
(* vpmullw %ymm5,%ymm9,%ymm13                      #! PC = 0x55555555a385 *)
smull %mulHymm9 %mulL %ymm5 %ymm9;
cast [] %ymm13@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm9,%ymm9                       #! PC = 0x55555555a389 *)
smull %mulHymm9 %mulL %ymm6 %ymm9;
cast [] %ymm9@sint16[16] %mulL;
(* vpmullw %ymm5,%ymm10,%ymm5                      #! PC = 0x55555555a38d *)
smull %mulHymm10 %mulL %ymm5 %ymm10;
cast [] %ymm5@sint16[16] %mulL;
(* vpmullw %ymm6,%ymm10,%ymm10                     #! PC = 0x55555555a391 *)
smull %mulHymm10 %mulL %ymm6 %ymm10;
cast [] %ymm10@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm11,%ymm6                      #! PC = 0x55555555a395 *)
smull %mulHymm11 %mulL %ymm7 %ymm11;
cast [] %ymm6@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm11,%ymm11                     #! PC = 0x55555555a399 *)
smull %mulHymm11 %mulL %ymm8 %ymm11;
cast [] %ymm11@sint16[16] %mulL;
(* vpmullw %ymm7,%ymm12,%ymm7                      #! PC = 0x55555555a39e *)
smull %mulHymm12 %mulL %ymm7 %ymm12;
cast [] %ymm7@sint16[16] %mulL;
(* vpmullw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555555a3a2 *)
smull %mulHymm12 %mulL %ymm8 %ymm12;
cast [] %ymm12@sint16[16] %mulL;
(* vmovdqa (%rcx),%ymm8                            #! EA = L0x5555555760a0; Value = 0x0d010d010d010d01; PC = 0x55555555a3a7 *)
mov %ymm8 [L0x5555555760a0, L0x5555555760a2, L0x5555555760a4, L0x5555555760a6, L0x5555555760a8, L0x5555555760aa, L0x5555555760ac, L0x5555555760ae, L0x5555555760b0, L0x5555555760b2, L0x5555555760b4, L0x5555555760b6, L0x5555555760b8, L0x5555555760ba, L0x5555555760bc, L0x5555555760be];
(* vpmulhw %ymm8,%ymm13,%ymm13                     #! PC = 0x55555555a3ab *)
smull %ymm13 %mulLymm13 %ymm8 %ymm13;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont0;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm13;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm9,%ymm9                       #! PC = 0x55555555a3b0 *)
smull %ymm9 %mulLymm9 %ymm8 %ymm9;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont1;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm9;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm5,%ymm5                       #! PC = 0x55555555a3b5 *)
smull %ymm5 %mulLymm5 %ymm8 %ymm5;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont2;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm5;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555555a3ba *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont3;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm10;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm6,%ymm6                       #! PC = 0x55555555a3bf *)
smull %ymm6 %mulLymm6 %ymm8 %ymm6;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont4;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm6;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm11,%ymm11                     #! PC = 0x55555555a3c4 *)
smull %ymm11 %mulLymm11 %ymm8 %ymm11;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont5;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm11;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm7,%ymm7                       #! PC = 0x55555555a3c9 *)
smull %ymm7 %mulLymm7 %ymm8 %ymm7;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont6;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm7;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm12,%ymm12                     #! PC = 0x55555555a3ce *)
smull %ymm12 %mulLymm12 %ymm8 %ymm12;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %__mont7;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm12;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw (%rsp),%ymm13,%ymm13                     #! EA = L0x7fffffffda80; Value = 0x0000000000000000; PC = 0x55555555a3d3 *)
sub %ymm13 %ymm13 %tmp_rsp;
(* vpsubw %ymm9,%ymm1,%ymm9                        #! PC = 0x55555555a3d8 *)
sub %ymm9 %ymm1 %ymm9;
(* vpsubw %ymm5,%ymm14,%ymm5                       #! PC = 0x55555555a3dd *)
sub %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm10,%ymm2,%ymm10                      #! PC = 0x55555555a3e1 *)
sub %ymm10 %ymm2 %ymm10;
(* vpsubw %ymm6,%ymm15,%ymm6                       #! PC = 0x55555555a3e6 *)
sub %ymm6 %ymm15 %ymm6;
(* vpsubw %ymm11,%ymm3,%ymm11                      #! PC = 0x55555555a3ea *)
sub %ymm11 %ymm3 %ymm11;
(* vpsubw %ymm7,%ymm0,%ymm7                        #! PC = 0x55555555a3ef *)
sub %ymm7 %ymm0 %ymm7;
(* vpsubw %ymm12,%ymm4,%ymm12                      #! PC = 0x55555555a3f3 *)
sub %ymm12 %ymm4 %ymm12;
(* vmovdqa (%r9),%ymm0                             #! EA = L0x555555576540; Value = 0x81803bfb08624f49; PC = 0x55555555a3f8 *)
mov %ymm0 [L0x555555576540, L0x555555576542, L0x555555576544, L0x555555576546, L0x555555576548, L0x55555557654a, L0x55555557654c, L0x55555557654e, L0x555555576550, L0x555555576552, L0x555555576554, L0x555555576556, L0x555555576558, L0x55555557655a, L0x55555557655c, L0x55555557655e];
(* vmovdqa 0x20(%r9),%ymm1                         #! EA = L0x555555576560; Value = 0x0180fafb02620449; PC = 0x55555555a3fd *)
mov %ymm1 [L0x555555576560, L0x555555576562, L0x555555576564, L0x555555576566, L0x555555576568, L0x55555557656a, L0x55555557656c, L0x55555557656e, L0x555555576570, L0x555555576572, L0x555555576574, L0x555555576576, L0x555555576578, L0x55555557657a, L0x55555557657c, L0x55555557657e];
(* vpmullw %ymm0,%ymm10,%ymm2                      #! PC = 0x55555555a403 *)
smull %mulHymm10 %mulL %ymm0 %ymm10;
cast [] %ymm2@sint16[16] %mulL;
(* vpmullw %ymm0,%ymm12,%ymm3                      #! PC = 0x55555555a407 *)
smull %mulHymm12 %mulL %ymm0 %ymm12;
cast [] %ymm3@sint16[16] %mulL;
(* vpmulhw %ymm1,%ymm10,%ymm10                     #! PC = 0x55555555a40b *)
smull %ymm10 %mulLymm10 %ymm1 %ymm10;
(* vpmulhw %ymm1,%ymm12,%ymm12                     #! PC = 0x55555555a40f *)
smull %ymm12 %mulLymm12 %ymm1 %ymm12;
(* vpmulhw %ymm8,%ymm2,%ymm2                       #! PC = 0x55555555a413 *)
smull %ymm2 %mulLymm2 %ymm8 %ymm2;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm10;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm2;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555555a418 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
mov [M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, Ma, Mb, Mc, Md, Me, Mf] %mulLymm12;
mov [R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Ra, Rb, Rc, Rd, Re, Rf] %mulLymm3;
assert and [eqmod M0 R0 (2**16), eqmod M1 R1 (2**16), eqmod M2 R2 (2**16), eqmod M3 R3 (2**16), eqmod M4 R4 (2**16), eqmod M5 R5 (2**16), eqmod M6 R6 (2**16), eqmod M7 R7 (2**16), eqmod M8 R8 (2**16), eqmod M9 R9 (2**16), eqmod Ma Ra (2**16), eqmod Mb Rb (2**16), eqmod Mc Rc (2**16), eqmod Md Rd (2**16), eqmod Me Re (2**16), eqmod Mf Rf (2**16)] && true;
assume and [M0 = R0, M1 = R1, M2 = R2, M3 = R3, M4 = R4, M5 = R5, M6 = R6, M7 = R7, M8 = R8, M9 = R9, Ma = Ra, Mb = Rb, Mc = Rc, Md = Rd, Me = Re, Mf = Rf] && true;
(* vpsubw %ymm2,%ymm10,%ymm10                      #! PC = 0x55555555a41d *)
sub %ymm10 %ymm10 %ymm2;
(* vpsubw %ymm3,%ymm12,%ymm12                      #! PC = 0x55555555a421 *)
sub %ymm12 %ymm12 %ymm3;
(* vpaddw %ymm5,%ymm9,%ymm9                        #! PC = 0x55555555a425 *)
add %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm7,%ymm11,%ymm11                      #! PC = 0x55555555a429 *)
add %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm13,%ymm10,%ymm13                     #! PC = 0x55555555a42d *)
sub %ymm13 %ymm10 %ymm13;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555a432 *)
sub %ymm6 %ymm6 %ymm12;
(* vmovdqa %ymm13,0x180(%rdi)                      #! EA = L0x7fffffffe040; PC = 0x55555555a437 *)
mov [L0x7fffffffe040, L0x7fffffffe042, L0x7fffffffe044, L0x7fffffffe046, L0x7fffffffe048, L0x7fffffffe04a, L0x7fffffffe04c, L0x7fffffffe04e, L0x7fffffffe050, L0x7fffffffe052, L0x7fffffffe054, L0x7fffffffe056, L0x7fffffffe058, L0x7fffffffe05a, L0x7fffffffe05c, L0x7fffffffe05e] %ymm13;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffe060; PC = 0x55555555a43f *)
mov [L0x7fffffffe060, L0x7fffffffe062, L0x7fffffffe064, L0x7fffffffe066, L0x7fffffffe068, L0x7fffffffe06a, L0x7fffffffe06c, L0x7fffffffe06e, L0x7fffffffe070, L0x7fffffffe072, L0x7fffffffe074, L0x7fffffffe076, L0x7fffffffe078, L0x7fffffffe07a, L0x7fffffffe07c, L0x7fffffffe07e] %ymm9;
(* vmovdqa %ymm6,0x1c0(%rdi)                       #! EA = L0x7fffffffe080; PC = 0x55555555a447 *)
mov [L0x7fffffffe080, L0x7fffffffe082, L0x7fffffffe084, L0x7fffffffe086, L0x7fffffffe088, L0x7fffffffe08a, L0x7fffffffe08c, L0x7fffffffe08e, L0x7fffffffe090, L0x7fffffffe092, L0x7fffffffe094, L0x7fffffffe096, L0x7fffffffe098, L0x7fffffffe09a, L0x7fffffffe09c, L0x7fffffffe09e] %ymm6;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffe0a0; PC = 0x55555555a44f *)
mov [L0x7fffffffe0a0, L0x7fffffffe0a2, L0x7fffffffe0a4, L0x7fffffffe0a6, L0x7fffffffe0a8, L0x7fffffffe0aa, L0x7fffffffe0ac, L0x7fffffffe0ae, L0x7fffffffe0b0, L0x7fffffffe0b2, L0x7fffffffe0b4, L0x7fffffffe0b6, L0x7fffffffe0b8, L0x7fffffffe0ba, L0x7fffffffe0bc, L0x7fffffffe0be] %ymm11;
(* #mov    %r8,%rsp                                 #! PC = 0x55555555a457 *)
#mov    %r8,%rsp                                 #! 0x55555555a457 = 0x55555555a457;
(* #! <- SP = 0x7fffffffdab8 *)
#! 0x7fffffffdab8 = 0x7fffffffdab8;
(* #retq                                           #! PC = 0x55555555a45a *)
#retq                                           #! 0x55555555a45a = 0x55555555a45a;


(*********** postcondition ***********)


{
and [
(*   0 *) eqmod ((a000 + b000 * x) * (c000 + d000 * x)) ((L0x7fffffffdec0 + L0x7fffffffdee0*x) * (-1044)) [3329, x**2 - (   17)],
(*   1 *) eqmod ((a016 + b016 * x) * (c016 + d016 * x)) ((L0x7fffffffdf00 + L0x7fffffffdf20*x) * (-1044)) [3329, x**2 - ( 3312)],
(*   2 *) eqmod ((a032 + b032 * x) * (c032 + d032 * x)) ((L0x7fffffffdf40 + L0x7fffffffdf60*x) * (-1044)) [3329, x**2 - ( 2761)],
(*   3 *) eqmod ((a048 + b048 * x) * (c048 + d048 * x)) ((L0x7fffffffdf80 + L0x7fffffffdfa0*x) * (-1044)) [3329, x**2 - (  568)],
(*   4 *) eqmod ((a001 + b001 * x) * (c001 + d001 * x)) ((L0x7fffffffdec2 + L0x7fffffffdee2*x) * (-1044)) [3329, x**2 - (  583)],
(*   5 *) eqmod ((a017 + b017 * x) * (c017 + d017 * x)) ((L0x7fffffffdf02 + L0x7fffffffdf22*x) * (-1044)) [3329, x**2 - ( 2746)],
(*   6 *) eqmod ((a033 + b033 * x) * (c033 + d033 * x)) ((L0x7fffffffdf42 + L0x7fffffffdf62*x) * (-1044)) [3329, x**2 - ( 2649)],
(*   7 *) eqmod ((a049 + b049 * x) * (c049 + d049 * x)) ((L0x7fffffffdf82 + L0x7fffffffdfa2*x) * (-1044)) [3329, x**2 - (  680)],
(*   8 *) eqmod ((a002 + b002 * x) * (c002 + d002 * x)) ((L0x7fffffffdec4 + L0x7fffffffdee4*x) * (-1044)) [3329, x**2 - ( 1637)],
(*   9 *) eqmod ((a018 + b018 * x) * (c018 + d018 * x)) ((L0x7fffffffdf04 + L0x7fffffffdf24*x) * (-1044)) [3329, x**2 - ( 1692)],
(*  10 *) eqmod ((a034 + b034 * x) * (c034 + d034 * x)) ((L0x7fffffffdf44 + L0x7fffffffdf64*x) * (-1044)) [3329, x**2 - (  723)],
(*  11 *) eqmod ((a050 + b050 * x) * (c050 + d050 * x)) ((L0x7fffffffdf84 + L0x7fffffffdfa4*x) * (-1044)) [3329, x**2 - ( 2606)],
(*  12 *) eqmod ((a003 + b003 * x) * (c003 + d003 * x)) ((L0x7fffffffdec6 + L0x7fffffffdee6*x) * (-1044)) [3329, x**2 - ( 2288)],
(*  13 *) eqmod ((a019 + b019 * x) * (c019 + d019 * x)) ((L0x7fffffffdf06 + L0x7fffffffdf26*x) * (-1044)) [3329, x**2 - ( 1041)],
(*  14 *) eqmod ((a035 + b035 * x) * (c035 + d035 * x)) ((L0x7fffffffdf46 + L0x7fffffffdf66*x) * (-1044)) [3329, x**2 - ( 1100)],
(*  15 *) eqmod ((a051 + b051 * x) * (c051 + d051 * x)) ((L0x7fffffffdf86 + L0x7fffffffdfa6*x) * (-1044)) [3329, x**2 - ( 2229)],
(*  16 *) eqmod ((a004 + b004 * x) * (c004 + d004 * x)) ((L0x7fffffffdec8 + L0x7fffffffdee8*x) * (-1044)) [3329, x**2 - ( 1409)],
(*  17 *) eqmod ((a020 + b020 * x) * (c020 + d020 * x)) ((L0x7fffffffdf08 + L0x7fffffffdf28*x) * (-1044)) [3329, x**2 - ( 1920)],
(*  18 *) eqmod ((a036 + b036 * x) * (c036 + d036 * x)) ((L0x7fffffffdf48 + L0x7fffffffdf68*x) * (-1044)) [3329, x**2 - ( 2662)],
(*  19 *) eqmod ((a052 + b052 * x) * (c052 + d052 * x)) ((L0x7fffffffdf88 + L0x7fffffffdfa8*x) * (-1044)) [3329, x**2 - (  667)],
(*  20 *) eqmod ((a005 + b005 * x) * (c005 + d005 * x)) ((L0x7fffffffdeca + L0x7fffffffdeea*x) * (-1044)) [3329, x**2 - ( 3281)],
(*  21 *) eqmod ((a021 + b021 * x) * (c021 + d021 * x)) ((L0x7fffffffdf0a + L0x7fffffffdf2a*x) * (-1044)) [3329, x**2 - (   48)],
(*  22 *) eqmod ((a037 + b037 * x) * (c037 + d037 * x)) ((L0x7fffffffdf4a + L0x7fffffffdf6a*x) * (-1044)) [3329, x**2 - (  233)],
(*  23 *) eqmod ((a053 + b053 * x) * (c053 + d053 * x)) ((L0x7fffffffdf8a + L0x7fffffffdfaa*x) * (-1044)) [3329, x**2 - ( 3096)],
(*  24 *) eqmod ((a006 + b006 * x) * (c006 + d006 * x)) ((L0x7fffffffdecc + L0x7fffffffdeec*x) * (-1044)) [3329, x**2 - (  756)],
(*  25 *) eqmod ((a022 + b022 * x) * (c022 + d022 * x)) ((L0x7fffffffdf0c + L0x7fffffffdf2c*x) * (-1044)) [3329, x**2 - ( 2573)],
(*  26 *) eqmod ((a038 + b038 * x) * (c038 + d038 * x)) ((L0x7fffffffdf4c + L0x7fffffffdf6c*x) * (-1044)) [3329, x**2 - ( 2156)],
(*  27 *) eqmod ((a054 + b054 * x) * (c054 + d054 * x)) ((L0x7fffffffdf8c + L0x7fffffffdfac*x) * (-1044)) [3329, x**2 - ( 1173)],
(*  28 *) eqmod ((a007 + b007 * x) * (c007 + d007 * x)) ((L0x7fffffffdece + L0x7fffffffdeee*x) * (-1044)) [3329, x**2 - ( 3015)],
(*  29 *) eqmod ((a023 + b023 * x) * (c023 + d023 * x)) ((L0x7fffffffdf0e + L0x7fffffffdf2e*x) * (-1044)) [3329, x**2 - (  314)],
(*  30 *) eqmod ((a039 + b039 * x) * (c039 + d039 * x)) ((L0x7fffffffdf4e + L0x7fffffffdf6e*x) * (-1044)) [3329, x**2 - ( 3050)],
(*  31 *) eqmod ((a055 + b055 * x) * (c055 + d055 * x)) ((L0x7fffffffdf8e + L0x7fffffffdfae*x) * (-1044)) [3329, x**2 - (  279)],
(*  32 *) eqmod ((a008 + b008 * x) * (c008 + d008 * x)) ((L0x7fffffffded0 + L0x7fffffffdef0*x) * (-1044)) [3329, x**2 - ( 1703)],
(*  33 *) eqmod ((a024 + b024 * x) * (c024 + d024 * x)) ((L0x7fffffffdf10 + L0x7fffffffdf30*x) * (-1044)) [3329, x**2 - ( 1626)],
(*  34 *) eqmod ((a040 + b040 * x) * (c040 + d040 * x)) ((L0x7fffffffdf50 + L0x7fffffffdf70*x) * (-1044)) [3329, x**2 - ( 1651)],
(*  35 *) eqmod ((a056 + b056 * x) * (c056 + d056 * x)) ((L0x7fffffffdf90 + L0x7fffffffdfb0*x) * (-1044)) [3329, x**2 - ( 1678)],
(*  36 *) eqmod ((a009 + b009 * x) * (c009 + d009 * x)) ((L0x7fffffffded2 + L0x7fffffffdef2*x) * (-1044)) [3329, x**2 - ( 2789)],
(*  37 *) eqmod ((a025 + b025 * x) * (c025 + d025 * x)) ((L0x7fffffffdf12 + L0x7fffffffdf32*x) * (-1044)) [3329, x**2 - (  540)],
(*  38 *) eqmod ((a041 + b041 * x) * (c041 + d041 * x)) ((L0x7fffffffdf52 + L0x7fffffffdf72*x) * (-1044)) [3329, x**2 - ( 1789)],
(*  39 *) eqmod ((a057 + b057 * x) * (c057 + d057 * x)) ((L0x7fffffffdf92 + L0x7fffffffdfb2*x) * (-1044)) [3329, x**2 - ( 1540)],
(*  40 *) eqmod ((a010 + b010 * x) * (c010 + d010 * x)) ((L0x7fffffffded4 + L0x7fffffffdef4*x) * (-1044)) [3329, x**2 - ( 1847)],
(*  41 *) eqmod ((a026 + b026 * x) * (c026 + d026 * x)) ((L0x7fffffffdf14 + L0x7fffffffdf34*x) * (-1044)) [3329, x**2 - ( 1482)],
(*  42 *) eqmod ((a042 + b042 * x) * (c042 + d042 * x)) ((L0x7fffffffdf54 + L0x7fffffffdf74*x) * (-1044)) [3329, x**2 - (  952)],
(*  43 *) eqmod ((a058 + b058 * x) * (c058 + d058 * x)) ((L0x7fffffffdf94 + L0x7fffffffdfb4*x) * (-1044)) [3329, x**2 - ( 2377)],
(*  44 *) eqmod ((a011 + b011 * x) * (c011 + d011 * x)) ((L0x7fffffffded6 + L0x7fffffffdef6*x) * (-1044)) [3329, x**2 - ( 1461)],
(*  45 *) eqmod ((a027 + b027 * x) * (c027 + d027 * x)) ((L0x7fffffffdf16 + L0x7fffffffdf36*x) * (-1044)) [3329, x**2 - ( 1868)],
(*  46 *) eqmod ((a043 + b043 * x) * (c043 + d043 * x)) ((L0x7fffffffdf56 + L0x7fffffffdf76*x) * (-1044)) [3329, x**2 - ( 2687)],
(*  47 *) eqmod ((a059 + b059 * x) * (c059 + d059 * x)) ((L0x7fffffffdf96 + L0x7fffffffdfb6*x) * (-1044)) [3329, x**2 - (  642)],
(*  48 *) eqmod ((a012 + b012 * x) * (c012 + d012 * x)) ((L0x7fffffffded8 + L0x7fffffffdef8*x) * (-1044)) [3329, x**2 - (  939)],
(*  49 *) eqmod ((a028 + b028 * x) * (c028 + d028 * x)) ((L0x7fffffffdf18 + L0x7fffffffdf38*x) * (-1044)) [3329, x**2 - ( 2390)],
(*  50 *) eqmod ((a044 + b044 * x) * (c044 + d044 * x)) ((L0x7fffffffdf58 + L0x7fffffffdf78*x) * (-1044)) [3329, x**2 - ( 2308)],
(*  51 *) eqmod ((a060 + b060 * x) * (c060 + d060 * x)) ((L0x7fffffffdf98 + L0x7fffffffdfb8*x) * (-1044)) [3329, x**2 - ( 1021)],
(*  52 *) eqmod ((a013 + b013 * x) * (c013 + d013 * x)) ((L0x7fffffffdeda + L0x7fffffffdefa*x) * (-1044)) [3329, x**2 - ( 2437)],
(*  53 *) eqmod ((a029 + b029 * x) * (c029 + d029 * x)) ((L0x7fffffffdf1a + L0x7fffffffdf3a*x) * (-1044)) [3329, x**2 - (  892)],
(*  54 *) eqmod ((a045 + b045 * x) * (c045 + d045 * x)) ((L0x7fffffffdf5a + L0x7fffffffdf7a*x) * (-1044)) [3329, x**2 - ( 2388)],
(*  55 *) eqmod ((a061 + b061 * x) * (c061 + d061 * x)) ((L0x7fffffffdf9a + L0x7fffffffdfba*x) * (-1044)) [3329, x**2 - (  941)],
(*  56 *) eqmod ((a014 + b014 * x) * (c014 + d014 * x)) ((L0x7fffffffdedc + L0x7fffffffdefc*x) * (-1044)) [3329, x**2 - (  733)],
(*  57 *) eqmod ((a030 + b030 * x) * (c030 + d030 * x)) ((L0x7fffffffdf1c + L0x7fffffffdf3c*x) * (-1044)) [3329, x**2 - ( 2596)],
(*  58 *) eqmod ((a046 + b046 * x) * (c046 + d046 * x)) ((L0x7fffffffdf5c + L0x7fffffffdf7c*x) * (-1044)) [3329, x**2 - ( 2337)],
(*  59 *) eqmod ((a062 + b062 * x) * (c062 + d062 * x)) ((L0x7fffffffdf9c + L0x7fffffffdfbc*x) * (-1044)) [3329, x**2 - (  992)],
(*  60 *) eqmod ((a015 + b015 * x) * (c015 + d015 * x)) ((L0x7fffffffdede + L0x7fffffffdefe*x) * (-1044)) [3329, x**2 - (  268)],
(*  61 *) eqmod ((a031 + b031 * x) * (c031 + d031 * x)) ((L0x7fffffffdf1e + L0x7fffffffdf3e*x) * (-1044)) [3329, x**2 - ( 3061)],
(*  62 *) eqmod ((a047 + b047 * x) * (c047 + d047 * x)) ((L0x7fffffffdf5e + L0x7fffffffdf7e*x) * (-1044)) [3329, x**2 - (  641)],
(*  63 *) eqmod ((a063 + b063 * x) * (c063 + d063 * x)) ((L0x7fffffffdf9e + L0x7fffffffdfbe*x) * (-1044)) [3329, x**2 - ( 2688)],
(*  64 *) eqmod ((a064 + b064 * x) * (c064 + d064 * x)) ((L0x7fffffffdfc0 + L0x7fffffffdfe0*x) * (-1044)) [3329, x**2 - ( 1584)],
(*  65 *) eqmod ((a080 + b080 * x) * (c080 + d080 * x)) ((L0x7fffffffe000 + L0x7fffffffe020*x) * (-1044)) [3329, x**2 - ( 1745)],
(*  66 *) eqmod ((a096 + b096 * x) * (c096 + d096 * x)) ((L0x7fffffffe040 + L0x7fffffffe060*x) * (-1044)) [3329, x**2 - ( 2298)],
(*  67 *) eqmod ((a112 + b112 * x) * (c112 + d112 * x)) ((L0x7fffffffe080 + L0x7fffffffe0a0*x) * (-1044)) [3329, x**2 - ( 1031)],
(*  68 *) eqmod ((a065 + b065 * x) * (c065 + d065 * x)) ((L0x7fffffffdfc2 + L0x7fffffffdfe2*x) * (-1044)) [3329, x**2 - ( 2037)],
(*  69 *) eqmod ((a081 + b081 * x) * (c081 + d081 * x)) ((L0x7fffffffe002 + L0x7fffffffe022*x) * (-1044)) [3329, x**2 - ( 1292)],
(*  70 *) eqmod ((a097 + b097 * x) * (c097 + d097 * x)) ((L0x7fffffffe042 + L0x7fffffffe062*x) * (-1044)) [3329, x**2 - ( 3220)],
(*  71 *) eqmod ((a113 + b113 * x) * (c113 + d113 * x)) ((L0x7fffffffe082 + L0x7fffffffe0a2*x) * (-1044)) [3329, x**2 - (  109)],
(*  72 *) eqmod ((a066 + b066 * x) * (c066 + d066 * x)) ((L0x7fffffffdfc4 + L0x7fffffffdfe4*x) * (-1044)) [3329, x**2 - (  375)],
(*  73 *) eqmod ((a082 + b082 * x) * (c082 + d082 * x)) ((L0x7fffffffe004 + L0x7fffffffe024*x) * (-1044)) [3329, x**2 - ( 2954)],
(*  74 *) eqmod ((a098 + b098 * x) * (c098 + d098 * x)) ((L0x7fffffffe044 + L0x7fffffffe064*x) * (-1044)) [3329, x**2 - ( 2549)],
(*  75 *) eqmod ((a114 + b114 * x) * (c114 + d114 * x)) ((L0x7fffffffe084 + L0x7fffffffe0a4*x) * (-1044)) [3329, x**2 - (  780)],
(*  76 *) eqmod ((a067 + b067 * x) * (c067 + d067 * x)) ((L0x7fffffffdfc6 + L0x7fffffffdfe6*x) * (-1044)) [3329, x**2 - ( 2090)],
(*  77 *) eqmod ((a083 + b083 * x) * (c083 + d083 * x)) ((L0x7fffffffe006 + L0x7fffffffe026*x) * (-1044)) [3329, x**2 - ( 1239)],
(*  78 *) eqmod ((a099 + b099 * x) * (c099 + d099 * x)) ((L0x7fffffffe046 + L0x7fffffffe066*x) * (-1044)) [3329, x**2 - ( 1645)],
(*  79 *) eqmod ((a115 + b115 * x) * (c115 + d115 * x)) ((L0x7fffffffe086 + L0x7fffffffe0a6*x) * (-1044)) [3329, x**2 - ( 1684)],
(*  80 *) eqmod ((a068 + b068 * x) * (c068 + d068 * x)) ((L0x7fffffffdfc8 + L0x7fffffffdfe8*x) * (-1044)) [3329, x**2 - ( 1063)],
(*  81 *) eqmod ((a084 + b084 * x) * (c084 + d084 * x)) ((L0x7fffffffe008 + L0x7fffffffe028*x) * (-1044)) [3329, x**2 - ( 2266)],
(*  82 *) eqmod ((a100 + b100 * x) * (c100 + d100 * x)) ((L0x7fffffffe048 + L0x7fffffffe068*x) * (-1044)) [3329, x**2 - (  319)],
(*  83 *) eqmod ((a116 + b116 * x) * (c116 + d116 * x)) ((L0x7fffffffe088 + L0x7fffffffe0a8*x) * (-1044)) [3329, x**2 - ( 3010)],
(*  84 *) eqmod ((a069 + b069 * x) * (c069 + d069 * x)) ((L0x7fffffffdfca + L0x7fffffffdfea*x) * (-1044)) [3329, x**2 - ( 2773)],
(*  85 *) eqmod ((a085 + b085 * x) * (c085 + d085 * x)) ((L0x7fffffffe00a + L0x7fffffffe02a*x) * (-1044)) [3329, x**2 - (  556)],
(*  86 *) eqmod ((a101 + b101 * x) * (c101 + d101 * x)) ((L0x7fffffffe04a + L0x7fffffffe06a*x) * (-1044)) [3329, x**2 - (  757)],
(*  87 *) eqmod ((a117 + b117 * x) * (c117 + d117 * x)) ((L0x7fffffffe08a + L0x7fffffffe0aa*x) * (-1044)) [3329, x**2 - ( 2572)],
(*  88 *) eqmod ((a070 + b070 * x) * (c070 + d070 * x)) ((L0x7fffffffdfcc + L0x7fffffffdfec*x) * (-1044)) [3329, x**2 - ( 2099)],
(*  89 *) eqmod ((a086 + b086 * x) * (c086 + d086 * x)) ((L0x7fffffffe00c + L0x7fffffffe02c*x) * (-1044)) [3329, x**2 - ( 1230)],
(*  90 *) eqmod ((a102 + b102 * x) * (c102 + d102 * x)) ((L0x7fffffffe04c + L0x7fffffffe06c*x) * (-1044)) [3329, x**2 - (  561)],
(*  91 *) eqmod ((a118 + b118 * x) * (c118 + d118 * x)) ((L0x7fffffffe08c + L0x7fffffffe0ac*x) * (-1044)) [3329, x**2 - ( 2768)],
(*  92 *) eqmod ((a071 + b071 * x) * (c071 + d071 * x)) ((L0x7fffffffdfce + L0x7fffffffdfee*x) * (-1044)) [3329, x**2 - ( 2466)],
(*  93 *) eqmod ((a087 + b087 * x) * (c087 + d087 * x)) ((L0x7fffffffe00e + L0x7fffffffe02e*x) * (-1044)) [3329, x**2 - (  863)],
(*  94 *) eqmod ((a103 + b103 * x) * (c103 + d103 * x)) ((L0x7fffffffe04e + L0x7fffffffe06e*x) * (-1044)) [3329, x**2 - ( 2594)],
(*  95 *) eqmod ((a119 + b119 * x) * (c119 + d119 * x)) ((L0x7fffffffe08e + L0x7fffffffe0ae*x) * (-1044)) [3329, x**2 - (  735)],
(*  96 *) eqmod ((a072 + b072 * x) * (c072 + d072 * x)) ((L0x7fffffffdfd0 + L0x7fffffffdff0*x) * (-1044)) [3329, x**2 - ( 2804)],
(*  97 *) eqmod ((a088 + b088 * x) * (c088 + d088 * x)) ((L0x7fffffffe010 + L0x7fffffffe030*x) * (-1044)) [3329, x**2 - (  525)],
(*  98 *) eqmod ((a104 + b104 * x) * (c104 + d104 * x)) ((L0x7fffffffe050 + L0x7fffffffe070*x) * (-1044)) [3329, x**2 - ( 1092)],
(*  99 *) eqmod ((a120 + b120 * x) * (c120 + d120 * x)) ((L0x7fffffffe090 + L0x7fffffffe0b0*x) * (-1044)) [3329, x**2 - ( 2237)],
(* 100 *) eqmod ((a073 + b073 * x) * (c073 + d073 * x)) ((L0x7fffffffdfd2 + L0x7fffffffdff2*x) * (-1044)) [3329, x**2 - (  403)],
(* 101 *) eqmod ((a089 + b089 * x) * (c089 + d089 * x)) ((L0x7fffffffe012 + L0x7fffffffe032*x) * (-1044)) [3329, x**2 - ( 2926)],
(* 102 *) eqmod ((a105 + b105 * x) * (c105 + d105 * x)) ((L0x7fffffffe052 + L0x7fffffffe072*x) * (-1044)) [3329, x**2 - ( 1026)],
(* 103 *) eqmod ((a121 + b121 * x) * (c121 + d121 * x)) ((L0x7fffffffe092 + L0x7fffffffe0b2*x) * (-1044)) [3329, x**2 - ( 2303)],
(* 104 *) eqmod ((a074 + b074 * x) * (c074 + d074 * x)) ((L0x7fffffffdfd4 + L0x7fffffffdff4*x) * (-1044)) [3329, x**2 - ( 1143)],
(* 105 *) eqmod ((a090 + b090 * x) * (c090 + d090 * x)) ((L0x7fffffffe014 + L0x7fffffffe034*x) * (-1044)) [3329, x**2 - ( 2186)],
(* 106 *) eqmod ((a106 + b106 * x) * (c106 + d106 * x)) ((L0x7fffffffe054 + L0x7fffffffe074*x) * (-1044)) [3329, x**2 - ( 2150)],
(* 107 *) eqmod ((a122 + b122 * x) * (c122 + d122 * x)) ((L0x7fffffffe094 + L0x7fffffffe0b4*x) * (-1044)) [3329, x**2 - ( 1179)],
(* 108 *) eqmod ((a075 + b075 * x) * (c075 + d075 * x)) ((L0x7fffffffdfd6 + L0x7fffffffdff6*x) * (-1044)) [3329, x**2 - ( 2775)],
(* 109 *) eqmod ((a091 + b091 * x) * (c091 + d091 * x)) ((L0x7fffffffe016 + L0x7fffffffe036*x) * (-1044)) [3329, x**2 - (  554)],
(* 110 *) eqmod ((a107 + b107 * x) * (c107 + d107 * x)) ((L0x7fffffffe056 + L0x7fffffffe076*x) * (-1044)) [3329, x**2 - (  886)],
(* 111 *) eqmod ((a123 + b123 * x) * (c123 + d123 * x)) ((L0x7fffffffe096 + L0x7fffffffe0b6*x) * (-1044)) [3329, x**2 - ( 2443)],
(* 112 *) eqmod ((a076 + b076 * x) * (c076 + d076 * x)) ((L0x7fffffffdfd8 + L0x7fffffffdff8*x) * (-1044)) [3329, x**2 - ( 1722)],
(* 113 *) eqmod ((a092 + b092 * x) * (c092 + d092 * x)) ((L0x7fffffffe018 + L0x7fffffffe038*x) * (-1044)) [3329, x**2 - ( 1607)],
(* 114 *) eqmod ((a108 + b108 * x) * (c108 + d108 * x)) ((L0x7fffffffe058 + L0x7fffffffe078*x) * (-1044)) [3329, x**2 - ( 1212)],
(* 115 *) eqmod ((a124 + b124 * x) * (c124 + d124 * x)) ((L0x7fffffffe098 + L0x7fffffffe0b8*x) * (-1044)) [3329, x**2 - ( 2117)],
(* 116 *) eqmod ((a077 + b077 * x) * (c077 + d077 * x)) ((L0x7fffffffdfda + L0x7fffffffdffa*x) * (-1044)) [3329, x**2 - ( 1874)],
(* 117 *) eqmod ((a093 + b093 * x) * (c093 + d093 * x)) ((L0x7fffffffe01a + L0x7fffffffe03a*x) * (-1044)) [3329, x**2 - ( 1455)],
(* 118 *) eqmod ((a109 + b109 * x) * (c109 + d109 * x)) ((L0x7fffffffe05a + L0x7fffffffe07a*x) * (-1044)) [3329, x**2 - ( 1029)],
(* 119 *) eqmod ((a125 + b125 * x) * (c125 + d125 * x)) ((L0x7fffffffe09a + L0x7fffffffe0ba*x) * (-1044)) [3329, x**2 - ( 2300)],
(* 120 *) eqmod ((a078 + b078 * x) * (c078 + d078 * x)) ((L0x7fffffffdfdc + L0x7fffffffdffc*x) * (-1044)) [3329, x**2 - ( 2110)],
(* 121 *) eqmod ((a094 + b094 * x) * (c094 + d094 * x)) ((L0x7fffffffe01c + L0x7fffffffe03c*x) * (-1044)) [3329, x**2 - ( 1219)],
(* 122 *) eqmod ((a110 + b110 * x) * (c110 + d110 * x)) ((L0x7fffffffe05c + L0x7fffffffe07c*x) * (-1044)) [3329, x**2 - ( 2935)],
(* 123 *) eqmod ((a126 + b126 * x) * (c126 + d126 * x)) ((L0x7fffffffe09c + L0x7fffffffe0bc*x) * (-1044)) [3329, x**2 - (  394)],
(* 124 *) eqmod ((a079 + b079 * x) * (c079 + d079 * x)) ((L0x7fffffffdfde + L0x7fffffffdffe*x) * (-1044)) [3329, x**2 - (  885)],
(* 125 *) eqmod ((a095 + b095 * x) * (c095 + d095 * x)) ((L0x7fffffffe01e + L0x7fffffffe03e*x) * (-1044)) [3329, x**2 - ( 2444)],
(* 126 *) eqmod ((a111 + b111 * x) * (c111 + d111 * x)) ((L0x7fffffffe05e + L0x7fffffffe07e*x) * (-1044)) [3329, x**2 - ( 2154)],
(* 127 *) eqmod ((a127 + b127 * x) * (c127 + d127 * x)) ((L0x7fffffffe09e + L0x7fffffffe0be*x) * (-1044)) [3329, x**2 - ( 1175)]
]
&&
and [
(-6656)@16 <=s a000, a000 <=s (6656)@16, (-6656)@16 <=s a001, a001 <=s (6656)@16,
(-6656)@16 <=s a002, a002 <=s (6656)@16, (-6656)@16 <=s a003, a003 <=s (6656)@16,
(-6656)@16 <=s a004, a004 <=s (6656)@16, (-6656)@16 <=s a005, a005 <=s (6656)@16,
(-6656)@16 <=s a006, a006 <=s (6656)@16, (-6656)@16 <=s a007, a007 <=s (6656)@16,
(-6656)@16 <=s a008, a008 <=s (6656)@16, (-6656)@16 <=s a009, a009 <=s (6656)@16,
(-6656)@16 <=s a010, a010 <=s (6656)@16, (-6656)@16 <=s a011, a011 <=s (6656)@16,
(-6656)@16 <=s a012, a012 <=s (6656)@16, (-6656)@16 <=s a013, a013 <=s (6656)@16,
(-6656)@16 <=s a014, a014 <=s (6656)@16, (-6656)@16 <=s a015, a015 <=s (6656)@16,
(-6656)@16 <=s a016, a016 <=s (6656)@16, (-6656)@16 <=s a017, a017 <=s (6656)@16,
(-6656)@16 <=s a018, a018 <=s (6656)@16, (-6656)@16 <=s a019, a019 <=s (6656)@16,
(-6656)@16 <=s a020, a020 <=s (6656)@16, (-6656)@16 <=s a021, a021 <=s (6656)@16,
(-6656)@16 <=s a022, a022 <=s (6656)@16, (-6656)@16 <=s a023, a023 <=s (6656)@16,
(-6656)@16 <=s a024, a024 <=s (6656)@16, (-6656)@16 <=s a025, a025 <=s (6656)@16,
(-6656)@16 <=s a026, a026 <=s (6656)@16, (-6656)@16 <=s a027, a027 <=s (6656)@16,
(-6656)@16 <=s a028, a028 <=s (6656)@16, (-6656)@16 <=s a029, a029 <=s (6656)@16,
(-6656)@16 <=s a030, a030 <=s (6656)@16, (-6656)@16 <=s a031, a031 <=s (6656)@16,
(-6656)@16 <=s a032, a032 <=s (6656)@16, (-6656)@16 <=s a033, a033 <=s (6656)@16,
(-6656)@16 <=s a034, a034 <=s (6656)@16, (-6656)@16 <=s a035, a035 <=s (6656)@16,
(-6656)@16 <=s a036, a036 <=s (6656)@16, (-6656)@16 <=s a037, a037 <=s (6656)@16,
(-6656)@16 <=s a038, a038 <=s (6656)@16, (-6656)@16 <=s a039, a039 <=s (6656)@16,
(-6656)@16 <=s a040, a040 <=s (6656)@16, (-6656)@16 <=s a041, a041 <=s (6656)@16,
(-6656)@16 <=s a042, a042 <=s (6656)@16, (-6656)@16 <=s a043, a043 <=s (6656)@16,
(-6656)@16 <=s a044, a044 <=s (6656)@16, (-6656)@16 <=s a045, a045 <=s (6656)@16,
(-6656)@16 <=s a046, a046 <=s (6656)@16, (-6656)@16 <=s a047, a047 <=s (6656)@16,
(-6656)@16 <=s a048, a048 <=s (6656)@16, (-6656)@16 <=s a049, a049 <=s (6656)@16,
(-6656)@16 <=s a050, a050 <=s (6656)@16, (-6656)@16 <=s a051, a051 <=s (6656)@16,
(-6656)@16 <=s a052, a052 <=s (6656)@16, (-6656)@16 <=s a053, a053 <=s (6656)@16,
(-6656)@16 <=s a054, a054 <=s (6656)@16, (-6656)@16 <=s a055, a055 <=s (6656)@16,
(-6656)@16 <=s a056, a056 <=s (6656)@16, (-6656)@16 <=s a057, a057 <=s (6656)@16,
(-6656)@16 <=s a058, a058 <=s (6656)@16, (-6656)@16 <=s a059, a059 <=s (6656)@16,
(-6656)@16 <=s a060, a060 <=s (6656)@16, (-6656)@16 <=s a061, a061 <=s (6656)@16,
(-6656)@16 <=s a062, a062 <=s (6656)@16, (-6656)@16 <=s a063, a063 <=s (6656)@16,
(-6656)@16 <=s a064, a064 <=s (6656)@16, (-6656)@16 <=s a065, a065 <=s (6656)@16,
(-6656)@16 <=s a066, a066 <=s (6656)@16, (-6656)@16 <=s a067, a067 <=s (6656)@16,
(-6656)@16 <=s a068, a068 <=s (6656)@16, (-6656)@16 <=s a069, a069 <=s (6656)@16,
(-6656)@16 <=s a070, a070 <=s (6656)@16, (-6656)@16 <=s a071, a071 <=s (6656)@16,
(-6656)@16 <=s a072, a072 <=s (6656)@16, (-6656)@16 <=s a073, a073 <=s (6656)@16,
(-6656)@16 <=s a074, a074 <=s (6656)@16, (-6656)@16 <=s a075, a075 <=s (6656)@16,
(-6656)@16 <=s a076, a076 <=s (6656)@16, (-6656)@16 <=s a077, a077 <=s (6656)@16,
(-6656)@16 <=s a078, a078 <=s (6656)@16, (-6656)@16 <=s a079, a079 <=s (6656)@16,
(-6656)@16 <=s a080, a080 <=s (6656)@16, (-6656)@16 <=s a081, a081 <=s (6656)@16,
(-6656)@16 <=s a082, a082 <=s (6656)@16, (-6656)@16 <=s a083, a083 <=s (6656)@16,
(-6656)@16 <=s a084, a084 <=s (6656)@16, (-6656)@16 <=s a085, a085 <=s (6656)@16,
(-6656)@16 <=s a086, a086 <=s (6656)@16, (-6656)@16 <=s a087, a087 <=s (6656)@16,
(-6656)@16 <=s a088, a088 <=s (6656)@16, (-6656)@16 <=s a089, a089 <=s (6656)@16,
(-6656)@16 <=s a090, a090 <=s (6656)@16, (-6656)@16 <=s a091, a091 <=s (6656)@16,
(-6656)@16 <=s a092, a092 <=s (6656)@16, (-6656)@16 <=s a093, a093 <=s (6656)@16,
(-6656)@16 <=s a094, a094 <=s (6656)@16, (-6656)@16 <=s a095, a095 <=s (6656)@16,
(-6656)@16 <=s a096, a096 <=s (6656)@16, (-6656)@16 <=s a097, a097 <=s (6656)@16,
(-6656)@16 <=s a098, a098 <=s (6656)@16, (-6656)@16 <=s a099, a099 <=s (6656)@16,
(-6656)@16 <=s a100, a100 <=s (6656)@16, (-6656)@16 <=s a101, a101 <=s (6656)@16,
(-6656)@16 <=s a102, a102 <=s (6656)@16, (-6656)@16 <=s a103, a103 <=s (6656)@16,
(-6656)@16 <=s a104, a104 <=s (6656)@16, (-6656)@16 <=s a105, a105 <=s (6656)@16,
(-6656)@16 <=s a106, a106 <=s (6656)@16, (-6656)@16 <=s a107, a107 <=s (6656)@16,
(-6656)@16 <=s a108, a108 <=s (6656)@16, (-6656)@16 <=s a109, a109 <=s (6656)@16,
(-6656)@16 <=s a110, a110 <=s (6656)@16, (-6656)@16 <=s a111, a111 <=s (6656)@16,
(-6656)@16 <=s a112, a112 <=s (6656)@16, (-6656)@16 <=s a113, a113 <=s (6656)@16,
(-6656)@16 <=s a114, a114 <=s (6656)@16, (-6656)@16 <=s a115, a115 <=s (6656)@16,
(-6656)@16 <=s a116, a116 <=s (6656)@16, (-6656)@16 <=s a117, a117 <=s (6656)@16,
(-6656)@16 <=s a118, a118 <=s (6656)@16, (-6656)@16 <=s a119, a119 <=s (6656)@16,
(-6656)@16 <=s a120, a120 <=s (6656)@16, (-6656)@16 <=s a121, a121 <=s (6656)@16,
(-6656)@16 <=s a122, a122 <=s (6656)@16, (-6656)@16 <=s a123, a123 <=s (6656)@16,
(-6656)@16 <=s a124, a124 <=s (6656)@16, (-6656)@16 <=s a125, a125 <=s (6656)@16,
(-6656)@16 <=s a126, a126 <=s (6656)@16, (-6656)@16 <=s a127, a127 <=s (6656)@16,
(-6656)@16 <=s b000, b000 <=s (6656)@16, (-6656)@16 <=s b001, b001 <=s (6656)@16,
(-6656)@16 <=s b002, b002 <=s (6656)@16, (-6656)@16 <=s b003, b003 <=s (6656)@16,
(-6656)@16 <=s b004, b004 <=s (6656)@16, (-6656)@16 <=s b005, b005 <=s (6656)@16,
(-6656)@16 <=s b006, b006 <=s (6656)@16, (-6656)@16 <=s b007, b007 <=s (6656)@16,
(-6656)@16 <=s b008, b008 <=s (6656)@16, (-6656)@16 <=s b009, b009 <=s (6656)@16,
(-6656)@16 <=s b010, b010 <=s (6656)@16, (-6656)@16 <=s b011, b011 <=s (6656)@16,
(-6656)@16 <=s b012, b012 <=s (6656)@16, (-6656)@16 <=s b013, b013 <=s (6656)@16,
(-6656)@16 <=s b014, b014 <=s (6656)@16, (-6656)@16 <=s b015, b015 <=s (6656)@16,
(-6656)@16 <=s b016, b016 <=s (6656)@16, (-6656)@16 <=s b017, b017 <=s (6656)@16,
(-6656)@16 <=s b018, b018 <=s (6656)@16, (-6656)@16 <=s b019, b019 <=s (6656)@16,
(-6656)@16 <=s b020, b020 <=s (6656)@16, (-6656)@16 <=s b021, b021 <=s (6656)@16,
(-6656)@16 <=s b022, b022 <=s (6656)@16, (-6656)@16 <=s b023, b023 <=s (6656)@16,
(-6656)@16 <=s b024, b024 <=s (6656)@16, (-6656)@16 <=s b025, b025 <=s (6656)@16,
(-6656)@16 <=s b026, b026 <=s (6656)@16, (-6656)@16 <=s b027, b027 <=s (6656)@16,
(-6656)@16 <=s b028, b028 <=s (6656)@16, (-6656)@16 <=s b029, b029 <=s (6656)@16,
(-6656)@16 <=s b030, b030 <=s (6656)@16, (-6656)@16 <=s b031, b031 <=s (6656)@16,
(-6656)@16 <=s b032, b032 <=s (6656)@16, (-6656)@16 <=s b033, b033 <=s (6656)@16,
(-6656)@16 <=s b034, b034 <=s (6656)@16, (-6656)@16 <=s b035, b035 <=s (6656)@16,
(-6656)@16 <=s b036, b036 <=s (6656)@16, (-6656)@16 <=s b037, b037 <=s (6656)@16,
(-6656)@16 <=s b038, b038 <=s (6656)@16, (-6656)@16 <=s b039, b039 <=s (6656)@16,
(-6656)@16 <=s b040, b040 <=s (6656)@16, (-6656)@16 <=s b041, b041 <=s (6656)@16,
(-6656)@16 <=s b042, b042 <=s (6656)@16, (-6656)@16 <=s b043, b043 <=s (6656)@16,
(-6656)@16 <=s b044, b044 <=s (6656)@16, (-6656)@16 <=s b045, b045 <=s (6656)@16,
(-6656)@16 <=s b046, b046 <=s (6656)@16, (-6656)@16 <=s b047, b047 <=s (6656)@16,
(-6656)@16 <=s b048, b048 <=s (6656)@16, (-6656)@16 <=s b049, b049 <=s (6656)@16,
(-6656)@16 <=s b050, b050 <=s (6656)@16, (-6656)@16 <=s b051, b051 <=s (6656)@16,
(-6656)@16 <=s b052, b052 <=s (6656)@16, (-6656)@16 <=s b053, b053 <=s (6656)@16,
(-6656)@16 <=s b054, b054 <=s (6656)@16, (-6656)@16 <=s b055, b055 <=s (6656)@16,
(-6656)@16 <=s b056, b056 <=s (6656)@16, (-6656)@16 <=s b057, b057 <=s (6656)@16,
(-6656)@16 <=s b058, b058 <=s (6656)@16, (-6656)@16 <=s b059, b059 <=s (6656)@16,
(-6656)@16 <=s b060, b060 <=s (6656)@16, (-6656)@16 <=s b061, b061 <=s (6656)@16,
(-6656)@16 <=s b062, b062 <=s (6656)@16, (-6656)@16 <=s b063, b063 <=s (6656)@16,
(-6656)@16 <=s b064, b064 <=s (6656)@16, (-6656)@16 <=s b065, b065 <=s (6656)@16,
(-6656)@16 <=s b066, b066 <=s (6656)@16, (-6656)@16 <=s b067, b067 <=s (6656)@16,
(-6656)@16 <=s b068, b068 <=s (6656)@16, (-6656)@16 <=s b069, b069 <=s (6656)@16,
(-6656)@16 <=s b070, b070 <=s (6656)@16, (-6656)@16 <=s b071, b071 <=s (6656)@16,
(-6656)@16 <=s b072, b072 <=s (6656)@16, (-6656)@16 <=s b073, b073 <=s (6656)@16,
(-6656)@16 <=s b074, b074 <=s (6656)@16, (-6656)@16 <=s b075, b075 <=s (6656)@16,
(-6656)@16 <=s b076, b076 <=s (6656)@16, (-6656)@16 <=s b077, b077 <=s (6656)@16,
(-6656)@16 <=s b078, b078 <=s (6656)@16, (-6656)@16 <=s b079, b079 <=s (6656)@16,
(-6656)@16 <=s b080, b080 <=s (6656)@16, (-6656)@16 <=s b081, b081 <=s (6656)@16,
(-6656)@16 <=s b082, b082 <=s (6656)@16, (-6656)@16 <=s b083, b083 <=s (6656)@16,
(-6656)@16 <=s b084, b084 <=s (6656)@16, (-6656)@16 <=s b085, b085 <=s (6656)@16,
(-6656)@16 <=s b086, b086 <=s (6656)@16, (-6656)@16 <=s b087, b087 <=s (6656)@16,
(-6656)@16 <=s b088, b088 <=s (6656)@16, (-6656)@16 <=s b089, b089 <=s (6656)@16,
(-6656)@16 <=s b090, b090 <=s (6656)@16, (-6656)@16 <=s b091, b091 <=s (6656)@16,
(-6656)@16 <=s b092, b092 <=s (6656)@16, (-6656)@16 <=s b093, b093 <=s (6656)@16,
(-6656)@16 <=s b094, b094 <=s (6656)@16, (-6656)@16 <=s b095, b095 <=s (6656)@16,
(-6656)@16 <=s b096, b096 <=s (6656)@16, (-6656)@16 <=s b097, b097 <=s (6656)@16,
(-6656)@16 <=s b098, b098 <=s (6656)@16, (-6656)@16 <=s b099, b099 <=s (6656)@16,
(-6656)@16 <=s b100, b100 <=s (6656)@16, (-6656)@16 <=s b101, b101 <=s (6656)@16,
(-6656)@16 <=s b102, b102 <=s (6656)@16, (-6656)@16 <=s b103, b103 <=s (6656)@16,
(-6656)@16 <=s b104, b104 <=s (6656)@16, (-6656)@16 <=s b105, b105 <=s (6656)@16,
(-6656)@16 <=s b106, b106 <=s (6656)@16, (-6656)@16 <=s b107, b107 <=s (6656)@16,
(-6656)@16 <=s b108, b108 <=s (6656)@16, (-6656)@16 <=s b109, b109 <=s (6656)@16,
(-6656)@16 <=s b110, b110 <=s (6656)@16, (-6656)@16 <=s b111, b111 <=s (6656)@16,
(-6656)@16 <=s b112, b112 <=s (6656)@16, (-6656)@16 <=s b113, b113 <=s (6656)@16,
(-6656)@16 <=s b114, b114 <=s (6656)@16, (-6656)@16 <=s b115, b115 <=s (6656)@16,
(-6656)@16 <=s b116, b116 <=s (6656)@16, (-6656)@16 <=s b117, b117 <=s (6656)@16,
(-6656)@16 <=s b118, b118 <=s (6656)@16, (-6656)@16 <=s b119, b119 <=s (6656)@16,
(-6656)@16 <=s b120, b120 <=s (6656)@16, (-6656)@16 <=s b121, b121 <=s (6656)@16,
(-6656)@16 <=s b122, b122 <=s (6656)@16, (-6656)@16 <=s b123, b123 <=s (6656)@16,
(-6656)@16 <=s b124, b124 <=s (6656)@16, (-6656)@16 <=s b125, b125 <=s (6656)@16,
(-6656)@16 <=s b126, b126 <=s (6656)@16, (-6656)@16 <=s b127, b127 <=s (6656)@16,
(-6656)@16 <=s c000, c000 <=s (6656)@16, (-6656)@16 <=s c001, c001 <=s (6656)@16,
(-6656)@16 <=s c002, c002 <=s (6656)@16, (-6656)@16 <=s c003, c003 <=s (6656)@16,
(-6656)@16 <=s c004, c004 <=s (6656)@16, (-6656)@16 <=s c005, c005 <=s (6656)@16,
(-6656)@16 <=s c006, c006 <=s (6656)@16, (-6656)@16 <=s c007, c007 <=s (6656)@16,
(-6656)@16 <=s c008, c008 <=s (6656)@16, (-6656)@16 <=s c009, c009 <=s (6656)@16,
(-6656)@16 <=s c010, c010 <=s (6656)@16, (-6656)@16 <=s c011, c011 <=s (6656)@16,
(-6656)@16 <=s c012, c012 <=s (6656)@16, (-6656)@16 <=s c013, c013 <=s (6656)@16,
(-6656)@16 <=s c014, c014 <=s (6656)@16, (-6656)@16 <=s c015, c015 <=s (6656)@16,
(-6656)@16 <=s c016, c016 <=s (6656)@16, (-6656)@16 <=s c017, c017 <=s (6656)@16,
(-6656)@16 <=s c018, c018 <=s (6656)@16, (-6656)@16 <=s c019, c019 <=s (6656)@16,
(-6656)@16 <=s c020, c020 <=s (6656)@16, (-6656)@16 <=s c021, c021 <=s (6656)@16,
(-6656)@16 <=s c022, c022 <=s (6656)@16, (-6656)@16 <=s c023, c023 <=s (6656)@16,
(-6656)@16 <=s c024, c024 <=s (6656)@16, (-6656)@16 <=s c025, c025 <=s (6656)@16,
(-6656)@16 <=s c026, c026 <=s (6656)@16, (-6656)@16 <=s c027, c027 <=s (6656)@16,
(-6656)@16 <=s c028, c028 <=s (6656)@16, (-6656)@16 <=s c029, c029 <=s (6656)@16,
(-6656)@16 <=s c030, c030 <=s (6656)@16, (-6656)@16 <=s c031, c031 <=s (6656)@16,
(-6656)@16 <=s c032, c032 <=s (6656)@16, (-6656)@16 <=s c033, c033 <=s (6656)@16,
(-6656)@16 <=s c034, c034 <=s (6656)@16, (-6656)@16 <=s c035, c035 <=s (6656)@16,
(-6656)@16 <=s c036, c036 <=s (6656)@16, (-6656)@16 <=s c037, c037 <=s (6656)@16,
(-6656)@16 <=s c038, c038 <=s (6656)@16, (-6656)@16 <=s c039, c039 <=s (6656)@16,
(-6656)@16 <=s c040, c040 <=s (6656)@16, (-6656)@16 <=s c041, c041 <=s (6656)@16,
(-6656)@16 <=s c042, c042 <=s (6656)@16, (-6656)@16 <=s c043, c043 <=s (6656)@16,
(-6656)@16 <=s c044, c044 <=s (6656)@16, (-6656)@16 <=s c045, c045 <=s (6656)@16,
(-6656)@16 <=s c046, c046 <=s (6656)@16, (-6656)@16 <=s c047, c047 <=s (6656)@16,
(-6656)@16 <=s c048, c048 <=s (6656)@16, (-6656)@16 <=s c049, c049 <=s (6656)@16,
(-6656)@16 <=s c050, c050 <=s (6656)@16, (-6656)@16 <=s c051, c051 <=s (6656)@16,
(-6656)@16 <=s c052, c052 <=s (6656)@16, (-6656)@16 <=s c053, c053 <=s (6656)@16,
(-6656)@16 <=s c054, c054 <=s (6656)@16, (-6656)@16 <=s c055, c055 <=s (6656)@16,
(-6656)@16 <=s c056, c056 <=s (6656)@16, (-6656)@16 <=s c057, c057 <=s (6656)@16,
(-6656)@16 <=s c058, c058 <=s (6656)@16, (-6656)@16 <=s c059, c059 <=s (6656)@16,
(-6656)@16 <=s c060, c060 <=s (6656)@16, (-6656)@16 <=s c061, c061 <=s (6656)@16,
(-6656)@16 <=s c062, c062 <=s (6656)@16, (-6656)@16 <=s c063, c063 <=s (6656)@16,
(-6656)@16 <=s c064, c064 <=s (6656)@16, (-6656)@16 <=s c065, c065 <=s (6656)@16,
(-6656)@16 <=s c066, c066 <=s (6656)@16, (-6656)@16 <=s c067, c067 <=s (6656)@16,
(-6656)@16 <=s c068, c068 <=s (6656)@16, (-6656)@16 <=s c069, c069 <=s (6656)@16,
(-6656)@16 <=s c070, c070 <=s (6656)@16, (-6656)@16 <=s c071, c071 <=s (6656)@16,
(-6656)@16 <=s c072, c072 <=s (6656)@16, (-6656)@16 <=s c073, c073 <=s (6656)@16,
(-6656)@16 <=s c074, c074 <=s (6656)@16, (-6656)@16 <=s c075, c075 <=s (6656)@16,
(-6656)@16 <=s c076, c076 <=s (6656)@16, (-6656)@16 <=s c077, c077 <=s (6656)@16,
(-6656)@16 <=s c078, c078 <=s (6656)@16, (-6656)@16 <=s c079, c079 <=s (6656)@16,
(-6656)@16 <=s c080, c080 <=s (6656)@16, (-6656)@16 <=s c081, c081 <=s (6656)@16,
(-6656)@16 <=s c082, c082 <=s (6656)@16, (-6656)@16 <=s c083, c083 <=s (6656)@16,
(-6656)@16 <=s c084, c084 <=s (6656)@16, (-6656)@16 <=s c085, c085 <=s (6656)@16,
(-6656)@16 <=s c086, c086 <=s (6656)@16, (-6656)@16 <=s c087, c087 <=s (6656)@16,
(-6656)@16 <=s c088, c088 <=s (6656)@16, (-6656)@16 <=s c089, c089 <=s (6656)@16,
(-6656)@16 <=s c090, c090 <=s (6656)@16, (-6656)@16 <=s c091, c091 <=s (6656)@16,
(-6656)@16 <=s c092, c092 <=s (6656)@16, (-6656)@16 <=s c093, c093 <=s (6656)@16,
(-6656)@16 <=s c094, c094 <=s (6656)@16, (-6656)@16 <=s c095, c095 <=s (6656)@16,
(-6656)@16 <=s c096, c096 <=s (6656)@16, (-6656)@16 <=s c097, c097 <=s (6656)@16,
(-6656)@16 <=s c098, c098 <=s (6656)@16, (-6656)@16 <=s c099, c099 <=s (6656)@16,
(-6656)@16 <=s c100, c100 <=s (6656)@16, (-6656)@16 <=s c101, c101 <=s (6656)@16,
(-6656)@16 <=s c102, c102 <=s (6656)@16, (-6656)@16 <=s c103, c103 <=s (6656)@16,
(-6656)@16 <=s c104, c104 <=s (6656)@16, (-6656)@16 <=s c105, c105 <=s (6656)@16,
(-6656)@16 <=s c106, c106 <=s (6656)@16, (-6656)@16 <=s c107, c107 <=s (6656)@16,
(-6656)@16 <=s c108, c108 <=s (6656)@16, (-6656)@16 <=s c109, c109 <=s (6656)@16,
(-6656)@16 <=s c110, c110 <=s (6656)@16, (-6656)@16 <=s c111, c111 <=s (6656)@16,
(-6656)@16 <=s c112, c112 <=s (6656)@16, (-6656)@16 <=s c113, c113 <=s (6656)@16,
(-6656)@16 <=s c114, c114 <=s (6656)@16, (-6656)@16 <=s c115, c115 <=s (6656)@16,
(-6656)@16 <=s c116, c116 <=s (6656)@16, (-6656)@16 <=s c117, c117 <=s (6656)@16,
(-6656)@16 <=s c118, c118 <=s (6656)@16, (-6656)@16 <=s c119, c119 <=s (6656)@16,
(-6656)@16 <=s c120, c120 <=s (6656)@16, (-6656)@16 <=s c121, c121 <=s (6656)@16,
(-6656)@16 <=s c122, c122 <=s (6656)@16, (-6656)@16 <=s c123, c123 <=s (6656)@16,
(-6656)@16 <=s c124, c124 <=s (6656)@16, (-6656)@16 <=s c125, c125 <=s (6656)@16,
(-6656)@16 <=s c126, c126 <=s (6656)@16, (-6656)@16 <=s c127, c127 <=s (6656)@16,
(-6656)@16 <=s d000, d000 <=s (6656)@16, (-6656)@16 <=s d001, d001 <=s (6656)@16,
(-6656)@16 <=s d002, d002 <=s (6656)@16, (-6656)@16 <=s d003, d003 <=s (6656)@16,
(-6656)@16 <=s d004, d004 <=s (6656)@16, (-6656)@16 <=s d005, d005 <=s (6656)@16,
(-6656)@16 <=s d006, d006 <=s (6656)@16, (-6656)@16 <=s d007, d007 <=s (6656)@16,
(-6656)@16 <=s d008, d008 <=s (6656)@16, (-6656)@16 <=s d009, d009 <=s (6656)@16,
(-6656)@16 <=s d010, d010 <=s (6656)@16, (-6656)@16 <=s d011, d011 <=s (6656)@16,
(-6656)@16 <=s d012, d012 <=s (6656)@16, (-6656)@16 <=s d013, d013 <=s (6656)@16,
(-6656)@16 <=s d014, d014 <=s (6656)@16, (-6656)@16 <=s d015, d015 <=s (6656)@16,
(-6656)@16 <=s d016, d016 <=s (6656)@16, (-6656)@16 <=s d017, d017 <=s (6656)@16,
(-6656)@16 <=s d018, d018 <=s (6656)@16, (-6656)@16 <=s d019, d019 <=s (6656)@16,
(-6656)@16 <=s d020, d020 <=s (6656)@16, (-6656)@16 <=s d021, d021 <=s (6656)@16,
(-6656)@16 <=s d022, d022 <=s (6656)@16, (-6656)@16 <=s d023, d023 <=s (6656)@16,
(-6656)@16 <=s d024, d024 <=s (6656)@16, (-6656)@16 <=s d025, d025 <=s (6656)@16,
(-6656)@16 <=s d026, d026 <=s (6656)@16, (-6656)@16 <=s d027, d027 <=s (6656)@16,
(-6656)@16 <=s d028, d028 <=s (6656)@16, (-6656)@16 <=s d029, d029 <=s (6656)@16,
(-6656)@16 <=s d030, d030 <=s (6656)@16, (-6656)@16 <=s d031, d031 <=s (6656)@16,
(-6656)@16 <=s d032, d032 <=s (6656)@16, (-6656)@16 <=s d033, d033 <=s (6656)@16,
(-6656)@16 <=s d034, d034 <=s (6656)@16, (-6656)@16 <=s d035, d035 <=s (6656)@16,
(-6656)@16 <=s d036, d036 <=s (6656)@16, (-6656)@16 <=s d037, d037 <=s (6656)@16,
(-6656)@16 <=s d038, d038 <=s (6656)@16, (-6656)@16 <=s d039, d039 <=s (6656)@16,
(-6656)@16 <=s d040, d040 <=s (6656)@16, (-6656)@16 <=s d041, d041 <=s (6656)@16,
(-6656)@16 <=s d042, d042 <=s (6656)@16, (-6656)@16 <=s d043, d043 <=s (6656)@16,
(-6656)@16 <=s d044, d044 <=s (6656)@16, (-6656)@16 <=s d045, d045 <=s (6656)@16,
(-6656)@16 <=s d046, d046 <=s (6656)@16, (-6656)@16 <=s d047, d047 <=s (6656)@16,
(-6656)@16 <=s d048, d048 <=s (6656)@16, (-6656)@16 <=s d049, d049 <=s (6656)@16,
(-6656)@16 <=s d050, d050 <=s (6656)@16, (-6656)@16 <=s d051, d051 <=s (6656)@16,
(-6656)@16 <=s d052, d052 <=s (6656)@16, (-6656)@16 <=s d053, d053 <=s (6656)@16,
(-6656)@16 <=s d054, d054 <=s (6656)@16, (-6656)@16 <=s d055, d055 <=s (6656)@16,
(-6656)@16 <=s d056, d056 <=s (6656)@16, (-6656)@16 <=s d057, d057 <=s (6656)@16,
(-6656)@16 <=s d058, d058 <=s (6656)@16, (-6656)@16 <=s d059, d059 <=s (6656)@16,
(-6656)@16 <=s d060, d060 <=s (6656)@16, (-6656)@16 <=s d061, d061 <=s (6656)@16,
(-6656)@16 <=s d062, d062 <=s (6656)@16, (-6656)@16 <=s d063, d063 <=s (6656)@16,
(-6656)@16 <=s d064, d064 <=s (6656)@16, (-6656)@16 <=s d065, d065 <=s (6656)@16,
(-6656)@16 <=s d066, d066 <=s (6656)@16, (-6656)@16 <=s d067, d067 <=s (6656)@16,
(-6656)@16 <=s d068, d068 <=s (6656)@16, (-6656)@16 <=s d069, d069 <=s (6656)@16,
(-6656)@16 <=s d070, d070 <=s (6656)@16, (-6656)@16 <=s d071, d071 <=s (6656)@16,
(-6656)@16 <=s d072, d072 <=s (6656)@16, (-6656)@16 <=s d073, d073 <=s (6656)@16,
(-6656)@16 <=s d074, d074 <=s (6656)@16, (-6656)@16 <=s d075, d075 <=s (6656)@16,
(-6656)@16 <=s d076, d076 <=s (6656)@16, (-6656)@16 <=s d077, d077 <=s (6656)@16,
(-6656)@16 <=s d078, d078 <=s (6656)@16, (-6656)@16 <=s d079, d079 <=s (6656)@16,
(-6656)@16 <=s d080, d080 <=s (6656)@16, (-6656)@16 <=s d081, d081 <=s (6656)@16,
(-6656)@16 <=s d082, d082 <=s (6656)@16, (-6656)@16 <=s d083, d083 <=s (6656)@16,
(-6656)@16 <=s d084, d084 <=s (6656)@16, (-6656)@16 <=s d085, d085 <=s (6656)@16,
(-6656)@16 <=s d086, d086 <=s (6656)@16, (-6656)@16 <=s d087, d087 <=s (6656)@16,
(-6656)@16 <=s d088, d088 <=s (6656)@16, (-6656)@16 <=s d089, d089 <=s (6656)@16,
(-6656)@16 <=s d090, d090 <=s (6656)@16, (-6656)@16 <=s d091, d091 <=s (6656)@16,
(-6656)@16 <=s d092, d092 <=s (6656)@16, (-6656)@16 <=s d093, d093 <=s (6656)@16,
(-6656)@16 <=s d094, d094 <=s (6656)@16, (-6656)@16 <=s d095, d095 <=s (6656)@16,
(-6656)@16 <=s d096, d096 <=s (6656)@16, (-6656)@16 <=s d097, d097 <=s (6656)@16,
(-6656)@16 <=s d098, d098 <=s (6656)@16, (-6656)@16 <=s d099, d099 <=s (6656)@16,
(-6656)@16 <=s d100, d100 <=s (6656)@16, (-6656)@16 <=s d101, d101 <=s (6656)@16,
(-6656)@16 <=s d102, d102 <=s (6656)@16, (-6656)@16 <=s d103, d103 <=s (6656)@16,
(-6656)@16 <=s d104, d104 <=s (6656)@16, (-6656)@16 <=s d105, d105 <=s (6656)@16,
(-6656)@16 <=s d106, d106 <=s (6656)@16, (-6656)@16 <=s d107, d107 <=s (6656)@16,
(-6656)@16 <=s d108, d108 <=s (6656)@16, (-6656)@16 <=s d109, d109 <=s (6656)@16,
(-6656)@16 <=s d110, d110 <=s (6656)@16, (-6656)@16 <=s d111, d111 <=s (6656)@16,
(-6656)@16 <=s d112, d112 <=s (6656)@16, (-6656)@16 <=s d113, d113 <=s (6656)@16,
(-6656)@16 <=s d114, d114 <=s (6656)@16, (-6656)@16 <=s d115, d115 <=s (6656)@16,
(-6656)@16 <=s d116, d116 <=s (6656)@16, (-6656)@16 <=s d117, d117 <=s (6656)@16,
(-6656)@16 <=s d118, d118 <=s (6656)@16, (-6656)@16 <=s d119, d119 <=s (6656)@16,
(-6656)@16 <=s d120, d120 <=s (6656)@16, (-6656)@16 <=s d121, d121 <=s (6656)@16,
(-6656)@16 <=s d122, d122 <=s (6656)@16, (-6656)@16 <=s d123, d123 <=s (6656)@16,
(-6656)@16 <=s d124, d124 <=s (6656)@16, (-6656)@16 <=s d125, d125 <=s (6656)@16,
(-6656)@16 <=s d126, d126 <=s (6656)@16, (-6656)@16 <=s d127, d127 <=s (6656)@16
]
}
