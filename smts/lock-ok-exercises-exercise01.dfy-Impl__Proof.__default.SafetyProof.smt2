(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.case_split 3)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :smt.arith.solver 2)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun U_2_int (T@U) Int)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun boolType () T@T)
(declare-fun rmodeType () T@T)
(declare-fun stringType () T@T)
(declare-fun regexType () T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun type (T@U) T@T)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun rmode_2_U (RoundingMode) T@U)
(declare-fun U_2_rmode (T@U) RoundingMode)
(declare-fun string_2_U (String) T@U)
(declare-fun U_2_string (T@U) String)
(declare-fun regex_2_U ((RegEx String)) T@U)
(declare-fun U_2_regex (T@U) (RegEx String))
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TORDINAL () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagORDINAL () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun TagClass () T@U)
(declare-fun class._System.int () T@U)
(declare-fun class._System.bool () T@U)
(declare-fun class._System.set () T@U)
(declare-fun class._System.seq () T@U)
(declare-fun class._System.multiset () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun class._System.object? () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._System.array? () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun class._System.__default () T@U)
(declare-fun Tagclass._System.__default () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun Tagclass._System.___hFunc3 () T@U)
(declare-fun Tagclass._System.___hPartialFunc3 () T@U)
(declare-fun Tagclass._System.___hTotalFunc3 () T@U)
(declare-fun Tagclass._System.___hFunc4 () T@U)
(declare-fun Tagclass._System.___hPartialFunc4 () T@U)
(declare-fun Tagclass._System.___hTotalFunc4 () T@U)
(declare-fun Tagclass._System.___hFunc5 () T@U)
(declare-fun Tagclass._System.___hPartialFunc5 () T@U)
(declare-fun Tagclass._System.___hTotalFunc5 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun class._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#0._#Make0| () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun class._System.Tuple0 () T@U)
(declare-fun class.Proof.__default () T@U)
(declare-fun Tagclass.Proof.__default () T@U)
(declare-fun Tagclass.DistributedSystem.Constants () T@U)
(declare-fun Tagclass.DistributedSystem.Variables () T@U)
(declare-fun Tagclass.Host.Message () T@U)
(declare-fun Tagclass.Network.MessageOps () T@U)
(declare-fun Tagclass.DistributedSystem.Step () T@U)
(declare-fun Tagclass.Host.Step () T@U)
(declare-fun Tagclass.Host.Constants () T@U)
(declare-fun Tagclass.Host.Variables () T@U)
(declare-fun class.HostIdentifiers.__default () T@U)
(declare-fun Tagclass.HostIdentifiers.__default () T@U)
(declare-fun |##UtilitiesLibrary.Option.Some| () T@U)
(declare-fun Tagclass.UtilitiesLibrary.Option () T@U)
(declare-fun |##UtilitiesLibrary.Option.None| () T@U)
(declare-fun class.UtilitiesLibrary.Option () T@U)
(declare-fun |##UtilitiesLibrary.Direction.North| () T@U)
(declare-fun Tagclass.UtilitiesLibrary.Direction () T@U)
(declare-fun |##UtilitiesLibrary.Direction.East| () T@U)
(declare-fun |##UtilitiesLibrary.Direction.South| () T@U)
(declare-fun |##UtilitiesLibrary.Direction.West| () T@U)
(declare-fun class.UtilitiesLibrary.Direction () T@U)
(declare-fun |##UtilitiesLibrary.Meat.Salami| () T@U)
(declare-fun Tagclass.UtilitiesLibrary.Meat () T@U)
(declare-fun |##UtilitiesLibrary.Meat.Ham| () T@U)
(declare-fun class.UtilitiesLibrary.Meat () T@U)
(declare-fun |##UtilitiesLibrary.Cheese.Provolone| () T@U)
(declare-fun Tagclass.UtilitiesLibrary.Cheese () T@U)
(declare-fun |##UtilitiesLibrary.Cheese.Swiss| () T@U)
(declare-fun |##UtilitiesLibrary.Cheese.Cheddar| () T@U)
(declare-fun |##UtilitiesLibrary.Cheese.Jack| () T@U)
(declare-fun class.UtilitiesLibrary.Cheese () T@U)
(declare-fun |##UtilitiesLibrary.Veggie.Olive| () T@U)
(declare-fun Tagclass.UtilitiesLibrary.Veggie () T@U)
(declare-fun |##UtilitiesLibrary.Veggie.Onion| () T@U)
(declare-fun |##UtilitiesLibrary.Veggie.Pepper| () T@U)
(declare-fun class.UtilitiesLibrary.Veggie () T@U)
(declare-fun |##UtilitiesLibrary.Order.Sandwich| () T@U)
(declare-fun Tagclass.UtilitiesLibrary.Order () T@U)
(declare-fun |##UtilitiesLibrary.Order.Pizza| () T@U)
(declare-fun |##UtilitiesLibrary.Order.Appetizer| () T@U)
(declare-fun class.UtilitiesLibrary.Order () T@U)
(declare-fun class.UtilitiesLibrary.__default () T@U)
(declare-fun Tagclass.UtilitiesLibrary.__default () T@U)
(declare-fun |##Network.MessageOps.MessageOps| () T@U)
(declare-fun class.Network.MessageOps () T@U)
(declare-fun |##Network.Constants.Constants| () T@U)
(declare-fun Tagclass.Network.Constants () T@U)
(declare-fun class.Network.Constants () T@U)
(declare-fun |##Network.Variables.Variables| () T@U)
(declare-fun Tagclass.Network.Variables () T@U)
(declare-fun class.Network.Variables () T@U)
(declare-fun class.Network.__default () T@U)
(declare-fun Tagclass.Network.__default () T@U)
(declare-fun |##Host.Message.GrantMsg| () T@U)
(declare-fun class.Host.Message () T@U)
(declare-fun |##Host.Constants.Constants| () T@U)
(declare-fun class.Host.Constants () T@U)
(declare-fun |##Host.Variables.Variables| () T@U)
(declare-fun class.Host.Variables () T@U)
(declare-fun |##Host.Step.SendGrantStep| () T@U)
(declare-fun |##Host.Step.RecvGrantStep| () T@U)
(declare-fun class.Host.Step () T@U)
(declare-fun class.Host.__default () T@U)
(declare-fun Tagclass.Host.__default () T@U)
(declare-fun |##DistributedSystem.Constants.Constants| () T@U)
(declare-fun class.DistributedSystem.Constants () T@U)
(declare-fun |##DistributedSystem.Variables.Variables| () T@U)
(declare-fun class.DistributedSystem.Variables () T@U)
(declare-fun |##DistributedSystem.Step.Step| () T@U)
(declare-fun class.DistributedSystem.Step () T@U)
(declare-fun class.DistributedSystem.__default () T@U)
(declare-fun Tagclass.DistributedSystem.__default () T@U)
(declare-fun class.SafetySpec.__default () T@U)
(declare-fun Tagclass.SafetySpec.__default () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun tytagFamily$_default () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
(declare-fun |tytagFamily$_#Func3| () T@U)
(declare-fun |tytagFamily$_#PartialFunc3| () T@U)
(declare-fun |tytagFamily$_#TotalFunc3| () T@U)
(declare-fun |tytagFamily$_#Func4| () T@U)
(declare-fun |tytagFamily$_#PartialFunc4| () T@U)
(declare-fun |tytagFamily$_#TotalFunc4| () T@U)
(declare-fun |tytagFamily$_#Func5| () T@U)
(declare-fun |tytagFamily$_#PartialFunc5| () T@U)
(declare-fun |tytagFamily$_#TotalFunc5| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
(declare-fun tytagFamily$Constants () T@U)
(declare-fun tytagFamily$Variables () T@U)
(declare-fun tytagFamily$Message () T@U)
(declare-fun tytagFamily$MessageOps () T@U)
(declare-fun tytagFamily$Step () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$Direction () T@U)
(declare-fun tytagFamily$Meat () T@U)
(declare-fun tytagFamily$Cheese () T@U)
(declare-fun tytagFamily$Veggie () T@U)
(declare-fun tytagFamily$Order () T@U)
(declare-fun TyType () T@T)
(declare-fun TyTagType () T@T)
(declare-fun ClassNameType () T@T)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun NameFamilyType () T@T)
(declare-fun DtCtorIdType () T@T)
(declare-fun TyTagFamilyType () T@T)
(declare-fun $$Language$Dafny () Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun TSet (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TISet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Lit (T@U) T@U)
(declare-fun $Box (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun |char#Minus| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@U T@U) Bool)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun SeqType (T@T) T@T)
(declare-fun SeqTypeInv0 (T@T) T@T)
(declare-fun MapType (T@T T@T) T@T)
(declare-fun MapTypeInv0 (T@T) T@T)
(declare-fun MapTypeInv1 (T@T) T@T)
(declare-fun IMapType (T@T T@T) T@T)
(declare-fun IMapTypeInv0 (T@T) T@T)
(declare-fun IMapTypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun MapType1Type () T@T)
(declare-fun $IsAlloc (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun TypeTuple (T@U T@U) T@U)
(declare-fun TypeTupleCar (T@U) T@U)
(declare-fun TypeTupleCdr (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun DtRank (T@U) Int)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |ORD#Plus| (T@U T@U) T@U)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun AtLayer (T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $LS (T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun FieldOfDecl (T@T T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun q@Int (Real) Int)
(declare-fun q@Real (Int) Real)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |ISet#Empty| (T@T) T@U)
(declare-fun |ISet#UnionOne| (T@U T@U) T@U)
(declare-fun |ISet#Union| (T@U T@U) T@U)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
(declare-fun |ISet#Subset| (T@U T@U) Bool)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| (T@T) T@U)
(declare-fun |MultiSet#Singleton| (T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Disjoint| (T@U T@U) Bool)
(declare-fun |MultiSet#FromSet| (T@U) T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| (T@T) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |Seq#Singleton| (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Map#Empty| (T@T T@T) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Disjoint| (T@U T@U) Bool)
(declare-fun |IMap#Empty| (T@T T@T) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun |IMap#Build| (T@U T@U T@U) T@U)
(declare-fun |IMap#Equal| (T@U T@U) Bool)
(declare-fun |IMap#Merge| (T@U T@U) T@U)
(declare-fun |IMap#Subtract| (T@U T@U) T@U)
(declare-fun INTERNAL_add_boogie (Int Int) Int)
(declare-fun INTERNAL_sub_boogie (Int Int) Int)
(declare-fun INTERNAL_mul_boogie (Int Int) Int)
(declare-fun INTERNAL_div_boogie (Int Int) Int)
(declare-fun INTERNAL_mod_boogie (Int Int) Int)
(declare-fun INTERNAL_lt_boogie (Int Int) Bool)
(declare-fun INTERNAL_le_boogie (Int Int) Bool)
(declare-fun INTERNAL_gt_boogie (Int Int) Bool)
(declare-fun INTERNAL_ge_boogie (Int Int) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun Div (Int Int) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun Add (Int Int) Int)
(declare-fun Sub (Int Int) Int)
(declare-fun _System.__default.rank__is__less__than (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun null () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType2Type (T@T T@T T@T) T@T)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2TypeInv2 (T@T) T@T)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.__default () T@U)
(declare-fun |_System.__default.rank__is__less__than#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |_System.__default.rank__is__less__than#requires| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun MapType3Type (T@T T@T T@T T@T) T@T)
(declare-fun MapType3Select (T@U T@U T@U T@U) T@U)
(declare-fun MapType3TypeInv0 (T@T) T@T)
(declare-fun MapType3TypeInv1 (T@T) T@T)
(declare-fun MapType3TypeInv2 (T@T) T@T)
(declare-fun MapType3TypeInv3 (T@T) T@T)
(declare-fun MapType3Store (T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc3_3 (T@U) T@U)
(declare-fun Apply3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle3 (T@U T@U T@U) T@U)
(declare-fun MapType4Type (T@T T@T T@T T@T T@T) T@T)
(declare-fun MapType4Select (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType4TypeInv0 (T@T) T@T)
(declare-fun MapType4TypeInv1 (T@T) T@T)
(declare-fun MapType4TypeInv2 (T@T) T@T)
(declare-fun MapType4TypeInv3 (T@T) T@T)
(declare-fun MapType4TypeInv4 (T@T) T@T)
(declare-fun MapType4Store (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Reads3 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3 (T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc3_3 (T@U) T@U)
(declare-fun Tclass._System.___hFunc4 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc4_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc4_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc4_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc4_3 (T@U) T@U)
(declare-fun Tclass._System.___hFunc4_4 (T@U) T@U)
(declare-fun Apply4 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle4 (T@U T@U T@U) T@U)
(declare-fun MapType5Type (T@T T@T T@T T@T T@T T@T) T@T)
(declare-fun MapType5Select (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType5TypeInv0 (T@T) T@T)
(declare-fun MapType5TypeInv1 (T@T) T@T)
(declare-fun MapType5TypeInv2 (T@T) T@T)
(declare-fun MapType5TypeInv3 (T@T) T@T)
(declare-fun MapType5TypeInv4 (T@T) T@T)
(declare-fun MapType5TypeInv5 (T@T) T@T)
(declare-fun MapType5Store (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires4 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Reads4 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc4 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc4_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc4_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc4_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc4_3 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc4_4 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc4 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc4_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc4_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc4_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc4_3 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc4_4 (T@U) T@U)
(declare-fun Tclass._System.___hFunc5 (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc5_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc5_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc5_2 (T@U) T@U)
(declare-fun Tclass._System.___hFunc5_3 (T@U) T@U)
(declare-fun Tclass._System.___hFunc5_4 (T@U) T@U)
(declare-fun Tclass._System.___hFunc5_5 (T@U) T@U)
(declare-fun Apply5 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle5 (T@U T@U T@U) T@U)
(declare-fun MapType6Type (T@T T@T T@T T@T T@T T@T T@T) T@T)
(declare-fun MapType6Select (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType6TypeInv0 (T@T) T@T)
(declare-fun MapType6TypeInv1 (T@T) T@T)
(declare-fun MapType6TypeInv2 (T@T) T@T)
(declare-fun MapType6TypeInv3 (T@T) T@T)
(declare-fun MapType6TypeInv4 (T@T) T@T)
(declare-fun MapType6TypeInv5 (T@T) T@T)
(declare-fun MapType6TypeInv6 (T@T) T@T)
(declare-fun MapType6Store (T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires5 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Reads5 (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5 (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5_3 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5_4 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc5_5 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5 (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5_3 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5_4 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc5_5 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun |#_System._tuple#0._#Make0| () T@U)
(declare-fun _System.Tuple0.___hMake0_q (T@U) Bool)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun |$IsA#_System.Tuple0| (T@U) Bool)
(declare-fun |_System.Tuple0#Equal| (T@U T@U) Bool)
(declare-fun Tclass.Proof.__default () T@U)
(declare-fun Tclass.DistributedSystem.Constants () T@U)
(declare-fun Tclass.DistributedSystem.Variables () T@U)
(declare-fun Tclass.Host.Message () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Proof.__default.InFlight (T@U T@U T@U) Bool)
(declare-fun |Proof.__default.InFlight#canCall| (T@U T@U T@U) Bool)
(declare-fun |Proof.__default.InFlight#requires| (T@U T@U T@U) Bool)
(declare-fun |DistributedSystem.Variables.WF#canCall| (T@U T@U) Bool)
(declare-fun DistributedSystem.Variables.WF (T@U T@U) Bool)
(declare-fun DistributedSystem.Variables.Variables_q (T@U) Bool)
(declare-fun Network.Variables.Variables_q (T@U) Bool)
(declare-fun DistributedSystem.Variables.network (T@U) T@U)
(declare-fun Network.Variables.sentMsgs (T@U) T@U)
(declare-fun Host.Message.GrantMsg_q (T@U) Bool)
(declare-fun |DistributedSystem.Constants.ValidHostId#canCall| (T@U Int) Bool)
(declare-fun Host.Message.dest (T@U) Int)
(declare-fun DistributedSystem.Constants.ValidHostId (T@U Int) Bool)
(declare-fun Host.Variables.Variables_q (T@U) Bool)
(declare-fun DistributedSystem.Variables.hosts (T@U) T@U)
(declare-fun Host.Message.epoch (T@U) Int)
(declare-fun Host.Variables.epoch (T@U) Int)
(declare-fun Proof.__default.InFlightGrantImpliesNoLockHolder (T@U T@U) Bool)
(declare-fun |Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| (T@U T@U) Bool)
(declare-fun |Proof.__default.InFlightGrantImpliesNoLockHolder#requires| (T@U T@U) Bool)
(declare-fun Host.Variables.holder (T@U) Bool)
(declare-fun Proof.__default.LockHolderHasHighestEpoch (T@U T@U) Bool)
(declare-fun |Proof.__default.LockHolderHasHighestEpoch#canCall| (T@U T@U) Bool)
(declare-fun |Proof.__default.LockHolderHasHighestEpoch#requires| (T@U T@U) Bool)
(declare-fun Proof.__default.InFlightGrantHasHighestEpoch (T@U T@U) Bool)
(declare-fun |Proof.__default.InFlightGrantHasHighestEpoch#canCall| (T@U T@U) Bool)
(declare-fun |Proof.__default.InFlightGrantHasHighestEpoch#requires| (T@U T@U) Bool)
(declare-fun Proof.__default.NoTwoInFlightGrants (T@U T@U) Bool)
(declare-fun |Proof.__default.NoTwoInFlightGrants#canCall| (T@U T@U) Bool)
(declare-fun |Proof.__default.NoTwoInFlightGrants#requires| (T@U T@U) Bool)
(declare-fun |$IsA#Host.Message| (T@U) Bool)
(declare-fun |Host.Message#Equal| (T@U T@U) Bool)
(declare-fun Proof.__default.Inv (T@U T@U) Bool)
(declare-fun |Proof.__default.Inv#canCall| (T@U T@U) Bool)
(declare-fun |Proof.__default.Inv#requires| (T@U T@U) Bool)
(declare-fun |SafetySpec.__default.Safety#canCall| (T@U T@U) Bool)
(declare-fun SafetySpec.__default.Safety (T@U T@U) Bool)
(declare-fun Tclass.Network.MessageOps (T@U) T@U)
(declare-fun Tclass.Network.MessageOps_0 (T@U) T@U)
(declare-fun Tclass.DistributedSystem.Step () T@U)
(declare-fun Tclass.Host.Step () T@U)
(declare-fun Tclass.Host.Constants () T@U)
(declare-fun Tclass.Host.Variables () T@U)
(declare-fun Tclass.HostIdentifiers.__default () T@U)
(declare-fun HostIdentifiers.__default.ValidHostId (Int Int) Bool)
(declare-fun |HostIdentifiers.__default.ValidHostId#canCall| (Int Int) Bool)
(declare-fun |HostIdentifiers.__default.ValidHostId#requires| (Int Int) Bool)
(declare-fun HostIdentifiers.__default.AllHosts (Int) T@U)
(declare-fun |HostIdentifiers.__default.AllHosts#canCall| (Int) Bool)
(declare-fun |HostIdentifiers.__default.AllHosts#requires| (Int) Bool)
(declare-fun |lambda#13| (T@U Int Int Int) T@U)
(declare-fun |#UtilitiesLibrary.Option.Some| (T@U) T@U)
(declare-fun UtilitiesLibrary.Option.Some_q (T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.Option (T@U) T@U)
(declare-fun Tclass.UtilitiesLibrary.Option_0 (T@U) T@U)
(declare-fun UtilitiesLibrary.Option.value (T@U) T@U)
(declare-fun |#UtilitiesLibrary.Option.None| () T@U)
(declare-fun UtilitiesLibrary.Option.None_q (T@U) Bool)
(declare-fun |$IsA#UtilitiesLibrary.Option| (T@U) Bool)
(declare-fun |UtilitiesLibrary.Option#Equal| (T@U T@U) Bool)
(declare-fun |#UtilitiesLibrary.Direction.North| () T@U)
(declare-fun UtilitiesLibrary.Direction.North_q (T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.Direction () T@U)
(declare-fun |#UtilitiesLibrary.Direction.East| () T@U)
(declare-fun UtilitiesLibrary.Direction.East_q (T@U) Bool)
(declare-fun |#UtilitiesLibrary.Direction.South| () T@U)
(declare-fun UtilitiesLibrary.Direction.South_q (T@U) Bool)
(declare-fun |#UtilitiesLibrary.Direction.West| () T@U)
(declare-fun UtilitiesLibrary.Direction.West_q (T@U) Bool)
(declare-fun |$IsA#UtilitiesLibrary.Direction| (T@U) Bool)
(declare-fun |UtilitiesLibrary.Direction#Equal| (T@U T@U) Bool)
(declare-fun |#UtilitiesLibrary.Meat.Salami| () T@U)
(declare-fun UtilitiesLibrary.Meat.Salami_q (T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.Meat () T@U)
(declare-fun |#UtilitiesLibrary.Meat.Ham| () T@U)
(declare-fun UtilitiesLibrary.Meat.Ham_q (T@U) Bool)
(declare-fun |$IsA#UtilitiesLibrary.Meat| (T@U) Bool)
(declare-fun |UtilitiesLibrary.Meat#Equal| (T@U T@U) Bool)
(declare-fun |#UtilitiesLibrary.Cheese.Provolone| () T@U)
(declare-fun UtilitiesLibrary.Cheese.Provolone_q (T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.Cheese () T@U)
(declare-fun |#UtilitiesLibrary.Cheese.Swiss| () T@U)
(declare-fun UtilitiesLibrary.Cheese.Swiss_q (T@U) Bool)
(declare-fun |#UtilitiesLibrary.Cheese.Cheddar| () T@U)
(declare-fun UtilitiesLibrary.Cheese.Cheddar_q (T@U) Bool)
(declare-fun |#UtilitiesLibrary.Cheese.Jack| () T@U)
(declare-fun UtilitiesLibrary.Cheese.Jack_q (T@U) Bool)
(declare-fun |$IsA#UtilitiesLibrary.Cheese| (T@U) Bool)
(declare-fun |UtilitiesLibrary.Cheese#Equal| (T@U T@U) Bool)
(declare-fun |#UtilitiesLibrary.Veggie.Olive| () T@U)
(declare-fun UtilitiesLibrary.Veggie.Olive_q (T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.Veggie () T@U)
(declare-fun |#UtilitiesLibrary.Veggie.Onion| () T@U)
(declare-fun UtilitiesLibrary.Veggie.Onion_q (T@U) Bool)
(declare-fun |#UtilitiesLibrary.Veggie.Pepper| () T@U)
(declare-fun UtilitiesLibrary.Veggie.Pepper_q (T@U) Bool)
(declare-fun |$IsA#UtilitiesLibrary.Veggie| (T@U) Bool)
(declare-fun |UtilitiesLibrary.Veggie#Equal| (T@U T@U) Bool)
(declare-fun |#UtilitiesLibrary.Order.Sandwich| (T@U T@U) T@U)
(declare-fun UtilitiesLibrary.Order.Sandwich_q (T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.Order () T@U)
(declare-fun UtilitiesLibrary.Order.meat (T@U) T@U)
(declare-fun UtilitiesLibrary.Order.cheese (T@U) T@U)
(declare-fun |#UtilitiesLibrary.Order.Pizza| (T@U T@U) T@U)
(declare-fun UtilitiesLibrary.Order.Pizza_q (T@U) Bool)
(declare-fun UtilitiesLibrary.Order.veggie (T@U) T@U)
(declare-fun |#UtilitiesLibrary.Order.Appetizer| (T@U) T@U)
(declare-fun UtilitiesLibrary.Order.Appetizer_q (T@U) Bool)
(declare-fun |$IsA#UtilitiesLibrary.Order| (T@U) Bool)
(declare-fun |UtilitiesLibrary.Order#Equal| (T@U T@U) Bool)
(declare-fun Tclass.UtilitiesLibrary.__default () T@U)
(declare-fun UtilitiesLibrary.__default.DropLast (T@U T@U) T@U)
(declare-fun |UtilitiesLibrary.__default.DropLast#canCall| (T@U T@U) Bool)
(declare-fun |UtilitiesLibrary.__default.DropLast#requires| (T@U T@U) Bool)
(declare-fun UtilitiesLibrary.__default.Last (T@U T@U) T@U)
(declare-fun |UtilitiesLibrary.__default.Last#canCall| (T@U T@U) Bool)
(declare-fun |UtilitiesLibrary.__default.Last#requires| (T@U T@U) Bool)
(declare-fun UtilitiesLibrary.__default.UnionSeqOfSets (T@U T@U T@U) T@U)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |UtilitiesLibrary.__default.UnionSeqOfSets#canCall| (T@U T@U) Bool)
(declare-fun |UtilitiesLibrary.__default.UnionSeqOfSets#requires| (T@U T@U T@U) Bool)
(declare-fun UtilitiesLibrary.__default.MapRemoveOne (T@U T@U T@U T@U T@U) T@U)
(declare-fun |UtilitiesLibrary.__default.MapRemoveOne#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |UtilitiesLibrary.__default.MapRemoveOne#requires| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |lambda#15| (T@U T@U T@U) T@U)
(declare-fun |lambda#16| (T@U) T@U)
(declare-fun UtilitiesLibrary.__default.TurnRight (T@U) T@U)
(declare-fun |UtilitiesLibrary.__default.TurnRight#canCall| (T@U) Bool)
(declare-fun |UtilitiesLibrary.__default.TurnRight#requires| (T@U) Bool)
(declare-fun UtilitiesLibrary.__default.TurnLeft (T@U) T@U)
(declare-fun |UtilitiesLibrary.__default.TurnLeft#canCall| (T@U) Bool)
(declare-fun |UtilitiesLibrary.__default.TurnLeft#requires| (T@U) Bool)
(declare-fun |#Network.MessageOps.MessageOps| (T@U T@U) T@U)
(declare-fun Network.MessageOps.MessageOps_q (T@U) Bool)
(declare-fun Network.MessageOps.recv (T@U) T@U)
(declare-fun Network.MessageOps.send (T@U) T@U)
(declare-fun |$IsA#Network.MessageOps| (T@U) Bool)
(declare-fun |Network.MessageOps#Equal| (T@U T@U) Bool)
(declare-fun |#Network.Constants.Constants| (Int) T@U)
(declare-fun Network.Constants.Constants_q (T@U) Bool)
(declare-fun Tclass.Network.Constants () T@U)
(declare-fun Network.Constants.numHosts (T@U) Int)
(declare-fun |$IsA#Network.Constants| (T@U) Bool)
(declare-fun |Network.Constants#Equal| (T@U T@U) Bool)
(declare-fun Network.Constants.Configure (T@U Int) Bool)
(declare-fun |Network.Constants.Configure#canCall| (T@U Int) Bool)
(declare-fun |Network.Constants.Configure#requires| (T@U Int) Bool)
(declare-fun |#Network.Variables.Variables| (T@U) T@U)
(declare-fun Tclass.Network.Variables (T@U) T@U)
(declare-fun Tclass.Network.Variables_0 (T@U) T@U)
(declare-fun |$IsA#Network.Variables| (T@U) Bool)
(declare-fun |Network.Variables#Equal| (T@U T@U) Bool)
(declare-fun Tclass.Network.__default () T@U)
(declare-fun Network.__default.Init (T@U T@U T@U) Bool)
(declare-fun |Network.__default.Init#canCall| (T@U T@U T@U) Bool)
(declare-fun |Network.__default.Init#requires| (T@U T@U T@U) Bool)
(declare-fun Network.__default.Next (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Network.__default.Next#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Network.__default.Next#requires| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |#Host.Message.GrantMsg| (Int Int) T@U)
(declare-fun |#Host.Constants.Constants| (Int Int) T@U)
(declare-fun Host.Constants.Constants_q (T@U) Bool)
(declare-fun Host.Constants.numHosts (T@U) Int)
(declare-fun Host.Constants.myId (T@U) Int)
(declare-fun |$IsA#Host.Constants| (T@U) Bool)
(declare-fun |Host.Constants#Equal| (T@U T@U) Bool)
(declare-fun Host.Constants.Configure (T@U Int Int) Bool)
(declare-fun |Host.Constants.Configure#canCall| (T@U Int Int) Bool)
(declare-fun |Host.Constants.Configure#requires| (T@U Int Int) Bool)
(declare-fun |#Host.Variables.Variables| (Bool Int) T@U)
(declare-fun |$IsA#Host.Variables| (T@U) Bool)
(declare-fun |Host.Variables#Equal| (T@U T@U) Bool)
(declare-fun |#Host.Step.SendGrantStep| (Int) T@U)
(declare-fun Host.Step.SendGrantStep_q (T@U) Bool)
(declare-fun Host.Step.dest (T@U) Int)
(declare-fun |#Host.Step.RecvGrantStep| () T@U)
(declare-fun Host.Step.RecvGrantStep_q (T@U) Bool)
(declare-fun |$IsA#Host.Step| (T@U) Bool)
(declare-fun |Host.Step#Equal| (T@U T@U) Bool)
(declare-fun Tclass.Host.__default () T@U)
(declare-fun Host.__default.Init (T@U T@U) Bool)
(declare-fun |Host.__default.Init#canCall| (T@U T@U) Bool)
(declare-fun |Host.__default.Init#requires| (T@U T@U) Bool)
(declare-fun Host.__default.SendGrant (T@U T@U T@U Int T@U) Bool)
(declare-fun |Host.__default.SendGrant#canCall| (T@U T@U T@U Int T@U) Bool)
(declare-fun |Host.__default.SendGrant#requires| (T@U T@U T@U Int T@U) Bool)
(declare-fun Host.__default.RecvGrant (T@U T@U T@U T@U) Bool)
(declare-fun |Host.__default.RecvGrant#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |Host.__default.RecvGrant#requires| (T@U T@U T@U T@U) Bool)
(declare-fun Host.__default.NextStep (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Host.__default.NextStep#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Host.__default.NextStep#requires| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Host.__default.Next (T@U T@U T@U T@U) Bool)
(declare-fun |Host.__default.Next#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |Host.__default.Next#requires| (T@U T@U T@U T@U) Bool)
(declare-fun |#DistributedSystem.Constants.Constants| (T@U T@U) T@U)
(declare-fun DistributedSystem.Constants.Constants_q (T@U) Bool)
(declare-fun DistributedSystem.Constants.hosts (T@U) T@U)
(declare-fun DistributedSystem.Constants.network (T@U) T@U)
(declare-fun |$IsA#DistributedSystem.Constants| (T@U) Bool)
(declare-fun |DistributedSystem.Constants#Equal| (T@U T@U) Bool)
(declare-fun DistributedSystem.Constants.WF (T@U) Bool)
(declare-fun |DistributedSystem.Constants.WF#canCall| (T@U) Bool)
(declare-fun |DistributedSystem.Constants.WF#requires| (T@U) Bool)
(declare-fun |DistributedSystem.Constants.ValidHostId#requires| (T@U Int) Bool)
(declare-fun |#DistributedSystem.Variables.Variables| (T@U T@U) T@U)
(declare-fun |$IsA#DistributedSystem.Variables| (T@U) Bool)
(declare-fun |DistributedSystem.Variables#Equal| (T@U T@U) Bool)
(declare-fun |DistributedSystem.Variables.WF#requires| (T@U T@U) Bool)
(declare-fun |#DistributedSystem.Step.Step| (Int T@U) T@U)
(declare-fun DistributedSystem.Step.Step_q (T@U) Bool)
(declare-fun DistributedSystem.Step.id (T@U) Int)
(declare-fun DistributedSystem.Step.msgOps (T@U) T@U)
(declare-fun |$IsA#DistributedSystem.Step| (T@U) Bool)
(declare-fun |DistributedSystem.Step#Equal| (T@U T@U) Bool)
(declare-fun Tclass.DistributedSystem.__default () T@U)
(declare-fun DistributedSystem.__default.Init (T@U T@U) Bool)
(declare-fun |DistributedSystem.__default.Init#canCall| (T@U T@U) Bool)
(declare-fun |DistributedSystem.__default.Init#requires| (T@U T@U) Bool)
(declare-fun DistributedSystem.__default.NextStep (T@U T@U T@U T@U) Bool)
(declare-fun |DistributedSystem.__default.NextStep#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |DistributedSystem.__default.NextStep#requires| (T@U T@U T@U T@U) Bool)
(declare-fun DistributedSystem.__default.Next (T@U T@U T@U) Bool)
(declare-fun |DistributedSystem.__default.Next#canCall| (T@U T@U T@U) Bool)
(declare-fun |DistributedSystem.__default.Next#requires| (T@U T@U T@U) Bool)
(declare-fun Tclass.SafetySpec.__default () T@U)
(declare-fun SafetySpec.__default.HostHoldsLock (T@U T@U Int) Bool)
(declare-fun |SafetySpec.__default.HostHoldsLock#canCall| (T@U T@U Int) Bool)
(declare-fun |SafetySpec.__default.HostHoldsLock#requires| (T@U T@U Int) Bool)
(declare-fun |SafetySpec.__default.Safety#requires| (T@U T@U) Bool)
(declare-fun MapType7Select (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType7Type (T@T T@T) T@T)
(declare-fun MapType7TypeInv0 (T@T) T@T)
(declare-fun MapType7TypeInv1 (T@T) T@T)
(declare-fun MapType7Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#5| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#6| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#7| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#8| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#9| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#10| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#11| (T@U T@U T@U Bool) T@U)
(declare-fun |lambda#12| (T@U T@U T@U Bool) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor intType) 0) (= (Ctor realType) 1)) (= (Ctor boolType) 2)) (= (Ctor rmodeType) 3)) (= (Ctor stringType) 4)) (= (Ctor regexType) 5)) (forall ((arg0 Int) ) (! (= (U_2_int (int_2_U arg0)) arg0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0))
))) (forall ((x T@U) ) (!  (=> (= (type x) intType) (= (int_2_U (U_2_int x)) x))
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x))
))) (forall ((arg0@@0 Int) ) (! (= (type (int_2_U arg0@@0)) intType)
 :qid |funType:int_2_U|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@0 T@U) ) (!  (=> (= (type x@@0) realType) (= (real_2_U (U_2_real x@@0)) x@@0))
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@0))
))) (forall ((arg0@@2 Real) ) (! (= (type (real_2_U arg0@@2)) realType)
 :qid |funType:real_2_U|
 :pattern ( (real_2_U arg0@@2))
))) (forall ((arg0@@3 Bool) ) (! (= (U_2_bool (bool_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0@@3))
))) (forall ((x@@1 T@U) ) (!  (=> (= (type x@@1) boolType) (= (bool_2_U (U_2_bool x@@1)) x@@1))
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x@@1))
))) (forall ((arg0@@4 Bool) ) (! (= (type (bool_2_U arg0@@4)) boolType)
 :qid |funType:bool_2_U|
 :pattern ( (bool_2_U arg0@@4))
))) (forall ((arg0@@5 RoundingMode) ) (! (= (U_2_rmode (rmode_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_rmode|
 :pattern ( (rmode_2_U arg0@@5))
))) (forall ((x@@2 T@U) ) (!  (=> (= (type x@@2) rmodeType) (= (rmode_2_U (U_2_rmode x@@2)) x@@2))
 :qid |cast:U_2_rmode|
 :pattern ( (U_2_rmode x@@2))
))) (forall ((arg0@@6 RoundingMode) ) (! (= (type (rmode_2_U arg0@@6)) rmodeType)
 :qid |funType:rmode_2_U|
 :pattern ( (rmode_2_U arg0@@6))
))) (forall ((arg0@@7 String) ) (! (= (U_2_string (string_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_string|
 :pattern ( (string_2_U arg0@@7))
))) (forall ((x@@3 T@U) ) (!  (=> (= (type x@@3) stringType) (= (string_2_U (U_2_string x@@3)) x@@3))
 :qid |cast:U_2_string|
 :pattern ( (U_2_string x@@3))
))) (forall ((arg0@@8 String) ) (! (= (type (string_2_U arg0@@8)) stringType)
 :qid |funType:string_2_U|
 :pattern ( (string_2_U arg0@@8))
))) (forall ((arg0@@9 (RegEx String)) ) (! (= (U_2_regex (regex_2_U arg0@@9)) arg0@@9)
 :qid |typeInv:U_2_regex|
 :pattern ( (regex_2_U arg0@@9))
))) (forall ((x@@4 T@U) ) (!  (=> (= (type x@@4) regexType) (= (regex_2_U (U_2_regex x@@4)) x@@4))
 :qid |cast:U_2_regex|
 :pattern ( (U_2_regex x@@4))
))) (forall ((arg0@@10 (RegEx String)) ) (! (= (type (regex_2_U arg0@@10)) regexType)
 :qid |funType:regex_2_U|
 :pattern ( (regex_2_U arg0@@10))
))))
(assert (forall ((x@@5 T@U) ) (! (UOrdering2 x@@5 x@@5)
 :qid |bg:subtype-refl|
 :no-pattern (U_2_int x@@5)
 :no-pattern (U_2_bool x@@5)
)))
(assert (forall ((x@@6 T@U) (y T@U) (z T@U) ) (! (let ((alpha (type x@@6)))
 (=> (and (and (= (type y) alpha) (= (type z) alpha)) (and (UOrdering2 x@@6 y) (UOrdering2 y z))) (UOrdering2 x@@6 z)))
 :qid |bg:subtype-trans|
 :pattern ( (UOrdering2 x@@6 y) (UOrdering2 y z))
)))
(assert (forall ((x@@7 T@U) (y@@0 T@U) ) (! (let ((alpha@@0 (type x@@7)))
 (=> (= (type y@@0) alpha@@0) (=> (and (UOrdering2 x@@7 y@@0) (UOrdering2 y@@0 x@@7)) (= x@@7 y@@0))))
 :qid |bg:subtype-antisymm|
 :pattern ( (UOrdering2 x@@7 y@@0) (UOrdering2 y@@0 x@@7))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor TyType) 6) (= (type TBool) TyType)) (= (type TChar) TyType)) (= (type TInt) TyType)) (= (type TReal) TyType)) (= (type TORDINAL) TyType)) (= (Ctor TyTagType) 7)) (= (type TagBool) TyTagType)) (= (type TagChar) TyTagType)) (= (type TagInt) TyTagType)) (= (type TagReal) TyTagType)) (= (type TagORDINAL) TyTagType)) (= (type TagSet) TyTagType)) (= (type TagISet) TyTagType)) (= (type TagMultiSet) TyTagType)) (= (type TagSeq) TyTagType)) (= (type TagMap) TyTagType)) (= (type TagIMap) TyTagType)) (= (type TagClass) TyTagType)) (= (Ctor ClassNameType) 8)) (= (type class._System.int) ClassNameType)) (= (type class._System.bool) ClassNameType)) (= (type class._System.set) ClassNameType)) (= (type class._System.seq) ClassNameType)) (= (type class._System.multiset) ClassNameType)) (forall ((arg0@@11 T@T) ) (! (= (Ctor (FieldType arg0@@11)) 9)
 :qid |ctor:FieldType|
))) (forall ((arg0@@12 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@12)) arg0@@12)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@12))
))) (= (type alloc) (FieldType boolType))) (= (Ctor NameFamilyType) 10)) (= (type allocName) NameFamilyType)) (= (type Tagclass._System.nat) TyTagType)) (= (type class._System.object?) ClassNameType)) (= (type Tagclass._System.object?) TyTagType)) (= (type Tagclass._System.object) TyTagType)) (= (type class._System.array?) ClassNameType)) (= (type Tagclass._System.array?) TyTagType)) (= (type Tagclass._System.array) TyTagType)) (= (type Tagclass._System.___hFunc1) TyTagType)) (= (type Tagclass._System.___hPartialFunc1) TyTagType)) (= (type Tagclass._System.___hTotalFunc1) TyTagType)) (= (type Tagclass._System.___hFunc0) TyTagType)) (= (type Tagclass._System.___hPartialFunc0) TyTagType)) (= (type Tagclass._System.___hTotalFunc0) TyTagType)) (= (type class._System.__default) ClassNameType)) (= (type Tagclass._System.__default) TyTagType)) (= (type Tagclass._System.___hFunc2) TyTagType)) (= (type Tagclass._System.___hPartialFunc2) TyTagType)) (= (type Tagclass._System.___hTotalFunc2) TyTagType)) (= (type Tagclass._System.___hFunc3) TyTagType)) (= (type Tagclass._System.___hPartialFunc3) TyTagType)) (= (type Tagclass._System.___hTotalFunc3) TyTagType)) (= (type Tagclass._System.___hFunc4) TyTagType)) (= (type Tagclass._System.___hPartialFunc4) TyTagType)) (= (type Tagclass._System.___hTotalFunc4) TyTagType)) (= (type Tagclass._System.___hFunc5) TyTagType)) (= (type Tagclass._System.___hPartialFunc5) TyTagType)) (= (type Tagclass._System.___hTotalFunc5) TyTagType)) (= (Ctor DtCtorIdType) 11)) (= (type |##_System._tuple#2._#Make2|) DtCtorIdType)) (= (type Tagclass._System.Tuple2) TyTagType)) (= (type class._System.Tuple2) ClassNameType)) (= (type |##_System._tuple#0._#Make0|) DtCtorIdType)) (= (type Tagclass._System.Tuple0) TyTagType)) (= (type class._System.Tuple0) ClassNameType)) (= (type class.Proof.__default) ClassNameType)) (= (type Tagclass.Proof.__default) TyTagType)) (= (type Tagclass.DistributedSystem.Constants) TyTagType)) (= (type Tagclass.DistributedSystem.Variables) TyTagType)) (= (type Tagclass.Host.Message) TyTagType)) (= (type Tagclass.Network.MessageOps) TyTagType)) (= (type Tagclass.DistributedSystem.Step) TyTagType)) (= (type Tagclass.Host.Step) TyTagType)) (= (type Tagclass.Host.Constants) TyTagType)) (= (type Tagclass.Host.Variables) TyTagType)) (= (type class.HostIdentifiers.__default) ClassNameType)) (= (type Tagclass.HostIdentifiers.__default) TyTagType)) (= (type |##UtilitiesLibrary.Option.Some|) DtCtorIdType)) (= (type Tagclass.UtilitiesLibrary.Option) TyTagType)) (= (type |##UtilitiesLibrary.Option.None|) DtCtorIdType)) (= (type class.UtilitiesLibrary.Option) ClassNameType)) (= (type |##UtilitiesLibrary.Direction.North|) DtCtorIdType)) (= (type Tagclass.UtilitiesLibrary.Direction) TyTagType)) (= (type |##UtilitiesLibrary.Direction.East|) DtCtorIdType)) (= (type |##UtilitiesLibrary.Direction.South|) DtCtorIdType)) (= (type |##UtilitiesLibrary.Direction.West|) DtCtorIdType)) (= (type class.UtilitiesLibrary.Direction) ClassNameType)) (= (type |##UtilitiesLibrary.Meat.Salami|) DtCtorIdType)) (= (type Tagclass.UtilitiesLibrary.Meat) TyTagType)) (= (type |##UtilitiesLibrary.Meat.Ham|) DtCtorIdType)) (= (type class.UtilitiesLibrary.Meat) ClassNameType)) (= (type |##UtilitiesLibrary.Cheese.Provolone|) DtCtorIdType)) (= (type Tagclass.UtilitiesLibrary.Cheese) TyTagType)) (= (type |##UtilitiesLibrary.Cheese.Swiss|) DtCtorIdType)) (= (type |##UtilitiesLibrary.Cheese.Cheddar|) DtCtorIdType)) (= (type |##UtilitiesLibrary.Cheese.Jack|) DtCtorIdType)) (= (type class.UtilitiesLibrary.Cheese) ClassNameType)) (= (type |##UtilitiesLibrary.Veggie.Olive|) DtCtorIdType)) (= (type Tagclass.UtilitiesLibrary.Veggie) TyTagType)) (= (type |##UtilitiesLibrary.Veggie.Onion|) DtCtorIdType)) (= (type |##UtilitiesLibrary.Veggie.Pepper|) DtCtorIdType)) (= (type class.UtilitiesLibrary.Veggie) ClassNameType)) (= (type |##UtilitiesLibrary.Order.Sandwich|) DtCtorIdType)) (= (type Tagclass.UtilitiesLibrary.Order) TyTagType)) (= (type |##UtilitiesLibrary.Order.Pizza|) DtCtorIdType)) (= (type |##UtilitiesLibrary.Order.Appetizer|) DtCtorIdType)) (= (type class.UtilitiesLibrary.Order) ClassNameType)) (= (type class.UtilitiesLibrary.__default) ClassNameType)) (= (type Tagclass.UtilitiesLibrary.__default) TyTagType)) (= (type |##Network.MessageOps.MessageOps|) DtCtorIdType)) (= (type class.Network.MessageOps) ClassNameType)) (= (type |##Network.Constants.Constants|) DtCtorIdType)) (= (type Tagclass.Network.Constants) TyTagType)) (= (type class.Network.Constants) ClassNameType)) (= (type |##Network.Variables.Variables|) DtCtorIdType)) (= (type Tagclass.Network.Variables) TyTagType)) (= (type class.Network.Variables) ClassNameType)) (= (type class.Network.__default) ClassNameType)) (= (type Tagclass.Network.__default) TyTagType)) (= (type |##Host.Message.GrantMsg|) DtCtorIdType)) (= (type class.Host.Message) ClassNameType)) (= (type |##Host.Constants.Constants|) DtCtorIdType)) (= (type class.Host.Constants) ClassNameType)) (= (type |##Host.Variables.Variables|) DtCtorIdType)) (= (type class.Host.Variables) ClassNameType)) (= (type |##Host.Step.SendGrantStep|) DtCtorIdType)) (= (type |##Host.Step.RecvGrantStep|) DtCtorIdType)) (= (type class.Host.Step) ClassNameType)) (= (type class.Host.__default) ClassNameType)) (= (type Tagclass.Host.__default) TyTagType)) (= (type |##DistributedSystem.Constants.Constants|) DtCtorIdType)) (= (type class.DistributedSystem.Constants) ClassNameType)) (= (type |##DistributedSystem.Variables.Variables|) DtCtorIdType)) (= (type class.DistributedSystem.Variables) ClassNameType)) (= (type |##DistributedSystem.Step.Step|) DtCtorIdType)) (= (type class.DistributedSystem.Step) ClassNameType)) (= (type class.DistributedSystem.__default) ClassNameType)) (= (type Tagclass.DistributedSystem.__default) TyTagType)) (= (type class.SafetySpec.__default) ClassNameType)) (= (type Tagclass.SafetySpec.__default) TyTagType)) (= (Ctor TyTagFamilyType) 12)) (= (type tytagFamily$nat) TyTagFamilyType)) (= (type tytagFamily$object) TyTagFamilyType)) (= (type tytagFamily$array) TyTagFamilyType)) (= (type |tytagFamily$_#Func1|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc1|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc1|) TyTagFamilyType)) (= (type |tytagFamily$_#Func0|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc0|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc0|) TyTagFamilyType)) (= (type tytagFamily$_default) TyTagFamilyType)) (= (type |tytagFamily$_#Func2|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc2|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc2|) TyTagFamilyType)) (= (type |tytagFamily$_#Func3|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc3|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc3|) TyTagFamilyType)) (= (type |tytagFamily$_#Func4|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc4|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc4|) TyTagFamilyType)) (= (type |tytagFamily$_#Func5|) TyTagFamilyType)) (= (type |tytagFamily$_#PartialFunc5|) TyTagFamilyType)) (= (type |tytagFamily$_#TotalFunc5|) TyTagFamilyType)) (= (type |tytagFamily$_tuple#2|) TyTagFamilyType)) (= (type |tytagFamily$_tuple#0|) TyTagFamilyType)) (= (type tytagFamily$Constants) TyTagFamilyType)) (= (type tytagFamily$Variables) TyTagFamilyType)) (= (type tytagFamily$Message) TyTagFamilyType)) (= (type tytagFamily$MessageOps) TyTagFamilyType)) (= (type tytagFamily$Step) TyTagFamilyType)) (= (type tytagFamily$Option) TyTagFamilyType)) (= (type tytagFamily$Direction) TyTagFamilyType)) (= (type tytagFamily$Meat) TyTagFamilyType)) (= (type tytagFamily$Cheese) TyTagFamilyType)) (= (type tytagFamily$Veggie) TyTagFamilyType)) (= (type tytagFamily$Order) TyTagFamilyType)))
(assert (distinct TBool TChar TInt TReal TORDINAL TagBool TagChar TagInt TagReal TagORDINAL TagSet TagISet TagMultiSet TagSeq TagMap TagIMap TagClass class._System.int class._System.bool class._System.set class._System.seq class._System.multiset alloc allocName Tagclass._System.nat class._System.object? Tagclass._System.object? Tagclass._System.object class._System.array? Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 class._System.__default Tagclass._System.__default Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 Tagclass._System.___hFunc3 Tagclass._System.___hPartialFunc3 Tagclass._System.___hTotalFunc3 Tagclass._System.___hFunc4 Tagclass._System.___hPartialFunc4 Tagclass._System.___hTotalFunc4 Tagclass._System.___hFunc5 Tagclass._System.___hPartialFunc5 Tagclass._System.___hTotalFunc5 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class._System.Tuple2 |##_System._tuple#0._#Make0| Tagclass._System.Tuple0 class._System.Tuple0 class.Proof.__default Tagclass.Proof.__default Tagclass.DistributedSystem.Constants Tagclass.DistributedSystem.Variables Tagclass.Host.Message Tagclass.Network.MessageOps Tagclass.DistributedSystem.Step Tagclass.Host.Step Tagclass.Host.Constants Tagclass.Host.Variables class.HostIdentifiers.__default Tagclass.HostIdentifiers.__default |##UtilitiesLibrary.Option.Some| Tagclass.UtilitiesLibrary.Option |##UtilitiesLibrary.Option.None| class.UtilitiesLibrary.Option |##UtilitiesLibrary.Direction.North| Tagclass.UtilitiesLibrary.Direction |##UtilitiesLibrary.Direction.East| |##UtilitiesLibrary.Direction.South| |##UtilitiesLibrary.Direction.West| class.UtilitiesLibrary.Direction |##UtilitiesLibrary.Meat.Salami| Tagclass.UtilitiesLibrary.Meat |##UtilitiesLibrary.Meat.Ham| class.UtilitiesLibrary.Meat |##UtilitiesLibrary.Cheese.Provolone| Tagclass.UtilitiesLibrary.Cheese |##UtilitiesLibrary.Cheese.Swiss| |##UtilitiesLibrary.Cheese.Cheddar| |##UtilitiesLibrary.Cheese.Jack| class.UtilitiesLibrary.Cheese |##UtilitiesLibrary.Veggie.Olive| Tagclass.UtilitiesLibrary.Veggie |##UtilitiesLibrary.Veggie.Onion| |##UtilitiesLibrary.Veggie.Pepper| class.UtilitiesLibrary.Veggie |##UtilitiesLibrary.Order.Sandwich| Tagclass.UtilitiesLibrary.Order |##UtilitiesLibrary.Order.Pizza| |##UtilitiesLibrary.Order.Appetizer| class.UtilitiesLibrary.Order class.UtilitiesLibrary.__default Tagclass.UtilitiesLibrary.__default |##Network.MessageOps.MessageOps| class.Network.MessageOps |##Network.Constants.Constants| Tagclass.Network.Constants class.Network.Constants |##Network.Variables.Variables| Tagclass.Network.Variables class.Network.Variables class.Network.__default Tagclass.Network.__default |##Host.Message.GrantMsg| class.Host.Message |##Host.Constants.Constants| class.Host.Constants |##Host.Variables.Variables| class.Host.Variables |##Host.Step.SendGrantStep| |##Host.Step.RecvGrantStep| class.Host.Step class.Host.__default Tagclass.Host.__default |##DistributedSystem.Constants.Constants| class.DistributedSystem.Constants |##DistributedSystem.Variables.Variables| class.DistributedSystem.Variables |##DistributedSystem.Step.Step| class.DistributedSystem.Step class.DistributedSystem.__default Tagclass.DistributedSystem.__default class.SafetySpec.__default Tagclass.SafetySpec.__default tytagFamily$nat tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| tytagFamily$_default |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2| |tytagFamily$_#Func3| |tytagFamily$_#PartialFunc3| |tytagFamily$_#TotalFunc3| |tytagFamily$_#Func4| |tytagFamily$_#PartialFunc4| |tytagFamily$_#TotalFunc4| |tytagFamily$_#Func5| |tytagFamily$_#PartialFunc5| |tytagFamily$_#TotalFunc5| |tytagFamily$_tuple#2| |tytagFamily$_tuple#0| tytagFamily$Constants tytagFamily$Variables tytagFamily$Message tytagFamily$MessageOps tytagFamily$Step tytagFamily$Option tytagFamily$Direction tytagFamily$Meat tytagFamily$Cheese tytagFamily$Veggie tytagFamily$Order)
)
(assert $$Language$Dafny)
(assert (forall ((arg0@@13 Int) ) (! (= (type (TBitvector arg0@@13)) TyType)
 :qid |funType:TBitvector|
 :pattern ( (TBitvector arg0@@13))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.34:15|
 :skolemid |1529|
 :pattern ( (TBitvector w))
)))
(assert  (and (forall ((arg0@@14 T@U) ) (! (= (type (TSet arg0@@14)) TyType)
 :qid |funType:TSet|
 :pattern ( (TSet arg0@@14))
)) (forall ((arg0@@15 T@U) ) (! (= (type (Inv0_TSet arg0@@15)) TyType)
 :qid |funType:Inv0_TSet|
 :pattern ( (Inv0_TSet arg0@@15))
))))
(assert (forall ((t T@U) ) (!  (=> (= (type t) TyType) (= (Inv0_TSet (TSet t)) t))
 :qid |DafnyPreludebpl.36:15|
 :skolemid |1530|
 :pattern ( (TSet t))
)))
(assert  (and (forall ((arg0@@16 T@U) ) (! (= (type (TISet arg0@@16)) TyType)
 :qid |funType:TISet|
 :pattern ( (TISet arg0@@16))
)) (forall ((arg0@@17 T@U) ) (! (= (type (Inv0_TISet arg0@@17)) TyType)
 :qid |funType:Inv0_TISet|
 :pattern ( (Inv0_TISet arg0@@17))
))))
(assert (forall ((t@@0 T@U) ) (!  (=> (= (type t@@0) TyType) (= (Inv0_TISet (TISet t@@0)) t@@0))
 :qid |DafnyPreludebpl.38:15|
 :skolemid |1531|
 :pattern ( (TISet t@@0))
)))
(assert  (and (forall ((arg0@@18 T@U) ) (! (= (type (TSeq arg0@@18)) TyType)
 :qid |funType:TSeq|
 :pattern ( (TSeq arg0@@18))
)) (forall ((arg0@@19 T@U) ) (! (= (type (Inv0_TSeq arg0@@19)) TyType)
 :qid |funType:Inv0_TSeq|
 :pattern ( (Inv0_TSeq arg0@@19))
))))
(assert (forall ((t@@1 T@U) ) (!  (=> (= (type t@@1) TyType) (= (Inv0_TSeq (TSeq t@@1)) t@@1))
 :qid |DafnyPreludebpl.40:15|
 :skolemid |1532|
 :pattern ( (TSeq t@@1))
)))
(assert  (and (forall ((arg0@@20 T@U) ) (! (= (type (TMultiSet arg0@@20)) TyType)
 :qid |funType:TMultiSet|
 :pattern ( (TMultiSet arg0@@20))
)) (forall ((arg0@@21 T@U) ) (! (= (type (Inv0_TMultiSet arg0@@21)) TyType)
 :qid |funType:Inv0_TMultiSet|
 :pattern ( (Inv0_TMultiSet arg0@@21))
))))
(assert (forall ((t@@2 T@U) ) (!  (=> (= (type t@@2) TyType) (= (Inv0_TMultiSet (TMultiSet t@@2)) t@@2))
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1533|
 :pattern ( (TMultiSet t@@2))
)))
(assert  (and (forall ((arg0@@22 T@U) (arg1 T@U) ) (! (= (type (TMap arg0@@22 arg1)) TyType)
 :qid |funType:TMap|
 :pattern ( (TMap arg0@@22 arg1))
)) (forall ((arg0@@23 T@U) ) (! (= (type (Inv0_TMap arg0@@23)) TyType)
 :qid |funType:Inv0_TMap|
 :pattern ( (Inv0_TMap arg0@@23))
))))
(assert (forall ((t@@3 T@U) (u T@U) ) (!  (=> (and (= (type t@@3) TyType) (= (type u) TyType)) (= (Inv0_TMap (TMap t@@3 u)) t@@3))
 :qid |DafnyPreludebpl.45:15|
 :skolemid |1534|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((arg0@@24 T@U) ) (! (= (type (Inv1_TMap arg0@@24)) TyType)
 :qid |funType:Inv1_TMap|
 :pattern ( (Inv1_TMap arg0@@24))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (!  (=> (and (= (type t@@4) TyType) (= (type u@@0) TyType)) (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0))
 :qid |DafnyPreludebpl.46:15|
 :skolemid |1535|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert  (and (forall ((arg0@@25 T@U) (arg1@@0 T@U) ) (! (= (type (TIMap arg0@@25 arg1@@0)) TyType)
 :qid |funType:TIMap|
 :pattern ( (TIMap arg0@@25 arg1@@0))
)) (forall ((arg0@@26 T@U) ) (! (= (type (Inv0_TIMap arg0@@26)) TyType)
 :qid |funType:Inv0_TIMap|
 :pattern ( (Inv0_TIMap arg0@@26))
))))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (!  (=> (and (= (type t@@5) TyType) (= (type u@@1) TyType)) (= (Inv0_TIMap (TIMap t@@5 u@@1)) t@@5))
 :qid |DafnyPreludebpl.49:15|
 :skolemid |1536|
 :pattern ( (TIMap t@@5 u@@1))
)))
(assert (forall ((arg0@@27 T@U) ) (! (= (type (Inv1_TIMap arg0@@27)) TyType)
 :qid |funType:Inv1_TIMap|
 :pattern ( (Inv1_TIMap arg0@@27))
)))
(assert (forall ((t@@6 T@U) (u@@2 T@U) ) (!  (=> (and (= (type t@@6) TyType) (= (type u@@2) TyType)) (= (Inv1_TIMap (TIMap t@@6 u@@2)) u@@2))
 :qid |DafnyPreludebpl.50:15|
 :skolemid |1537|
 :pattern ( (TIMap t@@6 u@@2))
)))
(assert (forall ((arg0@@28 T@U) ) (! (= (type (Tag arg0@@28)) TyTagType)
 :qid |funType:Tag|
 :pattern ( (Tag arg0@@28))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((t@@7 T@U) ) (!  (=> (= (type t@@7) TyType) (= (Tag (TSet t@@7)) TagSet))
 :qid |DafnyPreludebpl.76:15|
 :skolemid |1538|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (!  (=> (= (type t@@8) TyType) (= (Tag (TISet t@@8)) TagISet))
 :qid |DafnyPreludebpl.77:15|
 :skolemid |1539|
 :pattern ( (TISet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (!  (=> (= (type t@@9) TyType) (= (Tag (TMultiSet t@@9)) TagMultiSet))
 :qid |DafnyPreludebpl.78:15|
 :skolemid |1540|
 :pattern ( (TMultiSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (!  (=> (= (type t@@10) TyType) (= (Tag (TSeq t@@10)) TagSeq))
 :qid |DafnyPreludebpl.79:15|
 :skolemid |1541|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((t@@11 T@U) (u@@3 T@U) ) (!  (=> (and (= (type t@@11) TyType) (= (type u@@3) TyType)) (= (Tag (TMap t@@11 u@@3)) TagMap))
 :qid |DafnyPreludebpl.80:15|
 :skolemid |1542|
 :pattern ( (TMap t@@11 u@@3))
)))
(assert (forall ((t@@12 T@U) (u@@4 T@U) ) (!  (=> (and (= (type t@@12) TyType) (= (type u@@4) TyType)) (= (Tag (TIMap t@@12 u@@4)) TagIMap))
 :qid |DafnyPreludebpl.81:15|
 :skolemid |1543|
 :pattern ( (TIMap t@@12 u@@4))
)))
(assert (forall ((arg0@@29 T@U) ) (! (let ((T (type arg0@@29)))
(= (type (Lit arg0@@29)) T))
 :qid |funType:Lit|
 :pattern ( (Lit arg0@@29))
)))
(assert (forall ((x@@8 T@U) ) (! (= (Lit x@@8) x@@8)
 :qid |DafnyPreludebpl.89:29|
 :skolemid |1544|
 :pattern ( (Lit x@@8))
)))
(assert  (and (= (Ctor BoxType) 13) (forall ((arg0@@30 T@U) ) (! (= (type ($Box arg0@@30)) BoxType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@30))
))))
(assert (forall ((x@@9 T@U) ) (! (= ($Box (Lit x@@9)) (Lit ($Box x@@9)))
 :qid |DafnyPreludebpl.90:18|
 :skolemid |1545|
 :pattern ( ($Box (Lit x@@9)))
)))
(assert (forall ((x@@10 Int) ) (! (= (LitInt x@@10) x@@10)
 :qid |DafnyPreludebpl.95:29|
 :skolemid |1546|
 :pattern ( (LitInt x@@10))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box (int_2_U (LitInt x@@11))) (Lit ($Box (int_2_U x@@11))))
 :qid |DafnyPreludebpl.96:15|
 :skolemid |1547|
 :pattern ( ($Box (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 Real) ) (! (= (LitReal x@@12) x@@12)
 :qid |DafnyPreludebpl.97:30|
 :skolemid |1548|
 :pattern ( (LitReal x@@12))
)))
(assert (forall ((x@@13 Real) ) (! (= ($Box (real_2_U (LitReal x@@13))) (Lit ($Box (real_2_U x@@13))))
 :qid |DafnyPreludebpl.98:15|
 :skolemid |1549|
 :pattern ( ($Box (real_2_U (LitReal x@@13))))
)))
(assert  (and (= (Ctor charType) 14) (forall ((arg0@@31 Int) ) (! (= (type (|char#FromInt| arg0@@31)) charType)
 :qid |funType:char#FromInt|
 :pattern ( (|char#FromInt| arg0@@31))
))))
(assert (forall ((ch T@U) ) (!  (=> (= (type ch) charType) (and (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (<= 0 (|char#ToInt| ch))) (< (|char#ToInt| ch) 65536)))
 :qid |DafnyPreludebpl.107:15|
 :skolemid |1550|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((n Int) ) (!  (=> (and (<= 0 n) (< n 65536)) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.111:15|
 :skolemid |1551|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((arg0@@32 T@U) (arg1@@1 T@U) ) (! (= (type (|char#Plus| arg0@@32 arg1@@1)) charType)
 :qid |funType:char#Plus|
 :pattern ( (|char#Plus| arg0@@32 arg1@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) charType) (= (type b) charType)) (= (|char#Plus| a b) (|char#FromInt| (+ (|char#ToInt| a) (|char#ToInt| b)))))
 :qid |DafnyPreludebpl.117:15|
 :skolemid |1552|
 :pattern ( (|char#Plus| a b))
)))
(assert (forall ((arg0@@33 T@U) (arg1@@2 T@U) ) (! (= (type (|char#Minus| arg0@@33 arg1@@2)) charType)
 :qid |funType:char#Minus|
 :pattern ( (|char#Minus| arg0@@33 arg1@@2))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (= (type a@@0) charType) (= (type b@@0) charType)) (= (|char#Minus| a@@0 b@@0) (|char#FromInt| (- (|char#ToInt| a@@0) (|char#ToInt| b@@0)))))
 :qid |DafnyPreludebpl.120:15|
 :skolemid |1553|
 :pattern ( (|char#Minus| a@@0 b@@0))
)))
(assert (forall ((T@@0 T@T) (arg0@@34 T@U) ) (! (= (type ($Unbox T@@0 arg0@@34)) T@@0)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T@@0 arg0@@34))
)))
(assert (forall ((x@@14 T@U) ) (! (let ((T@@1 (type x@@14)))
(= ($Unbox T@@1 ($Box x@@14)) x@@14))
 :qid |DafnyPreludebpl.141:18|
 :skolemid |1554|
 :pattern ( ($Box x@@14))
)))
(assert (forall ((bx T@U) ) (!  (=> (and (= (type bx) BoxType) ($IsBox bx TInt)) (and (= ($Box ($Unbox intType bx)) bx) ($Is ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.143:15|
 :skolemid |1555|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> (and (= (type bx@@0) BoxType) ($IsBox bx@@0 TReal)) (and (= ($Box ($Unbox realType bx@@0)) bx@@0) ($Is ($Unbox realType bx@@0) TReal)))
 :qid |DafnyPreludebpl.146:15|
 :skolemid |1556|
 :pattern ( ($IsBox bx@@0 TReal))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> (and (= (type bx@@1) BoxType) ($IsBox bx@@1 TBool)) (and (= ($Box ($Unbox boolType bx@@1)) bx@@1) ($Is ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.149:15|
 :skolemid |1557|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> (and (= (type bx@@2) BoxType) ($IsBox bx@@2 TChar)) (and (= ($Box ($Unbox charType bx@@2)) bx@@2) ($Is ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.152:15|
 :skolemid |1558|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert  (and (and (and (and (and (and (forall ((arg0@@35 T@T) (arg1@@3 T@T) ) (! (= (Ctor (MapType0Type arg0@@35 arg1@@3)) 15)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@36 T@T) (arg1@@4 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@36 arg1@@4)) arg0@@36)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@36 arg1@@4))
))) (forall ((arg0@@37 T@T) (arg1@@5 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@37 arg1@@5)) arg1@@5)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@37 arg1@@5))
))) (forall ((arg0@@38 T@U) (arg1@@6 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@38))))
(= (type (MapType0Select arg0@@38 arg1@@6)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@38 arg1@@6))
))) (forall ((arg0@@39 T@U) (arg1@@7 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@7)))
(= (type (MapType0Store arg0@@39 arg1@@7 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@39 arg1@@7 arg2))
))) (forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))))
(assert (forall ((bx@@3 T@U) ) (!  (=> (and (= (type bx@@3) BoxType) ($IsBox bx@@3 (TBitvector 0))) (and (= ($Box ($Unbox intType bx@@3)) bx@@3) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@3) (TBitvector 0))))
 :qid |DafnyPreludebpl.158:15|
 :skolemid |1559|
 :pattern ( ($IsBox bx@@3 (TBitvector 0)))
)))
(assert (forall ((bx@@4 T@U) (t@@13 T@U) ) (!  (=> (and (and (= (type bx@@4) BoxType) (= (type t@@13) TyType)) ($IsBox bx@@4 (TSet t@@13))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@4)) bx@@4) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@4) (TSet t@@13))))
 :qid |DafnyPreludebpl.162:15|
 :skolemid |1560|
 :pattern ( ($IsBox bx@@4 (TSet t@@13)))
)))
(assert (forall ((bx@@5 T@U) (t@@14 T@U) ) (!  (=> (and (and (= (type bx@@5) BoxType) (= (type t@@14) TyType)) ($IsBox bx@@5 (TISet t@@14))) (and (= ($Box ($Unbox (MapType0Type BoxType boolType) bx@@5)) bx@@5) ($Is ($Unbox (MapType0Type BoxType boolType) bx@@5) (TISet t@@14))))
 :qid |DafnyPreludebpl.165:15|
 :skolemid |1561|
 :pattern ( ($IsBox bx@@5 (TISet t@@14)))
)))
(assert (forall ((bx@@6 T@U) (t@@15 T@U) ) (!  (=> (and (and (= (type bx@@6) BoxType) (= (type t@@15) TyType)) ($IsBox bx@@6 (TMultiSet t@@15))) (and (= ($Box ($Unbox (MapType0Type BoxType intType) bx@@6)) bx@@6) ($Is ($Unbox (MapType0Type BoxType intType) bx@@6) (TMultiSet t@@15))))
 :qid |DafnyPreludebpl.168:15|
 :skolemid |1562|
 :pattern ( ($IsBox bx@@6 (TMultiSet t@@15)))
)))
(assert  (and (forall ((arg0@@40 T@T) ) (! (= (Ctor (SeqType arg0@@40)) 16)
 :qid |ctor:SeqType|
)) (forall ((arg0@@41 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@41)) arg0@@41)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@41))
))))
(assert (forall ((bx@@7 T@U) (t@@16 T@U) ) (!  (=> (and (and (= (type bx@@7) BoxType) (= (type t@@16) TyType)) ($IsBox bx@@7 (TSeq t@@16))) (and (= ($Box ($Unbox (SeqType BoxType) bx@@7)) bx@@7) ($Is ($Unbox (SeqType BoxType) bx@@7) (TSeq t@@16))))
 :qid |DafnyPreludebpl.171:15|
 :skolemid |1563|
 :pattern ( ($IsBox bx@@7 (TSeq t@@16)))
)))
(assert  (and (and (forall ((arg0@@42 T@T) (arg1@@8 T@T) ) (! (= (Ctor (MapType arg0@@42 arg1@@8)) 17)
 :qid |ctor:MapType|
)) (forall ((arg0@@43 T@T) (arg1@@9 T@T) ) (! (= (MapTypeInv0 (MapType arg0@@43 arg1@@9)) arg0@@43)
 :qid |typeInv:MapTypeInv0|
 :pattern ( (MapType arg0@@43 arg1@@9))
))) (forall ((arg0@@44 T@T) (arg1@@10 T@T) ) (! (= (MapTypeInv1 (MapType arg0@@44 arg1@@10)) arg1@@10)
 :qid |typeInv:MapTypeInv1|
 :pattern ( (MapType arg0@@44 arg1@@10))
))))
(assert (forall ((bx@@8 T@U) (s T@U) (t@@17 T@U) ) (!  (=> (and (and (and (= (type bx@@8) BoxType) (= (type s) TyType)) (= (type t@@17) TyType)) ($IsBox bx@@8 (TMap s t@@17))) (and (= ($Box ($Unbox (MapType BoxType BoxType) bx@@8)) bx@@8) ($Is ($Unbox (MapType BoxType BoxType) bx@@8) (TMap s t@@17))))
 :qid |DafnyPreludebpl.174:15|
 :skolemid |1564|
 :pattern ( ($IsBox bx@@8 (TMap s t@@17)))
)))
(assert  (and (and (forall ((arg0@@45 T@T) (arg1@@11 T@T) ) (! (= (Ctor (IMapType arg0@@45 arg1@@11)) 18)
 :qid |ctor:IMapType|
)) (forall ((arg0@@46 T@T) (arg1@@12 T@T) ) (! (= (IMapTypeInv0 (IMapType arg0@@46 arg1@@12)) arg0@@46)
 :qid |typeInv:IMapTypeInv0|
 :pattern ( (IMapType arg0@@46 arg1@@12))
))) (forall ((arg0@@47 T@T) (arg1@@13 T@T) ) (! (= (IMapTypeInv1 (IMapType arg0@@47 arg1@@13)) arg1@@13)
 :qid |typeInv:IMapTypeInv1|
 :pattern ( (IMapType arg0@@47 arg1@@13))
))))
(assert (forall ((bx@@9 T@U) (s@@0 T@U) (t@@18 T@U) ) (!  (=> (and (and (and (= (type bx@@9) BoxType) (= (type s@@0) TyType)) (= (type t@@18) TyType)) ($IsBox bx@@9 (TIMap s@@0 t@@18))) (and (= ($Box ($Unbox (IMapType BoxType BoxType) bx@@9)) bx@@9) ($Is ($Unbox (IMapType BoxType BoxType) bx@@9) (TIMap s@@0 t@@18))))
 :qid |DafnyPreludebpl.177:15|
 :skolemid |1565|
 :pattern ( ($IsBox bx@@9 (TIMap s@@0 t@@18)))
)))
(assert (forall ((v T@U) (t@@19 T@U) ) (!  (=> (= (type t@@19) TyType) (= ($IsBox ($Box v) t@@19) ($Is v t@@19)))
 :qid |DafnyPreludebpl.181:18|
 :skolemid |1566|
 :pattern ( ($IsBox ($Box v) t@@19))
)))
(assert  (and (and (and (and (and (forall ((arg0@@48 T@U) (arg1@@14 T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type arg1@@14))))
(= (type (MapType1Select arg0@@48 arg1@@14)) alpha@@1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@48 arg1@@14))
)) (= (Ctor MapType1Type) 19)) (forall ((arg0@@49 T@U) (arg1@@15 T@U) (arg2@@0 T@U) ) (! (= (type (MapType1Store arg0@@49 arg1@@15 arg2@@0)) MapType1Type)
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@49 arg1@@15 arg2@@0))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (val@@2 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type x0@@2))))
 (=> (= (type val@@2) alpha@@2) (= (MapType1Select (MapType1Store m@@2 x0@@2 val@@2) x0@@2) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 val@@3) y0@@1) (MapType1Select m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@4 x0@@4 val@@4) y0@@2) (MapType1Select m@@4 y0@@2)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))) (= (Ctor refType) 20)))
(assert (forall ((v@@0 T@U) (t@@20 T@U) (h T@U) ) (!  (=> (and (= (type t@@20) TyType) (= (type h) (MapType0Type refType MapType1Type))) (= ($IsAllocBox ($Box v@@0) t@@20 h) ($IsAlloc v@@0 t@@20 h)))
 :qid |DafnyPreludebpl.184:18|
 :skolemid |1567|
 :pattern ( ($IsAllocBox ($Box v@@0) t@@20 h))
)))
(assert (forall ((v@@1 T@U) ) (!  (=> (= (type v@@1) intType) ($Is v@@1 TInt))
 :qid |DafnyPreludebpl.202:14|
 :skolemid |1568|
 :pattern ( ($Is v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (!  (=> (= (type v@@2) realType) ($Is v@@2 TReal))
 :qid |DafnyPreludebpl.203:14|
 :skolemid |1569|
 :pattern ( ($Is v@@2 TReal))
)))
(assert (forall ((v@@3 T@U) ) (!  (=> (= (type v@@3) boolType) ($Is v@@3 TBool))
 :qid |DafnyPreludebpl.204:14|
 :skolemid |1570|
 :pattern ( ($Is v@@3 TBool))
)))
(assert (forall ((v@@4 T@U) ) (!  (=> (= (type v@@4) charType) ($Is v@@4 TChar))
 :qid |DafnyPreludebpl.205:14|
 :skolemid |1571|
 :pattern ( ($Is v@@4 TChar))
)))
(assert (forall ((v@@5 T@U) ) (!  (=> (= (type v@@5) BoxType) ($Is v@@5 TORDINAL))
 :qid |DafnyPreludebpl.206:14|
 :skolemid |1572|
 :pattern ( ($Is v@@5 TORDINAL))
)))
(assert (forall ((h@@0 T@U) (v@@6 T@U) ) (!  (=> (and (= (type h@@0) (MapType0Type refType MapType1Type)) (= (type v@@6) intType)) ($IsAlloc v@@6 TInt h@@0))
 :qid |DafnyPreludebpl.208:14|
 :skolemid |1573|
 :pattern ( ($IsAlloc v@@6 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@7 T@U) ) (!  (=> (and (= (type h@@1) (MapType0Type refType MapType1Type)) (= (type v@@7) realType)) ($IsAlloc v@@7 TReal h@@1))
 :qid |DafnyPreludebpl.209:14|
 :skolemid |1574|
 :pattern ( ($IsAlloc v@@7 TReal h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@8 T@U) ) (!  (=> (and (= (type h@@2) (MapType0Type refType MapType1Type)) (= (type v@@8) boolType)) ($IsAlloc v@@8 TBool h@@2))
 :qid |DafnyPreludebpl.210:14|
 :skolemid |1575|
 :pattern ( ($IsAlloc v@@8 TBool h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@9 T@U) ) (!  (=> (and (= (type h@@3) (MapType0Type refType MapType1Type)) (= (type v@@9) charType)) ($IsAlloc v@@9 TChar h@@3))
 :qid |DafnyPreludebpl.211:14|
 :skolemid |1576|
 :pattern ( ($IsAlloc v@@9 TChar h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (!  (=> (and (= (type h@@4) (MapType0Type refType MapType1Type)) (= (type v@@10) BoxType)) ($IsAlloc v@@10 TORDINAL h@@4))
 :qid |DafnyPreludebpl.212:14|
 :skolemid |1577|
 :pattern ( ($IsAlloc v@@10 TORDINAL h@@4))
)))
(assert (forall ((v@@11 T@U) ) (!  (=> (= (type v@@11) intType) ($Is v@@11 (TBitvector 0)))
 :qid |DafnyPreludebpl.216:15|
 :skolemid |1578|
 :pattern ( ($Is v@@11 (TBitvector 0)))
)))
(assert (forall ((v@@12 T@U) (h@@5 T@U) ) (!  (=> (and (= (type v@@12) intType) (= (type h@@5) (MapType0Type refType MapType1Type))) ($IsAlloc v@@12 (TBitvector 0) h@@5))
 :qid |DafnyPreludebpl.217:15|
 :skolemid |1579|
 :pattern ( ($IsAlloc v@@12 (TBitvector 0) h@@5))
)))
(assert (forall ((v@@13 T@U) (t0 T@U) ) (!  (=> (and (= (type v@@13) (MapType0Type BoxType boolType)) (= (type t0) TyType)) (= ($Is v@@13 (TSet t0)) (forall ((bx@@10 T@U) ) (!  (=> (and (= (type bx@@10) BoxType) (U_2_bool (MapType0Select v@@13 bx@@10))) ($IsBox bx@@10 t0))
 :qid |DafnyPreludebpl.221:11|
 :skolemid |1580|
 :pattern ( (MapType0Select v@@13 bx@@10))
))))
 :qid |DafnyPreludebpl.219:15|
 :skolemid |1581|
 :pattern ( ($Is v@@13 (TSet t0)))
)))
(assert (forall ((v@@14 T@U) (t0@@0 T@U) ) (!  (=> (and (= (type v@@14) (MapType0Type BoxType boolType)) (= (type t0@@0) TyType)) (= ($Is v@@14 (TISet t0@@0)) (forall ((bx@@11 T@U) ) (!  (=> (and (= (type bx@@11) BoxType) (U_2_bool (MapType0Select v@@14 bx@@11))) ($IsBox bx@@11 t0@@0))
 :qid |DafnyPreludebpl.225:11|
 :skolemid |1582|
 :pattern ( (MapType0Select v@@14 bx@@11))
))))
 :qid |DafnyPreludebpl.223:15|
 :skolemid |1583|
 :pattern ( ($Is v@@14 (TISet t0@@0)))
)))
(assert (forall ((v@@15 T@U) (t0@@1 T@U) ) (!  (=> (and (= (type v@@15) (MapType0Type BoxType intType)) (= (type t0@@1) TyType)) (= ($Is v@@15 (TMultiSet t0@@1)) (forall ((bx@@12 T@U) ) (!  (=> (and (= (type bx@@12) BoxType) (< 0 (U_2_int (MapType0Select v@@15 bx@@12)))) ($IsBox bx@@12 t0@@1))
 :qid |DafnyPreludebpl.229:11|
 :skolemid |1584|
 :pattern ( (MapType0Select v@@15 bx@@12))
))))
 :qid |DafnyPreludebpl.227:15|
 :skolemid |1585|
 :pattern ( ($Is v@@15 (TMultiSet t0@@1)))
)))
(assert (forall ((v@@16 T@U) (t0@@2 T@U) ) (!  (=> (and (and (= (type v@@16) (MapType0Type BoxType intType)) (= (type t0@@2) TyType)) ($Is v@@16 (TMultiSet t0@@2))) ($IsGoodMultiSet v@@16))
 :qid |DafnyPreludebpl.231:15|
 :skolemid |1586|
 :pattern ( ($Is v@@16 (TMultiSet t0@@2)))
)))
(assert (forall ((arg0@@50 T@U) (arg1@@16 Int) ) (! (let ((T@@2 (SeqTypeInv0 (type arg0@@50))))
(= (type (|Seq#Index| arg0@@50 arg1@@16)) T@@2))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@50 arg1@@16))
)))
(assert (forall ((v@@17 T@U) (t0@@3 T@U) ) (!  (=> (and (= (type v@@17) (SeqType BoxType)) (= (type t0@@3) TyType)) (= ($Is v@@17 (TSeq t0@@3)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@17))) ($IsBox (|Seq#Index| v@@17 i) t0@@3))
 :qid |DafnyPreludebpl.235:11|
 :skolemid |1587|
 :pattern ( (|Seq#Index| v@@17 i))
))))
 :qid |DafnyPreludebpl.233:15|
 :skolemid |1588|
 :pattern ( ($Is v@@17 (TSeq t0@@3)))
)))
(assert (forall ((v@@18 T@U) (t0@@4 T@U) (h@@6 T@U) ) (!  (=> (and (and (= (type v@@18) (MapType0Type BoxType boolType)) (= (type t0@@4) TyType)) (= (type h@@6) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@18 (TSet t0@@4) h@@6) (forall ((bx@@13 T@U) ) (!  (=> (and (= (type bx@@13) BoxType) (U_2_bool (MapType0Select v@@18 bx@@13))) ($IsAllocBox bx@@13 t0@@4 h@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1589|
 :pattern ( (MapType0Select v@@18 bx@@13))
))))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1590|
 :pattern ( ($IsAlloc v@@18 (TSet t0@@4) h@@6))
)))
(assert (forall ((v@@19 T@U) (t0@@5 T@U) (h@@7 T@U) ) (!  (=> (and (and (= (type v@@19) (MapType0Type BoxType boolType)) (= (type t0@@5) TyType)) (= (type h@@7) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@19 (TISet t0@@5) h@@7) (forall ((bx@@14 T@U) ) (!  (=> (and (= (type bx@@14) BoxType) (U_2_bool (MapType0Select v@@19 bx@@14))) ($IsAllocBox bx@@14 t0@@5 h@@7))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |1591|
 :pattern ( (MapType0Select v@@19 bx@@14))
))))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |1592|
 :pattern ( ($IsAlloc v@@19 (TISet t0@@5) h@@7))
)))
(assert (forall ((v@@20 T@U) (t0@@6 T@U) (h@@8 T@U) ) (!  (=> (and (and (= (type v@@20) (MapType0Type BoxType intType)) (= (type t0@@6) TyType)) (= (type h@@8) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@20 (TMultiSet t0@@6) h@@8) (forall ((bx@@15 T@U) ) (!  (=> (and (= (type bx@@15) BoxType) (< 0 (U_2_int (MapType0Select v@@20 bx@@15)))) ($IsAllocBox bx@@15 t0@@6 h@@8))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |1593|
 :pattern ( (MapType0Select v@@20 bx@@15))
))))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |1594|
 :pattern ( ($IsAlloc v@@20 (TMultiSet t0@@6) h@@8))
)))
(assert (forall ((v@@21 T@U) (t0@@7 T@U) (h@@9 T@U) ) (!  (=> (and (and (= (type v@@21) (SeqType BoxType)) (= (type t0@@7) TyType)) (= (type h@@9) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@21 (TSeq t0@@7) h@@9) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@21))) ($IsAllocBox (|Seq#Index| v@@21 i@@0) t0@@7 h@@9))
 :qid |DafnyPreludebpl.252:11|
 :skolemid |1595|
 :pattern ( (|Seq#Index| v@@21 i@@0))
))))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |1596|
 :pattern ( ($IsAlloc v@@21 (TSeq t0@@7) h@@9))
)))
(assert  (and (forall ((arg0@@51 T@U) ) (! (let ((V (MapTypeInv1 (type arg0@@51))))
(let ((U (MapTypeInv0 (type arg0@@51))))
(= (type (|Map#Elements| arg0@@51)) (MapType0Type U V))))
 :qid |funType:Map#Elements|
 :pattern ( (|Map#Elements| arg0@@51))
)) (forall ((arg0@@52 T@U) ) (! (let ((U@@0 (MapTypeInv0 (type arg0@@52))))
(= (type (|Map#Domain| arg0@@52)) (MapType0Type U@@0 boolType)))
 :qid |funType:Map#Domain|
 :pattern ( (|Map#Domain| arg0@@52))
))))
(assert (forall ((v@@22 T@U) (t0@@8 T@U) (t1 T@U) ) (!  (=> (and (and (= (type v@@22) (MapType BoxType BoxType)) (= (type t0@@8) TyType)) (= (type t1) TyType)) (= ($Is v@@22 (TMap t0@@8 t1)) (forall ((bx@@16 T@U) ) (!  (=> (and (= (type bx@@16) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@22) bx@@16))) (and ($IsBox (MapType0Select (|Map#Elements| v@@22) bx@@16) t1) ($IsBox bx@@16 t0@@8)))
 :qid |DafnyPreludebpl.259:19|
 :skolemid |1597|
 :pattern ( (MapType0Select (|Map#Elements| v@@22) bx@@16))
 :pattern ( (MapType0Select (|Map#Domain| v@@22) bx@@16))
))))
 :qid |DafnyPreludebpl.256:15|
 :skolemid |1598|
 :pattern ( ($Is v@@22 (TMap t0@@8 t1)))
)))
(assert (forall ((v@@23 T@U) (t0@@9 T@U) (t1@@0 T@U) (h@@10 T@U) ) (!  (=> (and (and (and (= (type v@@23) (MapType BoxType BoxType)) (= (type t0@@9) TyType)) (= (type t1@@0) TyType)) (= (type h@@10) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@23 (TMap t0@@9 t1@@0) h@@10) (forall ((bx@@17 T@U) ) (!  (=> (and (= (type bx@@17) BoxType) (U_2_bool (MapType0Select (|Map#Domain| v@@23) bx@@17))) (and ($IsAllocBox (MapType0Select (|Map#Elements| v@@23) bx@@17) t1@@0 h@@10) ($IsAllocBox bx@@17 t0@@9 h@@10)))
 :qid |DafnyPreludebpl.267:19|
 :skolemid |1599|
 :pattern ( (MapType0Select (|Map#Elements| v@@23) bx@@17))
 :pattern ( (MapType0Select (|Map#Domain| v@@23) bx@@17))
))))
 :qid |DafnyPreludebpl.264:15|
 :skolemid |1600|
 :pattern ( ($IsAlloc v@@23 (TMap t0@@9 t1@@0) h@@10))
)))
(assert  (and (and (forall ((arg0@@53 T@U) ) (! (let ((V@@0 (MapTypeInv1 (type arg0@@53))))
(= (type (|Map#Values| arg0@@53)) (MapType0Type V@@0 boolType)))
 :qid |funType:Map#Values|
 :pattern ( (|Map#Values| arg0@@53))
)) (forall ((arg0@@54 T@U) ) (! (= (type (|Map#Items| arg0@@54)) (MapType0Type BoxType boolType))
 :qid |funType:Map#Items|
 :pattern ( (|Map#Items| arg0@@54))
))) (forall ((arg0@@55 T@U) (arg1@@17 T@U) ) (! (= (type (Tclass._System.Tuple2 arg0@@55 arg1@@17)) TyType)
 :qid |funType:Tclass._System.Tuple2|
 :pattern ( (Tclass._System.Tuple2 arg0@@55 arg1@@17))
))))
(assert (forall ((v@@24 T@U) (t0@@10 T@U) (t1@@1 T@U) ) (!  (=> (and (and (and (= (type v@@24) (MapType BoxType BoxType)) (= (type t0@@10) TyType)) (= (type t1@@1) TyType)) ($Is v@@24 (TMap t0@@10 t1@@1))) (and (and ($Is (|Map#Domain| v@@24) (TSet t0@@10)) ($Is (|Map#Values| v@@24) (TSet t1@@1))) ($Is (|Map#Items| v@@24) (TSet (Tclass._System.Tuple2 t0@@10 t1@@1)))))
 :qid |DafnyPreludebpl.272:15|
 :skolemid |1601|
 :pattern ( ($Is v@@24 (TMap t0@@10 t1@@1)))
)))
(assert  (and (forall ((arg0@@56 T@U) ) (! (let ((V@@1 (IMapTypeInv1 (type arg0@@56))))
(let ((U@@1 (IMapTypeInv0 (type arg0@@56))))
(= (type (|IMap#Elements| arg0@@56)) (MapType0Type U@@1 V@@1))))
 :qid |funType:IMap#Elements|
 :pattern ( (|IMap#Elements| arg0@@56))
)) (forall ((arg0@@57 T@U) ) (! (let ((U@@2 (IMapTypeInv0 (type arg0@@57))))
(= (type (|IMap#Domain| arg0@@57)) (MapType0Type U@@2 boolType)))
 :qid |funType:IMap#Domain|
 :pattern ( (|IMap#Domain| arg0@@57))
))))
(assert (forall ((v@@25 T@U) (t0@@11 T@U) (t1@@2 T@U) ) (!  (=> (and (and (= (type v@@25) (IMapType BoxType BoxType)) (= (type t0@@11) TyType)) (= (type t1@@2) TyType)) (= ($Is v@@25 (TIMap t0@@11 t1@@2)) (forall ((bx@@18 T@U) ) (!  (=> (and (= (type bx@@18) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@25) bx@@18))) (and ($IsBox (MapType0Select (|IMap#Elements| v@@25) bx@@18) t1@@2) ($IsBox bx@@18 t0@@11)))
 :qid |DafnyPreludebpl.282:19|
 :skolemid |1602|
 :pattern ( (MapType0Select (|IMap#Elements| v@@25) bx@@18))
 :pattern ( (MapType0Select (|IMap#Domain| v@@25) bx@@18))
))))
 :qid |DafnyPreludebpl.279:15|
 :skolemid |1603|
 :pattern ( ($Is v@@25 (TIMap t0@@11 t1@@2)))
)))
(assert (forall ((v@@26 T@U) (t0@@12 T@U) (t1@@3 T@U) (h@@11 T@U) ) (!  (=> (and (and (and (= (type v@@26) (IMapType BoxType BoxType)) (= (type t0@@12) TyType)) (= (type t1@@3) TyType)) (= (type h@@11) (MapType0Type refType MapType1Type))) (= ($IsAlloc v@@26 (TIMap t0@@12 t1@@3) h@@11) (forall ((bx@@19 T@U) ) (!  (=> (and (= (type bx@@19) BoxType) (U_2_bool (MapType0Select (|IMap#Domain| v@@26) bx@@19))) (and ($IsAllocBox (MapType0Select (|IMap#Elements| v@@26) bx@@19) t1@@3 h@@11) ($IsAllocBox bx@@19 t0@@12 h@@11)))
 :qid |DafnyPreludebpl.290:19|
 :skolemid |1604|
 :pattern ( (MapType0Select (|IMap#Elements| v@@26) bx@@19))
 :pattern ( (MapType0Select (|IMap#Domain| v@@26) bx@@19))
))))
 :qid |DafnyPreludebpl.287:15|
 :skolemid |1605|
 :pattern ( ($IsAlloc v@@26 (TIMap t0@@12 t1@@3) h@@11))
)))
(assert  (and (forall ((arg0@@58 T@U) ) (! (let ((V@@2 (IMapTypeInv1 (type arg0@@58))))
(= (type (|IMap#Values| arg0@@58)) (MapType0Type V@@2 boolType)))
 :qid |funType:IMap#Values|
 :pattern ( (|IMap#Values| arg0@@58))
)) (forall ((arg0@@59 T@U) ) (! (= (type (|IMap#Items| arg0@@59)) (MapType0Type BoxType boolType))
 :qid |funType:IMap#Items|
 :pattern ( (|IMap#Items| arg0@@59))
))))
(assert (forall ((v@@27 T@U) (t0@@13 T@U) (t1@@4 T@U) ) (!  (=> (and (and (and (= (type v@@27) (IMapType BoxType BoxType)) (= (type t0@@13) TyType)) (= (type t1@@4) TyType)) ($Is v@@27 (TIMap t0@@13 t1@@4))) (and (and ($Is (|IMap#Domain| v@@27) (TISet t0@@13)) ($Is (|IMap#Values| v@@27) (TISet t1@@4))) ($Is (|IMap#Items| v@@27) (TISet (Tclass._System.Tuple2 t0@@13 t1@@4)))))
 :qid |DafnyPreludebpl.295:15|
 :skolemid |1606|
 :pattern ( ($Is v@@27 (TIMap t0@@13 t1@@4)))
)))
(assert  (and (and (forall ((arg0@@60 T@U) (arg1@@18 T@U) ) (! (= (type (TypeTuple arg0@@60 arg1@@18)) ClassNameType)
 :qid |funType:TypeTuple|
 :pattern ( (TypeTuple arg0@@60 arg1@@18))
)) (forall ((arg0@@61 T@U) ) (! (= (type (TypeTupleCar arg0@@61)) ClassNameType)
 :qid |funType:TypeTupleCar|
 :pattern ( (TypeTupleCar arg0@@61))
))) (forall ((arg0@@62 T@U) ) (! (= (type (TypeTupleCdr arg0@@62)) ClassNameType)
 :qid |funType:TypeTupleCdr|
 :pattern ( (TypeTupleCdr arg0@@62))
))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (= (type a@@1) ClassNameType) (= (type b@@1) ClassNameType)) (and (= (TypeTupleCar (TypeTuple a@@1 b@@1)) a@@1) (= (TypeTupleCdr (TypeTuple a@@1 b@@1)) b@@1)))
 :qid |DafnyPreludebpl.322:15|
 :skolemid |1607|
 :pattern ( (TypeTuple a@@1 b@@1))
)))
(assert (forall ((arg0@@63 T@U) ) (! (= (type (SetRef_to_SetBox arg0@@63)) (MapType0Type BoxType boolType))
 :qid |funType:SetRef_to_SetBox|
 :pattern ( (SetRef_to_SetBox arg0@@63))
)))
(assert (forall ((s@@1 T@U) (bx@@20 T@U) ) (!  (=> (and (= (type s@@1) (MapType0Type refType boolType)) (= (type bx@@20) BoxType)) (= (U_2_bool (MapType0Select (SetRef_to_SetBox s@@1) bx@@20)) (U_2_bool (MapType0Select s@@1 ($Unbox refType bx@@20)))))
 :qid |DafnyPreludebpl.331:15|
 :skolemid |1608|
 :pattern ( (MapType0Select (SetRef_to_SetBox s@@1) bx@@20))
)))
(assert (= (type Tclass._System.object?) TyType))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (type s@@2) (MapType0Type refType boolType)) ($Is (SetRef_to_SetBox s@@2) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.333:15|
 :skolemid |1609|
 :pattern ( (SetRef_to_SetBox s@@2))
)))
(assert (= (Ctor DatatypeTypeType) 21))
(assert (forall ((d T@U) ) (!  (=> (= (type d) DatatypeTypeType) (= (BoxRank ($Box d)) (DtRank d)))
 :qid |DafnyPreludebpl.352:15|
 :skolemid |1610|
 :pattern ( (BoxRank ($Box d)))
)))
(assert (forall ((o T@U) ) (!  (=> (= (type o) BoxType) (<= 0 (|ORD#Offset| o)))
 :qid |DafnyPreludebpl.367:15|
 :skolemid |1611|
 :pattern ( (|ORD#Offset| o))
)))
(assert (forall ((arg0@@64 Int) ) (! (= (type (|ORD#FromNat| arg0@@64)) BoxType)
 :qid |funType:ORD#FromNat|
 :pattern ( (|ORD#FromNat| arg0@@64))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.373:15|
 :skolemid |1612|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (=> (and (= (type o@@0) BoxType) (|ORD#IsNat| o@@0)) (= o@@0 (|ORD#FromNat| (|ORD#Offset| o@@0))))
 :qid |DafnyPreludebpl.375:15|
 :skolemid |1613|
 :pattern ( (|ORD#Offset| o@@0))
 :pattern ( (|ORD#IsNat| o@@0))
)))
(assert (forall ((o@@1 T@U) (p T@U) ) (!  (=> (and (= (type o@@1) BoxType) (= (type p) BoxType)) (and (and (and (=> (|ORD#Less| o@@1 p) (not (= o@@1 p))) (=> (and (|ORD#IsNat| o@@1) (not (|ORD#IsNat| p))) (|ORD#Less| o@@1 p))) (=> (and (|ORD#IsNat| o@@1) (|ORD#IsNat| p)) (= (|ORD#Less| o@@1 p) (< (|ORD#Offset| o@@1) (|ORD#Offset| p))))) (=> (and (|ORD#Less| o@@1 p) (|ORD#IsNat| p)) (|ORD#IsNat| o@@1))))
 :qid |DafnyPreludebpl.379:15|
 :skolemid |1614|
 :pattern ( (|ORD#Less| o@@1 p))
)))
(assert (forall ((o@@2 T@U) (p@@0 T@U) ) (!  (=> (and (= (type o@@2) BoxType) (= (type p@@0) BoxType)) (or (or (|ORD#Less| o@@2 p@@0) (= o@@2 p@@0)) (|ORD#Less| p@@0 o@@2)))
 :qid |DafnyPreludebpl.385:15|
 :skolemid |1615|
 :pattern ( (|ORD#Less| o@@2 p@@0) (|ORD#Less| p@@0 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@1 T@U) (r T@U) ) (!  (=> (and (and (and (= (type o@@3) BoxType) (= (type p@@1) BoxType)) (= (type r) BoxType)) (and (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 r))) (|ORD#Less| o@@3 r))
 :qid |DafnyPreludebpl.388:15|
 :skolemid |1616|
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| p@@1 r))
 :pattern ( (|ORD#Less| o@@3 p@@1) (|ORD#Less| o@@3 r))
)))
(assert (forall ((o@@4 T@U) (p@@2 T@U) ) (!  (=> (and (= (type o@@4) BoxType) (= (type p@@2) BoxType)) (= (|ORD#LessThanLimit| o@@4 p@@2) (|ORD#Less| o@@4 p@@2)))
 :qid |DafnyPreludebpl.395:15|
 :skolemid |1617|
 :pattern ( (|ORD#LessThanLimit| o@@4 p@@2))
)))
(assert (forall ((arg0@@65 T@U) (arg1@@19 T@U) ) (! (= (type (|ORD#Plus| arg0@@65 arg1@@19)) BoxType)
 :qid |funType:ORD#Plus|
 :pattern ( (|ORD#Plus| arg0@@65 arg1@@19))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (=> (and (= (type o@@5) BoxType) (= (type p@@3) BoxType)) (and (=> (|ORD#IsNat| (|ORD#Plus| o@@5 p@@3)) (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3))) (=> (|ORD#IsNat| p@@3) (and (= (|ORD#IsNat| (|ORD#Plus| o@@5 p@@3)) (|ORD#IsNat| o@@5)) (= (|ORD#Offset| (|ORD#Plus| o@@5 p@@3)) (+ (|ORD#Offset| o@@5) (|ORD#Offset| p@@3)))))))
 :qid |DafnyPreludebpl.399:15|
 :skolemid |1618|
 :pattern ( (|ORD#Plus| o@@5 p@@3))
)))
(assert (forall ((o@@6 T@U) (p@@4 T@U) ) (!  (=> (and (= (type o@@6) BoxType) (= (type p@@4) BoxType)) (and (or (= o@@6 (|ORD#Plus| o@@6 p@@4)) (|ORD#Less| o@@6 (|ORD#Plus| o@@6 p@@4))) (or (= p@@4 (|ORD#Plus| o@@6 p@@4)) (|ORD#Less| p@@4 (|ORD#Plus| o@@6 p@@4)))))
 :qid |DafnyPreludebpl.404:15|
 :skolemid |1619|
 :pattern ( (|ORD#Plus| o@@6 p@@4))
)))
(assert (forall ((o@@7 T@U) (p@@5 T@U) ) (!  (=> (and (= (type o@@7) BoxType) (= (type p@@5) BoxType)) (and (=> (= o@@7 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@7 p@@5) p@@5)) (=> (= p@@5 (|ORD#FromNat| 0)) (= (|ORD#Plus| o@@7 p@@5) o@@7))))
 :qid |DafnyPreludebpl.407:15|
 :skolemid |1620|
 :pattern ( (|ORD#Plus| o@@7 p@@5))
)))
(assert (forall ((arg0@@66 T@U) (arg1@@20 T@U) ) (! (= (type (|ORD#Minus| arg0@@66 arg1@@20)) BoxType)
 :qid |funType:ORD#Minus|
 :pattern ( (|ORD#Minus| arg0@@66 arg1@@20))
)))
(assert (forall ((o@@8 T@U) (p@@6 T@U) ) (!  (=> (and (and (= (type o@@8) BoxType) (= (type p@@6) BoxType)) (and (|ORD#IsNat| p@@6) (<= (|ORD#Offset| p@@6) (|ORD#Offset| o@@8)))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@8 p@@6)) (|ORD#IsNat| o@@8)) (= (|ORD#Offset| (|ORD#Minus| o@@8 p@@6)) (- (|ORD#Offset| o@@8) (|ORD#Offset| p@@6)))))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |1621|
 :pattern ( (|ORD#Minus| o@@8 p@@6))
)))
(assert (forall ((o@@9 T@U) (p@@7 T@U) ) (!  (=> (and (and (= (type o@@9) BoxType) (= (type p@@7) BoxType)) (and (|ORD#IsNat| p@@7) (<= (|ORD#Offset| p@@7) (|ORD#Offset| o@@9)))) (or (and (= p@@7 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@9 p@@7) o@@9)) (and (not (= p@@7 (|ORD#FromNat| 0))) (|ORD#Less| (|ORD#Minus| o@@9 p@@7) o@@9))))
 :qid |DafnyPreludebpl.416:15|
 :skolemid |1622|
 :pattern ( (|ORD#Minus| o@@9 p@@7))
)))
(assert (forall ((o@@10 T@U) (m@@5 Int) (n@@1 Int) ) (!  (=> (= (type o@@10) BoxType) (=> (and (<= 0 m@@5) (<= 0 n@@1)) (= (|ORD#Plus| (|ORD#Plus| o@@10 (|ORD#FromNat| m@@5)) (|ORD#FromNat| n@@1)) (|ORD#Plus| o@@10 (|ORD#FromNat| (+ m@@5 n@@1))))))
 :qid |DafnyPreludebpl.422:15|
 :skolemid |1623|
 :pattern ( (|ORD#Plus| (|ORD#Plus| o@@10 (|ORD#FromNat| m@@5)) (|ORD#FromNat| n@@1)))
)))
(assert (forall ((o@@11 T@U) (m@@6 Int) (n@@2 Int) ) (!  (=> (= (type o@@11) BoxType) (=> (and (and (<= 0 m@@6) (<= 0 n@@2)) (<= (+ m@@6 n@@2) (|ORD#Offset| o@@11))) (= (|ORD#Minus| (|ORD#Minus| o@@11 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n@@2)) (|ORD#Minus| o@@11 (|ORD#FromNat| (+ m@@6 n@@2))))))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |1624|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@11 (|ORD#FromNat| m@@6)) (|ORD#FromNat| n@@2)))
)))
(assert (forall ((o@@12 T@U) (m@@7 Int) (n@@3 Int) ) (!  (=> (= (type o@@12) BoxType) (=> (and (and (<= 0 m@@7) (<= 0 n@@3)) (<= n@@3 (+ (|ORD#Offset| o@@12) m@@7))) (and (=> (<= 0 (- m@@7 n@@3)) (= (|ORD#Minus| (|ORD#Plus| o@@12 (|ORD#FromNat| m@@7)) (|ORD#FromNat| n@@3)) (|ORD#Plus| o@@12 (|ORD#FromNat| (- m@@7 n@@3))))) (=> (<= (- m@@7 n@@3) 0) (= (|ORD#Minus| (|ORD#Plus| o@@12 (|ORD#FromNat| m@@7)) (|ORD#FromNat| n@@3)) (|ORD#Minus| o@@12 (|ORD#FromNat| (- n@@3 m@@7))))))))
 :qid |DafnyPreludebpl.432:15|
 :skolemid |1625|
 :pattern ( (|ORD#Minus| (|ORD#Plus| o@@12 (|ORD#FromNat| m@@7)) (|ORD#FromNat| n@@3)))
)))
(assert (forall ((o@@13 T@U) (m@@8 Int) (n@@4 Int) ) (!  (=> (= (type o@@13) BoxType) (=> (and (and (<= 0 m@@8) (<= 0 n@@4)) (<= n@@4 (+ (|ORD#Offset| o@@13) m@@8))) (and (=> (<= 0 (- m@@8 n@@4)) (= (|ORD#Plus| (|ORD#Minus| o@@13 (|ORD#FromNat| m@@8)) (|ORD#FromNat| n@@4)) (|ORD#Minus| o@@13 (|ORD#FromNat| (- m@@8 n@@4))))) (=> (<= (- m@@8 n@@4) 0) (= (|ORD#Plus| (|ORD#Minus| o@@13 (|ORD#FromNat| m@@8)) (|ORD#FromNat| n@@4)) (|ORD#Plus| o@@13 (|ORD#FromNat| (- n@@4 m@@8))))))))
 :qid |DafnyPreludebpl.438:15|
 :skolemid |1626|
 :pattern ( (|ORD#Plus| (|ORD#Minus| o@@13 (|ORD#FromNat| m@@8)) (|ORD#FromNat| n@@4)))
)))
(assert  (and (= (Ctor LayerTypeType) 22) (forall ((arg0@@67 T@U) (arg1@@21 T@U) ) (! (let ((A (MapType0TypeInv1 (type arg0@@67))))
(= (type (AtLayer arg0@@67 arg1@@21)) A))
 :qid |funType:AtLayer|
 :pattern ( (AtLayer arg0@@67 arg1@@21))
))))
(assert (forall ((f T@U) (ly T@U) ) (! (let ((A@@0 (MapType0TypeInv1 (type f))))
 (=> (and (= (type f) (MapType0Type LayerTypeType A@@0)) (= (type ly) LayerTypeType)) (= (AtLayer f ly) (MapType0Select f ly))))
 :qid |DafnyPreludebpl.462:18|
 :skolemid |1627|
 :pattern ( (AtLayer f ly))
)))
(assert (forall ((arg0@@68 T@U) ) (! (= (type ($LS arg0@@68)) LayerTypeType)
 :qid |funType:$LS|
 :pattern ( ($LS arg0@@68))
)))
(assert (forall ((f@@0 T@U) (ly@@0 T@U) ) (! (let ((A@@1 (MapType0TypeInv1 (type f@@0))))
 (=> (and (= (type f@@0) (MapType0Type LayerTypeType A@@1)) (= (type ly@@0) LayerTypeType)) (= (AtLayer f@@0 ($LS ly@@0)) (AtLayer f@@0 ly@@0))))
 :qid |DafnyPreludebpl.463:18|
 :skolemid |1628|
 :pattern ( (AtLayer f@@0 ($LS ly@@0)))
)))
(assert (forall ((arg0@@69 Int) ) (! (= (type (IndexField arg0@@69)) (FieldType BoxType))
 :qid |funType:IndexField|
 :pattern ( (IndexField arg0@@69))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.474:15|
 :skolemid |1629|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.476:15|
 :skolemid |1630|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((arg0@@70 T@U) (arg1@@22 Int) ) (! (= (type (MultiIndexField arg0@@70 arg1@@22)) (FieldType BoxType))
 :qid |funType:MultiIndexField|
 :pattern ( (MultiIndexField arg0@@70 arg1@@22))
)))
(assert (forall ((f@@1 T@U) (i@@3 Int) ) (!  (=> (= (type f@@1) (FieldType BoxType)) (= (FDim (MultiIndexField f@@1 i@@3)) (+ (FDim f@@1) 1)))
 :qid |DafnyPreludebpl.479:15|
 :skolemid |1631|
 :pattern ( (MultiIndexField f@@1 i@@3))
)))
(assert (forall ((arg0@@71 T@U) ) (! (let ((T@@3 (FieldTypeInv0 (type arg0@@71))))
(= (type (MultiIndexField_Inverse0 arg0@@71)) (FieldType T@@3)))
 :qid |funType:MultiIndexField_Inverse0|
 :pattern ( (MultiIndexField_Inverse0 arg0@@71))
)))
(assert (forall ((f@@2 T@U) (i@@4 Int) ) (!  (=> (= (type f@@2) (FieldType BoxType)) (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@2 i@@4)) f@@2) (= (MultiIndexField_Inverse1 (MultiIndexField f@@2 i@@4)) i@@4)))
 :qid |DafnyPreludebpl.482:15|
 :skolemid |1632|
 :pattern ( (MultiIndexField f@@2 i@@4))
)))
(assert  (and (and (forall ((alpha@@3 T@T) (arg0@@72 T@U) (arg1@@23 T@U) ) (! (= (type (FieldOfDecl alpha@@3 arg0@@72 arg1@@23)) (FieldType alpha@@3))
 :qid |funType:FieldOfDecl|
 :pattern ( (FieldOfDecl alpha@@3 arg0@@72 arg1@@23))
)) (forall ((arg0@@73 T@U) ) (! (= (type (DeclType arg0@@73)) ClassNameType)
 :qid |funType:DeclType|
 :pattern ( (DeclType arg0@@73))
))) (forall ((arg0@@74 T@U) ) (! (= (type (DeclName arg0@@74)) NameFamilyType)
 :qid |funType:DeclName|
 :pattern ( (DeclName arg0@@74))
))))
(assert (forall ((cl T@U) (nm T@U) (T@@4 T@T) ) (!  (=> (and (= (type cl) ClassNameType) (= (type nm) NameFamilyType)) (and (= (DeclType (FieldOfDecl T@@4 cl nm)) cl) (= (DeclName (FieldOfDecl T@@4 cl nm)) nm)))
 :qid |DafnyPreludebpl.491:18|
 :skolemid |1633|
 :pattern ( (FieldOfDecl T@@4 cl nm))
)))
(assert (forall ((h@@12 T@U) (k T@U) (v@@28 T@U) (t@@21 T@U) ) (!  (=> (and (and (and (and (= (type h@@12) (MapType0Type refType MapType1Type)) (= (type k) (MapType0Type refType MapType1Type))) (= (type t@@21) TyType)) ($HeapSucc h@@12 k)) ($IsAlloc v@@28 t@@21 h@@12)) ($IsAlloc v@@28 t@@21 k))
 :qid |DafnyPreludebpl.504:17|
 :skolemid |1634|
 :pattern ( ($HeapSucc h@@12 k) ($IsAlloc v@@28 t@@21 h@@12))
)))
(assert (forall ((h@@13 T@U) (k@@0 T@U) (bx@@21 T@U) (t@@22 T@U) ) (!  (=> (and (and (and (and (and (= (type h@@13) (MapType0Type refType MapType1Type)) (= (type k@@0) (MapType0Type refType MapType1Type))) (= (type bx@@21) BoxType)) (= (type t@@22) TyType)) ($HeapSucc h@@13 k@@0)) ($IsAllocBox bx@@21 t@@22 h@@13)) ($IsAllocBox bx@@21 t@@22 k@@0))
 :qid |DafnyPreludebpl.507:14|
 :skolemid |1635|
 :pattern ( ($HeapSucc h@@13 k@@0) ($IsAllocBox bx@@21 t@@22 h@@13))
)))
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert  (not ($IsGhostField alloc)))
(assert (forall ((o@@14 T@U) ) (!  (=> (= (type o@@14) refType) (<= 0 (_System.array.Length o@@14)))
 :qid |DafnyPreludebpl.524:15|
 :skolemid |1636|
 :no-pattern (type o@@14)
 :no-pattern (U_2_int o@@14)
 :no-pattern (U_2_bool o@@14)
)))
(assert (forall ((x@@15 Real) ) (! (= (q@Int x@@15) (to_int x@@15))
 :qid |DafnyPreludebpl.530:14|
 :skolemid |1637|
 :pattern ( (q@Int x@@15))
)))
(assert (forall ((x@@16 Int) ) (! (= (q@Real x@@16) (to_real x@@16))
 :qid |DafnyPreludebpl.531:15|
 :skolemid |1638|
 :pattern ( (q@Real x@@16))
)))
(assert (forall ((i@@5 Int) ) (! (= (q@Int (q@Real i@@5)) i@@5)
 :qid |DafnyPreludebpl.532:15|
 :skolemid |1639|
 :pattern ( (q@Int (q@Real i@@5)))
)))
(assert (= (type $OneHeap) (MapType0Type refType MapType1Type)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((h@@14 T@U) (r@@0 T@U) (f@@3 T@U) (x@@17 T@U) ) (! (let ((alpha@@4 (type x@@17)))
 (=> (and (and (and (= (type h@@14) (MapType0Type refType MapType1Type)) (= (type r@@0) refType)) (= (type f@@3) (FieldType alpha@@4))) ($IsGoodHeap (MapType0Store h@@14 r@@0 (MapType1Store (MapType0Select h@@14 r@@0) f@@3 x@@17)))) ($HeapSucc h@@14 (MapType0Store h@@14 r@@0 (MapType1Store (MapType0Select h@@14 r@@0) f@@3 x@@17)))))
 :qid |DafnyPreludebpl.554:22|
 :skolemid |1640|
 :pattern ( (MapType0Store h@@14 r@@0 (MapType1Store (MapType0Select h@@14 r@@0) f@@3 x@@17)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (and (and (and (and (= (type a@@2) (MapType0Type refType MapType1Type)) (= (type b@@2) (MapType0Type refType MapType1Type))) (= (type c) (MapType0Type refType MapType1Type))) (not (= a@@2 c))) (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))) ($HeapSucc a@@2 c))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1641|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((h@@15 T@U) (k@@1 T@U) ) (!  (=> (and (and (= (type h@@15) (MapType0Type refType MapType1Type)) (= (type k@@1) (MapType0Type refType MapType1Type))) ($HeapSucc h@@15 k@@1)) (forall ((o@@15 T@U) ) (!  (=> (and (= (type o@@15) refType) (U_2_bool (MapType1Select (MapType0Select h@@15 o@@15) alloc))) (U_2_bool (MapType1Select (MapType0Select k@@1 o@@15) alloc)))
 :qid |DafnyPreludebpl.560:30|
 :skolemid |1642|
 :pattern ( (MapType1Select (MapType0Select k@@1 o@@15) alloc))
)))
 :qid |DafnyPreludebpl.559:15|
 :skolemid |1643|
 :pattern ( ($HeapSucc h@@15 k@@1))
)))
(assert (forall ((h@@16 T@U) (k@@2 T@U) ) (!  (=> (and (and (= (type h@@16) (MapType0Type refType MapType1Type)) (= (type k@@2) (MapType0Type refType MapType1Type))) ($HeapSuccGhost h@@16 k@@2)) (and ($HeapSucc h@@16 k@@2) (forall ((o@@16 T@U) (f@@4 T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@16) refType) (= (type f@@4) (FieldType alpha@@5))) (not ($IsGhostField f@@4))) (= (MapType1Select (MapType0Select h@@16 o@@16) f@@4) (MapType1Select (MapType0Select k@@2 o@@16) f@@4))))
 :qid |DafnyPreludebpl.566:20|
 :skolemid |1644|
 :pattern ( (MapType1Select (MapType0Select k@@2 o@@16) f@@4))
))))
 :qid |DafnyPreludebpl.563:15|
 :skolemid |1645|
 :pattern ( ($HeapSuccGhost h@@16 k@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (let ((T@@5 (MapType0TypeInv0 (type s@@3))))
 (=> (= (type s@@3) (MapType0Type T@@5 boolType)) (<= 0 (|Set#Card| s@@3))))
 :qid |DafnyPreludebpl.624:18|
 :skolemid |1650|
 :pattern ( (|Set#Card| s@@3))
)))
(assert (forall ((T@@6 T@T) ) (! (= (type (|Set#Empty| T@@6)) (MapType0Type T@@6 boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T@@6))
)))
(assert (forall ((o@@17 T@U) ) (! (let ((T@@7 (type o@@17)))
 (not (U_2_bool (MapType0Select (|Set#Empty| T@@7) o@@17))))
 :qid |DafnyPreludebpl.627:18|
 :skolemid |1651|
 :pattern ( (let ((T@@7 (type o@@17)))
(MapType0Select (|Set#Empty| T@@7) o@@17)))
)))
(assert (forall ((s@@4 T@U) ) (! (let ((T@@8 (MapType0TypeInv0 (type s@@4))))
 (=> (= (type s@@4) (MapType0Type T@@8 boolType)) (and (= (= (|Set#Card| s@@4) 0) (= s@@4 (|Set#Empty| T@@8))) (=> (not (= (|Set#Card| s@@4) 0)) (exists ((x@@18 T@U) ) (!  (and (= (type x@@18) T@@8) (U_2_bool (MapType0Select s@@4 x@@18)))
 :qid |DafnyPreludebpl.630:33|
 :skolemid |1652|
 :no-pattern (type x@@18)
 :no-pattern (U_2_int x@@18)
 :no-pattern (U_2_bool x@@18)
))))))
 :qid |DafnyPreludebpl.628:18|
 :skolemid |1653|
 :pattern ( (|Set#Card| s@@4))
)))
(assert (forall ((arg0@@75 T@U) ) (! (let ((T@@9 (type arg0@@75)))
(= (type (|Set#Singleton| arg0@@75)) (MapType0Type T@@9 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@75))
)))
(assert (forall ((r@@1 T@U) ) (! (U_2_bool (MapType0Select (|Set#Singleton| r@@1) r@@1))
 :qid |DafnyPreludebpl.636:18|
 :skolemid |1654|
 :pattern ( (|Set#Singleton| r@@1))
)))
(assert (forall ((r@@2 T@U) (o@@18 T@U) ) (! (let ((T@@10 (type r@@2)))
 (=> (= (type o@@18) T@@10) (= (U_2_bool (MapType0Select (|Set#Singleton| r@@2) o@@18)) (= r@@2 o@@18))))
 :qid |DafnyPreludebpl.637:18|
 :skolemid |1655|
 :pattern ( (MapType0Select (|Set#Singleton| r@@2) o@@18))
)))
(assert (forall ((r@@3 T@U) ) (! (= (|Set#Card| (|Set#Singleton| r@@3)) 1)
 :qid |DafnyPreludebpl.638:18|
 :skolemid |1656|
 :pattern ( (|Set#Card| (|Set#Singleton| r@@3)))
)))
(assert (forall ((arg0@@76 T@U) (arg1@@24 T@U) ) (! (let ((T@@11 (type arg1@@24)))
(= (type (|Set#UnionOne| arg0@@76 arg1@@24)) (MapType0Type T@@11 boolType)))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@76 arg1@@24))
)))
(assert (forall ((a@@3 T@U) (x@@19 T@U) (o@@19 T@U) ) (! (let ((T@@12 (type x@@19)))
 (=> (and (= (type a@@3) (MapType0Type T@@12 boolType)) (= (type o@@19) T@@12)) (= (U_2_bool (MapType0Select (|Set#UnionOne| a@@3 x@@19) o@@19))  (or (= o@@19 x@@19) (U_2_bool (MapType0Select a@@3 o@@19))))))
 :qid |DafnyPreludebpl.641:18|
 :skolemid |1657|
 :pattern ( (MapType0Select (|Set#UnionOne| a@@3 x@@19) o@@19))
)))
(assert (forall ((a@@4 T@U) (x@@20 T@U) ) (! (let ((T@@13 (type x@@20)))
 (=> (= (type a@@4) (MapType0Type T@@13 boolType)) (U_2_bool (MapType0Select (|Set#UnionOne| a@@4 x@@20) x@@20))))
 :qid |DafnyPreludebpl.643:18|
 :skolemid |1658|
 :pattern ( (|Set#UnionOne| a@@4 x@@20))
)))
(assert (forall ((a@@5 T@U) (x@@21 T@U) (y@@1 T@U) ) (! (let ((T@@14 (type x@@21)))
 (=> (and (and (= (type a@@5) (MapType0Type T@@14 boolType)) (= (type y@@1) T@@14)) (U_2_bool (MapType0Select a@@5 y@@1))) (U_2_bool (MapType0Select (|Set#UnionOne| a@@5 x@@21) y@@1))))
 :qid |DafnyPreludebpl.645:18|
 :skolemid |1659|
 :pattern ( (|Set#UnionOne| a@@5 x@@21) (MapType0Select a@@5 y@@1))
)))
(assert (forall ((a@@6 T@U) (x@@22 T@U) ) (! (let ((T@@15 (type x@@22)))
 (=> (and (= (type a@@6) (MapType0Type T@@15 boolType)) (U_2_bool (MapType0Select a@@6 x@@22))) (= (|Set#Card| (|Set#UnionOne| a@@6 x@@22)) (|Set#Card| a@@6))))
 :qid |DafnyPreludebpl.647:18|
 :skolemid |1660|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@6 x@@22)))
)))
(assert (forall ((a@@7 T@U) (x@@23 T@U) ) (! (let ((T@@16 (type x@@23)))
 (=> (and (= (type a@@7) (MapType0Type T@@16 boolType)) (not (U_2_bool (MapType0Select a@@7 x@@23)))) (= (|Set#Card| (|Set#UnionOne| a@@7 x@@23)) (+ (|Set#Card| a@@7) 1))))
 :qid |DafnyPreludebpl.649:18|
 :skolemid |1661|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@7 x@@23)))
)))
(assert (forall ((arg0@@77 T@U) (arg1@@25 T@U) ) (! (let ((T@@17 (MapType0TypeInv0 (type arg0@@77))))
(= (type (|Set#Union| arg0@@77 arg1@@25)) (MapType0Type T@@17 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@77 arg1@@25))
)))
(assert (forall ((a@@8 T@U) (b@@3 T@U) (o@@20 T@U) ) (! (let ((T@@18 (type o@@20)))
 (=> (and (= (type a@@8) (MapType0Type T@@18 boolType)) (= (type b@@3) (MapType0Type T@@18 boolType))) (= (U_2_bool (MapType0Select (|Set#Union| a@@8 b@@3) o@@20))  (or (U_2_bool (MapType0Select a@@8 o@@20)) (U_2_bool (MapType0Select b@@3 o@@20))))))
 :qid |DafnyPreludebpl.653:18|
 :skolemid |1662|
 :pattern ( (MapType0Select (|Set#Union| a@@8 b@@3) o@@20))
)))
(assert (forall ((a@@9 T@U) (b@@4 T@U) (y@@2 T@U) ) (! (let ((T@@19 (type y@@2)))
 (=> (and (and (= (type a@@9) (MapType0Type T@@19 boolType)) (= (type b@@4) (MapType0Type T@@19 boolType))) (U_2_bool (MapType0Select a@@9 y@@2))) (U_2_bool (MapType0Select (|Set#Union| a@@9 b@@4) y@@2))))
 :qid |DafnyPreludebpl.655:18|
 :skolemid |1663|
 :pattern ( (|Set#Union| a@@9 b@@4) (MapType0Select a@@9 y@@2))
)))
(assert (forall ((a@@10 T@U) (b@@5 T@U) (y@@3 T@U) ) (! (let ((T@@20 (type y@@3)))
 (=> (and (and (= (type a@@10) (MapType0Type T@@20 boolType)) (= (type b@@5) (MapType0Type T@@20 boolType))) (U_2_bool (MapType0Select b@@5 y@@3))) (U_2_bool (MapType0Select (|Set#Union| a@@10 b@@5) y@@3))))
 :qid |DafnyPreludebpl.657:18|
 :skolemid |1664|
 :pattern ( (|Set#Union| a@@10 b@@5) (MapType0Select b@@5 y@@3))
)))
(assert (forall ((arg0@@78 T@U) (arg1@@26 T@U) ) (! (let ((T@@21 (MapType0TypeInv0 (type arg0@@78))))
(= (type (|Set#Difference| arg0@@78 arg1@@26)) (MapType0Type T@@21 boolType)))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@78 arg1@@26))
)))
(assert (forall ((a@@11 T@U) (b@@6 T@U) ) (! (let ((T@@22 (MapType0TypeInv0 (type a@@11))))
 (=> (and (and (= (type a@@11) (MapType0Type T@@22 boolType)) (= (type b@@6) (MapType0Type T@@22 boolType))) (|Set#Disjoint| a@@11 b@@6)) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@6) a@@11) b@@6) (= (|Set#Difference| (|Set#Union| a@@11 b@@6) b@@6) a@@11))))
 :qid |DafnyPreludebpl.659:18|
 :skolemid |1665|
 :pattern ( (|Set#Union| a@@11 b@@6))
)))
(assert (forall ((arg0@@79 T@U) (arg1@@27 T@U) ) (! (let ((T@@23 (MapType0TypeInv0 (type arg0@@79))))
(= (type (|Set#Intersection| arg0@@79 arg1@@27)) (MapType0Type T@@23 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@79 arg1@@27))
)))
(assert (forall ((a@@12 T@U) (b@@7 T@U) (o@@21 T@U) ) (! (let ((T@@24 (type o@@21)))
 (=> (and (= (type a@@12) (MapType0Type T@@24 boolType)) (= (type b@@7) (MapType0Type T@@24 boolType))) (= (U_2_bool (MapType0Select (|Set#Intersection| a@@12 b@@7) o@@21))  (and (U_2_bool (MapType0Select a@@12 o@@21)) (U_2_bool (MapType0Select b@@7 o@@21))))))
 :qid |DafnyPreludebpl.669:18|
 :skolemid |1666|
 :pattern ( (MapType0Select (|Set#Intersection| a@@12 b@@7) o@@21))
)))
(assert (forall ((a@@13 T@U) (b@@8 T@U) ) (! (let ((T@@25 (MapType0TypeInv0 (type a@@13))))
 (=> (and (= (type a@@13) (MapType0Type T@@25 boolType)) (= (type b@@8) (MapType0Type T@@25 boolType))) (= (|Set#Union| (|Set#Union| a@@13 b@@8) b@@8) (|Set#Union| a@@13 b@@8))))
 :qid |DafnyPreludebpl.672:18|
 :skolemid |1667|
 :pattern ( (|Set#Union| (|Set#Union| a@@13 b@@8) b@@8))
)))
(assert (forall ((a@@14 T@U) (b@@9 T@U) ) (! (let ((T@@26 (MapType0TypeInv0 (type a@@14))))
 (=> (and (= (type a@@14) (MapType0Type T@@26 boolType)) (= (type b@@9) (MapType0Type T@@26 boolType))) (= (|Set#Union| a@@14 (|Set#Union| a@@14 b@@9)) (|Set#Union| a@@14 b@@9))))
 :qid |DafnyPreludebpl.674:18|
 :skolemid |1668|
 :pattern ( (|Set#Union| a@@14 (|Set#Union| a@@14 b@@9)))
)))
(assert (forall ((a@@15 T@U) (b@@10 T@U) ) (! (let ((T@@27 (MapType0TypeInv0 (type a@@15))))
 (=> (and (= (type a@@15) (MapType0Type T@@27 boolType)) (= (type b@@10) (MapType0Type T@@27 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@15 b@@10) b@@10) (|Set#Intersection| a@@15 b@@10))))
 :qid |DafnyPreludebpl.676:18|
 :skolemid |1669|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@15 b@@10) b@@10))
)))
(assert (forall ((a@@16 T@U) (b@@11 T@U) ) (! (let ((T@@28 (MapType0TypeInv0 (type a@@16))))
 (=> (and (= (type a@@16) (MapType0Type T@@28 boolType)) (= (type b@@11) (MapType0Type T@@28 boolType))) (= (|Set#Intersection| a@@16 (|Set#Intersection| a@@16 b@@11)) (|Set#Intersection| a@@16 b@@11))))
 :qid |DafnyPreludebpl.678:18|
 :skolemid |1670|
 :pattern ( (|Set#Intersection| a@@16 (|Set#Intersection| a@@16 b@@11)))
)))
(assert (forall ((a@@17 T@U) (b@@12 T@U) ) (! (let ((T@@29 (MapType0TypeInv0 (type a@@17))))
 (=> (and (= (type a@@17) (MapType0Type T@@29 boolType)) (= (type b@@12) (MapType0Type T@@29 boolType))) (= (+ (|Set#Card| (|Set#Union| a@@17 b@@12)) (|Set#Card| (|Set#Intersection| a@@17 b@@12))) (+ (|Set#Card| a@@17) (|Set#Card| b@@12)))))
 :qid |DafnyPreludebpl.680:18|
 :skolemid |1671|
 :pattern ( (|Set#Card| (|Set#Union| a@@17 b@@12)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@17 b@@12)))
)))
(assert (forall ((a@@18 T@U) (b@@13 T@U) (o@@22 T@U) ) (! (let ((T@@30 (type o@@22)))
 (=> (and (= (type a@@18) (MapType0Type T@@30 boolType)) (= (type b@@13) (MapType0Type T@@30 boolType))) (= (U_2_bool (MapType0Select (|Set#Difference| a@@18 b@@13) o@@22))  (and (U_2_bool (MapType0Select a@@18 o@@22)) (not (U_2_bool (MapType0Select b@@13 o@@22)))))))
 :qid |DafnyPreludebpl.684:18|
 :skolemid |1672|
 :pattern ( (MapType0Select (|Set#Difference| a@@18 b@@13) o@@22))
)))
(assert (forall ((a@@19 T@U) (b@@14 T@U) (y@@4 T@U) ) (! (let ((T@@31 (type y@@4)))
 (=> (and (and (= (type a@@19) (MapType0Type T@@31 boolType)) (= (type b@@14) (MapType0Type T@@31 boolType))) (U_2_bool (MapType0Select b@@14 y@@4))) (not (U_2_bool (MapType0Select (|Set#Difference| a@@19 b@@14) y@@4)))))
 :qid |DafnyPreludebpl.686:18|
 :skolemid |1673|
 :pattern ( (|Set#Difference| a@@19 b@@14) (MapType0Select b@@14 y@@4))
)))
(assert (forall ((a@@20 T@U) (b@@15 T@U) ) (! (let ((T@@32 (MapType0TypeInv0 (type a@@20))))
 (=> (and (= (type a@@20) (MapType0Type T@@32 boolType)) (= (type b@@15) (MapType0Type T@@32 boolType))) (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@20 b@@15)) (|Set#Card| (|Set#Difference| b@@15 a@@20))) (|Set#Card| (|Set#Intersection| a@@20 b@@15))) (|Set#Card| (|Set#Union| a@@20 b@@15))) (= (|Set#Card| (|Set#Difference| a@@20 b@@15)) (- (|Set#Card| a@@20) (|Set#Card| (|Set#Intersection| a@@20 b@@15)))))))
 :qid |DafnyPreludebpl.688:18|
 :skolemid |1674|
 :pattern ( (|Set#Card| (|Set#Difference| a@@20 b@@15)))
)))
(assert (forall ((a@@21 T@U) (b@@16 T@U) ) (! (let ((T@@33 (MapType0TypeInv0 (type a@@21))))
 (=> (and (= (type a@@21) (MapType0Type T@@33 boolType)) (= (type b@@16) (MapType0Type T@@33 boolType))) (= (|Set#Subset| a@@21 b@@16) (forall ((o@@23 T@U) ) (!  (=> (and (= (type o@@23) T@@33) (U_2_bool (MapType0Select a@@21 o@@23))) (U_2_bool (MapType0Select b@@16 o@@23)))
 :qid |DafnyPreludebpl.697:32|
 :skolemid |1675|
 :pattern ( (MapType0Select a@@21 o@@23))
 :pattern ( (MapType0Select b@@16 o@@23))
)))))
 :qid |DafnyPreludebpl.696:17|
 :skolemid |1676|
 :pattern ( (|Set#Subset| a@@21 b@@16))
)))
(assert (forall ((a@@22 T@U) (b@@17 T@U) ) (! (let ((T@@34 (MapType0TypeInv0 (type a@@22))))
 (=> (and (= (type a@@22) (MapType0Type T@@34 boolType)) (= (type b@@17) (MapType0Type T@@34 boolType))) (= (|Set#Equal| a@@22 b@@17) (forall ((o@@24 T@U) ) (!  (=> (= (type o@@24) T@@34) (= (U_2_bool (MapType0Select a@@22 o@@24)) (U_2_bool (MapType0Select b@@17 o@@24))))
 :qid |DafnyPreludebpl.705:31|
 :skolemid |1677|
 :pattern ( (MapType0Select a@@22 o@@24))
 :pattern ( (MapType0Select b@@17 o@@24))
)))))
 :qid |DafnyPreludebpl.704:17|
 :skolemid |1678|
 :pattern ( (|Set#Equal| a@@22 b@@17))
)))
(assert (forall ((a@@23 T@U) (b@@18 T@U) ) (! (let ((T@@35 (MapType0TypeInv0 (type a@@23))))
 (=> (and (and (= (type a@@23) (MapType0Type T@@35 boolType)) (= (type b@@18) (MapType0Type T@@35 boolType))) (|Set#Equal| a@@23 b@@18)) (= a@@23 b@@18)))
 :qid |DafnyPreludebpl.706:17|
 :skolemid |1679|
 :pattern ( (|Set#Equal| a@@23 b@@18))
)))
(assert (forall ((a@@24 T@U) (b@@19 T@U) ) (! (let ((T@@36 (MapType0TypeInv0 (type a@@24))))
 (=> (and (= (type a@@24) (MapType0Type T@@36 boolType)) (= (type b@@19) (MapType0Type T@@36 boolType))) (= (|Set#Disjoint| a@@24 b@@19) (forall ((o@@25 T@U) ) (!  (=> (= (type o@@25) T@@36) (or (not (U_2_bool (MapType0Select a@@24 o@@25))) (not (U_2_bool (MapType0Select b@@19 o@@25)))))
 :qid |DafnyPreludebpl.711:34|
 :skolemid |1680|
 :pattern ( (MapType0Select a@@24 o@@25))
 :pattern ( (MapType0Select b@@19 o@@25))
)))))
 :qid |DafnyPreludebpl.710:18|
 :skolemid |1681|
 :pattern ( (|Set#Disjoint| a@@24 b@@19))
)))
(assert (forall ((T@@37 T@T) ) (! (= (type (|ISet#Empty| T@@37)) (MapType0Type T@@37 boolType))
 :qid |funType:ISet#Empty|
 :pattern ( (|ISet#Empty| T@@37))
)))
(assert (forall ((o@@26 T@U) ) (! (let ((T@@38 (type o@@26)))
 (not (U_2_bool (MapType0Select (|ISet#Empty| T@@38) o@@26))))
 :qid |DafnyPreludebpl.720:18|
 :skolemid |1682|
 :pattern ( (let ((T@@38 (type o@@26)))
(MapType0Select (|ISet#Empty| T@@38) o@@26)))
)))
(assert (forall ((arg0@@80 T@U) (arg1@@28 T@U) ) (! (let ((T@@39 (type arg1@@28)))
(= (type (|ISet#UnionOne| arg0@@80 arg1@@28)) (MapType0Type T@@39 boolType)))
 :qid |funType:ISet#UnionOne|
 :pattern ( (|ISet#UnionOne| arg0@@80 arg1@@28))
)))
(assert (forall ((a@@25 T@U) (x@@24 T@U) (o@@27 T@U) ) (! (let ((T@@40 (type x@@24)))
 (=> (and (= (type a@@25) (MapType0Type T@@40 boolType)) (= (type o@@27) T@@40)) (= (U_2_bool (MapType0Select (|ISet#UnionOne| a@@25 x@@24) o@@27))  (or (= o@@27 x@@24) (U_2_bool (MapType0Select a@@25 o@@27))))))
 :qid |DafnyPreludebpl.727:18|
 :skolemid |1683|
 :pattern ( (MapType0Select (|ISet#UnionOne| a@@25 x@@24) o@@27))
)))
(assert (forall ((a@@26 T@U) (x@@25 T@U) ) (! (let ((T@@41 (type x@@25)))
 (=> (= (type a@@26) (MapType0Type T@@41 boolType)) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@26 x@@25) x@@25))))
 :qid |DafnyPreludebpl.729:18|
 :skolemid |1684|
 :pattern ( (|ISet#UnionOne| a@@26 x@@25))
)))
(assert (forall ((a@@27 T@U) (x@@26 T@U) (y@@5 T@U) ) (! (let ((T@@42 (type x@@26)))
 (=> (and (and (= (type a@@27) (MapType0Type T@@42 boolType)) (= (type y@@5) T@@42)) (U_2_bool (MapType0Select a@@27 y@@5))) (U_2_bool (MapType0Select (|ISet#UnionOne| a@@27 x@@26) y@@5))))
 :qid |DafnyPreludebpl.731:18|
 :skolemid |1685|
 :pattern ( (|ISet#UnionOne| a@@27 x@@26) (MapType0Select a@@27 y@@5))
)))
(assert (forall ((arg0@@81 T@U) (arg1@@29 T@U) ) (! (let ((T@@43 (MapType0TypeInv0 (type arg0@@81))))
(= (type (|ISet#Union| arg0@@81 arg1@@29)) (MapType0Type T@@43 boolType)))
 :qid |funType:ISet#Union|
 :pattern ( (|ISet#Union| arg0@@81 arg1@@29))
)))
(assert (forall ((a@@28 T@U) (b@@20 T@U) (o@@28 T@U) ) (! (let ((T@@44 (type o@@28)))
 (=> (and (= (type a@@28) (MapType0Type T@@44 boolType)) (= (type b@@20) (MapType0Type T@@44 boolType))) (= (U_2_bool (MapType0Select (|ISet#Union| a@@28 b@@20) o@@28))  (or (U_2_bool (MapType0Select a@@28 o@@28)) (U_2_bool (MapType0Select b@@20 o@@28))))))
 :qid |DafnyPreludebpl.735:18|
 :skolemid |1686|
 :pattern ( (MapType0Select (|ISet#Union| a@@28 b@@20) o@@28))
)))
(assert (forall ((a@@29 T@U) (b@@21 T@U) (y@@6 T@U) ) (! (let ((T@@45 (type y@@6)))
 (=> (and (and (= (type a@@29) (MapType0Type T@@45 boolType)) (= (type b@@21) (MapType0Type T@@45 boolType))) (U_2_bool (MapType0Select a@@29 y@@6))) (U_2_bool (MapType0Select (|ISet#Union| a@@29 b@@21) y@@6))))
 :qid |DafnyPreludebpl.737:18|
 :skolemid |1687|
 :pattern ( (|ISet#Union| a@@29 b@@21) (MapType0Select a@@29 y@@6))
)))
(assert (forall ((a@@30 T@U) (b@@22 T@U) (y@@7 T@U) ) (! (let ((T@@46 (type y@@7)))
 (=> (and (and (= (type a@@30) (MapType0Type T@@46 boolType)) (= (type b@@22) (MapType0Type T@@46 boolType))) (U_2_bool (MapType0Select b@@22 y@@7))) (U_2_bool (MapType0Select (|ISet#Union| a@@30 b@@22) y@@7))))
 :qid |DafnyPreludebpl.739:18|
 :skolemid |1688|
 :pattern ( (|ISet#Union| a@@30 b@@22) (MapType0Select b@@22 y@@7))
)))
(assert (forall ((arg0@@82 T@U) (arg1@@30 T@U) ) (! (let ((T@@47 (MapType0TypeInv0 (type arg0@@82))))
(= (type (|ISet#Difference| arg0@@82 arg1@@30)) (MapType0Type T@@47 boolType)))
 :qid |funType:ISet#Difference|
 :pattern ( (|ISet#Difference| arg0@@82 arg1@@30))
)))
(assert (forall ((a@@31 T@U) (b@@23 T@U) ) (! (let ((T@@48 (MapType0TypeInv0 (type a@@31))))
 (=> (and (and (= (type a@@31) (MapType0Type T@@48 boolType)) (= (type b@@23) (MapType0Type T@@48 boolType))) (|ISet#Disjoint| a@@31 b@@23)) (and (= (|ISet#Difference| (|ISet#Union| a@@31 b@@23) a@@31) b@@23) (= (|ISet#Difference| (|ISet#Union| a@@31 b@@23) b@@23) a@@31))))
 :qid |DafnyPreludebpl.741:18|
 :skolemid |1689|
 :pattern ( (|ISet#Union| a@@31 b@@23))
)))
(assert (forall ((arg0@@83 T@U) (arg1@@31 T@U) ) (! (let ((T@@49 (MapType0TypeInv0 (type arg0@@83))))
(= (type (|ISet#Intersection| arg0@@83 arg1@@31)) (MapType0Type T@@49 boolType)))
 :qid |funType:ISet#Intersection|
 :pattern ( (|ISet#Intersection| arg0@@83 arg1@@31))
)))
(assert (forall ((a@@32 T@U) (b@@24 T@U) (o@@29 T@U) ) (! (let ((T@@50 (type o@@29)))
 (=> (and (= (type a@@32) (MapType0Type T@@50 boolType)) (= (type b@@24) (MapType0Type T@@50 boolType))) (= (U_2_bool (MapType0Select (|ISet#Intersection| a@@32 b@@24) o@@29))  (and (U_2_bool (MapType0Select a@@32 o@@29)) (U_2_bool (MapType0Select b@@24 o@@29))))))
 :qid |DafnyPreludebpl.747:18|
 :skolemid |1690|
 :pattern ( (MapType0Select (|ISet#Intersection| a@@32 b@@24) o@@29))
)))
(assert (forall ((a@@33 T@U) (b@@25 T@U) ) (! (let ((T@@51 (MapType0TypeInv0 (type a@@33))))
 (=> (and (= (type a@@33) (MapType0Type T@@51 boolType)) (= (type b@@25) (MapType0Type T@@51 boolType))) (= (|ISet#Union| (|ISet#Union| a@@33 b@@25) b@@25) (|ISet#Union| a@@33 b@@25))))
 :qid |DafnyPreludebpl.750:18|
 :skolemid |1691|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@33 b@@25) b@@25))
)))
(assert (forall ((a@@34 T@U) (b@@26 T@U) ) (! (let ((T@@52 (MapType0TypeInv0 (type a@@34))))
 (=> (and (= (type a@@34) (MapType0Type T@@52 boolType)) (= (type b@@26) (MapType0Type T@@52 boolType))) (= (|ISet#Union| a@@34 (|ISet#Union| a@@34 b@@26)) (|ISet#Union| a@@34 b@@26))))
 :qid |DafnyPreludebpl.752:18|
 :skolemid |1692|
 :pattern ( (|ISet#Union| a@@34 (|ISet#Union| a@@34 b@@26)))
)))
(assert (forall ((a@@35 T@U) (b@@27 T@U) ) (! (let ((T@@53 (MapType0TypeInv0 (type a@@35))))
 (=> (and (= (type a@@35) (MapType0Type T@@53 boolType)) (= (type b@@27) (MapType0Type T@@53 boolType))) (= (|ISet#Intersection| (|ISet#Intersection| a@@35 b@@27) b@@27) (|ISet#Intersection| a@@35 b@@27))))
 :qid |DafnyPreludebpl.754:18|
 :skolemid |1693|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@35 b@@27) b@@27))
)))
(assert (forall ((a@@36 T@U) (b@@28 T@U) ) (! (let ((T@@54 (MapType0TypeInv0 (type a@@36))))
 (=> (and (= (type a@@36) (MapType0Type T@@54 boolType)) (= (type b@@28) (MapType0Type T@@54 boolType))) (= (|ISet#Intersection| a@@36 (|ISet#Intersection| a@@36 b@@28)) (|ISet#Intersection| a@@36 b@@28))))
 :qid |DafnyPreludebpl.756:18|
 :skolemid |1694|
 :pattern ( (|ISet#Intersection| a@@36 (|ISet#Intersection| a@@36 b@@28)))
)))
(assert (forall ((a@@37 T@U) (b@@29 T@U) (o@@30 T@U) ) (! (let ((T@@55 (type o@@30)))
 (=> (and (= (type a@@37) (MapType0Type T@@55 boolType)) (= (type b@@29) (MapType0Type T@@55 boolType))) (= (U_2_bool (MapType0Select (|ISet#Difference| a@@37 b@@29) o@@30))  (and (U_2_bool (MapType0Select a@@37 o@@30)) (not (U_2_bool (MapType0Select b@@29 o@@30)))))))
 :qid |DafnyPreludebpl.761:18|
 :skolemid |1695|
 :pattern ( (MapType0Select (|ISet#Difference| a@@37 b@@29) o@@30))
)))
(assert (forall ((a@@38 T@U) (b@@30 T@U) (y@@8 T@U) ) (! (let ((T@@56 (type y@@8)))
 (=> (and (and (= (type a@@38) (MapType0Type T@@56 boolType)) (= (type b@@30) (MapType0Type T@@56 boolType))) (U_2_bool (MapType0Select b@@30 y@@8))) (not (U_2_bool (MapType0Select (|ISet#Difference| a@@38 b@@30) y@@8)))))
 :qid |DafnyPreludebpl.763:18|
 :skolemid |1696|
 :pattern ( (|ISet#Difference| a@@38 b@@30) (MapType0Select b@@30 y@@8))
)))
(assert (forall ((a@@39 T@U) (b@@31 T@U) ) (! (let ((T@@57 (MapType0TypeInv0 (type a@@39))))
 (=> (and (= (type a@@39) (MapType0Type T@@57 boolType)) (= (type b@@31) (MapType0Type T@@57 boolType))) (= (|ISet#Subset| a@@39 b@@31) (forall ((o@@31 T@U) ) (!  (=> (and (= (type o@@31) T@@57) (U_2_bool (MapType0Select a@@39 o@@31))) (U_2_bool (MapType0Select b@@31 o@@31)))
 :qid |DafnyPreludebpl.768:33|
 :skolemid |1697|
 :pattern ( (MapType0Select a@@39 o@@31))
 :pattern ( (MapType0Select b@@31 o@@31))
)))))
 :qid |DafnyPreludebpl.767:17|
 :skolemid |1698|
 :pattern ( (|ISet#Subset| a@@39 b@@31))
)))
(assert (forall ((a@@40 T@U) (b@@32 T@U) ) (! (let ((T@@58 (MapType0TypeInv0 (type a@@40))))
 (=> (and (= (type a@@40) (MapType0Type T@@58 boolType)) (= (type b@@32) (MapType0Type T@@58 boolType))) (= (|ISet#Equal| a@@40 b@@32) (forall ((o@@32 T@U) ) (!  (=> (= (type o@@32) T@@58) (= (U_2_bool (MapType0Select a@@40 o@@32)) (U_2_bool (MapType0Select b@@32 o@@32))))
 :qid |DafnyPreludebpl.772:32|
 :skolemid |1699|
 :pattern ( (MapType0Select a@@40 o@@32))
 :pattern ( (MapType0Select b@@32 o@@32))
)))))
 :qid |DafnyPreludebpl.771:17|
 :skolemid |1700|
 :pattern ( (|ISet#Equal| a@@40 b@@32))
)))
(assert (forall ((a@@41 T@U) (b@@33 T@U) ) (! (let ((T@@59 (MapType0TypeInv0 (type a@@41))))
 (=> (and (and (= (type a@@41) (MapType0Type T@@59 boolType)) (= (type b@@33) (MapType0Type T@@59 boolType))) (|ISet#Equal| a@@41 b@@33)) (= a@@41 b@@33)))
 :qid |DafnyPreludebpl.773:17|
 :skolemid |1701|
 :pattern ( (|ISet#Equal| a@@41 b@@33))
)))
(assert (forall ((a@@42 T@U) (b@@34 T@U) ) (! (let ((T@@60 (MapType0TypeInv0 (type a@@42))))
 (=> (and (= (type a@@42) (MapType0Type T@@60 boolType)) (= (type b@@34) (MapType0Type T@@60 boolType))) (= (|ISet#Disjoint| a@@42 b@@34) (forall ((o@@33 T@U) ) (!  (=> (= (type o@@33) T@@60) (or (not (U_2_bool (MapType0Select a@@42 o@@33))) (not (U_2_bool (MapType0Select b@@34 o@@33)))))
 :qid |DafnyPreludebpl.778:35|
 :skolemid |1702|
 :pattern ( (MapType0Select a@@42 o@@33))
 :pattern ( (MapType0Select b@@34 o@@33))
)))))
 :qid |DafnyPreludebpl.777:18|
 :skolemid |1703|
 :pattern ( (|ISet#Disjoint| a@@42 b@@34))
)))
(assert (forall ((a@@43 Int) (b@@35 Int) ) (! (= (<= a@@43 b@@35) (= (|Math#min| a@@43 b@@35) a@@43))
 :qid |DafnyPreludebpl.785:15|
 :skolemid |1704|
 :pattern ( (|Math#min| a@@43 b@@35))
)))
(assert (forall ((a@@44 Int) (b@@36 Int) ) (! (= (<= b@@36 a@@44) (= (|Math#min| a@@44 b@@36) b@@36))
 :qid |DafnyPreludebpl.786:15|
 :skolemid |1705|
 :pattern ( (|Math#min| a@@44 b@@36))
)))
(assert (forall ((a@@45 Int) (b@@37 Int) ) (!  (or (= (|Math#min| a@@45 b@@37) a@@45) (= (|Math#min| a@@45 b@@37) b@@37))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1706|
 :pattern ( (|Math#min| a@@45 b@@37))
)))
(assert (forall ((a@@46 Int) ) (!  (=> (<= 0 a@@46) (= (|Math#clip| a@@46) a@@46))
 :qid |DafnyPreludebpl.790:15|
 :skolemid |1707|
 :pattern ( (|Math#clip| a@@46))
)))
(assert (forall ((a@@47 Int) ) (!  (=> (< a@@47 0) (= (|Math#clip| a@@47) 0))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |1708|
 :pattern ( (|Math#clip| a@@47))
)))
(assert (forall ((ms T@U) ) (! (let ((T@@61 (MapType0TypeInv0 (type ms))))
 (=> (= (type ms) (MapType0Type T@@61 intType)) (= ($IsGoodMultiSet ms) (forall ((bx@@22 T@U) ) (!  (=> (= (type bx@@22) T@@61) (and (<= 0 (U_2_int (MapType0Select ms bx@@22))) (<= (U_2_int (MapType0Select ms bx@@22)) (|MultiSet#Card| ms))))
 :qid |DafnyPreludebpl.799:11|
 :skolemid |1709|
 :pattern ( (MapType0Select ms bx@@22))
)))))
 :qid |DafnyPreludebpl.797:18|
 :skolemid |1710|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@5 T@U) ) (! (let ((T@@62 (MapType0TypeInv0 (type s@@5))))
 (=> (= (type s@@5) (MapType0Type T@@62 intType)) (<= 0 (|MultiSet#Card| s@@5))))
 :qid |DafnyPreludebpl.802:18|
 :skolemid |1711|
 :pattern ( (|MultiSet#Card| s@@5))
)))
(assert (forall ((s@@6 T@U) (x@@27 T@U) (n@@5 T@U) ) (! (let ((T@@63 (type x@@27)))
 (=> (and (and (= (type s@@6) (MapType0Type T@@63 intType)) (= (type n@@5) intType)) (<= 0 (U_2_int n@@5))) (= (|MultiSet#Card| (MapType0Store s@@6 x@@27 n@@5)) (+ (- (|MultiSet#Card| s@@6) (U_2_int (MapType0Select s@@6 x@@27))) (U_2_int n@@5)))))
 :qid |DafnyPreludebpl.803:18|
 :skolemid |1712|
 :pattern ( (|MultiSet#Card| (MapType0Store s@@6 x@@27 n@@5)))
)))
(assert (forall ((T@@64 T@T) ) (! (= (type (|MultiSet#Empty| T@@64)) (MapType0Type T@@64 intType))
 :qid |funType:MultiSet#Empty|
 :pattern ( (|MultiSet#Empty| T@@64))
)))
(assert (forall ((o@@34 T@U) ) (! (let ((T@@65 (type o@@34)))
(= (U_2_int (MapType0Select (|MultiSet#Empty| T@@65) o@@34)) 0))
 :qid |DafnyPreludebpl.807:18|
 :skolemid |1713|
 :pattern ( (let ((T@@65 (type o@@34)))
(MapType0Select (|MultiSet#Empty| T@@65) o@@34)))
)))
(assert (forall ((s@@7 T@U) ) (! (let ((T@@66 (MapType0TypeInv0 (type s@@7))))
 (=> (= (type s@@7) (MapType0Type T@@66 intType)) (and (= (= (|MultiSet#Card| s@@7) 0) (= s@@7 (|MultiSet#Empty| T@@66))) (=> (not (= (|MultiSet#Card| s@@7) 0)) (exists ((x@@28 T@U) ) (!  (and (= (type x@@28) T@@66) (< 0 (U_2_int (MapType0Select s@@7 x@@28))))
 :qid |DafnyPreludebpl.810:38|
 :skolemid |1714|
 :no-pattern (type x@@28)
 :no-pattern (U_2_int x@@28)
 :no-pattern (U_2_bool x@@28)
))))))
 :qid |DafnyPreludebpl.808:18|
 :skolemid |1715|
 :pattern ( (|MultiSet#Card| s@@7))
)))
(assert (forall ((arg0@@84 T@U) ) (! (let ((T@@67 (type arg0@@84)))
(= (type (|MultiSet#Singleton| arg0@@84)) (MapType0Type T@@67 intType)))
 :qid |funType:MultiSet#Singleton|
 :pattern ( (|MultiSet#Singleton| arg0@@84))
)))
(assert (forall ((r@@4 T@U) (o@@35 T@U) ) (! (let ((T@@68 (type r@@4)))
 (=> (= (type o@@35) T@@68) (and (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@4) o@@35)) 1) (= r@@4 o@@35)) (= (= (U_2_int (MapType0Select (|MultiSet#Singleton| r@@4) o@@35)) 0) (not (= r@@4 o@@35))))))
 :qid |DafnyPreludebpl.813:18|
 :skolemid |1716|
 :pattern ( (MapType0Select (|MultiSet#Singleton| r@@4) o@@35))
)))
(assert (forall ((arg0@@85 T@U) (arg1@@32 T@U) ) (! (let ((T@@69 (type arg1@@32)))
(= (type (|MultiSet#UnionOne| arg0@@85 arg1@@32)) (MapType0Type T@@69 intType)))
 :qid |funType:MultiSet#UnionOne|
 :pattern ( (|MultiSet#UnionOne| arg0@@85 arg1@@32))
)))
(assert (forall ((r@@5 T@U) ) (! (let ((T@@70 (type r@@5)))
(= (|MultiSet#Singleton| r@@5) (|MultiSet#UnionOne| (|MultiSet#Empty| T@@70) r@@5)))
 :qid |DafnyPreludebpl.815:18|
 :skolemid |1717|
 :pattern ( (|MultiSet#Singleton| r@@5))
)))
(assert (forall ((a@@48 T@U) (x@@29 T@U) (o@@36 T@U) ) (! (let ((T@@71 (type x@@29)))
 (=> (and (= (type a@@48) (MapType0Type T@@71 intType)) (= (type o@@36) T@@71)) (= (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@48 x@@29) o@@36)))  (or (= o@@36 x@@29) (< 0 (U_2_int (MapType0Select a@@48 o@@36)))))))
 :qid |DafnyPreludebpl.819:18|
 :skolemid |1718|
 :pattern ( (MapType0Select (|MultiSet#UnionOne| a@@48 x@@29) o@@36))
)))
(assert (forall ((a@@49 T@U) (x@@30 T@U) ) (! (let ((T@@72 (type x@@30)))
 (=> (= (type a@@49) (MapType0Type T@@72 intType)) (= (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@49 x@@30) x@@30)) (+ (U_2_int (MapType0Select a@@49 x@@30)) 1))))
 :qid |DafnyPreludebpl.822:18|
 :skolemid |1719|
 :pattern ( (|MultiSet#UnionOne| a@@49 x@@30))
)))
(assert (forall ((a@@50 T@U) (x@@31 T@U) (y@@9 T@U) ) (! (let ((T@@73 (type x@@31)))
 (=> (and (and (= (type a@@50) (MapType0Type T@@73 intType)) (= (type y@@9) T@@73)) (< 0 (U_2_int (MapType0Select a@@50 y@@9)))) (< 0 (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@50 x@@31) y@@9)))))
 :qid |DafnyPreludebpl.825:18|
 :skolemid |1720|
 :pattern ( (|MultiSet#UnionOne| a@@50 x@@31) (MapType0Select a@@50 y@@9))
)))
(assert (forall ((a@@51 T@U) (x@@32 T@U) (y@@10 T@U) ) (! (let ((T@@74 (type x@@32)))
 (=> (and (and (= (type a@@51) (MapType0Type T@@74 intType)) (= (type y@@10) T@@74)) (not (= x@@32 y@@10))) (= (U_2_int (MapType0Select a@@51 y@@10)) (U_2_int (MapType0Select (|MultiSet#UnionOne| a@@51 x@@32) y@@10)))))
 :qid |DafnyPreludebpl.828:18|
 :skolemid |1721|
 :pattern ( (|MultiSet#UnionOne| a@@51 x@@32) (MapType0Select a@@51 y@@10))
)))
(assert (forall ((a@@52 T@U) (x@@33 T@U) ) (! (let ((T@@75 (type x@@33)))
 (=> (= (type a@@52) (MapType0Type T@@75 intType)) (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@52 x@@33)) (+ (|MultiSet#Card| a@@52) 1))))
 :qid |DafnyPreludebpl.830:18|
 :skolemid |1722|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@52 x@@33)))
)))
(assert (forall ((arg0@@86 T@U) (arg1@@33 T@U) ) (! (let ((T@@76 (MapType0TypeInv0 (type arg0@@86))))
(= (type (|MultiSet#Union| arg0@@86 arg1@@33)) (MapType0Type T@@76 intType)))
 :qid |funType:MultiSet#Union|
 :pattern ( (|MultiSet#Union| arg0@@86 arg1@@33))
)))
(assert (forall ((a@@53 T@U) (b@@38 T@U) (o@@37 T@U) ) (! (let ((T@@77 (type o@@37)))
 (=> (and (= (type a@@53) (MapType0Type T@@77 intType)) (= (type b@@38) (MapType0Type T@@77 intType))) (= (U_2_int (MapType0Select (|MultiSet#Union| a@@53 b@@38) o@@37)) (+ (U_2_int (MapType0Select a@@53 o@@37)) (U_2_int (MapType0Select b@@38 o@@37))))))
 :qid |DafnyPreludebpl.836:18|
 :skolemid |1723|
 :pattern ( (MapType0Select (|MultiSet#Union| a@@53 b@@38) o@@37))
)))
(assert (forall ((a@@54 T@U) (b@@39 T@U) ) (! (let ((T@@78 (MapType0TypeInv0 (type a@@54))))
 (=> (and (= (type a@@54) (MapType0Type T@@78 intType)) (= (type b@@39) (MapType0Type T@@78 intType))) (= (|MultiSet#Card| (|MultiSet#Union| a@@54 b@@39)) (+ (|MultiSet#Card| a@@54) (|MultiSet#Card| b@@39)))))
 :qid |DafnyPreludebpl.838:18|
 :skolemid |1724|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@54 b@@39)))
)))
(assert (forall ((arg0@@87 T@U) (arg1@@34 T@U) ) (! (let ((T@@79 (MapType0TypeInv0 (type arg0@@87))))
(= (type (|MultiSet#Intersection| arg0@@87 arg1@@34)) (MapType0Type T@@79 intType)))
 :qid |funType:MultiSet#Intersection|
 :pattern ( (|MultiSet#Intersection| arg0@@87 arg1@@34))
)))
(assert (forall ((a@@55 T@U) (b@@40 T@U) (o@@38 T@U) ) (! (let ((T@@80 (type o@@38)))
 (=> (and (= (type a@@55) (MapType0Type T@@80 intType)) (= (type b@@40) (MapType0Type T@@80 intType))) (= (U_2_int (MapType0Select (|MultiSet#Intersection| a@@55 b@@40) o@@38)) (|Math#min| (U_2_int (MapType0Select a@@55 o@@38)) (U_2_int (MapType0Select b@@40 o@@38))))))
 :qid |DafnyPreludebpl.842:18|
 :skolemid |1725|
 :pattern ( (MapType0Select (|MultiSet#Intersection| a@@55 b@@40) o@@38))
)))
(assert (forall ((a@@56 T@U) (b@@41 T@U) ) (! (let ((T@@81 (MapType0TypeInv0 (type a@@56))))
 (=> (and (= (type a@@56) (MapType0Type T@@81 intType)) (= (type b@@41) (MapType0Type T@@81 intType))) (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@56 b@@41) b@@41) (|MultiSet#Intersection| a@@56 b@@41))))
 :qid |DafnyPreludebpl.846:18|
 :skolemid |1726|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@56 b@@41) b@@41))
)))
(assert (forall ((a@@57 T@U) (b@@42 T@U) ) (! (let ((T@@82 (MapType0TypeInv0 (type a@@57))))
 (=> (and (= (type a@@57) (MapType0Type T@@82 intType)) (= (type b@@42) (MapType0Type T@@82 intType))) (= (|MultiSet#Intersection| a@@57 (|MultiSet#Intersection| a@@57 b@@42)) (|MultiSet#Intersection| a@@57 b@@42))))
 :qid |DafnyPreludebpl.848:18|
 :skolemid |1727|
 :pattern ( (|MultiSet#Intersection| a@@57 (|MultiSet#Intersection| a@@57 b@@42)))
)))
(assert (forall ((arg0@@88 T@U) (arg1@@35 T@U) ) (! (let ((T@@83 (MapType0TypeInv0 (type arg0@@88))))
(= (type (|MultiSet#Difference| arg0@@88 arg1@@35)) (MapType0Type T@@83 intType)))
 :qid |funType:MultiSet#Difference|
 :pattern ( (|MultiSet#Difference| arg0@@88 arg1@@35))
)))
(assert (forall ((a@@58 T@U) (b@@43 T@U) (o@@39 T@U) ) (! (let ((T@@84 (type o@@39)))
 (=> (and (= (type a@@58) (MapType0Type T@@84 intType)) (= (type b@@43) (MapType0Type T@@84 intType))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@58 b@@43) o@@39)) (|Math#clip| (- (U_2_int (MapType0Select a@@58 o@@39)) (U_2_int (MapType0Select b@@43 o@@39)))))))
 :qid |DafnyPreludebpl.853:18|
 :skolemid |1728|
 :pattern ( (MapType0Select (|MultiSet#Difference| a@@58 b@@43) o@@39))
)))
(assert (forall ((a@@59 T@U) (b@@44 T@U) (y@@11 T@U) ) (! (let ((T@@85 (type y@@11)))
 (=> (and (and (= (type a@@59) (MapType0Type T@@85 intType)) (= (type b@@44) (MapType0Type T@@85 intType))) (<= (U_2_int (MapType0Select a@@59 y@@11)) (U_2_int (MapType0Select b@@44 y@@11)))) (= (U_2_int (MapType0Select (|MultiSet#Difference| a@@59 b@@44) y@@11)) 0)))
 :qid |DafnyPreludebpl.855:18|
 :skolemid |1729|
 :pattern ( (|MultiSet#Difference| a@@59 b@@44) (MapType0Select b@@44 y@@11) (MapType0Select a@@59 y@@11))
)))
(assert (forall ((a@@60 T@U) (b@@45 T@U) ) (! (let ((T@@86 (MapType0TypeInv0 (type a@@60))))
 (=> (and (= (type a@@60) (MapType0Type T@@86 intType)) (= (type b@@45) (MapType0Type T@@86 intType))) (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a@@60 b@@45)) (|MultiSet#Card| (|MultiSet#Difference| b@@45 a@@60))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a@@60 b@@45)))) (|MultiSet#Card| (|MultiSet#Union| a@@60 b@@45))) (= (|MultiSet#Card| (|MultiSet#Difference| a@@60 b@@45)) (- (|MultiSet#Card| a@@60) (|MultiSet#Card| (|MultiSet#Intersection| a@@60 b@@45)))))))
 :qid |DafnyPreludebpl.857:18|
 :skolemid |1730|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a@@60 b@@45)))
)))
(assert (forall ((a@@61 T@U) (b@@46 T@U) ) (! (let ((T@@87 (MapType0TypeInv0 (type a@@61))))
 (=> (and (= (type a@@61) (MapType0Type T@@87 intType)) (= (type b@@46) (MapType0Type T@@87 intType))) (= (|MultiSet#Subset| a@@61 b@@46) (forall ((o@@40 T@U) ) (!  (=> (= (type o@@40) T@@87) (<= (U_2_int (MapType0Select a@@61 o@@40)) (U_2_int (MapType0Select b@@46 o@@40))))
 :qid |DafnyPreludebpl.867:37|
 :skolemid |1731|
 :pattern ( (MapType0Select a@@61 o@@40))
 :pattern ( (MapType0Select b@@46 o@@40))
)))))
 :qid |DafnyPreludebpl.866:17|
 :skolemid |1732|
 :pattern ( (|MultiSet#Subset| a@@61 b@@46))
)))
(assert (forall ((a@@62 T@U) (b@@47 T@U) ) (! (let ((T@@88 (MapType0TypeInv0 (type a@@62))))
 (=> (and (= (type a@@62) (MapType0Type T@@88 intType)) (= (type b@@47) (MapType0Type T@@88 intType))) (= (|MultiSet#Equal| a@@62 b@@47) (forall ((o@@41 T@U) ) (!  (=> (= (type o@@41) T@@88) (= (U_2_int (MapType0Select a@@62 o@@41)) (U_2_int (MapType0Select b@@47 o@@41))))
 :qid |DafnyPreludebpl.871:36|
 :skolemid |1733|
 :pattern ( (MapType0Select a@@62 o@@41))
 :pattern ( (MapType0Select b@@47 o@@41))
)))))
 :qid |DafnyPreludebpl.870:17|
 :skolemid |1734|
 :pattern ( (|MultiSet#Equal| a@@62 b@@47))
)))
(assert (forall ((a@@63 T@U) (b@@48 T@U) ) (! (let ((T@@89 (MapType0TypeInv0 (type a@@63))))
 (=> (and (and (= (type a@@63) (MapType0Type T@@89 intType)) (= (type b@@48) (MapType0Type T@@89 intType))) (|MultiSet#Equal| a@@63 b@@48)) (= a@@63 b@@48)))
 :qid |DafnyPreludebpl.873:17|
 :skolemid |1735|
 :pattern ( (|MultiSet#Equal| a@@63 b@@48))
)))
(assert (forall ((a@@64 T@U) (b@@49 T@U) ) (! (let ((T@@90 (MapType0TypeInv0 (type a@@64))))
 (=> (and (= (type a@@64) (MapType0Type T@@90 intType)) (= (type b@@49) (MapType0Type T@@90 intType))) (= (|MultiSet#Disjoint| a@@64 b@@49) (forall ((o@@42 T@U) ) (!  (=> (= (type o@@42) T@@90) (or (= (U_2_int (MapType0Select a@@64 o@@42)) 0) (= (U_2_int (MapType0Select b@@49 o@@42)) 0)))
 :qid |DafnyPreludebpl.878:39|
 :skolemid |1736|
 :pattern ( (MapType0Select a@@64 o@@42))
 :pattern ( (MapType0Select b@@49 o@@42))
)))))
 :qid |DafnyPreludebpl.877:18|
 :skolemid |1737|
 :pattern ( (|MultiSet#Disjoint| a@@64 b@@49))
)))
(assert (forall ((arg0@@89 T@U) ) (! (let ((T@@91 (MapType0TypeInv0 (type arg0@@89))))
(= (type (|MultiSet#FromSet| arg0@@89)) (MapType0Type T@@91 intType)))
 :qid |funType:MultiSet#FromSet|
 :pattern ( (|MultiSet#FromSet| arg0@@89))
)))
(assert (forall ((s@@8 T@U) (a@@65 T@U) ) (! (let ((T@@92 (type a@@65)))
 (=> (= (type s@@8) (MapType0Type T@@92 boolType)) (and (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@8) a@@65)) 0)  (not (U_2_bool (MapType0Select s@@8 a@@65)))) (= (= (U_2_int (MapType0Select (|MultiSet#FromSet| s@@8) a@@65)) 1) (U_2_bool (MapType0Select s@@8 a@@65))))))
 :qid |DafnyPreludebpl.882:18|
 :skolemid |1738|
 :pattern ( (MapType0Select (|MultiSet#FromSet| s@@8) a@@65))
)))
(assert (forall ((s@@9 T@U) ) (! (let ((T@@93 (MapType0TypeInv0 (type s@@9))))
 (=> (= (type s@@9) (MapType0Type T@@93 boolType)) (= (|MultiSet#Card| (|MultiSet#FromSet| s@@9)) (|Set#Card| s@@9))))
 :qid |DafnyPreludebpl.885:18|
 :skolemid |1739|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSet| s@@9)))
)))
(assert (forall ((arg0@@90 T@U) ) (! (let ((T@@94 (SeqTypeInv0 (type arg0@@90))))
(= (type (|MultiSet#FromSeq| arg0@@90)) (MapType0Type T@@94 intType)))
 :qid |funType:MultiSet#FromSeq|
 :pattern ( (|MultiSet#FromSeq| arg0@@90))
)))
(assert (forall ((s@@10 T@U) ) (! (let ((T@@95 (SeqTypeInv0 (type s@@10))))
 (=> (= (type s@@10) (SeqType T@@95)) ($IsGoodMultiSet (|MultiSet#FromSeq| s@@10))))
 :qid |DafnyPreludebpl.891:18|
 :skolemid |1740|
 :pattern ( (|MultiSet#FromSeq| s@@10))
)))
(assert (forall ((s@@11 T@U) ) (! (let ((T@@96 (SeqTypeInv0 (type s@@11))))
 (=> (= (type s@@11) (SeqType T@@96)) (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@11)) (|Seq#Length| s@@11))))
 :qid |DafnyPreludebpl.893:18|
 :skolemid |1741|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@11)))
)))
(assert (forall ((arg0@@91 T@U) (arg1@@36 T@U) ) (! (let ((T@@97 (type arg1@@36)))
(= (type (|Seq#Build| arg0@@91 arg1@@36)) (SeqType T@@97)))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@91 arg1@@36))
)))
(assert (forall ((s@@12 T@U) (v@@29 T@U) ) (! (let ((T@@98 (type v@@29)))
 (=> (= (type s@@12) (SeqType T@@98)) (= (|MultiSet#FromSeq| (|Seq#Build| s@@12 v@@29)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@12) v@@29))))
 :qid |DafnyPreludebpl.897:18|
 :skolemid |1742|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@12 v@@29)))
)))
(assert (forall ((T@@99 T@T) ) (! (= (type (|Seq#Empty| T@@99)) (SeqType T@@99))
 :qid |funType:Seq#Empty|
 :pattern ( (|Seq#Empty| T@@99))
)))
(assert (forall ((T@@100 T@T) ) (! (= (|MultiSet#FromSeq| (|Seq#Empty| T@@100)) (|MultiSet#Empty| T@@100))
 :skolemid |1743|
)))
(assert (forall ((arg0@@92 T@U) (arg1@@37 T@U) ) (! (let ((T@@101 (SeqTypeInv0 (type arg0@@92))))
(= (type (|Seq#Append| arg0@@92 arg1@@37)) (SeqType T@@101)))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@92 arg1@@37))
)))
(assert (forall ((a@@66 T@U) (b@@50 T@U) ) (! (let ((T@@102 (SeqTypeInv0 (type a@@66))))
 (=> (and (= (type a@@66) (SeqType T@@102)) (= (type b@@50) (SeqType T@@102))) (= (|MultiSet#FromSeq| (|Seq#Append| a@@66 b@@50)) (|MultiSet#Union| (|MultiSet#FromSeq| a@@66) (|MultiSet#FromSeq| b@@50)))))
 :qid |DafnyPreludebpl.904:18|
 :skolemid |1744|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Append| a@@66 b@@50)))
)))
(assert (forall ((arg0@@93 T@U) (arg1@@38 Int) (arg2@@1 T@U) ) (! (let ((T@@103 (type arg2@@1)))
(= (type (|Seq#Update| arg0@@93 arg1@@38 arg2@@1)) (SeqType T@@103)))
 :qid |funType:Seq#Update|
 :pattern ( (|Seq#Update| arg0@@93 arg1@@38 arg2@@1))
)))
(assert (forall ((s@@13 T@U) (i@@6 Int) (v@@30 T@U) (x@@34 T@U) ) (! (let ((T@@104 (type v@@30)))
 (=> (and (and (= (type s@@13) (SeqType T@@104)) (= (type x@@34) T@@104)) (and (<= 0 i@@6) (< i@@6 (|Seq#Length| s@@13)))) (= (U_2_int (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@13 i@@6 v@@30)) x@@34)) (U_2_int (MapType0Select (|MultiSet#Union| (|MultiSet#Difference| (|MultiSet#FromSeq| s@@13) (|MultiSet#Singleton| (|Seq#Index| s@@13 i@@6))) (|MultiSet#Singleton| v@@30)) x@@34)))))
 :qid |DafnyPreludebpl.909:18|
 :skolemid |1745|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| (|Seq#Update| s@@13 i@@6 v@@30)) x@@34))
)))
(assert (forall ((s@@14 T@U) (x@@35 T@U) ) (! (let ((T@@105 (type x@@35)))
 (=> (= (type s@@14) (SeqType T@@105)) (= (exists ((i@@7 Int) ) (!  (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length| s@@14))) (= x@@35 (|Seq#Index| s@@14 i@@7)))
 :qid |DafnyPreludebpl.916:11|
 :skolemid |1746|
 :pattern ( (|Seq#Index| s@@14 i@@7))
)) (< 0 (U_2_int (MapType0Select (|MultiSet#FromSeq| s@@14) x@@35))))))
 :qid |DafnyPreludebpl.915:18|
 :skolemid |1747|
 :pattern ( (MapType0Select (|MultiSet#FromSeq| s@@14) x@@35))
)))
(assert (forall ((s@@15 T@U) ) (! (let ((T@@106 (SeqTypeInv0 (type s@@15))))
 (=> (= (type s@@15) (SeqType T@@106)) (<= 0 (|Seq#Length| s@@15))))
 :qid |DafnyPreludebpl.925:18|
 :skolemid |1748|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((T@@107 T@T) ) (! (= (|Seq#Length| (|Seq#Empty| T@@107)) 0)
 :skolemid |1749|
 :pattern ( (|Seq#Empty| T@@107))
)))
(assert (forall ((s@@16 T@U) ) (! (let ((T@@108 (SeqTypeInv0 (type s@@16))))
 (=> (and (= (type s@@16) (SeqType T@@108)) (= (|Seq#Length| s@@16) 0)) (= s@@16 (|Seq#Empty| T@@108))))
 :qid |DafnyPreludebpl.929:18|
 :skolemid |1750|
 :pattern ( (|Seq#Length| s@@16))
)))
(assert (forall ((arg0@@94 T@U) ) (! (let ((T@@109 (type arg0@@94)))
(= (type (|Seq#Singleton| arg0@@94)) (SeqType T@@109)))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@94))
)))
(assert (forall ((t@@23 T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t@@23)) 1)
 :qid |DafnyPreludebpl.942:18|
 :skolemid |1751|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t@@23)))
)))
(assert  (and (forall ((arg0@@95 T@U) ) (! (let ((T@@110 (SeqTypeInv0 (type arg0@@95))))
(= (type (|Seq#Build_inv0| arg0@@95)) (SeqType T@@110)))
 :qid |funType:Seq#Build_inv0|
 :pattern ( (|Seq#Build_inv0| arg0@@95))
)) (forall ((arg0@@96 T@U) ) (! (let ((T@@111 (SeqTypeInv0 (type arg0@@96))))
(= (type (|Seq#Build_inv1| arg0@@96)) T@@111))
 :qid |funType:Seq#Build_inv1|
 :pattern ( (|Seq#Build_inv1| arg0@@96))
))))
(assert (forall ((s@@17 T@U) (val@@5 T@U) ) (! (let ((T@@112 (type val@@5)))
 (=> (= (type s@@17) (SeqType T@@112)) (and (= (|Seq#Build_inv0| (|Seq#Build| s@@17 val@@5)) s@@17) (= (|Seq#Build_inv1| (|Seq#Build| s@@17 val@@5)) val@@5))))
 :qid |DafnyPreludebpl.947:18|
 :skolemid |1752|
 :pattern ( (|Seq#Build| s@@17 val@@5))
)))
(assert (forall ((s@@18 T@U) (v@@31 T@U) ) (! (let ((T@@113 (type v@@31)))
 (=> (= (type s@@18) (SeqType T@@113)) (= (|Seq#Length| (|Seq#Build| s@@18 v@@31)) (+ 1 (|Seq#Length| s@@18)))))
 :qid |DafnyPreludebpl.952:18|
 :skolemid |1753|
 :pattern ( (|Seq#Build| s@@18 v@@31))
)))
(assert (forall ((s@@19 T@U) (i@@8 Int) (v@@32 T@U) ) (! (let ((T@@114 (type v@@32)))
 (=> (= (type s@@19) (SeqType T@@114)) (and (=> (= i@@8 (|Seq#Length| s@@19)) (= (|Seq#Index| (|Seq#Build| s@@19 v@@32) i@@8) v@@32)) (=> (not (= i@@8 (|Seq#Length| s@@19))) (= (|Seq#Index| (|Seq#Build| s@@19 v@@32) i@@8) (|Seq#Index| s@@19 i@@8))))))
 :qid |DafnyPreludebpl.955:18|
 :skolemid |1754|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@19 v@@32) i@@8))
)))
(assert (forall ((s@@20 T@U) (bx@@23 T@U) (t@@24 T@U) ) (!  (=> (and (and (and (= (type s@@20) (SeqType BoxType)) (= (type bx@@23) BoxType)) (= (type t@@24) TyType)) (and ($Is s@@20 (TSeq t@@24)) ($IsBox bx@@23 t@@24))) ($Is (|Seq#Build| s@@20 bx@@23) (TSeq t@@24)))
 :qid |DafnyPreludebpl.960:15|
 :skolemid |1755|
 :pattern ( ($Is (|Seq#Build| s@@20 bx@@23) (TSeq t@@24)))
)))
(assert  (and (= (Ctor HandleTypeType) 23) (forall ((arg0@@97 T@U) (arg1@@39 T@U) (arg2@@2 Int) (arg3 T@U) ) (! (= (type (|Seq#Create| arg0@@97 arg1@@39 arg2@@2 arg3)) (SeqType BoxType))
 :qid |funType:Seq#Create|
 :pattern ( (|Seq#Create| arg0@@97 arg1@@39 arg2@@2 arg3))
))))
(assert (forall ((ty T@U) (heap T@U) (len Int) (init T@U) ) (!  (=> (and (and (and (= (type ty) TyType) (= (type heap) (MapType0Type refType MapType1Type))) (= (type init) HandleTypeType)) (and ($IsGoodHeap heap) (<= 0 len))) (= (|Seq#Length| (|Seq#Create| ty heap len init)) len))
 :qid |DafnyPreludebpl.964:15|
 :skolemid |1756|
 :pattern ( (|Seq#Length| (|Seq#Create| ty heap len init)))
)))
(assert (forall ((arg0@@98 T@U) (arg1@@40 T@U) (arg2@@3 T@U) (arg3@@0 T@U) (arg4 T@U) ) (! (= (type (Apply1 arg0@@98 arg1@@40 arg2@@3 arg3@@0 arg4)) BoxType)
 :qid |funType:Apply1|
 :pattern ( (Apply1 arg0@@98 arg1@@40 arg2@@3 arg3@@0 arg4))
)))
(assert (forall ((ty@@0 T@U) (heap@@0 T@U) (len@@0 Int) (init@@0 T@U) (i@@9 Int) ) (!  (=> (and (and (and (= (type ty@@0) TyType) (= (type heap@@0) (MapType0Type refType MapType1Type))) (= (type init@@0) HandleTypeType)) (and (and ($IsGoodHeap heap@@0) (<= 0 i@@9)) (< i@@9 len@@0))) (= (|Seq#Index| (|Seq#Create| ty@@0 heap@@0 len@@0 init@@0) i@@9) (Apply1 TInt (TSeq ty@@0) heap@@0 init@@0 ($Box (int_2_U i@@9)))))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |1757|
 :pattern ( (|Seq#Index| (|Seq#Create| ty@@0 heap@@0 len@@0 init@@0) i@@9))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (let ((T@@115 (SeqTypeInv0 (type s0))))
 (=> (and (= (type s0) (SeqType T@@115)) (= (type s1) (SeqType T@@115))) (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))))
 :qid |DafnyPreludebpl.974:18|
 :skolemid |1758|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((t@@25 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@25) 0) t@@25)
 :qid |DafnyPreludebpl.978:18|
 :skolemid |1759|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@25) 0))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@6 Int) ) (! (let ((T@@116 (SeqTypeInv0 (type s0@@0))))
 (=> (and (= (type s0@@0) (SeqType T@@116)) (= (type s1@@0) (SeqType T@@116))) (and (=> (< n@@6 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@6) (|Seq#Index| s0@@0 n@@6))) (=> (<= (|Seq#Length| s0@@0) n@@6) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@6) (|Seq#Index| s1@@0 (- n@@6 (|Seq#Length| s0@@0))))))))
 :qid |DafnyPreludebpl.979:18|
 :skolemid |1760|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@6))
)))
(assert (forall ((s@@21 T@U) (i@@10 Int) (v@@33 T@U) ) (! (let ((T@@117 (type v@@33)))
 (=> (= (type s@@21) (SeqType T@@117)) (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length| s@@21))) (= (|Seq#Length| (|Seq#Update| s@@21 i@@10 v@@33)) (|Seq#Length| s@@21)))))
 :qid |DafnyPreludebpl.984:18|
 :skolemid |1761|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@21 i@@10 v@@33)))
)))
(assert (forall ((s@@22 T@U) (i@@11 Int) (v@@34 T@U) (n@@7 Int) ) (! (let ((T@@118 (type v@@34)))
 (=> (= (type s@@22) (SeqType T@@118)) (=> (and (<= 0 n@@7) (< n@@7 (|Seq#Length| s@@22))) (and (=> (= i@@11 n@@7) (= (|Seq#Index| (|Seq#Update| s@@22 i@@11 v@@34) n@@7) v@@34)) (=> (not (= i@@11 n@@7)) (= (|Seq#Index| (|Seq#Update| s@@22 i@@11 v@@34) n@@7) (|Seq#Index| s@@22 n@@7)))))))
 :qid |DafnyPreludebpl.986:18|
 :skolemid |1762|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@22 i@@11 v@@34) n@@7))
)))
(assert (forall ((s@@23 T@U) (x@@36 T@U) ) (! (let ((T@@119 (type x@@36)))
 (=> (= (type s@@23) (SeqType T@@119)) (= (|Seq#Contains| s@@23 x@@36) (exists ((i@@12 Int) ) (!  (and (and (<= 0 i@@12) (< i@@12 (|Seq#Length| s@@23))) (= (|Seq#Index| s@@23 i@@12) x@@36))
 :qid |DafnyPreludebpl.994:13|
 :skolemid |1763|
 :pattern ( (|Seq#Index| s@@23 i@@12))
)))))
 :qid |DafnyPreludebpl.992:18|
 :skolemid |1764|
 :pattern ( (|Seq#Contains| s@@23 x@@36))
)))
(assert (forall ((x@@37 T@U) ) (! (let ((T@@120 (type x@@37)))
 (not (|Seq#Contains| (|Seq#Empty| T@@120) x@@37)))
 :qid |DafnyPreludebpl.995:18|
 :skolemid |1765|
 :pattern ( (let ((T@@120 (type x@@37)))
(|Seq#Contains| (|Seq#Empty| T@@120) x@@37)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@38 T@U) ) (! (let ((T@@121 (type x@@38)))
 (=> (and (= (type s0@@1) (SeqType T@@121)) (= (type s1@@1) (SeqType T@@121))) (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@38)  (or (|Seq#Contains| s0@@1 x@@38) (|Seq#Contains| s1@@1 x@@38)))))
 :qid |DafnyPreludebpl.999:18|
 :skolemid |1766|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@38))
)))
(assert (forall ((s@@24 T@U) (v@@35 T@U) (x@@39 T@U) ) (! (let ((T@@122 (type v@@35)))
 (=> (and (= (type s@@24) (SeqType T@@122)) (= (type x@@39) T@@122)) (= (|Seq#Contains| (|Seq#Build| s@@24 v@@35) x@@39)  (or (= v@@35 x@@39) (|Seq#Contains| s@@24 x@@39)))))
 :qid |DafnyPreludebpl.1004:18|
 :skolemid |1767|
 :pattern ( (|Seq#Contains| (|Seq#Build| s@@24 v@@35) x@@39))
)))
(assert (forall ((arg0@@99 T@U) (arg1@@41 Int) ) (! (let ((T@@123 (SeqTypeInv0 (type arg0@@99))))
(= (type (|Seq#Take| arg0@@99 arg1@@41)) (SeqType T@@123)))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@99 arg1@@41))
)))
(assert (forall ((s@@25 T@U) (n@@8 Int) (x@@40 T@U) ) (! (let ((T@@124 (type x@@40)))
 (=> (= (type s@@25) (SeqType T@@124)) (= (|Seq#Contains| (|Seq#Take| s@@25 n@@8) x@@40) (exists ((i@@13 Int) ) (!  (and (and (and (<= 0 i@@13) (< i@@13 n@@8)) (< i@@13 (|Seq#Length| s@@25))) (= (|Seq#Index| s@@25 i@@13) x@@40))
 :qid |DafnyPreludebpl.1011:13|
 :skolemid |1768|
 :pattern ( (|Seq#Index| s@@25 i@@13))
)))))
 :qid |DafnyPreludebpl.1008:18|
 :skolemid |1769|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@25 n@@8) x@@40))
)))
(assert (forall ((arg0@@100 T@U) (arg1@@42 Int) ) (! (let ((T@@125 (SeqTypeInv0 (type arg0@@100))))
(= (type (|Seq#Drop| arg0@@100 arg1@@42)) (SeqType T@@125)))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@100 arg1@@42))
)))
(assert (forall ((s@@26 T@U) (n@@9 Int) (x@@41 T@U) ) (! (let ((T@@126 (type x@@41)))
 (=> (= (type s@@26) (SeqType T@@126)) (= (|Seq#Contains| (|Seq#Drop| s@@26 n@@9) x@@41) (exists ((i@@14 Int) ) (!  (and (and (and (<= 0 n@@9) (<= n@@9 i@@14)) (< i@@14 (|Seq#Length| s@@26))) (= (|Seq#Index| s@@26 i@@14) x@@41))
 :qid |DafnyPreludebpl.1016:13|
 :skolemid |1770|
 :pattern ( (|Seq#Index| s@@26 i@@14))
)))))
 :qid |DafnyPreludebpl.1013:18|
 :skolemid |1771|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@26 n@@9) x@@41))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) ) (! (let ((T@@127 (SeqTypeInv0 (type s0@@2))))
 (=> (and (= (type s0@@2) (SeqType T@@127)) (= (type s1@@2) (SeqType T@@127))) (= (|Seq#Equal| s0@@2 s1@@2)  (and (= (|Seq#Length| s0@@2) (|Seq#Length| s1@@2)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0@@2))) (= (|Seq#Index| s0@@2 j) (|Seq#Index| s1@@2 j)))
 :qid |DafnyPreludebpl.1023:13|
 :skolemid |1772|
 :pattern ( (|Seq#Index| s0@@2 j))
 :pattern ( (|Seq#Index| s1@@2 j))
))))))
 :qid |DafnyPreludebpl.1020:18|
 :skolemid |1773|
 :pattern ( (|Seq#Equal| s0@@2 s1@@2))
)))
(assert (forall ((a@@67 T@U) (b@@51 T@U) ) (! (let ((T@@128 (SeqTypeInv0 (type a@@67))))
 (=> (and (and (= (type a@@67) (SeqType T@@128)) (= (type b@@51) (SeqType T@@128))) (|Seq#Equal| a@@67 b@@51)) (= a@@67 b@@51)))
 :qid |DafnyPreludebpl.1025:18|
 :skolemid |1774|
 :pattern ( (|Seq#Equal| a@@67 b@@51))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@10 Int) ) (! (let ((T@@129 (SeqTypeInv0 (type s0@@3))))
 (=> (and (= (type s0@@3) (SeqType T@@129)) (= (type s1@@3) (SeqType T@@129))) (= (|Seq#SameUntil| s0@@3 s1@@3 n@@10) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 n@@10)) (= (|Seq#Index| s0@@3 j@@0) (|Seq#Index| s1@@3 j@@0)))
 :qid |DafnyPreludebpl.1031:13|
 :skolemid |1775|
 :pattern ( (|Seq#Index| s0@@3 j@@0))
 :pattern ( (|Seq#Index| s1@@3 j@@0))
)))))
 :qid |DafnyPreludebpl.1029:18|
 :skolemid |1776|
 :pattern ( (|Seq#SameUntil| s0@@3 s1@@3 n@@10))
)))
(assert (forall ((s@@27 T@U) (n@@11 Int) ) (! (let ((T@@130 (SeqTypeInv0 (type s@@27))))
 (=> (= (type s@@27) (SeqType T@@130)) (=> (and (<= 0 n@@11) (<= n@@11 (|Seq#Length| s@@27))) (= (|Seq#Length| (|Seq#Take| s@@27 n@@11)) n@@11))))
 :qid |DafnyPreludebpl.1035:18|
 :skolemid |1777|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@27 n@@11)))
)))
(assert (forall ((s@@28 T@U) (n@@12 Int) (j@@1 Int) ) (! (let ((T@@131 (SeqTypeInv0 (type s@@28))))
 (=> (= (type s@@28) (SeqType T@@131)) (=> (and (and (<= 0 j@@1) (< j@@1 n@@12)) (< j@@1 (|Seq#Length| s@@28))) (= (|Seq#Index| (|Seq#Take| s@@28 n@@12) j@@1) (|Seq#Index| s@@28 j@@1)))))
 :qid |DafnyPreludebpl.1037:18|
 :weight 25
 :skolemid |1778|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@28 n@@12) j@@1))
 :pattern ( (|Seq#Index| s@@28 j@@1) (|Seq#Take| s@@28 n@@12))
)))
(assert (forall ((s@@29 T@U) (n@@13 Int) ) (! (let ((T@@132 (SeqTypeInv0 (type s@@29))))
 (=> (= (type s@@29) (SeqType T@@132)) (=> (and (<= 0 n@@13) (<= n@@13 (|Seq#Length| s@@29))) (= (|Seq#Length| (|Seq#Drop| s@@29 n@@13)) (- (|Seq#Length| s@@29) n@@13)))))
 :qid |DafnyPreludebpl.1045:18|
 :skolemid |1779|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@29 n@@13)))
)))
(assert (forall ((s@@30 T@U) (n@@14 Int) (j@@2 Int) ) (! (let ((T@@133 (SeqTypeInv0 (type s@@30))))
 (=> (= (type s@@30) (SeqType T@@133)) (=> (and (and (<= 0 n@@14) (<= 0 j@@2)) (< j@@2 (- (|Seq#Length| s@@30) n@@14))) (= (|Seq#Index| (|Seq#Drop| s@@30 n@@14) j@@2) (|Seq#Index| s@@30 (+ j@@2 n@@14))))))
 :qid |DafnyPreludebpl.1047:18|
 :weight 25
 :skolemid |1780|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@30 n@@14) j@@2))
)))
(assert (forall ((s@@31 T@U) (n@@15 Int) (k@@3 Int) ) (! (let ((T@@134 (SeqTypeInv0 (type s@@31))))
 (=> (= (type s@@31) (SeqType T@@134)) (=> (and (and (<= 0 n@@15) (<= n@@15 k@@3)) (< k@@3 (|Seq#Length| s@@31))) (= (|Seq#Index| (|Seq#Drop| s@@31 n@@15) (- k@@3 n@@15)) (|Seq#Index| s@@31 k@@3)))))
 :qid |DafnyPreludebpl.1052:18|
 :weight 25
 :skolemid |1781|
 :pattern ( (|Seq#Index| s@@31 k@@3) (|Seq#Drop| s@@31 n@@15))
)))
(assert (forall ((s@@32 T@U) (t@@26 T@U) (n@@16 Int) ) (! (let ((T@@135 (SeqTypeInv0 (type s@@32))))
 (=> (and (and (= (type s@@32) (SeqType T@@135)) (= (type t@@26) (SeqType T@@135))) (= n@@16 (|Seq#Length| s@@32))) (and (= (|Seq#Take| (|Seq#Append| s@@32 t@@26) n@@16) s@@32) (= (|Seq#Drop| (|Seq#Append| s@@32 t@@26) n@@16) t@@26))))
 :qid |DafnyPreludebpl.1058:18|
 :skolemid |1782|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@32 t@@26) n@@16))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@32 t@@26) n@@16))
)))
(assert (forall ((arg0@@101 T@U) (arg1@@43 T@U) ) (! (= (type (|Seq#FromArray| arg0@@101 arg1@@43)) (SeqType BoxType))
 :qid |funType:Seq#FromArray|
 :pattern ( (|Seq#FromArray| arg0@@101 arg1@@43))
)))
(assert (forall ((h@@17 T@U) (a@@68 T@U) ) (!  (=> (and (= (type h@@17) (MapType0Type refType MapType1Type)) (= (type a@@68) refType)) (= (|Seq#Length| (|Seq#FromArray| h@@17 a@@68)) (_System.array.Length a@@68)))
 :qid |DafnyPreludebpl.1067:15|
 :skolemid |1783|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@17 a@@68)))
)))
(assert (forall ((h@@18 T@U) (a@@69 T@U) ) (!  (=> (and (= (type h@@18) (MapType0Type refType MapType1Type)) (= (type a@@69) refType)) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 (|Seq#Length| (|Seq#FromArray| h@@18 a@@69)))) (= (|Seq#Index| (|Seq#FromArray| h@@18 a@@69) i@@15) (MapType1Select (MapType0Select h@@18 a@@69) (IndexField i@@15))))
 :qid |DafnyPreludebpl.1072:11|
 :skolemid |1784|
 :pattern ( (MapType1Select (MapType0Select h@@18 a@@69) (IndexField i@@15)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@18 a@@69) i@@15))
)))
 :qid |DafnyPreludebpl.1070:15|
 :skolemid |1785|
 :pattern ( (|Seq#FromArray| h@@18 a@@69))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@70 T@U) ) (!  (=> (and (and (= (type h0) (MapType0Type refType MapType1Type)) (= (type h1) (MapType0Type refType MapType1Type))) (= (type a@@70) refType)) (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select h0 a@@70) (MapType0Select h1 a@@70))) (= (|Seq#FromArray| h0 a@@70) (|Seq#FromArray| h1 a@@70))))
 :qid |DafnyPreludebpl.1082:15|
 :skolemid |1786|
 :pattern ( (|Seq#FromArray| h1 a@@70) ($HeapSucc h0 h1))
)))
(assert (forall ((h@@19 T@U) (i@@16 Int) (v@@36 T@U) (a@@71 T@U) ) (!  (=> (and (and (and (= (type h@@19) (MapType0Type refType MapType1Type)) (= (type v@@36) BoxType)) (= (type a@@71) refType)) (and (<= 0 i@@16) (< i@@16 (_System.array.Length a@@71)))) (= (|Seq#FromArray| (MapType0Store h@@19 a@@71 (MapType1Store (MapType0Select h@@19 a@@71) (IndexField i@@16) v@@36)) a@@71) (|Seq#Update| (|Seq#FromArray| h@@19 a@@71) i@@16 v@@36)))
 :qid |DafnyPreludebpl.1087:15|
 :skolemid |1787|
 :pattern ( (|Seq#FromArray| (MapType0Store h@@19 a@@71 (MapType1Store (MapType0Select h@@19 a@@71) (IndexField i@@16) v@@36)) a@@71))
)))
(assert (forall ((s@@33 T@U) (i@@17 Int) (v@@37 T@U) (n@@17 Int) ) (! (let ((T@@136 (type v@@37)))
 (=> (= (type s@@33) (SeqType T@@136)) (=> (and (and (<= 0 i@@17) (< i@@17 n@@17)) (<= n@@17 (|Seq#Length| s@@33))) (= (|Seq#Take| (|Seq#Update| s@@33 i@@17 v@@37) n@@17) (|Seq#Update| (|Seq#Take| s@@33 n@@17) i@@17 v@@37)))))
 :qid |DafnyPreludebpl.1092:18|
 :skolemid |1788|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@33 i@@17 v@@37) n@@17))
)))
(assert (forall ((s@@34 T@U) (i@@18 Int) (v@@38 T@U) (n@@18 Int) ) (! (let ((T@@137 (type v@@38)))
 (=> (= (type s@@34) (SeqType T@@137)) (=> (and (<= n@@18 i@@18) (< i@@18 (|Seq#Length| s@@34))) (= (|Seq#Take| (|Seq#Update| s@@34 i@@18 v@@38) n@@18) (|Seq#Take| s@@34 n@@18)))))
 :qid |DafnyPreludebpl.1095:18|
 :skolemid |1789|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@34 i@@18 v@@38) n@@18))
)))
(assert (forall ((s@@35 T@U) (i@@19 Int) (v@@39 T@U) (n@@19 Int) ) (! (let ((T@@138 (type v@@39)))
 (=> (= (type s@@35) (SeqType T@@138)) (=> (and (and (<= 0 n@@19) (<= n@@19 i@@19)) (< i@@19 (|Seq#Length| s@@35))) (= (|Seq#Drop| (|Seq#Update| s@@35 i@@19 v@@39) n@@19) (|Seq#Update| (|Seq#Drop| s@@35 n@@19) (- i@@19 n@@19) v@@39)))))
 :qid |DafnyPreludebpl.1098:18|
 :skolemid |1790|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@35 i@@19 v@@39) n@@19))
)))
(assert (forall ((s@@36 T@U) (i@@20 Int) (v@@40 T@U) (n@@20 Int) ) (! (let ((T@@139 (type v@@40)))
 (=> (= (type s@@36) (SeqType T@@139)) (=> (and (and (<= 0 i@@20) (< i@@20 n@@20)) (< n@@20 (|Seq#Length| s@@36))) (= (|Seq#Drop| (|Seq#Update| s@@36 i@@20 v@@40) n@@20) (|Seq#Drop| s@@36 n@@20)))))
 :qid |DafnyPreludebpl.1101:18|
 :skolemid |1791|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@36 i@@20 v@@40) n@@20))
)))
(assert (forall ((h@@20 T@U) (a@@72 T@U) (n0 Int) (n1 Int) ) (!  (=> (and (= (type h@@20) (MapType0Type refType MapType1Type)) (= (type a@@72) refType)) (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a@@72))) (= (|Seq#Take| (|Seq#FromArray| h@@20 a@@72) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h@@20 a@@72) n0) (MapType1Select (MapType0Select h@@20 a@@72) (IndexField n0))))))
 :qid |DafnyPreludebpl.1105:15|
 :skolemid |1792|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h@@20 a@@72) n0) (|Seq#Take| (|Seq#FromArray| h@@20 a@@72) n1))
)))
(assert (forall ((s@@37 T@U) (v@@41 T@U) (n@@21 Int) ) (! (let ((T@@140 (type v@@41)))
 (=> (= (type s@@37) (SeqType T@@140)) (=> (and (<= 0 n@@21) (<= n@@21 (|Seq#Length| s@@37))) (= (|Seq#Drop| (|Seq#Build| s@@37 v@@41) n@@21) (|Seq#Build| (|Seq#Drop| s@@37 n@@21) v@@41)))))
 :qid |DafnyPreludebpl.1109:18|
 :skolemid |1793|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@37 v@@41) n@@21))
)))
(assert (forall ((s@@38 T@U) (i@@21 Int) ) (!  (=> (= (type s@@38) (SeqType BoxType)) (=> (and (<= 0 i@@21) (< i@@21 (|Seq#Length| s@@38))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@38 i@@21))) (|Seq#Rank| s@@38))))
 :qid |DafnyPreludebpl.1114:15|
 :skolemid |1794|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@38 i@@21))))
)))
(assert (forall ((s@@39 T@U) (i@@22 Int) ) (! (let ((T@@141 (SeqTypeInv0 (type s@@39))))
 (=> (= (type s@@39) (SeqType T@@141)) (=> (and (< 0 i@@22) (<= i@@22 (|Seq#Length| s@@39))) (< (|Seq#Rank| (|Seq#Drop| s@@39 i@@22)) (|Seq#Rank| s@@39)))))
 :qid |DafnyPreludebpl.1117:18|
 :skolemid |1795|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@39 i@@22)))
)))
(assert (forall ((s@@40 T@U) (i@@23 Int) ) (! (let ((T@@142 (SeqTypeInv0 (type s@@40))))
 (=> (= (type s@@40) (SeqType T@@142)) (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length| s@@40))) (< (|Seq#Rank| (|Seq#Take| s@@40 i@@23)) (|Seq#Rank| s@@40)))))
 :qid |DafnyPreludebpl.1120:18|
 :skolemid |1796|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@40 i@@23)))
)))
(assert (forall ((s@@41 T@U) (i@@24 Int) (j@@3 Int) ) (! (let ((T@@143 (SeqTypeInv0 (type s@@41))))
 (=> (= (type s@@41) (SeqType T@@143)) (=> (and (and (<= 0 i@@24) (< i@@24 j@@3)) (<= j@@3 (|Seq#Length| s@@41))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@41 i@@24) (|Seq#Drop| s@@41 j@@3))) (|Seq#Rank| s@@41)))))
 :qid |DafnyPreludebpl.1123:18|
 :skolemid |1797|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@41 i@@24) (|Seq#Drop| s@@41 j@@3))))
)))
(assert (forall ((s@@42 T@U) (n@@22 Int) ) (! (let ((T@@144 (SeqTypeInv0 (type s@@42))))
 (=> (and (= (type s@@42) (SeqType T@@144)) (= n@@22 0)) (= (|Seq#Drop| s@@42 n@@22) s@@42)))
 :qid |DafnyPreludebpl.1128:18|
 :skolemid |1798|
 :pattern ( (|Seq#Drop| s@@42 n@@22))
)))
(assert (forall ((s@@43 T@U) (n@@23 Int) ) (! (let ((T@@145 (SeqTypeInv0 (type s@@43))))
 (=> (and (= (type s@@43) (SeqType T@@145)) (= n@@23 0)) (= (|Seq#Take| s@@43 n@@23) (|Seq#Empty| T@@145))))
 :qid |DafnyPreludebpl.1130:18|
 :skolemid |1799|
 :pattern ( (|Seq#Take| s@@43 n@@23))
)))
(assert (forall ((s@@44 T@U) (m@@9 Int) (n@@24 Int) ) (! (let ((T@@146 (SeqTypeInv0 (type s@@44))))
 (=> (= (type s@@44) (SeqType T@@146)) (=> (and (and (<= 0 m@@9) (<= 0 n@@24)) (<= (+ m@@9 n@@24) (|Seq#Length| s@@44))) (= (|Seq#Drop| (|Seq#Drop| s@@44 m@@9) n@@24) (|Seq#Drop| s@@44 (+ m@@9 n@@24))))))
 :qid |DafnyPreludebpl.1132:18|
 :skolemid |1800|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@44 m@@9) n@@24))
)))
(assert (forall ((m@@10 T@U) ) (! (let ((V@@3 (MapTypeInv1 (type m@@10))))
(let ((U@@3 (MapTypeInv0 (type m@@10))))
 (=> (= (type m@@10) (MapType U@@3 V@@3)) (<= 0 (|Map#Card| m@@10)))))
 :qid |DafnyPreludebpl.1150:20|
 :skolemid |1801|
 :pattern ( (|Map#Card| m@@10))
)))
(assert (forall ((U@@4 T@T) (V@@4 T@T) ) (! (= (type (|Map#Empty| U@@4 V@@4)) (MapType U@@4 V@@4))
 :qid |funType:Map#Empty|
 :pattern ( (|Map#Empty| U@@4 V@@4))
)))
(assert (forall ((m@@11 T@U) ) (! (let ((V@@5 (MapTypeInv1 (type m@@11))))
(let ((U@@5 (MapTypeInv0 (type m@@11))))
 (=> (= (type m@@11) (MapType U@@5 V@@5)) (= (= (|Map#Card| m@@11) 0) (= m@@11 (|Map#Empty| U@@5 V@@5))))))
 :qid |DafnyPreludebpl.1152:21|
 :skolemid |1802|
 :pattern ( (|Map#Card| m@@11))
)))
(assert (forall ((m@@12 T@U) ) (! (let ((V@@6 (MapTypeInv1 (type m@@12))))
(let ((U@@6 (MapTypeInv0 (type m@@12))))
 (=> (= (type m@@12) (MapType U@@6 V@@6)) (or (= m@@12 (|Map#Empty| U@@6 V@@6)) (exists ((k@@4 T@U) ) (!  (and (= (type k@@4) U@@6) (U_2_bool (MapType0Select (|Map#Domain| m@@12) k@@4)))
 :qid |DafnyPreludebpl.1158:31|
 :skolemid |1803|
 :no-pattern (type k@@4)
 :no-pattern (U_2_int k@@4)
 :no-pattern (U_2_bool k@@4)
))))))
 :qid |DafnyPreludebpl.1156:21|
 :skolemid |1804|
 :pattern ( (|Map#Domain| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (! (let ((V@@7 (MapTypeInv1 (type m@@13))))
(let ((U@@7 (MapTypeInv0 (type m@@13))))
 (=> (= (type m@@13) (MapType U@@7 V@@7)) (or (= m@@13 (|Map#Empty| U@@7 V@@7)) (exists ((v@@42 T@U) ) (!  (and (= (type v@@42) V@@7) (U_2_bool (MapType0Select (|Map#Values| m@@13) v@@42)))
 :qid |DafnyPreludebpl.1161:31|
 :skolemid |1805|
 :no-pattern (type v@@42)
 :no-pattern (U_2_int v@@42)
 :no-pattern (U_2_bool v@@42)
))))))
 :qid |DafnyPreludebpl.1159:21|
 :skolemid |1806|
 :pattern ( (|Map#Values| m@@13))
)))
(assert (forall ((arg0@@102 T@U) (arg1@@44 T@U) ) (! (= (type (|#_System._tuple#2._#Make2| arg0@@102 arg1@@44)) DatatypeTypeType)
 :qid |funType:#_System._tuple#2._#Make2|
 :pattern ( (|#_System._tuple#2._#Make2| arg0@@102 arg1@@44))
)))
(assert (forall ((m@@14 T@U) ) (! (let ((V@@8 (MapTypeInv1 (type m@@14))))
(let ((U@@8 (MapTypeInv0 (type m@@14))))
 (=> (= (type m@@14) (MapType U@@8 V@@8)) (or (= m@@14 (|Map#Empty| U@@8 V@@8)) (exists ((k@@5 T@U) (v@@43 T@U) ) (!  (and (and (= (type k@@5) BoxType) (= (type v@@43) BoxType)) (U_2_bool (MapType0Select (|Map#Items| m@@14) ($Box (|#_System._tuple#2._#Make2| k@@5 v@@43)))))
 :qid |DafnyPreludebpl.1164:31|
 :skolemid |1807|
 :no-pattern (type k@@5)
 :no-pattern (type v@@43)
 :no-pattern (U_2_int k@@5)
 :no-pattern (U_2_bool k@@5)
 :no-pattern (U_2_int v@@43)
 :no-pattern (U_2_bool v@@43)
))))))
 :qid |DafnyPreludebpl.1162:21|
 :skolemid |1808|
 :pattern ( (|Map#Items| m@@14))
)))
(assert (forall ((m@@15 T@U) ) (! (let ((V@@9 (MapTypeInv1 (type m@@15))))
(let ((U@@9 (MapTypeInv0 (type m@@15))))
 (=> (= (type m@@15) (MapType U@@9 V@@9)) (= (|Set#Card| (|Map#Domain| m@@15)) (|Map#Card| m@@15)))))
 :qid |DafnyPreludebpl.1166:21|
 :skolemid |1809|
 :pattern ( (|Set#Card| (|Map#Domain| m@@15)))
)))
(assert (forall ((m@@16 T@U) ) (! (let ((V@@10 (MapTypeInv1 (type m@@16))))
(let ((U@@10 (MapTypeInv0 (type m@@16))))
 (=> (= (type m@@16) (MapType U@@10 V@@10)) (<= (|Set#Card| (|Map#Values| m@@16)) (|Map#Card| m@@16)))))
 :qid |DafnyPreludebpl.1169:21|
 :skolemid |1810|
 :pattern ( (|Set#Card| (|Map#Values| m@@16)))
)))
(assert (forall ((m@@17 T@U) ) (! (let ((V@@11 (MapTypeInv1 (type m@@17))))
(let ((U@@11 (MapTypeInv0 (type m@@17))))
 (=> (= (type m@@17) (MapType U@@11 V@@11)) (= (|Set#Card| (|Map#Items| m@@17)) (|Map#Card| m@@17)))))
 :qid |DafnyPreludebpl.1172:21|
 :skolemid |1811|
 :pattern ( (|Set#Card| (|Map#Items| m@@17)))
)))
(assert (forall ((m@@18 T@U) (v@@44 T@U) ) (! (let ((V@@12 (type v@@44)))
(let ((U@@12 (MapTypeInv0 (type m@@18))))
 (=> (= (type m@@18) (MapType U@@12 V@@12)) (= (U_2_bool (MapType0Select (|Map#Values| m@@18) v@@44)) (exists ((u@@5 T@U) ) (!  (and (= (type u@@5) U@@12) (and (U_2_bool (MapType0Select (|Map#Domain| m@@18) u@@5)) (= v@@44 (MapType0Select (|Map#Elements| m@@18) u@@5))))
 :qid |DafnyPreludebpl.1185:10|
 :skolemid |1812|
 :pattern ( (MapType0Select (|Map#Domain| m@@18) u@@5))
 :pattern ( (MapType0Select (|Map#Elements| m@@18) u@@5))
))))))
 :qid |DafnyPreludebpl.1183:20|
 :skolemid |1813|
 :pattern ( (MapType0Select (|Map#Values| m@@18) v@@44))
)))
(assert  (and (forall ((arg0@@103 T@U) ) (! (= (type (_System.Tuple2._0 arg0@@103)) BoxType)
 :qid |funType:_System.Tuple2._0|
 :pattern ( (_System.Tuple2._0 arg0@@103))
)) (forall ((arg0@@104 T@U) ) (! (= (type (_System.Tuple2._1 arg0@@104)) BoxType)
 :qid |funType:_System.Tuple2._1|
 :pattern ( (_System.Tuple2._1 arg0@@104))
))))
(assert (forall ((m@@19 T@U) (item T@U) ) (!  (=> (and (= (type m@@19) (MapType BoxType BoxType)) (= (type item) BoxType)) (= (U_2_bool (MapType0Select (|Map#Items| m@@19) item))  (and (U_2_bool (MapType0Select (|Map#Domain| m@@19) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select (|Map#Elements| m@@19) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item))))))
 :qid |DafnyPreludebpl.1204:15|
 :skolemid |1814|
 :pattern ( (MapType0Select (|Map#Items| m@@19) item))
)))
(assert (forall ((u@@6 T@U) (V@@13 T@T) ) (! (let ((U@@13 (type u@@6)))
 (not (U_2_bool (MapType0Select (|Map#Domain| (|Map#Empty| U@@13 V@@13)) u@@6))))
 :qid |DafnyPreludebpl.1212:21|
 :skolemid |1815|
 :pattern ( (let ((U@@13 (type u@@6)))
(MapType0Select (|Map#Domain| (|Map#Empty| U@@13 V@@13)) u@@6)))
)))
(assert (forall ((arg0@@105 T@U) (arg1@@45 T@U) (arg2@@4 T@U) ) (! (let ((V@@14 (MapType0TypeInv1 (type arg1@@45))))
(let ((U@@14 (MapType0TypeInv0 (type arg0@@105))))
(= (type (|Map#Glue| arg0@@105 arg1@@45 arg2@@4)) (MapType U@@14 V@@14))))
 :qid |funType:Map#Glue|
 :pattern ( (|Map#Glue| arg0@@105 arg1@@45 arg2@@4))
)))
(assert (forall ((a@@73 T@U) (b@@52 T@U) (t@@27 T@U) ) (! (let ((V@@15 (MapType0TypeInv1 (type b@@52))))
(let ((U@@15 (MapType0TypeInv0 (type a@@73))))
 (=> (and (and (= (type a@@73) (MapType0Type U@@15 boolType)) (= (type b@@52) (MapType0Type U@@15 V@@15))) (= (type t@@27) TyType)) (= (|Map#Domain| (|Map#Glue| a@@73 b@@52 t@@27)) a@@73))))
 :qid |DafnyPreludebpl.1217:21|
 :skolemid |1816|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@73 b@@52 t@@27)))
)))
(assert (forall ((a@@74 T@U) (b@@53 T@U) (t@@28 T@U) ) (! (let ((V@@16 (MapType0TypeInv1 (type b@@53))))
(let ((U@@16 (MapType0TypeInv0 (type a@@74))))
 (=> (and (and (= (type a@@74) (MapType0Type U@@16 boolType)) (= (type b@@53) (MapType0Type U@@16 V@@16))) (= (type t@@28) TyType)) (= (|Map#Elements| (|Map#Glue| a@@74 b@@53 t@@28)) b@@53))))
 :qid |DafnyPreludebpl.1220:21|
 :skolemid |1817|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@74 b@@53 t@@28)))
)))
(assert (forall ((a@@75 T@U) (b@@54 T@U) (t0@@14 T@U) (t1@@5 T@U) ) (!  (=> (and (and (and (and (= (type a@@75) (MapType0Type BoxType boolType)) (= (type b@@54) (MapType0Type BoxType BoxType))) (= (type t0@@14) TyType)) (= (type t1@@5) TyType)) (forall ((bx@@24 T@U) ) (!  (=> (and (= (type bx@@24) BoxType) (U_2_bool (MapType0Select a@@75 bx@@24))) (and ($IsBox bx@@24 t0@@14) ($IsBox (MapType0Select b@@54 bx@@24) t1@@5)))
 :qid |DafnyPreludebpl.1226:11|
 :skolemid |1818|
 :no-pattern (type bx@@24)
 :no-pattern (U_2_int bx@@24)
 :no-pattern (U_2_bool bx@@24)
))) ($Is (|Map#Glue| a@@75 b@@54 (TMap t0@@14 t1@@5)) (TMap t0@@14 t1@@5)))
 :qid |DafnyPreludebpl.1223:15|
 :skolemid |1819|
 :pattern ( (|Map#Glue| a@@75 b@@54 (TMap t0@@14 t1@@5)))
)))
(assert (forall ((arg0@@106 T@U) (arg1@@46 T@U) (arg2@@5 T@U) ) (! (let ((V@@17 (type arg2@@5)))
(let ((U@@17 (type arg1@@46)))
(= (type (|Map#Build| arg0@@106 arg1@@46 arg2@@5)) (MapType U@@17 V@@17))))
 :qid |funType:Map#Build|
 :pattern ( (|Map#Build| arg0@@106 arg1@@46 arg2@@5))
)))
(assert (forall ((m@@20 T@U) (u@@7 T@U) (|u'| T@U) (v@@45 T@U) ) (! (let ((V@@18 (type v@@45)))
(let ((U@@18 (type u@@7)))
 (=> (and (= (type m@@20) (MapType U@@18 V@@18)) (= (type |u'|) U@@18)) (and (=> (= |u'| u@@7) (and (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@20 u@@7 v@@45)) |u'|)) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@20 u@@7 v@@45)) |u'|) v@@45))) (=> (not (= |u'| u@@7)) (and (= (U_2_bool (MapType0Select (|Map#Domain| (|Map#Build| m@@20 u@@7 v@@45)) |u'|)) (U_2_bool (MapType0Select (|Map#Domain| m@@20) |u'|))) (= (MapType0Select (|Map#Elements| (|Map#Build| m@@20 u@@7 v@@45)) |u'|) (MapType0Select (|Map#Elements| m@@20) |u'|))))))))
 :qid |DafnyPreludebpl.1237:21|
 :skolemid |1820|
 :pattern ( (MapType0Select (|Map#Domain| (|Map#Build| m@@20 u@@7 v@@45)) |u'|))
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Build| m@@20 u@@7 v@@45)) |u'|))
)))
(assert (forall ((m@@21 T@U) (u@@8 T@U) (v@@46 T@U) ) (! (let ((V@@19 (type v@@46)))
(let ((U@@19 (type u@@8)))
 (=> (and (= (type m@@21) (MapType U@@19 V@@19)) (U_2_bool (MapType0Select (|Map#Domain| m@@21) u@@8))) (= (|Map#Card| (|Map#Build| m@@21 u@@8 v@@46)) (|Map#Card| m@@21)))))
 :qid |DafnyPreludebpl.1243:21|
 :skolemid |1821|
 :pattern ( (|Map#Card| (|Map#Build| m@@21 u@@8 v@@46)))
)))
(assert (forall ((m@@22 T@U) (u@@9 T@U) (v@@47 T@U) ) (! (let ((V@@20 (type v@@47)))
(let ((U@@20 (type u@@9)))
 (=> (and (= (type m@@22) (MapType U@@20 V@@20)) (not (U_2_bool (MapType0Select (|Map#Domain| m@@22) u@@9)))) (= (|Map#Card| (|Map#Build| m@@22 u@@9 v@@47)) (+ (|Map#Card| m@@22) 1)))))
 :qid |DafnyPreludebpl.1245:21|
 :skolemid |1822|
 :pattern ( (|Map#Card| (|Map#Build| m@@22 u@@9 v@@47)))
)))
(assert (forall ((arg0@@107 T@U) (arg1@@47 T@U) ) (! (let ((V@@21 (MapTypeInv1 (type arg0@@107))))
(let ((U@@21 (MapTypeInv0 (type arg0@@107))))
(= (type (|Map#Merge| arg0@@107 arg1@@47)) (MapType U@@21 V@@21))))
 :qid |funType:Map#Merge|
 :pattern ( (|Map#Merge| arg0@@107 arg1@@47))
)))
(assert (forall ((m@@23 T@U) (n@@25 T@U) ) (! (let ((V@@22 (MapTypeInv1 (type m@@23))))
(let ((U@@22 (MapTypeInv0 (type m@@23))))
 (=> (and (= (type m@@23) (MapType U@@22 V@@22)) (= (type n@@25) (MapType U@@22 V@@22))) (= (|Map#Domain| (|Map#Merge| m@@23 n@@25)) (|Set#Union| (|Map#Domain| m@@23) (|Map#Domain| n@@25))))))
 :qid |DafnyPreludebpl.1250:21|
 :skolemid |1823|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@23 n@@25)))
)))
(assert (forall ((m@@24 T@U) (n@@26 T@U) (u@@10 T@U) ) (! (let ((V@@23 (MapTypeInv1 (type m@@24))))
(let ((U@@23 (type u@@10)))
 (=> (and (and (= (type m@@24) (MapType U@@23 V@@23)) (= (type n@@26) (MapType U@@23 V@@23))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Merge| m@@24 n@@26)) u@@10))) (and (=> (not (U_2_bool (MapType0Select (|Map#Domain| n@@26) u@@10))) (= (MapType0Select (|Map#Elements| (|Map#Merge| m@@24 n@@26)) u@@10) (MapType0Select (|Map#Elements| m@@24) u@@10))) (=> (U_2_bool (MapType0Select (|Map#Domain| n@@26) u@@10)) (= (MapType0Select (|Map#Elements| (|Map#Merge| m@@24 n@@26)) u@@10) (MapType0Select (|Map#Elements| n@@26) u@@10)))))))
 :qid |DafnyPreludebpl.1253:21|
 :skolemid |1824|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Merge| m@@24 n@@26)) u@@10))
)))
(assert (forall ((arg0@@108 T@U) (arg1@@48 T@U) ) (! (let ((V@@24 (MapTypeInv1 (type arg0@@108))))
(let ((U@@24 (MapTypeInv0 (type arg0@@108))))
(= (type (|Map#Subtract| arg0@@108 arg1@@48)) (MapType U@@24 V@@24))))
 :qid |funType:Map#Subtract|
 :pattern ( (|Map#Subtract| arg0@@108 arg1@@48))
)))
(assert (forall ((m@@25 T@U) (s@@45 T@U) ) (! (let ((V@@25 (MapTypeInv1 (type m@@25))))
(let ((U@@25 (MapTypeInv0 (type m@@25))))
 (=> (and (= (type m@@25) (MapType U@@25 V@@25)) (= (type s@@45) (MapType0Type U@@25 boolType))) (= (|Map#Domain| (|Map#Subtract| m@@25 s@@45)) (|Set#Difference| (|Map#Domain| m@@25) s@@45)))))
 :qid |DafnyPreludebpl.1260:21|
 :skolemid |1825|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@25 s@@45)))
)))
(assert (forall ((m@@26 T@U) (s@@46 T@U) (u@@11 T@U) ) (! (let ((V@@26 (MapTypeInv1 (type m@@26))))
(let ((U@@26 (type u@@11)))
 (=> (and (and (= (type m@@26) (MapType U@@26 V@@26)) (= (type s@@46) (MapType0Type U@@26 boolType))) (U_2_bool (MapType0Select (|Map#Domain| (|Map#Subtract| m@@26 s@@46)) u@@11))) (= (MapType0Select (|Map#Elements| (|Map#Subtract| m@@26 s@@46)) u@@11) (MapType0Select (|Map#Elements| m@@26) u@@11)))))
 :qid |DafnyPreludebpl.1263:21|
 :skolemid |1826|
 :pattern ( (MapType0Select (|Map#Elements| (|Map#Subtract| m@@26 s@@46)) u@@11))
)))
(assert (forall ((m@@27 T@U) (|m'| T@U) ) (! (let ((V@@27 (MapTypeInv1 (type m@@27))))
(let ((U@@27 (MapTypeInv0 (type m@@27))))
 (=> (and (= (type m@@27) (MapType U@@27 V@@27)) (= (type |m'|) (MapType U@@27 V@@27))) (= (|Map#Equal| m@@27 |m'|)  (and (forall ((u@@12 T@U) ) (!  (=> (= (type u@@12) U@@27) (= (U_2_bool (MapType0Select (|Map#Domain| m@@27) u@@12)) (U_2_bool (MapType0Select (|Map#Domain| |m'|) u@@12))))
 :qid |DafnyPreludebpl.1272:35|
 :skolemid |1827|
 :no-pattern (type u@@12)
 :no-pattern (U_2_int u@@12)
 :no-pattern (U_2_bool u@@12)
)) (forall ((u@@13 T@U) ) (!  (=> (and (= (type u@@13) U@@27) (U_2_bool (MapType0Select (|Map#Domain| m@@27) u@@13))) (= (MapType0Select (|Map#Elements| m@@27) u@@13) (MapType0Select (|Map#Elements| |m'|) u@@13)))
 :qid |DafnyPreludebpl.1273:35|
 :skolemid |1828|
 :no-pattern (type u@@13)
 :no-pattern (U_2_int u@@13)
 :no-pattern (U_2_bool u@@13)
)))))))
 :qid |DafnyPreludebpl.1270:21|
 :skolemid |1829|
 :pattern ( (|Map#Equal| m@@27 |m'|))
)))
(assert (forall ((m@@28 T@U) (|m'@@0| T@U) ) (! (let ((V@@28 (MapTypeInv1 (type m@@28))))
(let ((U@@28 (MapTypeInv0 (type m@@28))))
 (=> (and (and (= (type m@@28) (MapType U@@28 V@@28)) (= (type |m'@@0|) (MapType U@@28 V@@28))) (|Map#Equal| m@@28 |m'@@0|)) (= m@@28 |m'@@0|))))
 :qid |DafnyPreludebpl.1275:21|
 :skolemid |1830|
 :pattern ( (|Map#Equal| m@@28 |m'@@0|))
)))
(assert (forall ((m@@29 T@U) (|m'@@1| T@U) ) (! (let ((V@@29 (MapTypeInv1 (type m@@29))))
(let ((U@@29 (MapTypeInv0 (type m@@29))))
 (=> (and (= (type m@@29) (MapType U@@29 V@@29)) (= (type |m'@@1|) (MapType U@@29 V@@29))) (= (|Map#Disjoint| m@@29 |m'@@1|) (forall ((o@@43 T@U) ) (!  (=> (= (type o@@43) U@@29) (or (not (U_2_bool (MapType0Select (|Map#Domain| m@@29) o@@43))) (not (U_2_bool (MapType0Select (|Map#Domain| |m'@@1|) o@@43)))))
 :qid |DafnyPreludebpl.1282:38|
 :skolemid |1831|
 :pattern ( (MapType0Select (|Map#Domain| m@@29) o@@43))
 :pattern ( (MapType0Select (|Map#Domain| |m'@@1|) o@@43))
))))))
 :qid |DafnyPreludebpl.1280:21|
 :skolemid |1832|
 :pattern ( (|Map#Disjoint| m@@29 |m'@@1|))
)))
(assert (forall ((U@@30 T@T) (V@@30 T@T) ) (! (= (type (|IMap#Empty| U@@30 V@@30)) (IMapType U@@30 V@@30))
 :qid |funType:IMap#Empty|
 :pattern ( (|IMap#Empty| U@@30 V@@30))
)))
(assert (forall ((m@@30 T@U) ) (! (let ((V@@31 (IMapTypeInv1 (type m@@30))))
(let ((U@@31 (IMapTypeInv0 (type m@@30))))
 (=> (= (type m@@30) (IMapType U@@31 V@@31)) (or (= m@@30 (|IMap#Empty| U@@31 V@@31)) (exists ((k@@6 T@U) ) (!  (and (= (type k@@6) U@@31) (U_2_bool (MapType0Select (|IMap#Domain| m@@30) k@@6)))
 :qid |DafnyPreludebpl.1298:32|
 :skolemid |1833|
 :no-pattern (type k@@6)
 :no-pattern (U_2_int k@@6)
 :no-pattern (U_2_bool k@@6)
))))))
 :qid |DafnyPreludebpl.1296:21|
 :skolemid |1834|
 :pattern ( (|IMap#Domain| m@@30))
)))
(assert (forall ((m@@31 T@U) ) (! (let ((V@@32 (IMapTypeInv1 (type m@@31))))
(let ((U@@32 (IMapTypeInv0 (type m@@31))))
 (=> (= (type m@@31) (IMapType U@@32 V@@32)) (or (= m@@31 (|IMap#Empty| U@@32 V@@32)) (exists ((v@@48 T@U) ) (!  (and (= (type v@@48) V@@32) (U_2_bool (MapType0Select (|IMap#Values| m@@31) v@@48)))
 :qid |DafnyPreludebpl.1301:32|
 :skolemid |1835|
 :no-pattern (type v@@48)
 :no-pattern (U_2_int v@@48)
 :no-pattern (U_2_bool v@@48)
))))))
 :qid |DafnyPreludebpl.1299:21|
 :skolemid |1836|
 :pattern ( (|IMap#Values| m@@31))
)))
(assert (forall ((m@@32 T@U) ) (! (let ((V@@33 (IMapTypeInv1 (type m@@32))))
(let ((U@@33 (IMapTypeInv0 (type m@@32))))
 (=> (= (type m@@32) (IMapType U@@33 V@@33)) (or (= m@@32 (|IMap#Empty| U@@33 V@@33)) (exists ((k@@7 T@U) (v@@49 T@U) ) (!  (and (and (= (type k@@7) BoxType) (= (type v@@49) BoxType)) (U_2_bool (MapType0Select (|IMap#Items| m@@32) ($Box (|#_System._tuple#2._#Make2| k@@7 v@@49)))))
 :qid |DafnyPreludebpl.1304:32|
 :skolemid |1837|
 :no-pattern (type k@@7)
 :no-pattern (type v@@49)
 :no-pattern (U_2_int k@@7)
 :no-pattern (U_2_bool k@@7)
 :no-pattern (U_2_int v@@49)
 :no-pattern (U_2_bool v@@49)
))))))
 :qid |DafnyPreludebpl.1302:21|
 :skolemid |1838|
 :pattern ( (|IMap#Items| m@@32))
)))
(assert (forall ((m@@33 T@U) ) (! (let ((V@@34 (IMapTypeInv1 (type m@@33))))
(let ((U@@34 (IMapTypeInv0 (type m@@33))))
 (=> (= (type m@@33) (IMapType U@@34 V@@34)) (= (= m@@33 (|IMap#Empty| U@@34 V@@34)) (= (|IMap#Domain| m@@33) (|ISet#Empty| U@@34))))))
 :qid |DafnyPreludebpl.1306:21|
 :skolemid |1839|
 :pattern ( (|IMap#Domain| m@@33))
)))
(assert (forall ((m@@34 T@U) ) (! (let ((V@@35 (IMapTypeInv1 (type m@@34))))
(let ((U@@35 (IMapTypeInv0 (type m@@34))))
 (=> (= (type m@@34) (IMapType U@@35 V@@35)) (= (= m@@34 (|IMap#Empty| U@@35 V@@35)) (= (|IMap#Values| m@@34) (|ISet#Empty| V@@35))))))
 :qid |DafnyPreludebpl.1309:21|
 :skolemid |1840|
 :pattern ( (|IMap#Values| m@@34))
)))
(assert (forall ((m@@35 T@U) ) (! (let ((V@@36 (IMapTypeInv1 (type m@@35))))
(let ((U@@36 (IMapTypeInv0 (type m@@35))))
 (=> (= (type m@@35) (IMapType U@@36 V@@36)) (= (= m@@35 (|IMap#Empty| U@@36 V@@36)) (= (|IMap#Items| m@@35) (|ISet#Empty| BoxType))))))
 :qid |DafnyPreludebpl.1312:21|
 :skolemid |1841|
 :pattern ( (|IMap#Items| m@@35))
)))
(assert (forall ((m@@36 T@U) (v@@50 T@U) ) (! (let ((V@@37 (type v@@50)))
(let ((U@@37 (IMapTypeInv0 (type m@@36))))
 (=> (= (type m@@36) (IMapType U@@37 V@@37)) (= (U_2_bool (MapType0Select (|IMap#Values| m@@36) v@@50)) (exists ((u@@14 T@U) ) (!  (and (= (type u@@14) U@@37) (and (U_2_bool (MapType0Select (|IMap#Domain| m@@36) u@@14)) (= v@@50 (MapType0Select (|IMap#Elements| m@@36) u@@14))))
 :qid |DafnyPreludebpl.1325:10|
 :skolemid |1842|
 :pattern ( (MapType0Select (|IMap#Domain| m@@36) u@@14))
 :pattern ( (MapType0Select (|IMap#Elements| m@@36) u@@14))
))))))
 :qid |DafnyPreludebpl.1323:20|
 :skolemid |1843|
 :pattern ( (MapType0Select (|IMap#Values| m@@36) v@@50))
)))
(assert (forall ((m@@37 T@U) (item@@0 T@U) ) (!  (=> (and (= (type m@@37) (IMapType BoxType BoxType)) (= (type item@@0) BoxType)) (= (U_2_bool (MapType0Select (|IMap#Items| m@@37) item@@0))  (and (U_2_bool (MapType0Select (|IMap#Domain| m@@37) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0)))) (= (MapType0Select (|IMap#Elements| m@@37) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0))))))
 :qid |DafnyPreludebpl.1340:15|
 :skolemid |1844|
 :pattern ( (MapType0Select (|IMap#Items| m@@37) item@@0))
)))
(assert (forall ((u@@15 T@U) (V@@38 T@T) ) (! (let ((U@@38 (type u@@15)))
 (not (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Empty| U@@38 V@@38)) u@@15))))
 :qid |DafnyPreludebpl.1347:21|
 :skolemid |1845|
 :pattern ( (let ((U@@38 (type u@@15)))
(MapType0Select (|IMap#Domain| (|IMap#Empty| U@@38 V@@38)) u@@15)))
)))
(assert (forall ((arg0@@109 T@U) (arg1@@49 T@U) (arg2@@6 T@U) ) (! (let ((V@@39 (MapType0TypeInv1 (type arg1@@49))))
(let ((U@@39 (MapType0TypeInv0 (type arg0@@109))))
(= (type (|IMap#Glue| arg0@@109 arg1@@49 arg2@@6)) (IMapType U@@39 V@@39))))
 :qid |funType:IMap#Glue|
 :pattern ( (|IMap#Glue| arg0@@109 arg1@@49 arg2@@6))
)))
(assert (forall ((a@@76 T@U) (b@@55 T@U) (t@@29 T@U) ) (! (let ((V@@40 (MapType0TypeInv1 (type b@@55))))
(let ((U@@40 (MapType0TypeInv0 (type a@@76))))
 (=> (and (and (= (type a@@76) (MapType0Type U@@40 boolType)) (= (type b@@55) (MapType0Type U@@40 V@@40))) (= (type t@@29) TyType)) (= (|IMap#Domain| (|IMap#Glue| a@@76 b@@55 t@@29)) a@@76))))
 :qid |DafnyPreludebpl.1352:21|
 :skolemid |1846|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a@@76 b@@55 t@@29)))
)))
(assert (forall ((a@@77 T@U) (b@@56 T@U) (t@@30 T@U) ) (! (let ((V@@41 (MapType0TypeInv1 (type b@@56))))
(let ((U@@41 (MapType0TypeInv0 (type a@@77))))
 (=> (and (and (= (type a@@77) (MapType0Type U@@41 boolType)) (= (type b@@56) (MapType0Type U@@41 V@@41))) (= (type t@@30) TyType)) (= (|IMap#Elements| (|IMap#Glue| a@@77 b@@56 t@@30)) b@@56))))
 :qid |DafnyPreludebpl.1355:21|
 :skolemid |1847|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@77 b@@56 t@@30)))
)))
(assert (forall ((a@@78 T@U) (b@@57 T@U) (t0@@15 T@U) (t1@@6 T@U) ) (!  (=> (and (and (and (and (= (type a@@78) (MapType0Type BoxType boolType)) (= (type b@@57) (MapType0Type BoxType BoxType))) (= (type t0@@15) TyType)) (= (type t1@@6) TyType)) (forall ((bx@@25 T@U) ) (!  (=> (and (= (type bx@@25) BoxType) (U_2_bool (MapType0Select a@@78 bx@@25))) (and ($IsBox bx@@25 t0@@15) ($IsBox (MapType0Select b@@57 bx@@25) t1@@6)))
 :qid |DafnyPreludebpl.1361:11|
 :skolemid |1848|
 :no-pattern (type bx@@25)
 :no-pattern (U_2_int bx@@25)
 :no-pattern (U_2_bool bx@@25)
))) ($Is (|Map#Glue| a@@78 b@@57 (TIMap t0@@15 t1@@6)) (TIMap t0@@15 t1@@6)))
 :qid |DafnyPreludebpl.1358:15|
 :skolemid |1849|
 :pattern ( (|IMap#Glue| a@@78 b@@57 (TIMap t0@@15 t1@@6)))
)))
(assert (forall ((arg0@@110 T@U) (arg1@@50 T@U) (arg2@@7 T@U) ) (! (let ((V@@42 (type arg2@@7)))
(let ((U@@42 (type arg1@@50)))
(= (type (|IMap#Build| arg0@@110 arg1@@50 arg2@@7)) (IMapType U@@42 V@@42))))
 :qid |funType:IMap#Build|
 :pattern ( (|IMap#Build| arg0@@110 arg1@@50 arg2@@7))
)))
(assert (forall ((m@@38 T@U) (u@@16 T@U) (|u'@@0| T@U) (v@@51 T@U) ) (! (let ((V@@43 (type v@@51)))
(let ((U@@43 (type u@@16)))
 (=> (and (= (type m@@38) (IMapType U@@43 V@@43)) (= (type |u'@@0|) U@@43)) (and (=> (= |u'@@0| u@@16) (and (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@38 u@@16 v@@51)) |u'@@0|)) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@38 u@@16 v@@51)) |u'@@0|) v@@51))) (=> (not (= |u'@@0| u@@16)) (and (= (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Build| m@@38 u@@16 v@@51)) |u'@@0|)) (U_2_bool (MapType0Select (|IMap#Domain| m@@38) |u'@@0|))) (= (MapType0Select (|IMap#Elements| (|IMap#Build| m@@38 u@@16 v@@51)) |u'@@0|) (MapType0Select (|IMap#Elements| m@@38) |u'@@0|))))))))
 :qid |DafnyPreludebpl.1371:21|
 :skolemid |1850|
 :pattern ( (MapType0Select (|IMap#Domain| (|IMap#Build| m@@38 u@@16 v@@51)) |u'@@0|))
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Build| m@@38 u@@16 v@@51)) |u'@@0|))
)))
(assert (forall ((m@@39 T@U) (|m'@@2| T@U) ) (! (let ((V@@44 (IMapTypeInv1 (type m@@39))))
(let ((U@@44 (IMapTypeInv0 (type m@@39))))
 (=> (and (= (type m@@39) (IMapType U@@44 V@@44)) (= (type |m'@@2|) (IMapType U@@44 V@@44))) (= (|IMap#Equal| m@@39 |m'@@2|)  (and (forall ((u@@17 T@U) ) (!  (=> (= (type u@@17) U@@44) (= (U_2_bool (MapType0Select (|IMap#Domain| m@@39) u@@17)) (U_2_bool (MapType0Select (|IMap#Domain| |m'@@2|) u@@17))))
 :qid |DafnyPreludebpl.1382:36|
 :skolemid |1851|
 :no-pattern (type u@@17)
 :no-pattern (U_2_int u@@17)
 :no-pattern (U_2_bool u@@17)
)) (forall ((u@@18 T@U) ) (!  (=> (and (= (type u@@18) U@@44) (U_2_bool (MapType0Select (|IMap#Domain| m@@39) u@@18))) (= (MapType0Select (|IMap#Elements| m@@39) u@@18) (MapType0Select (|IMap#Elements| |m'@@2|) u@@18)))
 :qid |DafnyPreludebpl.1383:35|
 :skolemid |1852|
 :no-pattern (type u@@18)
 :no-pattern (U_2_int u@@18)
 :no-pattern (U_2_bool u@@18)
)))))))
 :qid |DafnyPreludebpl.1380:21|
 :skolemid |1853|
 :pattern ( (|IMap#Equal| m@@39 |m'@@2|))
)))
(assert (forall ((m@@40 T@U) (|m'@@3| T@U) ) (! (let ((V@@45 (IMapTypeInv1 (type m@@40))))
(let ((U@@45 (IMapTypeInv0 (type m@@40))))
 (=> (and (and (= (type m@@40) (IMapType U@@45 V@@45)) (= (type |m'@@3|) (IMapType U@@45 V@@45))) (|IMap#Equal| m@@40 |m'@@3|)) (= m@@40 |m'@@3|))))
 :qid |DafnyPreludebpl.1385:21|
 :skolemid |1854|
 :pattern ( (|IMap#Equal| m@@40 |m'@@3|))
)))
(assert (forall ((arg0@@111 T@U) (arg1@@51 T@U) ) (! (let ((V@@46 (IMapTypeInv1 (type arg0@@111))))
(let ((U@@46 (IMapTypeInv0 (type arg0@@111))))
(= (type (|IMap#Merge| arg0@@111 arg1@@51)) (IMapType U@@46 V@@46))))
 :qid |funType:IMap#Merge|
 :pattern ( (|IMap#Merge| arg0@@111 arg1@@51))
)))
(assert (forall ((m@@41 T@U) (n@@27 T@U) ) (! (let ((V@@47 (IMapTypeInv1 (type m@@41))))
(let ((U@@47 (IMapTypeInv0 (type m@@41))))
 (=> (and (= (type m@@41) (IMapType U@@47 V@@47)) (= (type n@@27) (IMapType U@@47 V@@47))) (= (|IMap#Domain| (|IMap#Merge| m@@41 n@@27)) (|Set#Union| (|IMap#Domain| m@@41) (|IMap#Domain| n@@27))))))
 :qid |DafnyPreludebpl.1391:21|
 :skolemid |1855|
 :pattern ( (|IMap#Domain| (|IMap#Merge| m@@41 n@@27)))
)))
(assert (forall ((m@@42 T@U) (n@@28 T@U) (u@@19 T@U) ) (! (let ((V@@48 (IMapTypeInv1 (type m@@42))))
(let ((U@@48 (type u@@19)))
 (=> (and (and (= (type m@@42) (IMapType U@@48 V@@48)) (= (type n@@28) (IMapType U@@48 V@@48))) (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Merge| m@@42 n@@28)) u@@19))) (and (=> (not (U_2_bool (MapType0Select (|IMap#Domain| n@@28) u@@19))) (= (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@42 n@@28)) u@@19) (MapType0Select (|IMap#Elements| m@@42) u@@19))) (=> (U_2_bool (MapType0Select (|IMap#Domain| n@@28) u@@19)) (= (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@42 n@@28)) u@@19) (MapType0Select (|IMap#Elements| n@@28) u@@19)))))))
 :qid |DafnyPreludebpl.1394:21|
 :skolemid |1856|
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Merge| m@@42 n@@28)) u@@19))
)))
(assert (forall ((arg0@@112 T@U) (arg1@@52 T@U) ) (! (let ((V@@49 (IMapTypeInv1 (type arg0@@112))))
(let ((U@@49 (IMapTypeInv0 (type arg0@@112))))
(= (type (|IMap#Subtract| arg0@@112 arg1@@52)) (IMapType U@@49 V@@49))))
 :qid |funType:IMap#Subtract|
 :pattern ( (|IMap#Subtract| arg0@@112 arg1@@52))
)))
(assert (forall ((m@@43 T@U) (s@@47 T@U) ) (! (let ((V@@50 (IMapTypeInv1 (type m@@43))))
(let ((U@@50 (IMapTypeInv0 (type m@@43))))
 (=> (and (= (type m@@43) (IMapType U@@50 V@@50)) (= (type s@@47) (MapType0Type U@@50 boolType))) (= (|IMap#Domain| (|IMap#Subtract| m@@43 s@@47)) (|Set#Difference| (|IMap#Domain| m@@43) s@@47)))))
 :qid |DafnyPreludebpl.1401:21|
 :skolemid |1857|
 :pattern ( (|IMap#Domain| (|IMap#Subtract| m@@43 s@@47)))
)))
(assert (forall ((m@@44 T@U) (s@@48 T@U) (u@@20 T@U) ) (! (let ((V@@51 (IMapTypeInv1 (type m@@44))))
(let ((U@@51 (type u@@20)))
 (=> (and (and (= (type m@@44) (IMapType U@@51 V@@51)) (= (type s@@48) (MapType0Type U@@51 boolType))) (U_2_bool (MapType0Select (|IMap#Domain| (|IMap#Subtract| m@@44 s@@48)) u@@20))) (= (MapType0Select (|IMap#Elements| (|IMap#Subtract| m@@44 s@@48)) u@@20) (MapType0Select (|IMap#Elements| m@@44) u@@20)))))
 :qid |DafnyPreludebpl.1404:21|
 :skolemid |1858|
 :pattern ( (MapType0Select (|IMap#Elements| (|IMap#Subtract| m@@44 s@@48)) u@@20))
)))
(assert (forall ((x@@42 Int) (y@@12 Int) ) (! (= (INTERNAL_add_boogie x@@42 y@@12) (+ x@@42 y@@12))
 :qid |DafnyPreludebpl.1413:30|
 :skolemid |1859|
 :pattern ( (INTERNAL_add_boogie x@@42 y@@12))
)))
(assert (forall ((x@@43 Int) (y@@13 Int) ) (! (= (INTERNAL_sub_boogie x@@43 y@@13) (- x@@43 y@@13))
 :qid |DafnyPreludebpl.1414:30|
 :skolemid |1860|
 :pattern ( (INTERNAL_sub_boogie x@@43 y@@13))
)))
(assert (forall ((x@@44 Int) (y@@14 Int) ) (! (= (INTERNAL_mul_boogie x@@44 y@@14) (* x@@44 y@@14))
 :qid |DafnyPreludebpl.1415:30|
 :skolemid |1861|
 :pattern ( (INTERNAL_mul_boogie x@@44 y@@14))
)))
(assert (forall ((x@@45 Int) (y@@15 Int) ) (! (= (INTERNAL_div_boogie x@@45 y@@15) (div x@@45 y@@15))
 :qid |DafnyPreludebpl.1416:30|
 :skolemid |1862|
 :pattern ( (INTERNAL_div_boogie x@@45 y@@15))
)))
(assert (forall ((x@@46 Int) (y@@16 Int) ) (! (= (INTERNAL_mod_boogie x@@46 y@@16) (mod x@@46 y@@16))
 :qid |DafnyPreludebpl.1417:30|
 :skolemid |1863|
 :pattern ( (INTERNAL_mod_boogie x@@46 y@@16))
)))
(assert (forall ((x@@47 Int) (y@@17 Int) ) (! (= (INTERNAL_lt_boogie x@@47 y@@17) (< x@@47 y@@17))
 :qid |DafnyPreludebpl.1418:51|
 :skolemid |1864|
 :pattern ( (INTERNAL_lt_boogie x@@47 y@@17))
)))
(assert (forall ((x@@48 Int) (y@@18 Int) ) (! (= (INTERNAL_le_boogie x@@48 y@@18) (<= x@@48 y@@18))
 :qid |DafnyPreludebpl.1419:51|
 :skolemid |1865|
 :pattern ( (INTERNAL_le_boogie x@@48 y@@18))
)))
(assert (forall ((x@@49 Int) (y@@19 Int) ) (! (= (INTERNAL_gt_boogie x@@49 y@@19) (> x@@49 y@@19))
 :qid |DafnyPreludebpl.1420:51|
 :skolemid |1866|
 :pattern ( (INTERNAL_gt_boogie x@@49 y@@19))
)))
(assert (forall ((x@@50 Int) (y@@20 Int) ) (! (= (INTERNAL_ge_boogie x@@50 y@@20) (>= x@@50 y@@20))
 :qid |DafnyPreludebpl.1421:51|
 :skolemid |1867|
 :pattern ( (INTERNAL_ge_boogie x@@50 y@@20))
)))
(assert (forall ((x@@51 Int) (y@@21 Int) ) (! (= (Mul x@@51 y@@21) (* x@@51 y@@21))
 :qid |DafnyPreludebpl.1423:14|
 :skolemid |1868|
 :pattern ( (Mul x@@51 y@@21))
)))
(assert (forall ((x@@52 Int) (y@@22 Int) ) (! (= (Div x@@52 y@@22) (div x@@52 y@@22))
 :qid |DafnyPreludebpl.1424:14|
 :skolemid |1869|
 :pattern ( (Div x@@52 y@@22))
)))
(assert (forall ((x@@53 Int) (y@@23 Int) ) (! (= (Mod x@@53 y@@23) (mod x@@53 y@@23))
 :qid |DafnyPreludebpl.1425:14|
 :skolemid |1870|
 :pattern ( (Mod x@@53 y@@23))
)))
(assert (forall ((x@@54 Int) (y@@24 Int) ) (! (= (Add x@@54 y@@24) (+ x@@54 y@@24))
 :qid |DafnyPreludebpl.1426:14|
 :skolemid |1871|
 :pattern ( (Add x@@54 y@@24))
)))
(assert (forall ((x@@55 Int) (y@@25 Int) ) (! (= (Sub x@@55 y@@25) (- x@@55 y@@25))
 :qid |DafnyPreludebpl.1427:14|
 :skolemid |1872|
 :pattern ( (Sub x@@55 y@@25))
)))
(assert (forall ((A@@2 T@U) (B T@U) (a@@79 T@U) (b@@58 T@U) ) (!  (=> (and (and (and (and (= (type A@@2) TyType) (= (type B) TyType)) (= (type a@@79) BoxType)) (= (type b@@58) BoxType)) (_System.__default.rank__is__less__than A@@2 B a@@79 b@@58)) (< (BoxRank a@@79) (BoxRank b@@58)))
 :qid |DafnyPreludebpl.1468:15|
 :skolemid |1873|
 :pattern ( (_System.__default.rank__is__less__than A@@2 B a@@79 b@@58) (BoxRank a@@79))
 :pattern ( (_System.__default.rank__is__less__than A@@2 B a@@79 b@@58) (BoxRank b@@58))
)))
(assert (forall ((A@@3 T@U) (B@@0 T@U) (a@@80 T@U) (b@@59 T@U) ) (!  (=> (and (and (and (and (= (type A@@3) TyType) (= (type B@@0) TyType)) (= (type a@@80) BoxType)) (= (type b@@59) (SeqType BoxType))) (_System.__default.rank__is__less__than A@@3 B@@0 a@@80 ($Box b@@59))) (< (BoxRank a@@80) (|Seq#Rank| b@@59)))
 :qid |DafnyPreludebpl.1473:15|
 :skolemid |1874|
 :pattern ( (_System.__default.rank__is__less__than A@@3 B@@0 a@@80 ($Box b@@59)) (BoxRank a@@80))
 :pattern ( (_System.__default.rank__is__less__than A@@3 B@@0 a@@80 ($Box b@@59)) (|Seq#Rank| b@@59))
)))
(assert (forall ((A@@4 T@U) (B@@1 T@U) (a@@81 T@U) (b@@60 T@U) ) (!  (=> (and (and (and (and (= (type A@@4) TyType) (= (type B@@1) TyType)) (= (type a@@81) (SeqType BoxType))) (= (type b@@60) BoxType)) (_System.__default.rank__is__less__than A@@4 B@@1 ($Box a@@81) b@@60)) (< (|Seq#Rank| a@@81) (BoxRank b@@60)))
 :qid |DafnyPreludebpl.1478:15|
 :skolemid |1875|
 :pattern ( (_System.__default.rank__is__less__than A@@4 B@@1 ($Box a@@81) b@@60) (|Seq#Rank| a@@81))
 :pattern ( (_System.__default.rank__is__less__than A@@4 B@@1 ($Box a@@81) b@@60) (BoxRank b@@60))
)))
(assert (= (type Tclass._System.nat) TyType))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (forall ((arg0@@113 T@U) ) (! (= (type (TagFamily arg0@@113)) TyTagFamilyType)
 :qid |funType:TagFamily|
 :pattern ( (TagFamily arg0@@113))
)))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((bx@@26 T@U) ) (!  (=> (and (= (type bx@@26) BoxType) ($IsBox bx@@26 Tclass._System.nat)) (and (= ($Box ($Unbox intType bx@@26)) bx@@26) ($Is ($Unbox intType bx@@26) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1876|
 :pattern ( ($IsBox bx@@26 Tclass._System.nat))
)))
(assert (forall ((|x#0| T@U) ) (!  (=> (= (type |x#0|) intType) (= ($Is |x#0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0|))))
 :qid |nofile.1:183|
 :skolemid |1877|
 :pattern ( ($Is |x#0| Tclass._System.nat))
)))
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (!  (=> (and (= (type |x#0@@0|) intType) (= (type $h) (MapType0Type refType MapType1Type))) ($IsAlloc |x#0@@0| Tclass._System.nat $h))
 :qid |nofile.1:183|
 :skolemid |1878|
 :pattern ( ($IsAlloc |x#0@@0| Tclass._System.nat $h))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (forall ((bx@@27 T@U) ) (!  (=> (and (= (type bx@@27) BoxType) ($IsBox bx@@27 Tclass._System.object?)) (and (= ($Box ($Unbox refType bx@@27)) bx@@27) ($Is ($Unbox refType bx@@27) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1879|
 :pattern ( ($IsBox bx@@27 Tclass._System.object?))
)))
(assert (forall (($o T@U) ) (!  (=> (= (type $o) refType) ($Is $o Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( ($Is $o Tclass._System.object?))
)))
(assert (= (type null) refType))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (!  (=> (and (= (type $o@@0) refType) (= (type $h@@0) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@0 Tclass._System.object? $h@@0)  (or (= $o@@0 null) (U_2_bool (MapType1Select (MapType0Select $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1881|
 :pattern ( ($IsAlloc $o@@0 Tclass._System.object? $h@@0))
)))
(assert (= (type Tclass._System.object) TyType))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((bx@@28 T@U) ) (!  (=> (and (= (type bx@@28) BoxType) ($IsBox bx@@28 Tclass._System.object)) (and (= ($Box ($Unbox refType bx@@28)) bx@@28) ($Is ($Unbox refType bx@@28) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( ($IsBox bx@@28 Tclass._System.object))
)))
(assert (forall ((|c#0| T@U) ) (!  (=> (= (type |c#0|) refType) (= ($Is |c#0| Tclass._System.object)  (and ($Is |c#0| Tclass._System.object?) (not (= |c#0| null)))))
 :qid |unknown.0:0|
 :skolemid |1883|
 :pattern ( ($Is |c#0| Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (!  (=> (and (= (type |c#0@@0|) refType) (= (type $h@@1) (MapType0Type refType MapType1Type))) (= ($IsAlloc |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc |c#0@@0| Tclass._System.object? $h@@1)))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( ($IsAlloc |c#0@@0| Tclass._System.object $h@@1))
)))
(assert (forall ((arg0@@114 T@U) ) (! (= (type (Tclass._System.array? arg0@@114)) TyType)
 :qid |funType:Tclass._System.array?|
 :pattern ( (Tclass._System.array? arg0@@114))
)))
(assert (forall ((_System.array$arg T@U) ) (!  (=> (= (type _System.array$arg) TyType) (and (= (Tag (Tclass._System.array? _System.array$arg)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg)) tytagFamily$array)))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((arg0@@115 T@U) ) (! (= (type (Tclass._System.array?_0 arg0@@115)) TyType)
 :qid |funType:Tclass._System.array?_0|
 :pattern ( (Tclass._System.array?_0 arg0@@115))
)))
(assert (forall ((_System.array$arg@@0 T@U) ) (!  (=> (= (type _System.array$arg@@0) TyType) (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@0)) _System.array$arg@@0))
 :qid |unknown.0:0|
 :skolemid |1886|
 :pattern ( (Tclass._System.array? _System.array$arg@@0))
)))
(assert (forall ((_System.array$arg@@1 T@U) (bx@@29 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@1) TyType) (= (type bx@@29) BoxType)) ($IsBox bx@@29 (Tclass._System.array? _System.array$arg@@1))) (and (= ($Box ($Unbox refType bx@@29)) bx@@29) ($Is ($Unbox refType bx@@29) (Tclass._System.array? _System.array$arg@@1))))
 :qid |unknown.0:0|
 :skolemid |1887|
 :pattern ( ($IsBox bx@@29 (Tclass._System.array? _System.array$arg@@1)))
)))
(assert (forall ((arg0@@116 T@U) ) (! (= (type (dtype arg0@@116)) TyType)
 :qid |funType:dtype|
 :pattern ( (dtype arg0@@116))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and (= (type _System.array$arg@@2) TyType) (= (type $h@@2) (MapType0Type refType MapType1Type))) (= (type $o@@1) refType)) (and (and ($IsGoodHeap $h@@2) (and (not (= $o@@1 null)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1))))) ($IsBox (MapType1Select (MapType0Select $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2))
 :qid |unknown.0:0|
 :skolemid |1888|
 :pattern ( (MapType1Select (MapType0Select $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) ($h@@3 T@U) ($o@@2 T@U) ($i0@@0 Int) ) (!  (=> (and (and (= (type _System.array$arg@@3) TyType) (= (type $h@@3) (MapType0Type refType MapType1Type))) (= (type $o@@2) refType)) (=> (and (and (and ($IsGoodHeap $h@@3) (and (not (= $o@@2 null)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@3)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@2)))) (U_2_bool (MapType1Select (MapType0Select $h@@3 $o@@2) alloc))) ($IsAllocBox (MapType1Select (MapType0Select $h@@3 $o@@2) (IndexField $i0@@0)) _System.array$arg@@3 $h@@3)))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( (MapType1Select (MapType0Select $h@@3 $o@@2) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (= (type _System.array$arg@@4) TyType) (= (type $o@@3) refType)) (= ($Is $o@@3 (Tclass._System.array? _System.array$arg@@4))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@4)))))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($Is $o@@3 (Tclass._System.array? _System.array$arg@@4)))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@4 T@U) ($h@@4 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@5) TyType) (= (type $o@@4) refType)) (= (type $h@@4) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@4 (Tclass._System.array? _System.array$arg@@5) $h@@4)  (or (= $o@@4 null) (U_2_bool (MapType1Select (MapType0Select $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( ($IsAlloc $o@@4 (Tclass._System.array? _System.array$arg@@5) $h@@4))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@6) TyType) (= (type $o@@5) refType)) (and (not (= $o@@5 null)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@6)))) ($Is (int_2_U (_System.array.Length $o@@5)) TInt))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( (_System.array.Length $o@@5) (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and (and (= (type _System.array$arg@@7) TyType) (= (type $h@@5) (MapType0Type refType MapType1Type))) (= (type $o@@6) refType)) (and (and ($IsGoodHeap $h@@5) (and (not (= $o@@6 null)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@7)))) (U_2_bool (MapType1Select (MapType0Select $h@@5 $o@@6) alloc)))) ($IsAlloc (int_2_U (_System.array.Length $o@@6)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( (_System.array.Length $o@@6) (MapType1Select (MapType0Select $h@@5 $o@@6) alloc) (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((arg0@@117 T@U) ) (! (= (type (Tclass._System.array arg0@@117)) TyType)
 :qid |funType:Tclass._System.array|
 :pattern ( (Tclass._System.array arg0@@117))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (!  (=> (= (type _System.array$arg@@8) TyType) (and (= (Tag (Tclass._System.array _System.array$arg@@8)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@8)) tytagFamily$array)))
 :qid |unknown.0:0|
 :skolemid |1894|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((arg0@@118 T@U) ) (! (= (type (Tclass._System.array_0 arg0@@118)) TyType)
 :qid |funType:Tclass._System.array_0|
 :pattern ( (Tclass._System.array_0 arg0@@118))
)))
(assert (forall ((_System.array$arg@@9 T@U) ) (!  (=> (= (type _System.array$arg@@9) TyType) (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@9)) _System.array$arg@@9))
 :qid |unknown.0:0|
 :skolemid |1895|
 :pattern ( (Tclass._System.array _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@30 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@10) TyType) (= (type bx@@30) BoxType)) ($IsBox bx@@30 (Tclass._System.array _System.array$arg@@10))) (and (= ($Box ($Unbox refType bx@@30)) bx@@30) ($Is ($Unbox refType bx@@30) (Tclass._System.array _System.array$arg@@10))))
 :qid |unknown.0:0|
 :skolemid |1896|
 :pattern ( ($IsBox bx@@30 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (|c#0@@1| T@U) ) (!  (=> (and (= (type _System.array$arg@@11) TyType) (= (type |c#0@@1|) refType)) (= ($Is |c#0@@1| (Tclass._System.array _System.array$arg@@11))  (and ($Is |c#0@@1| (Tclass._System.array? _System.array$arg@@11)) (not (= |c#0@@1| null)))))
 :qid |unknown.0:0|
 :skolemid |1897|
 :pattern ( ($Is |c#0@@1| (Tclass._System.array _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (|c#0@@2| T@U) ($h@@6 T@U) ) (!  (=> (and (and (= (type _System.array$arg@@12) TyType) (= (type |c#0@@2|) refType)) (= (type $h@@6) (MapType0Type refType MapType1Type))) (= ($IsAlloc |c#0@@2| (Tclass._System.array _System.array$arg@@12) $h@@6) ($IsAlloc |c#0@@2| (Tclass._System.array? _System.array$arg@@12) $h@@6)))
 :qid |unknown.0:0|
 :skolemid |1898|
 :pattern ( ($IsAlloc |c#0@@2| (Tclass._System.array _System.array$arg@@12) $h@@6))
)))
(assert (forall ((arg0@@119 T@U) (arg1@@53 T@U) ) (! (= (type (Tclass._System.___hFunc1 arg0@@119 arg1@@53)) TyType)
 :qid |funType:Tclass._System.___hFunc1|
 :pattern ( (Tclass._System.___hFunc1 arg0@@119 arg1@@53))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (!  (=> (and (= (type |#$T0|) TyType) (= (type |#$R|) TyType)) (and (= (Tag (Tclass._System.___hFunc1 |#$T0| |#$R|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0| |#$R|)) |tytagFamily$_#Func1|)))
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((arg0@@120 T@U) ) (! (= (type (Tclass._System.___hFunc1_0 arg0@@120)) TyType)
 :qid |funType:Tclass._System.___hFunc1_0|
 :pattern ( (Tclass._System.___hFunc1_0 arg0@@120))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (!  (=> (and (= (type |#$T0@@0|) TyType) (= (type |#$R@@0|) TyType)) (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$T0@@0|))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((arg0@@121 T@U) ) (! (= (type (Tclass._System.___hFunc1_1 arg0@@121)) TyType)
 :qid |funType:Tclass._System.___hFunc1_1|
 :pattern ( (Tclass._System.___hFunc1_1 arg0@@121))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (!  (=> (and (= (type |#$T0@@1|) TyType) (= (type |#$R@@1|) TyType)) (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$R@@1|))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) (bx@@31 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@2|) TyType) (= (type |#$R@@2|) TyType)) (= (type bx@@31) BoxType)) ($IsBox bx@@31 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))) (and (= ($Box ($Unbox HandleTypeType bx@@31)) bx@@31) ($Is ($Unbox HandleTypeType bx@@31) (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsBox bx@@31 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((arg0@@122 T@T) (arg1@@54 T@T) (arg2@@8 T@T) ) (! (= (Ctor (MapType2Type arg0@@122 arg1@@54 arg2@@8)) 24)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@123 T@T) (arg1@@55 T@T) (arg2@@9 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@123 arg1@@55 arg2@@9)) arg0@@123)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@123 arg1@@55 arg2@@9))
))) (forall ((arg0@@124 T@T) (arg1@@56 T@T) (arg2@@10 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@124 arg1@@56 arg2@@10)) arg1@@56)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@124 arg1@@56 arg2@@10))
))) (forall ((arg0@@125 T@T) (arg1@@57 T@T) (arg2@@11 T@T) ) (! (= (MapType2TypeInv2 (MapType2Type arg0@@125 arg1@@57 arg2@@11)) arg2@@11)
 :qid |typeInv:MapType2TypeInv2|
 :pattern ( (MapType2Type arg0@@125 arg1@@57 arg2@@11))
))) (forall ((arg0@@126 T@U) (arg1@@58 T@U) (arg2@@12 T@U) ) (! (let ((aVar2 (MapType2TypeInv2 (type arg0@@126))))
(= (type (MapType2Select arg0@@126 arg1@@58 arg2@@12)) aVar2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@126 arg1@@58 arg2@@12))
))) (forall ((arg0@@127 T@U) (arg1@@59 T@U) (arg2@@13 T@U) (arg3@@1 T@U) ) (! (let ((aVar2@@0 (type arg3@@1)))
(let ((aVar1@@2 (type arg2@@13)))
(let ((aVar0@@0 (type arg1@@59)))
(= (type (MapType2Store arg0@@127 arg1@@59 arg2@@13 arg3@@1)) (MapType2Type aVar0@@0 aVar1@@2 aVar2@@0)))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@127 arg1@@59 arg2@@13 arg3@@1))
))) (forall ((m@@45 T@U) (x0@@5 T@U) (x1 T@U) (val@@6 T@U) ) (! (let ((aVar2@@1 (MapType2TypeInv2 (type m@@45))))
 (=> (= (type val@@6) aVar2@@1) (= (MapType2Select (MapType2Store m@@45 x0@@5 x1 val@@6) x0@@5 x1) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@7 T@U) (m@@46 T@U) (x0@@6 T@U) (x1@@0 T@U) (y0@@3 T@U) (y1 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select (MapType2Store m@@46 x0@@6 x1@@0 val@@7) y0@@3 y1) (MapType2Select m@@46 y0@@3 y1)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@47 T@U) (x0@@7 T@U) (x1@@1 T@U) (y0@@4 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType2Select (MapType2Store m@@47 x0@@7 x1@@1 val@@8) y0@@4 y1@@0) (MapType2Select m@@47 y0@@4 y1@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@9 T@U) (m@@48 T@U) (x0@@8 T@U) (x1@@2 T@U) (y0@@5 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@48 x0@@8 x1@@2 val@@9) y0@@5 y1@@1) (MapType2Select m@@48 y0@@5 y1@@1)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@128 T@U) (arg1@@60 T@U) (arg2@@14 T@U) ) (! (= (type (Handle1 arg0@@128 arg1@@60 arg2@@14)) HandleTypeType)
 :qid |funType:Handle1|
 :pattern ( (Handle1 arg0@@128 arg1@@60 arg2@@14))
))))
(assert (forall ((t0@@16 T@U) (t1@@7 T@U) (heap@@1 T@U) (h@@21 T@U) (r@@6 T@U) (rd T@U) (bx0 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@16) TyType) (= (type t1@@7) TyType)) (= (type heap@@1) (MapType0Type refType MapType1Type))) (= (type h@@21) (MapType2Type (MapType0Type refType MapType1Type) BoxType BoxType))) (= (type r@@6) (MapType2Type (MapType0Type refType MapType1Type) BoxType boolType))) (= (type rd) (MapType2Type (MapType0Type refType MapType1Type) BoxType (MapType0Type BoxType boolType)))) (= (type bx0) BoxType)) (= (Apply1 t0@@16 t1@@7 heap@@1 (Handle1 h@@21 r@@6 rd) bx0) (MapType2Select h@@21 heap@@1 bx0)))
 :qid |unknown.0:0|
 :skolemid |1903|
 :pattern ( (Apply1 t0@@16 t1@@7 heap@@1 (Handle1 h@@21 r@@6 rd) bx0))
)))
(assert (forall ((t0@@17 T@U) (t1@@8 T@U) (heap@@2 T@U) (h@@22 T@U) (r@@7 T@U) (rd@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@17) TyType) (= (type t1@@8) TyType)) (= (type heap@@2) (MapType0Type refType MapType1Type))) (= (type h@@22) (MapType2Type (MapType0Type refType MapType1Type) BoxType BoxType))) (= (type r@@7) (MapType2Type (MapType0Type refType MapType1Type) BoxType boolType))) (= (type rd@@0) (MapType2Type (MapType0Type refType MapType1Type) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@0) BoxType)) (U_2_bool (MapType2Select r@@7 heap@@2 bx0@@0))) (Requires1 t0@@17 t1@@8 heap@@2 (Handle1 h@@22 r@@7 rd@@0) bx0@@0))
 :qid |unknown.0:0|
 :skolemid |1904|
 :pattern ( (Requires1 t0@@17 t1@@8 heap@@2 (Handle1 h@@22 r@@7 rd@@0) bx0@@0))
)))
(assert (forall ((arg0@@129 T@U) (arg1@@61 T@U) (arg2@@15 T@U) (arg3@@2 T@U) (arg4@@0 T@U) ) (! (= (type (Reads1 arg0@@129 arg1@@61 arg2@@15 arg3@@2 arg4@@0)) (MapType0Type BoxType boolType))
 :qid |funType:Reads1|
 :pattern ( (Reads1 arg0@@129 arg1@@61 arg2@@15 arg3@@2 arg4@@0))
)))
(assert (forall ((t0@@18 T@U) (t1@@9 T@U) (heap@@3 T@U) (h@@23 T@U) (r@@8 T@U) (rd@@1 T@U) (bx0@@1 T@U) (bx@@32 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@18) TyType) (= (type t1@@9) TyType)) (= (type heap@@3) (MapType0Type refType MapType1Type))) (= (type h@@23) (MapType2Type (MapType0Type refType MapType1Type) BoxType BoxType))) (= (type r@@8) (MapType2Type (MapType0Type refType MapType1Type) BoxType boolType))) (= (type rd@@1) (MapType2Type (MapType0Type refType MapType1Type) BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@1) BoxType)) (= (type bx@@32) BoxType)) (= (U_2_bool (MapType0Select (Reads1 t0@@18 t1@@9 heap@@3 (Handle1 h@@23 r@@8 rd@@1) bx0@@1) bx@@32)) (U_2_bool (MapType0Select (MapType2Select rd@@1 heap@@3 bx0@@1) bx@@32))))
 :qid |unknown.0:0|
 :skolemid |1905|
 :pattern ( (MapType0Select (Reads1 t0@@18 t1@@9 heap@@3 (Handle1 h@@23 r@@8 rd@@1) bx0@@1) bx@@32))
)))
(assert (forall ((t0@@19 T@U) (t1@@10 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@5 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@19) TyType) (= (type t1@@10) TyType)) (= (type h0@@0) (MapType0Type refType MapType1Type))) (= (type h1@@0) (MapType0Type refType MapType1Type))) (= (type f@@5) HandleTypeType)) (= (type bx0@@2) BoxType)) (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@19) ($Is f@@5 (Tclass._System.___hFunc1 t0@@19 t1@@10)))) (forall ((o@@44 T@U) (fld T@U) ) (! (let ((a@@82 (FieldTypeInv0 (type fld))))
 (=> (and (and (= (type o@@44) refType) (= (type fld) (FieldType a@@82))) (and (not (= o@@44 null)) (U_2_bool (MapType0Select (Reads1 t0@@19 t1@@10 h0@@0 f@@5 bx0@@2) ($Box o@@44))))) (= (MapType1Select (MapType0Select h0@@0 o@@44) fld) (MapType1Select (MapType0Select h1@@0 o@@44) fld))))
 :qid |unknown.0:0|
 :skolemid |1906|
 :no-pattern (type o@@44)
 :no-pattern (type fld)
 :no-pattern (U_2_int o@@44)
 :no-pattern (U_2_bool o@@44)
 :no-pattern (U_2_int fld)
 :no-pattern (U_2_bool fld)
)))) (= (Reads1 t0@@19 t1@@10 h0@@0 f@@5 bx0@@2) (Reads1 t0@@19 t1@@10 h1@@0 f@@5 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |1907|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Reads1 t0@@19 t1@@10 h1@@0 f@@5 bx0@@2))
)))
(assert (forall ((t0@@20 T@U) (t1@@11 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@6 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@20) TyType) (= (type t1@@11) TyType)) (= (type h0@@1) (MapType0Type refType MapType1Type))) (= (type h1@@1) (MapType0Type refType MapType1Type))) (= (type f@@6) HandleTypeType)) (= (type bx0@@3) BoxType)) (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@20) ($Is f@@6 (Tclass._System.___hFunc1 t0@@20 t1@@11)))) (forall ((o@@45 T@U) (fld@@0 T@U) ) (! (let ((a@@83 (FieldTypeInv0 (type fld@@0))))
 (=> (and (and (= (type o@@45) refType) (= (type fld@@0) (FieldType a@@83))) (and (not (= o@@45 null)) (U_2_bool (MapType0Select (Reads1 t0@@20 t1@@11 h1@@1 f@@6 bx0@@3) ($Box o@@45))))) (= (MapType1Select (MapType0Select h0@@1 o@@45) fld@@0) (MapType1Select (MapType0Select h1@@1 o@@45) fld@@0))))
 :qid |unknown.0:0|
 :skolemid |1908|
 :no-pattern (type o@@45)
 :no-pattern (type fld@@0)
 :no-pattern (U_2_int o@@45)
 :no-pattern (U_2_bool o@@45)
 :no-pattern (U_2_int fld@@0)
 :no-pattern (U_2_bool fld@@0)
)))) (= (Reads1 t0@@20 t1@@11 h0@@1 f@@6 bx0@@3) (Reads1 t0@@20 t1@@11 h1@@1 f@@6 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1909|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@20 t1@@11 h1@@1 f@@6 bx0@@3))
)))
(assert (forall ((t0@@21 T@U) (t1@@12 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@7 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@21) TyType) (= (type t1@@12) TyType)) (= (type h0@@2) (MapType0Type refType MapType1Type))) (= (type h1@@2) (MapType0Type refType MapType1Type))) (= (type f@@7) HandleTypeType)) (= (type bx0@@4) BoxType)) (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@21) ($Is f@@7 (Tclass._System.___hFunc1 t0@@21 t1@@12)))) (forall ((o@@46 T@U) (fld@@1 T@U) ) (! (let ((a@@84 (FieldTypeInv0 (type fld@@1))))
 (=> (and (and (= (type o@@46) refType) (= (type fld@@1) (FieldType a@@84))) (and (not (= o@@46 null)) (U_2_bool (MapType0Select (Reads1 t0@@21 t1@@12 h0@@2 f@@7 bx0@@4) ($Box o@@46))))) (= (MapType1Select (MapType0Select h0@@2 o@@46) fld@@1) (MapType1Select (MapType0Select h1@@2 o@@46) fld@@1))))
 :qid |unknown.0:0|
 :skolemid |1910|
 :no-pattern (type o@@46)
 :no-pattern (type fld@@1)
 :no-pattern (U_2_int o@@46)
 :no-pattern (U_2_bool o@@46)
 :no-pattern (U_2_int fld@@1)
 :no-pattern (U_2_bool fld@@1)
)))) (= (Requires1 t0@@21 t1@@12 h0@@2 f@@7 bx0@@4) (Requires1 t0@@21 t1@@12 h1@@2 f@@7 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |1911|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Requires1 t0@@21 t1@@12 h1@@2 f@@7 bx0@@4))
)))
(assert (forall ((t0@@22 T@U) (t1@@13 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@8 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@22) TyType) (= (type t1@@13) TyType)) (= (type h0@@3) (MapType0Type refType MapType1Type))) (= (type h1@@3) (MapType0Type refType MapType1Type))) (= (type f@@8) HandleTypeType)) (= (type bx0@@5) BoxType)) (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@22) ($Is f@@8 (Tclass._System.___hFunc1 t0@@22 t1@@13)))) (forall ((o@@47 T@U) (fld@@2 T@U) ) (! (let ((a@@85 (FieldTypeInv0 (type fld@@2))))
 (=> (and (and (= (type o@@47) refType) (= (type fld@@2) (FieldType a@@85))) (and (not (= o@@47 null)) (U_2_bool (MapType0Select (Reads1 t0@@22 t1@@13 h1@@3 f@@8 bx0@@5) ($Box o@@47))))) (= (MapType1Select (MapType0Select h0@@3 o@@47) fld@@2) (MapType1Select (MapType0Select h1@@3 o@@47) fld@@2))))
 :qid |unknown.0:0|
 :skolemid |1912|
 :no-pattern (type o@@47)
 :no-pattern (type fld@@2)
 :no-pattern (U_2_int o@@47)
 :no-pattern (U_2_bool o@@47)
 :no-pattern (U_2_int fld@@2)
 :no-pattern (U_2_bool fld@@2)
)))) (= (Requires1 t0@@22 t1@@13 h0@@3 f@@8 bx0@@5) (Requires1 t0@@22 t1@@13 h1@@3 f@@8 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |1913|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Requires1 t0@@22 t1@@13 h1@@3 f@@8 bx0@@5))
)))
(assert (forall ((t0@@23 T@U) (t1@@14 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@9 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@23) TyType) (= (type t1@@14) TyType)) (= (type h0@@4) (MapType0Type refType MapType1Type))) (= (type h1@@4) (MapType0Type refType MapType1Type))) (= (type f@@9) HandleTypeType)) (= (type bx0@@6) BoxType)) (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@23) ($Is f@@9 (Tclass._System.___hFunc1 t0@@23 t1@@14)))) (forall ((o@@48 T@U) (fld@@3 T@U) ) (! (let ((a@@86 (FieldTypeInv0 (type fld@@3))))
 (=> (and (and (= (type o@@48) refType) (= (type fld@@3) (FieldType a@@86))) (and (not (= o@@48 null)) (U_2_bool (MapType0Select (Reads1 t0@@23 t1@@14 h0@@4 f@@9 bx0@@6) ($Box o@@48))))) (= (MapType1Select (MapType0Select h0@@4 o@@48) fld@@3) (MapType1Select (MapType0Select h1@@4 o@@48) fld@@3))))
 :qid |unknown.0:0|
 :skolemid |1914|
 :no-pattern (type o@@48)
 :no-pattern (type fld@@3)
 :no-pattern (U_2_int o@@48)
 :no-pattern (U_2_bool o@@48)
 :no-pattern (U_2_int fld@@3)
 :no-pattern (U_2_bool fld@@3)
)))) (= (Apply1 t0@@23 t1@@14 h0@@4 f@@9 bx0@@6) (Apply1 t0@@23 t1@@14 h1@@4 f@@9 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |1915|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@23 t1@@14 h1@@4 f@@9 bx0@@6))
)))
(assert (forall ((t0@@24 T@U) (t1@@15 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@10 T@U) (bx0@@7 T@U) ) (!  (=> (and (and (and (and (and (and (= (type t0@@24) TyType) (= (type t1@@15) TyType)) (= (type h0@@5) (MapType0Type refType MapType1Type))) (= (type h1@@5) (MapType0Type refType MapType1Type))) (= (type f@@10) HandleTypeType)) (= (type bx0@@7) BoxType)) (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) (and ($IsBox bx0@@7 t0@@24) ($Is f@@10 (Tclass._System.___hFunc1 t0@@24 t1@@15)))) (forall ((o@@49 T@U) (fld@@4 T@U) ) (! (let ((a@@87 (FieldTypeInv0 (type fld@@4))))
 (=> (and (and (= (type o@@49) refType) (= (type fld@@4) (FieldType a@@87))) (and (not (= o@@49 null)) (U_2_bool (MapType0Select (Reads1 t0@@24 t1@@15 h1@@5 f@@10 bx0@@7) ($Box o@@49))))) (= (MapType1Select (MapType0Select h0@@5 o@@49) fld@@4) (MapType1Select (MapType0Select h1@@5 o@@49) fld@@4))))
 :qid |unknown.0:0|
 :skolemid |1916|
 :no-pattern (type o@@49)
 :no-pattern (type fld@@4)
 :no-pattern (U_2_int o@@49)
 :no-pattern (U_2_bool o@@49)
 :no-pattern (U_2_int fld@@4)
 :no-pattern (U_2_bool fld@@4)
)))) (= (Apply1 t0@@24 t1@@15 h0@@5 f@@10 bx0@@7) (Apply1 t0@@24 t1@@15 h1@@5 f@@10 bx0@@7)))
 :qid |unknown.0:0|
 :skolemid |1917|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Apply1 t0@@24 t1@@15 h1@@5 f@@10 bx0@@7))
)))
(assert (forall ((t0@@25 T@U) (t1@@16 T@U) (heap@@4 T@U) (f@@11 T@U) (bx0@@8 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@25) TyType) (= (type t1@@16) TyType)) (= (type heap@@4) (MapType0Type refType MapType1Type))) (= (type f@@11) HandleTypeType)) (= (type bx0@@8) BoxType)) (and ($IsGoodHeap heap@@4) (and ($IsBox bx0@@8 t0@@25) ($Is f@@11 (Tclass._System.___hFunc1 t0@@25 t1@@16))))) (= (|Set#Equal| (Reads1 t0@@25 t1@@16 $OneHeap f@@11 bx0@@8) (|Set#Empty| BoxType)) (|Set#Equal| (Reads1 t0@@25 t1@@16 heap@@4 f@@11 bx0@@8) (|Set#Empty| BoxType))))
 :qid |unknown.0:0|
 :skolemid |1918|
 :pattern ( (Reads1 t0@@25 t1@@16 $OneHeap f@@11 bx0@@8) ($IsGoodHeap heap@@4))
 :pattern ( (Reads1 t0@@25 t1@@16 heap@@4 f@@11 bx0@@8))
)))
(assert (forall ((t0@@26 T@U) (t1@@17 T@U) (heap@@5 T@U) (f@@12 T@U) (bx0@@9 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@26) TyType) (= (type t1@@17) TyType)) (= (type heap@@5) (MapType0Type refType MapType1Type))) (= (type f@@12) HandleTypeType)) (= (type bx0@@9) BoxType)) (and (and ($IsGoodHeap heap@@5) (and ($IsBox bx0@@9 t0@@26) ($Is f@@12 (Tclass._System.___hFunc1 t0@@26 t1@@17)))) (|Set#Equal| (Reads1 t0@@26 t1@@17 $OneHeap f@@12 bx0@@9) (|Set#Empty| BoxType)))) (= (Requires1 t0@@26 t1@@17 $OneHeap f@@12 bx0@@9) (Requires1 t0@@26 t1@@17 heap@@5 f@@12 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |1919|
 :pattern ( (Requires1 t0@@26 t1@@17 $OneHeap f@@12 bx0@@9) ($IsGoodHeap heap@@5))
 :pattern ( (Requires1 t0@@26 t1@@17 heap@@5 f@@12 bx0@@9))
)))
(assert (forall ((f@@13 T@U) (t0@@27 T@U) (t1@@18 T@U) ) (!  (=> (and (and (= (type f@@13) HandleTypeType) (= (type t0@@27) TyType)) (= (type t1@@18) TyType)) (= ($Is f@@13 (Tclass._System.___hFunc1 t0@@27 t1@@18)) (forall ((h@@24 T@U) (bx0@@10 T@U) ) (!  (=> (and (= (type h@@24) (MapType0Type refType MapType1Type)) (= (type bx0@@10) BoxType)) (=> (and (and ($IsGoodHeap h@@24) ($IsBox bx0@@10 t0@@27)) (Requires1 t0@@27 t1@@18 h@@24 f@@13 bx0@@10)) ($IsBox (Apply1 t0@@27 t1@@18 h@@24 f@@13 bx0@@10) t1@@18)))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |1920|
 :pattern ( (Apply1 t0@@27 t1@@18 h@@24 f@@13 bx0@@10))
))))
 :qid |unknown.0:0|
 :skolemid |1921|
 :pattern ( ($Is f@@13 (Tclass._System.___hFunc1 t0@@27 t1@@18)))
)))
(assert (forall ((f@@14 T@U) (t0@@28 T@U) (t1@@19 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@14) HandleTypeType) (= (type t0@@28) TyType)) (= (type t1@@19) TyType)) (= (type u0) TyType)) (= (type u1) TyType)) (and (and ($Is f@@14 (Tclass._System.___hFunc1 t0@@28 t1@@19)) (forall ((bx@@33 T@U) ) (!  (=> (and (= (type bx@@33) BoxType) ($IsBox bx@@33 u0)) ($IsBox bx@@33 t0@@28))
 :qid |unknown.0:0|
 :skolemid |1922|
 :pattern ( ($IsBox bx@@33 u0))
 :pattern ( ($IsBox bx@@33 t0@@28))
))) (forall ((bx@@34 T@U) ) (!  (=> (and (= (type bx@@34) BoxType) ($IsBox bx@@34 t1@@19)) ($IsBox bx@@34 u1))
 :qid |unknown.0:0|
 :skolemid |1923|
 :pattern ( ($IsBox bx@@34 t1@@19))
 :pattern ( ($IsBox bx@@34 u1))
)))) ($Is f@@14 (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |1924|
 :pattern ( ($Is f@@14 (Tclass._System.___hFunc1 t0@@28 t1@@19)) ($Is f@@14 (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (forall ((f@@15 T@U) (t0@@29 T@U) (t1@@20 T@U) (h@@25 T@U) ) (!  (=> (and (and (and (and (= (type f@@15) HandleTypeType) (= (type t0@@29) TyType)) (= (type t1@@20) TyType)) (= (type h@@25) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@25)) (= ($IsAlloc f@@15 (Tclass._System.___hFunc1 t0@@29 t1@@20) h@@25) (forall ((bx0@@11 T@U) ) (!  (=> (= (type bx0@@11) BoxType) (=> (and (and ($IsBox bx0@@11 t0@@29) ($IsAllocBox bx0@@11 t0@@29 h@@25)) (Requires1 t0@@29 t1@@20 h@@25 f@@15 bx0@@11)) (forall ((r@@9 T@U) ) (!  (=> (= (type r@@9) refType) (=> (and (not (= r@@9 null)) (U_2_bool (MapType0Select (Reads1 t0@@29 t1@@20 h@@25 f@@15 bx0@@11) ($Box r@@9)))) (U_2_bool (MapType1Select (MapType0Select h@@25 r@@9) alloc))))
 :qid |unknown.0:0|
 :skolemid |1925|
 :pattern ( (MapType0Select (Reads1 t0@@29 t1@@20 h@@25 f@@15 bx0@@11) ($Box r@@9)))
))))
 :qid |unknown.0:0|
 :skolemid |1926|
 :pattern ( (Apply1 t0@@29 t1@@20 h@@25 f@@15 bx0@@11))
 :pattern ( (Reads1 t0@@29 t1@@20 h@@25 f@@15 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |1927|
 :pattern ( ($IsAlloc f@@15 (Tclass._System.___hFunc1 t0@@29 t1@@20) h@@25))
)))
(assert (forall ((f@@16 T@U) (t0@@30 T@U) (t1@@21 T@U) (h@@26 T@U) ) (!  (=> (and (and (and (and (= (type f@@16) HandleTypeType) (= (type t0@@30) TyType)) (= (type t1@@21) TyType)) (= (type h@@26) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@26) ($IsAlloc f@@16 (Tclass._System.___hFunc1 t0@@30 t1@@21) h@@26))) (forall ((bx0@@12 T@U) ) (!  (=> (= (type bx0@@12) BoxType) (=> (and ($IsAllocBox bx0@@12 t0@@30 h@@26) (Requires1 t0@@30 t1@@21 h@@26 f@@16 bx0@@12)) ($IsAllocBox (Apply1 t0@@30 t1@@21 h@@26 f@@16 bx0@@12) t1@@21 h@@26)))
 :qid |unknown.0:0|
 :skolemid |1928|
 :pattern ( (Apply1 t0@@30 t1@@21 h@@26 f@@16 bx0@@12))
)))
 :qid |unknown.0:0|
 :skolemid |1929|
 :pattern ( ($IsAlloc f@@16 (Tclass._System.___hFunc1 t0@@30 t1@@21) h@@26))
)))
(assert (forall ((arg0@@130 T@U) (arg1@@62 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1 arg0@@130 arg1@@62)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1|
 :pattern ( (Tclass._System.___hPartialFunc1 arg0@@130 arg1@@62))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (!  (=> (and (= (type |#$T0@@3|) TyType) (= (type |#$R@@3|) TyType)) (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |tytagFamily$_#PartialFunc1|)))
 :qid |unknown.0:0|
 :skolemid |1930|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((arg0@@131 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1_0 arg0@@131)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1_0|
 :pattern ( (Tclass._System.___hPartialFunc1_0 arg0@@131))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (!  (=> (and (= (type |#$T0@@4|) TyType) (= (type |#$R@@4|) TyType)) (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$T0@@4|))
 :qid |unknown.0:0|
 :skolemid |1931|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((arg0@@132 T@U) ) (! (= (type (Tclass._System.___hPartialFunc1_1 arg0@@132)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc1_1|
 :pattern ( (Tclass._System.___hPartialFunc1_1 arg0@@132))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (!  (=> (and (= (type |#$T0@@5|) TyType) (= (type |#$R@@5|) TyType)) (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@5|)) |#$R@@5|))
 :qid |unknown.0:0|
 :skolemid |1932|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (bx@@35 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@6|) TyType) (= (type |#$R@@6|) TyType)) (= (type bx@@35) BoxType)) ($IsBox bx@@35 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))) (and (= ($Box ($Unbox HandleTypeType bx@@35)) bx@@35) ($Is ($Unbox HandleTypeType bx@@35) (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))))
 :qid |unknown.0:0|
 :skolemid |1933|
 :pattern ( ($IsBox bx@@35 (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0| T@U) ) (!  (=> (and (and (= (type |#$T0@@7|) TyType) (= (type |#$R@@7|) TyType)) (= (type |f#0|) HandleTypeType)) (= ($Is |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is |f#0| (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> (and (= (type |x0#0|) BoxType) ($IsBox |x0#0| |#$T0@@7|)) (|Set#Equal| (Reads1 |#$T0@@7| |#$R@@7| $OneHeap |f#0| |x0#0|) (|Set#Empty| BoxType)))
 :qid |unknown.0:0|
 :skolemid |1934|
 :no-pattern (type |x0#0|)
 :no-pattern (U_2_int |x0#0|)
 :no-pattern (U_2_bool |x0#0|)
)))))
 :qid |unknown.0:0|
 :skolemid |1935|
 :pattern ( ($Is |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@0| T@U) ($h@@7 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@8|) TyType) (= (type |#$R@@8|) TyType)) (= (type |f#0@@0|) HandleTypeType)) (= (type $h@@7) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|) $h@@7) ($IsAlloc |f#0@@0| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|) $h@@7)))
 :qid |unknown.0:0|
 :skolemid |1936|
 :pattern ( ($IsAlloc |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|) $h@@7))
)))
(assert (forall ((arg0@@133 T@U) (arg1@@63 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1 arg0@@133 arg1@@63)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1|
 :pattern ( (Tclass._System.___hTotalFunc1 arg0@@133 arg1@@63))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) ) (!  (=> (and (= (type |#$T0@@9|) TyType) (= (type |#$R@@9|) TyType)) (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)) |tytagFamily$_#TotalFunc1|)))
 :qid |unknown.0:0|
 :skolemid |1937|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|))
)))
(assert (forall ((arg0@@134 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1_0 arg0@@134)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1_0|
 :pattern ( (Tclass._System.___hTotalFunc1_0 arg0@@134))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) ) (!  (=> (and (= (type |#$T0@@10|) TyType) (= (type |#$R@@10|) TyType)) (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@10| |#$R@@10|)) |#$T0@@10|))
 :qid |unknown.0:0|
 :skolemid |1938|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@10| |#$R@@10|))
)))
(assert (forall ((arg0@@135 T@U) ) (! (= (type (Tclass._System.___hTotalFunc1_1 arg0@@135)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc1_1|
 :pattern ( (Tclass._System.___hTotalFunc1_1 arg0@@135))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ) (!  (=> (and (= (type |#$T0@@11|) TyType) (= (type |#$R@@11|) TyType)) (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) |#$R@@11|))
 :qid |unknown.0:0|
 :skolemid |1939|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) (bx@@36 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@12|) TyType) (= (type |#$R@@12|) TyType)) (= (type bx@@36) BoxType)) ($IsBox bx@@36 (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|))) (and (= ($Box ($Unbox HandleTypeType bx@@36)) bx@@36) ($Is ($Unbox HandleTypeType bx@@36) (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |1940|
 :pattern ( ($IsBox bx@@36 (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) (|f#0@@1| T@U) ) (!  (=> (and (and (= (type |#$T0@@13|) TyType) (= (type |#$R@@13|) TyType)) (= (type |f#0@@1|) HandleTypeType)) (= ($Is |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@13| |#$R@@13|))  (and ($Is |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) (forall ((|x0#0@@0| T@U) ) (!  (=> (and (= (type |x0#0@@0|) BoxType) ($IsBox |x0#0@@0| |#$T0@@13|)) (Requires1 |#$T0@@13| |#$R@@13| $OneHeap |f#0@@1| |x0#0@@0|))
 :qid |unknown.0:0|
 :skolemid |1941|
 :no-pattern (type |x0#0@@0|)
 :no-pattern (U_2_int |x0#0@@0|)
 :no-pattern (U_2_bool |x0#0@@0|)
)))))
 :qid |unknown.0:0|
 :skolemid |1942|
 :pattern ( ($Is |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) (|f#0@@2| T@U) ($h@@8 T@U) ) (!  (=> (and (and (and (= (type |#$T0@@14|) TyType) (= (type |#$R@@14|) TyType)) (= (type |f#0@@2|) HandleTypeType)) (= (type $h@@8) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|) $h@@8) ($IsAlloc |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@14| |#$R@@14|) $h@@8)))
 :qid |unknown.0:0|
 :skolemid |1943|
 :pattern ( ($IsAlloc |f#0@@2| (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|) $h@@8))
)))
(assert (forall ((arg0@@136 T@U) ) (! (= (type (Tclass._System.___hFunc0 arg0@@136)) TyType)
 :qid |funType:Tclass._System.___hFunc0|
 :pattern ( (Tclass._System.___hFunc0 arg0@@136))
)))
(assert (forall ((|#$R@@15| T@U) ) (!  (=> (= (type |#$R@@15|) TyType) (and (= (Tag (Tclass._System.___hFunc0 |#$R@@15|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@15|)) |tytagFamily$_#Func0|)))
 :qid |unknown.0:0|
 :skolemid |1944|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@15|))
)))
(assert (forall ((arg0@@137 T@U) ) (! (= (type (Tclass._System.___hFunc0_0 arg0@@137)) TyType)
 :qid |funType:Tclass._System.___hFunc0_0|
 :pattern ( (Tclass._System.___hFunc0_0 arg0@@137))
)))
(assert (forall ((|#$R@@16| T@U) ) (!  (=> (= (type |#$R@@16|) TyType) (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@16|)) |#$R@@16|))
 :qid |unknown.0:0|
 :skolemid |1945|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@16|))
)))
(assert (forall ((|#$R@@17| T@U) (bx@@37 T@U) ) (!  (=> (and (and (= (type |#$R@@17|) TyType) (= (type bx@@37) BoxType)) ($IsBox bx@@37 (Tclass._System.___hFunc0 |#$R@@17|))) (and (= ($Box ($Unbox HandleTypeType bx@@37)) bx@@37) ($Is ($Unbox HandleTypeType bx@@37) (Tclass._System.___hFunc0 |#$R@@17|))))
 :qid |unknown.0:0|
 :skolemid |1946|
 :pattern ( ($IsBox bx@@37 (Tclass._System.___hFunc0 |#$R@@17|)))
)))
(assert  (and (forall ((arg0@@138 T@U) (arg1@@64 T@U) (arg2@@16 T@U) ) (! (= (type (Apply0 arg0@@138 arg1@@64 arg2@@16)) BoxType)
 :qid |funType:Apply0|
 :pattern ( (Apply0 arg0@@138 arg1@@64 arg2@@16))
)) (forall ((arg0@@139 T@U) (arg1@@65 T@U) (arg2@@17 T@U) ) (! (= (type (Handle0 arg0@@139 arg1@@65 arg2@@17)) HandleTypeType)
 :qid |funType:Handle0|
 :pattern ( (Handle0 arg0@@139 arg1@@65 arg2@@17))
))))
(assert (forall ((t0@@31 T@U) (heap@@6 T@U) (h@@27 T@U) (r@@10 T@U) (rd@@2 T@U) ) (!  (=> (and (and (and (and (= (type t0@@31) TyType) (= (type heap@@6) (MapType0Type refType MapType1Type))) (= (type h@@27) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@10) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd@@2) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (= (Apply0 t0@@31 heap@@6 (Handle0 h@@27 r@@10 rd@@2)) (MapType0Select h@@27 heap@@6)))
 :qid |unknown.0:0|
 :skolemid |1947|
 :pattern ( (Apply0 t0@@31 heap@@6 (Handle0 h@@27 r@@10 rd@@2)))
)))
(assert (forall ((t0@@32 T@U) (heap@@7 T@U) (h@@28 T@U) (r@@11 T@U) (rd@@3 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@32) TyType) (= (type heap@@7) (MapType0Type refType MapType1Type))) (= (type h@@28) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@11) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd@@3) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (U_2_bool (MapType0Select r@@11 heap@@7))) (Requires0 t0@@32 heap@@7 (Handle0 h@@28 r@@11 rd@@3)))
 :qid |unknown.0:0|
 :skolemid |1948|
 :pattern ( (Requires0 t0@@32 heap@@7 (Handle0 h@@28 r@@11 rd@@3)))
)))
(assert (forall ((arg0@@140 T@U) (arg1@@66 T@U) (arg2@@18 T@U) ) (! (= (type (Reads0 arg0@@140 arg1@@66 arg2@@18)) (MapType0Type BoxType boolType))
 :qid |funType:Reads0|
 :pattern ( (Reads0 arg0@@140 arg1@@66 arg2@@18))
)))
(assert (forall ((t0@@33 T@U) (heap@@8 T@U) (h@@29 T@U) (r@@12 T@U) (rd@@4 T@U) (bx@@38 T@U) ) (!  (=> (and (and (and (and (and (= (type t0@@33) TyType) (= (type heap@@8) (MapType0Type refType MapType1Type))) (= (type h@@29) (MapType0Type (MapType0Type refType MapType1Type) BoxType))) (= (type r@@12) (MapType0Type (MapType0Type refType MapType1Type) boolType))) (= (type rd@@4) (MapType0Type (MapType0Type refType MapType1Type) (MapType0Type BoxType boolType)))) (= (type bx@@38) BoxType)) (= (U_2_bool (MapType0Select (Reads0 t0@@33 heap@@8 (Handle0 h@@29 r@@12 rd@@4)) bx@@38)) (U_2_bool (MapType0Select (MapType0Select rd@@4 heap@@8) bx@@38))))
 :qid |unknown.0:0|
 :skolemid |1949|
 :pattern ( (MapType0Select (Reads0 t0@@33 heap@@8 (Handle0 h@@29 r@@12 rd@@4)) bx@@38))
)))
(assert (forall ((t0@@34 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@17 T@U) ) (!  (=> (and (and (and (and (= (type t0@@34) TyType) (= (type h0@@6) (MapType0Type refType MapType1Type))) (= (type h1@@6) (MapType0Type refType MapType1Type))) (= (type f@@17) HandleTypeType)) (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) ($Is f@@17 (Tclass._System.___hFunc0 t0@@34))) (forall ((o@@50 T@U) (fld@@5 T@U) ) (! (let ((a@@88 (FieldTypeInv0 (type fld@@5))))
 (=> (and (and (= (type o@@50) refType) (= (type fld@@5) (FieldType a@@88))) (and (not (= o@@50 null)) (U_2_bool (MapType0Select (Reads0 t0@@34 h0@@6 f@@17) ($Box o@@50))))) (= (MapType1Select (MapType0Select h0@@6 o@@50) fld@@5) (MapType1Select (MapType0Select h1@@6 o@@50) fld@@5))))
 :qid |unknown.0:0|
 :skolemid |1950|
 :no-pattern (type o@@50)
 :no-pattern (type fld@@5)
 :no-pattern (U_2_int o@@50)
 :no-pattern (U_2_bool o@@50)
 :no-pattern (U_2_int fld@@5)
 :no-pattern (U_2_bool fld@@5)
)))) (= (Reads0 t0@@34 h0@@6 f@@17) (Reads0 t0@@34 h1@@6 f@@17)))
 :qid |unknown.0:0|
 :skolemid |1951|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Reads0 t0@@34 h1@@6 f@@17))
)))
(assert (forall ((t0@@35 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@18 T@U) ) (!  (=> (and (and (and (and (= (type t0@@35) TyType) (= (type h0@@7) (MapType0Type refType MapType1Type))) (= (type h1@@7) (MapType0Type refType MapType1Type))) (= (type f@@18) HandleTypeType)) (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) ($Is f@@18 (Tclass._System.___hFunc0 t0@@35))) (forall ((o@@51 T@U) (fld@@6 T@U) ) (! (let ((a@@89 (FieldTypeInv0 (type fld@@6))))
 (=> (and (and (= (type o@@51) refType) (= (type fld@@6) (FieldType a@@89))) (and (not (= o@@51 null)) (U_2_bool (MapType0Select (Reads0 t0@@35 h1@@7 f@@18) ($Box o@@51))))) (= (MapType1Select (MapType0Select h0@@7 o@@51) fld@@6) (MapType1Select (MapType0Select h1@@7 o@@51) fld@@6))))
 :qid |unknown.0:0|
 :skolemid |1952|
 :no-pattern (type o@@51)
 :no-pattern (type fld@@6)
 :no-pattern (U_2_int o@@51)
 :no-pattern (U_2_bool o@@51)
 :no-pattern (U_2_int fld@@6)
 :no-pattern (U_2_bool fld@@6)
)))) (= (Reads0 t0@@35 h0@@7 f@@18) (Reads0 t0@@35 h1@@7 f@@18)))
 :qid |unknown.0:0|
 :skolemid |1953|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads0 t0@@35 h1@@7 f@@18))
)))
(assert (forall ((t0@@36 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@19 T@U) ) (!  (=> (and (and (and (and (= (type t0@@36) TyType) (= (type h0@@8) (MapType0Type refType MapType1Type))) (= (type h1@@8) (MapType0Type refType MapType1Type))) (= (type f@@19) HandleTypeType)) (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) ($Is f@@19 (Tclass._System.___hFunc0 t0@@36))) (forall ((o@@52 T@U) (fld@@7 T@U) ) (! (let ((a@@90 (FieldTypeInv0 (type fld@@7))))
 (=> (and (and (= (type o@@52) refType) (= (type fld@@7) (FieldType a@@90))) (and (not (= o@@52 null)) (U_2_bool (MapType0Select (Reads0 t0@@36 h0@@8 f@@19) ($Box o@@52))))) (= (MapType1Select (MapType0Select h0@@8 o@@52) fld@@7) (MapType1Select (MapType0Select h1@@8 o@@52) fld@@7))))
 :qid |unknown.0:0|
 :skolemid |1954|
 :no-pattern (type o@@52)
 :no-pattern (type fld@@7)
 :no-pattern (U_2_int o@@52)
 :no-pattern (U_2_bool o@@52)
 :no-pattern (U_2_int fld@@7)
 :no-pattern (U_2_bool fld@@7)
)))) (= (Requires0 t0@@36 h0@@8 f@@19) (Requires0 t0@@36 h1@@8 f@@19)))
 :qid |unknown.0:0|
 :skolemid |1955|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Requires0 t0@@36 h1@@8 f@@19))
)))
(assert (forall ((t0@@37 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@20 T@U) ) (!  (=> (and (and (and (and (= (type t0@@37) TyType) (= (type h0@@9) (MapType0Type refType MapType1Type))) (= (type h1@@9) (MapType0Type refType MapType1Type))) (= (type f@@20) HandleTypeType)) (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) ($Is f@@20 (Tclass._System.___hFunc0 t0@@37))) (forall ((o@@53 T@U) (fld@@8 T@U) ) (! (let ((a@@91 (FieldTypeInv0 (type fld@@8))))
 (=> (and (and (= (type o@@53) refType) (= (type fld@@8) (FieldType a@@91))) (and (not (= o@@53 null)) (U_2_bool (MapType0Select (Reads0 t0@@37 h1@@9 f@@20) ($Box o@@53))))) (= (MapType1Select (MapType0Select h0@@9 o@@53) fld@@8) (MapType1Select (MapType0Select h1@@9 o@@53) fld@@8))))
 :qid |unknown.0:0|
 :skolemid |1956|
 :no-pattern (type o@@53)
 :no-pattern (type fld@@8)
 :no-pattern (U_2_int o@@53)
 :no-pattern (U_2_bool o@@53)
 :no-pattern (U_2_int fld@@8)
 :no-pattern (U_2_bool fld@@8)
)))) (= (Requires0 t0@@37 h0@@9 f@@20) (Requires0 t0@@37 h1@@9 f@@20)))
 :qid |unknown.0:0|
 :skolemid |1957|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Requires0 t0@@37 h1@@9 f@@20))
)))
(assert (forall ((t0@@38 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@21 T@U) ) (!  (=> (and (and (and (and (= (type t0@@38) TyType) (= (type h0@@10) (MapType0Type refType MapType1Type))) (= (type h1@@10) (MapType0Type refType MapType1Type))) (= (type f@@21) HandleTypeType)) (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) ($Is f@@21 (Tclass._System.___hFunc0 t0@@38))) (forall ((o@@54 T@U) (fld@@9 T@U) ) (! (let ((a@@92 (FieldTypeInv0 (type fld@@9))))
 (=> (and (and (= (type o@@54) refType) (= (type fld@@9) (FieldType a@@92))) (and (not (= o@@54 null)) (U_2_bool (MapType0Select (Reads0 t0@@38 h0@@10 f@@21) ($Box o@@54))))) (= (MapType1Select (MapType0Select h0@@10 o@@54) fld@@9) (MapType1Select (MapType0Select h1@@10 o@@54) fld@@9))))
 :qid |unknown.0:0|
 :skolemid |1958|
 :no-pattern (type o@@54)
 :no-pattern (type fld@@9)
 :no-pattern (U_2_int o@@54)
 :no-pattern (U_2_bool o@@54)
 :no-pattern (U_2_int fld@@9)
 :no-pattern (U_2_bool fld@@9)
)))) (= (Apply0 t0@@38 h0@@10 f@@21) (Apply0 t0@@38 h1@@10 f@@21)))
 :qid |unknown.0:0|
 :skolemid |1959|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply0 t0@@38 h1@@10 f@@21))
)))
(assert (forall ((t0@@39 T@U) (h0@@11 T@U) (h1@@11 T@U) (f@@22 T@U) ) (!  (=> (and (and (and (and (= (type t0@@39) TyType) (= (type h0@@11) (MapType0Type refType MapType1Type))) (= (type h1@@11) (MapType0Type refType MapType1Type))) (= (type f@@22) HandleTypeType)) (and (and (and ($HeapSucc h0@@11 h1@@11) (and ($IsGoodHeap h0@@11) ($IsGoodHeap h1@@11))) ($Is f@@22 (Tclass._System.___hFunc0 t0@@39))) (forall ((o@@55 T@U) (fld@@10 T@U) ) (! (let ((a@@93 (FieldTypeInv0 (type fld@@10))))
 (=> (and (and (= (type o@@55) refType) (= (type fld@@10) (FieldType a@@93))) (and (not (= o@@55 null)) (U_2_bool (MapType0Select (Reads0 t0@@39 h1@@11 f@@22) ($Box o@@55))))) (= (MapType1Select (MapType0Select h0@@11 o@@55) fld@@10) (MapType1Select (MapType0Select h1@@11 o@@55) fld@@10))))
 :qid |unknown.0:0|
 :skolemid |1960|
 :no-pattern (type o@@55)
 :no-pattern (type fld@@10)
 :no-pattern (U_2_int o@@55)
 :no-pattern (U_2_bool o@@55)
 :no-pattern (U_2_int fld@@10)
 :no-pattern (U_2_bool fld@@10)
)))) (= (Apply0 t0@@39 h0@@11 f@@22) (Apply0 t0@@39 h1@@11 f@@22)))
 :qid |unknown.0:0|
 :skolemid |1961|
 :pattern ( ($HeapSucc h0@@11 h1@@11) (Apply0 t0@@39 h1@@11 f@@22))
)))
(assert (forall ((t0@@40 T@U) (heap@@9 T@U) (f@@23 T@U) ) (!  (=> (and (and (and (= (type t0@@40) TyType) (= (type heap@@9) (MapType0Type refType MapType1Type))) (= (type f@@23) HandleTypeType)) (and ($IsGoodHeap heap@@9) ($Is f@@23 (Tclass._System.___hFunc0 t0@@40)))) (= (|Set#Equal| (Reads0 t0@@40 $OneHeap f@@23) (|Set#Empty| BoxType)) (|Set#Equal| (Reads0 t0@@40 heap@@9 f@@23) (|Set#Empty| BoxType))))
 :qid |unknown.0:0|
 :skolemid |1962|
 :pattern ( (Reads0 t0@@40 $OneHeap f@@23) ($IsGoodHeap heap@@9))
 :pattern ( (Reads0 t0@@40 heap@@9 f@@23))
)))
(assert (forall ((t0@@41 T@U) (heap@@10 T@U) (f@@24 T@U) ) (!  (=> (and (and (and (= (type t0@@41) TyType) (= (type heap@@10) (MapType0Type refType MapType1Type))) (= (type f@@24) HandleTypeType)) (and (and ($IsGoodHeap heap@@10) ($Is f@@24 (Tclass._System.___hFunc0 t0@@41))) (|Set#Equal| (Reads0 t0@@41 $OneHeap f@@24) (|Set#Empty| BoxType)))) (= (Requires0 t0@@41 $OneHeap f@@24) (Requires0 t0@@41 heap@@10 f@@24)))
 :qid |unknown.0:0|
 :skolemid |1963|
 :pattern ( (Requires0 t0@@41 $OneHeap f@@24) ($IsGoodHeap heap@@10))
 :pattern ( (Requires0 t0@@41 heap@@10 f@@24))
)))
(assert (forall ((f@@25 T@U) (t0@@42 T@U) ) (!  (=> (and (= (type f@@25) HandleTypeType) (= (type t0@@42) TyType)) (= ($Is f@@25 (Tclass._System.___hFunc0 t0@@42)) (forall ((h@@30 T@U) ) (!  (=> (= (type h@@30) (MapType0Type refType MapType1Type)) (=> (and ($IsGoodHeap h@@30) (Requires0 t0@@42 h@@30 f@@25)) ($IsBox (Apply0 t0@@42 h@@30 f@@25) t0@@42)))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |1964|
 :pattern ( (Apply0 t0@@42 h@@30 f@@25))
))))
 :qid |unknown.0:0|
 :skolemid |1965|
 :pattern ( ($Is f@@25 (Tclass._System.___hFunc0 t0@@42)))
)))
(assert (forall ((f@@26 T@U) (t0@@43 T@U) (u0@@0 T@U) ) (!  (=> (and (and (and (= (type f@@26) HandleTypeType) (= (type t0@@43) TyType)) (= (type u0@@0) TyType)) (and ($Is f@@26 (Tclass._System.___hFunc0 t0@@43)) (forall ((bx@@39 T@U) ) (!  (=> (and (= (type bx@@39) BoxType) ($IsBox bx@@39 t0@@43)) ($IsBox bx@@39 u0@@0))
 :qid |unknown.0:0|
 :skolemid |1966|
 :pattern ( ($IsBox bx@@39 t0@@43))
 :pattern ( ($IsBox bx@@39 u0@@0))
)))) ($Is f@@26 (Tclass._System.___hFunc0 u0@@0)))
 :qid |unknown.0:0|
 :skolemid |1967|
 :pattern ( ($Is f@@26 (Tclass._System.___hFunc0 t0@@43)) ($Is f@@26 (Tclass._System.___hFunc0 u0@@0)))
)))
(assert (forall ((f@@27 T@U) (t0@@44 T@U) (h@@31 T@U) ) (!  (=> (and (and (and (= (type f@@27) HandleTypeType) (= (type t0@@44) TyType)) (= (type h@@31) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@31)) (= ($IsAlloc f@@27 (Tclass._System.___hFunc0 t0@@44) h@@31)  (=> (Requires0 t0@@44 h@@31 f@@27) (forall ((r@@13 T@U) ) (!  (=> (= (type r@@13) refType) (=> (and (not (= r@@13 null)) (U_2_bool (MapType0Select (Reads0 t0@@44 h@@31 f@@27) ($Box r@@13)))) (U_2_bool (MapType1Select (MapType0Select h@@31 r@@13) alloc))))
 :qid |unknown.0:0|
 :skolemid |1968|
 :pattern ( (MapType0Select (Reads0 t0@@44 h@@31 f@@27) ($Box r@@13)))
)))))
 :qid |unknown.0:0|
 :skolemid |1969|
 :pattern ( ($IsAlloc f@@27 (Tclass._System.___hFunc0 t0@@44) h@@31))
)))
(assert (forall ((f@@28 T@U) (t0@@45 T@U) (h@@32 T@U) ) (!  (=> (and (and (and (and (= (type f@@28) HandleTypeType) (= (type t0@@45) TyType)) (= (type h@@32) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@32) ($IsAlloc f@@28 (Tclass._System.___hFunc0 t0@@45) h@@32))) (Requires0 t0@@45 h@@32 f@@28)) ($IsAllocBox (Apply0 t0@@45 h@@32 f@@28) t0@@45 h@@32))
 :qid |unknown.0:0|
 :skolemid |1970|
 :pattern ( ($IsAlloc f@@28 (Tclass._System.___hFunc0 t0@@45) h@@32))
)))
(assert (forall ((arg0@@141 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0 arg0@@141)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0|
 :pattern ( (Tclass._System.___hPartialFunc0 arg0@@141))
)))
(assert (forall ((|#$R@@18| T@U) ) (!  (=> (= (type |#$R@@18|) TyType) (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@18|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@18|)) |tytagFamily$_#PartialFunc0|)))
 :qid |unknown.0:0|
 :skolemid |1971|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@18|))
)))
(assert (forall ((arg0@@142 T@U) ) (! (= (type (Tclass._System.___hPartialFunc0_0 arg0@@142)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc0_0|
 :pattern ( (Tclass._System.___hPartialFunc0_0 arg0@@142))
)))
(assert (forall ((|#$R@@19| T@U) ) (!  (=> (= (type |#$R@@19|) TyType) (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@19|)) |#$R@@19|))
 :qid |unknown.0:0|
 :skolemid |1972|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@19|))
)))
(assert (forall ((|#$R@@20| T@U) (bx@@40 T@U) ) (!  (=> (and (and (= (type |#$R@@20|) TyType) (= (type bx@@40) BoxType)) ($IsBox bx@@40 (Tclass._System.___hPartialFunc0 |#$R@@20|))) (and (= ($Box ($Unbox HandleTypeType bx@@40)) bx@@40) ($Is ($Unbox HandleTypeType bx@@40) (Tclass._System.___hPartialFunc0 |#$R@@20|))))
 :qid |unknown.0:0|
 :skolemid |1973|
 :pattern ( ($IsBox bx@@40 (Tclass._System.___hPartialFunc0 |#$R@@20|)))
)))
(assert (forall ((|#$R@@21| T@U) (|f#0@@3| T@U) ) (!  (=> (and (= (type |#$R@@21|) TyType) (= (type |f#0@@3|) HandleTypeType)) (= ($Is |f#0@@3| (Tclass._System.___hPartialFunc0 |#$R@@21|))  (and ($Is |f#0@@3| (Tclass._System.___hFunc0 |#$R@@21|)) (|Set#Equal| (Reads0 |#$R@@21| $OneHeap |f#0@@3|) (|Set#Empty| BoxType)))))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( ($Is |f#0@@3| (Tclass._System.___hPartialFunc0 |#$R@@21|)))
)))
(assert (forall ((|#$R@@22| T@U) (|f#0@@4| T@U) ($h@@9 T@U) ) (!  (=> (and (and (= (type |#$R@@22|) TyType) (= (type |f#0@@4|) HandleTypeType)) (= (type $h@@9) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@4| (Tclass._System.___hPartialFunc0 |#$R@@22|) $h@@9) ($IsAlloc |f#0@@4| (Tclass._System.___hFunc0 |#$R@@22|) $h@@9)))
 :qid |unknown.0:0|
 :skolemid |1975|
 :pattern ( ($IsAlloc |f#0@@4| (Tclass._System.___hPartialFunc0 |#$R@@22|) $h@@9))
)))
(assert (forall ((arg0@@143 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0 arg0@@143)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0|
 :pattern ( (Tclass._System.___hTotalFunc0 arg0@@143))
)))
(assert (forall ((|#$R@@23| T@U) ) (!  (=> (= (type |#$R@@23|) TyType) (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@23|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@23|)) |tytagFamily$_#TotalFunc0|)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@23|))
)))
(assert (forall ((arg0@@144 T@U) ) (! (= (type (Tclass._System.___hTotalFunc0_0 arg0@@144)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc0_0|
 :pattern ( (Tclass._System.___hTotalFunc0_0 arg0@@144))
)))
(assert (forall ((|#$R@@24| T@U) ) (!  (=> (= (type |#$R@@24|) TyType) (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@24|)) |#$R@@24|))
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@24|))
)))
(assert (forall ((|#$R@@25| T@U) (bx@@41 T@U) ) (!  (=> (and (and (= (type |#$R@@25|) TyType) (= (type bx@@41) BoxType)) ($IsBox bx@@41 (Tclass._System.___hTotalFunc0 |#$R@@25|))) (and (= ($Box ($Unbox HandleTypeType bx@@41)) bx@@41) ($Is ($Unbox HandleTypeType bx@@41) (Tclass._System.___hTotalFunc0 |#$R@@25|))))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsBox bx@@41 (Tclass._System.___hTotalFunc0 |#$R@@25|)))
)))
(assert (forall ((|#$R@@26| T@U) (|f#0@@5| T@U) ) (!  (=> (and (= (type |#$R@@26|) TyType) (= (type |f#0@@5|) HandleTypeType)) (= ($Is |f#0@@5| (Tclass._System.___hTotalFunc0 |#$R@@26|))  (and ($Is |f#0@@5| (Tclass._System.___hPartialFunc0 |#$R@@26|)) (Requires0 |#$R@@26| $OneHeap |f#0@@5|))))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($Is |f#0@@5| (Tclass._System.___hTotalFunc0 |#$R@@26|)))
)))
(assert (forall ((|#$R@@27| T@U) (|f#0@@6| T@U) ($h@@10 T@U) ) (!  (=> (and (and (= (type |#$R@@27|) TyType) (= (type |f#0@@6|) HandleTypeType)) (= (type $h@@10) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@6| (Tclass._System.___hTotalFunc0 |#$R@@27|) $h@@10) ($IsAlloc |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@27|) $h@@10)))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($IsAlloc |f#0@@6| (Tclass._System.___hTotalFunc0 |#$R@@27|) $h@@10))
)))
(assert (= (type Tclass._System.__default) TyType))
(assert (= (Tag Tclass._System.__default) Tagclass._System.__default))
(assert (= (TagFamily Tclass._System.__default) tytagFamily$_default))
(assert (forall ((bx@@42 T@U) ) (!  (=> (and (= (type bx@@42) BoxType) ($IsBox bx@@42 Tclass._System.__default)) (and (= ($Box ($Unbox refType bx@@42)) bx@@42) ($Is ($Unbox refType bx@@42) Tclass._System.__default)))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( ($IsBox bx@@42 Tclass._System.__default))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> (= (type $o@@7) refType) (= ($Is $o@@7 Tclass._System.__default)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._System.__default))))
 :qid |unknown.0:0|
 :skolemid |1982|
 :pattern ( ($Is $o@@7 Tclass._System.__default))
)))
(assert (forall (($o@@8 T@U) ($h@@11 T@U) ) (!  (=> (and (= (type $o@@8) refType) (= (type $h@@11) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@8 Tclass._System.__default $h@@11)  (or (= $o@@8 null) (U_2_bool (MapType1Select (MapType0Select $h@@11 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1983|
 :pattern ( ($IsAlloc $o@@8 Tclass._System.__default $h@@11))
)))
(assert  (=> true (forall ((|#$A| T@U) (|#$B| T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (and (and (and (and (= (type |#$A|) TyType) (= (type |#$B|) TyType)) (= (type |a#0|) BoxType)) (= (type |b#0|) BoxType)) (or (|_System.__default.rank__is__less__than#canCall| |#$A| |#$B| |a#0| |b#0|) (and ($IsBox |a#0| |#$A|) ($IsBox |b#0| |#$B|)))) true)
 :qid |unknown.0:0|
 :skolemid |1984|
 :pattern ( (_System.__default.rank__is__less__than |#$A| |#$B| |a#0| |b#0|))
))))
(assert (forall ((|#$A@@0| T@U) (|#$B@@0| T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and (and (and (= (type |#$A@@0|) TyType) (= (type |#$B@@0|) TyType)) (= (type |a#0@@0|) BoxType)) (= (type |b#0@@0|) BoxType)) (and ($IsBox |a#0@@0| |#$A@@0|) ($IsBox |b#0@@0| |#$B@@0|))) (= (|_System.__default.rank__is__less__than#requires| |#$A@@0| |#$B@@0| |a#0@@0| |b#0@@0|) true))
 :qid |unknown.0:0|
 :skolemid |1985|
 :pattern ( (|_System.__default.rank__is__less__than#requires| |#$A@@0| |#$B@@0| |a#0@@0| |b#0@@0|))
)))
(assert (forall ((arg0@@145 T@U) (arg1@@67 T@U) (arg2@@19 T@U) ) (! (= (type (Tclass._System.___hFunc2 arg0@@145 arg1@@67 arg2@@19)) TyType)
 :qid |funType:Tclass._System.___hFunc2|
 :pattern ( (Tclass._System.___hFunc2 arg0@@145 arg1@@67 arg2@@19))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1| T@U) (|#$R@@28| T@U) ) (!  (=> (and (and (= (type |#$T0@@15|) TyType) (= (type |#$T1|) TyType)) (= (type |#$R@@28|) TyType)) (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@15| |#$T1| |#$R@@28|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@15| |#$T1| |#$R@@28|)) |tytagFamily$_#Func2|)))
 :qid |unknown.0:0|
 :skolemid |1986|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@15| |#$T1| |#$R@@28|))
)))
(assert (forall ((arg0@@146 T@U) ) (! (= (type (Tclass._System.___hFunc2_0 arg0@@146)) TyType)
 :qid |funType:Tclass._System.___hFunc2_0|
 :pattern ( (Tclass._System.___hFunc2_0 arg0@@146))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@0| T@U) (|#$R@@29| T@U) ) (!  (=> (and (and (= (type |#$T0@@16|) TyType) (= (type |#$T1@@0|) TyType)) (= (type |#$R@@29|) TyType)) (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@16| |#$T1@@0| |#$R@@29|)) |#$T0@@16|))
 :qid |unknown.0:0|
 :skolemid |1987|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@16| |#$T1@@0| |#$R@@29|))
)))
(assert (forall ((arg0@@147 T@U) ) (! (= (type (Tclass._System.___hFunc2_1 arg0@@147)) TyType)
 :qid |funType:Tclass._System.___hFunc2_1|
 :pattern ( (Tclass._System.___hFunc2_1 arg0@@147))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@1| T@U) (|#$R@@30| T@U) ) (!  (=> (and (and (= (type |#$T0@@17|) TyType) (= (type |#$T1@@1|) TyType)) (= (type |#$R@@30|) TyType)) (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@17| |#$T1@@1| |#$R@@30|)) |#$T1@@1|))
 :qid |unknown.0:0|
 :skolemid |1988|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@17| |#$T1@@1| |#$R@@30|))
)))
(assert (forall ((arg0@@148 T@U) ) (! (= (type (Tclass._System.___hFunc2_2 arg0@@148)) TyType)
 :qid |funType:Tclass._System.___hFunc2_2|
 :pattern ( (Tclass._System.___hFunc2_2 arg0@@148))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$T1@@2| T@U) (|#$R@@31| T@U) ) (!  (=> (and (and (= (type |#$T0@@18|) TyType) (= (type |#$T1@@2|) TyType)) (= (type |#$R@@31|) TyType)) (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@18| |#$T1@@2| |#$R@@31|)) |#$R@@31|))
 :qid |unknown.0:0|
 :skolemid |1989|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@18| |#$T1@@2| |#$R@@31|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$T1@@3| T@U) (|#$R@@32| T@U) (bx@@43 T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@19|) TyType) (= (type |#$T1@@3|) TyType)) (= (type |#$R@@32|) TyType)) (= (type bx@@43) BoxType)) ($IsBox bx@@43 (Tclass._System.___hFunc2 |#$T0@@19| |#$T1@@3| |#$R@@32|))) (and (= ($Box ($Unbox HandleTypeType bx@@43)) bx@@43) ($Is ($Unbox HandleTypeType bx@@43) (Tclass._System.___hFunc2 |#$T0@@19| |#$T1@@3| |#$R@@32|))))
 :qid |unknown.0:0|
 :skolemid |1990|
 :pattern ( ($IsBox bx@@43 (Tclass._System.___hFunc2 |#$T0@@19| |#$T1@@3| |#$R@@32|)))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@149 T@T) (arg1@@68 T@T) (arg2@@20 T@T) (arg3@@3 T@T) ) (! (= (Ctor (MapType3Type arg0@@149 arg1@@68 arg2@@20 arg3@@3)) 25)
 :qid |ctor:MapType3Type|
)) (forall ((arg0@@150 T@T) (arg1@@69 T@T) (arg2@@21 T@T) (arg3@@4 T@T) ) (! (= (MapType3TypeInv0 (MapType3Type arg0@@150 arg1@@69 arg2@@21 arg3@@4)) arg0@@150)
 :qid |typeInv:MapType3TypeInv0|
 :pattern ( (MapType3Type arg0@@150 arg1@@69 arg2@@21 arg3@@4))
))) (forall ((arg0@@151 T@T) (arg1@@70 T@T) (arg2@@22 T@T) (arg3@@5 T@T) ) (! (= (MapType3TypeInv1 (MapType3Type arg0@@151 arg1@@70 arg2@@22 arg3@@5)) arg1@@70)
 :qid |typeInv:MapType3TypeInv1|
 :pattern ( (MapType3Type arg0@@151 arg1@@70 arg2@@22 arg3@@5))
))) (forall ((arg0@@152 T@T) (arg1@@71 T@T) (arg2@@23 T@T) (arg3@@6 T@T) ) (! (= (MapType3TypeInv2 (MapType3Type arg0@@152 arg1@@71 arg2@@23 arg3@@6)) arg2@@23)
 :qid |typeInv:MapType3TypeInv2|
 :pattern ( (MapType3Type arg0@@152 arg1@@71 arg2@@23 arg3@@6))
))) (forall ((arg0@@153 T@T) (arg1@@72 T@T) (arg2@@24 T@T) (arg3@@7 T@T) ) (! (= (MapType3TypeInv3 (MapType3Type arg0@@153 arg1@@72 arg2@@24 arg3@@7)) arg3@@7)
 :qid |typeInv:MapType3TypeInv3|
 :pattern ( (MapType3Type arg0@@153 arg1@@72 arg2@@24 arg3@@7))
))) (forall ((arg0@@154 T@U) (arg1@@73 T@U) (arg2@@25 T@U) (arg3@@8 T@U) ) (! (let ((aVar3 (MapType3TypeInv3 (type arg0@@154))))
(= (type (MapType3Select arg0@@154 arg1@@73 arg2@@25 arg3@@8)) aVar3))
 :qid |funType:MapType3Select|
 :pattern ( (MapType3Select arg0@@154 arg1@@73 arg2@@25 arg3@@8))
))) (forall ((arg0@@155 T@U) (arg1@@74 T@U) (arg2@@26 T@U) (arg3@@9 T@U) (arg4@@1 T@U) ) (! (let ((aVar3@@0 (type arg4@@1)))
(let ((aVar2@@2 (type arg3@@9)))
(let ((aVar1@@3 (type arg2@@26)))
(let ((aVar0@@1 (type arg1@@74)))
(= (type (MapType3Store arg0@@155 arg1@@74 arg2@@26 arg3@@9 arg4@@1)) (MapType3Type aVar0@@1 aVar1@@3 aVar2@@2 aVar3@@0))))))
 :qid |funType:MapType3Store|
 :pattern ( (MapType3Store arg0@@155 arg1@@74 arg2@@26 arg3@@9 arg4@@1))
))) (forall ((m@@49 T@U) (x0@@9 T@U) (x1@@3 T@U) (x2 T@U) (val@@10 T@U) ) (! (let ((aVar3@@1 (MapType3TypeInv3 (type m@@49))))
 (=> (= (type val@@10) aVar3@@1) (= (MapType3Select (MapType3Store m@@49 x0@@9 x1@@3 x2 val@@10) x0@@9 x1@@3 x2) val@@10)))
 :qid |mapAx0:MapType3Select|
 :weight 0
))) (and (and (and (forall ((val@@11 T@U) (m@@50 T@U) (x0@@10 T@U) (x1@@4 T@U) (x2@@0 T@U) (y0@@6 T@U) (y1@@2 T@U) (y2 T@U) ) (!  (or (= x0@@10 y0@@6) (= (MapType3Select (MapType3Store m@@50 x0@@10 x1@@4 x2@@0 val@@11) y0@@6 y1@@2 y2) (MapType3Select m@@50 y0@@6 y1@@2 y2)))
 :qid |mapAx1:MapType3Select:0|
 :weight 0
)) (forall ((val@@12 T@U) (m@@51 T@U) (x0@@11 T@U) (x1@@5 T@U) (x2@@1 T@U) (y0@@7 T@U) (y1@@3 T@U) (y2@@0 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType3Select (MapType3Store m@@51 x0@@11 x1@@5 x2@@1 val@@12) y0@@7 y1@@3 y2@@0) (MapType3Select m@@51 y0@@7 y1@@3 y2@@0)))
 :qid |mapAx1:MapType3Select:1|
 :weight 0
))) (forall ((val@@13 T@U) (m@@52 T@U) (x0@@12 T@U) (x1@@6 T@U) (x2@@2 T@U) (y0@@8 T@U) (y1@@4 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType3Select (MapType3Store m@@52 x0@@12 x1@@6 x2@@2 val@@13) y0@@8 y1@@4 y2@@1) (MapType3Select m@@52 y0@@8 y1@@4 y2@@1)))
 :qid |mapAx1:MapType3Select:2|
 :weight 0
))) (forall ((val@@14 T@U) (m@@53 T@U) (x0@@13 T@U) (x1@@7 T@U) (x2@@3 T@U) (y0@@9 T@U) (y1@@5 T@U) (y2@@2 T@U) ) (!  (or true (= (MapType3Select (MapType3Store m@@53 x0@@13 x1@@7 x2@@3 val@@14) y0@@9 y1@@5 y2@@2) (MapType3Select m@@53 y0@@9 y1@@5 y2@@2)))
 :qid |mapAx2:MapType3Select|
 :weight 0
)))) (forall ((arg0@@156 T@U) (arg1@@75 T@U) (arg2@@27 T@U) (arg3@@10 T@U) (arg4@@2 T@U) (arg5 T@U) (arg6 T@U) ) (! (= (type (Apply2 arg0@@156 arg1@@75 arg2@@27 arg3@@10 arg4@@2 arg5 arg6)) BoxType)
 :qid |funType:Apply2|
 :pattern ( (Apply2 arg0@@156 arg1@@75 arg2@@27 arg3@@10 arg4@@2 arg5 arg6))
))) (forall ((arg0@@157 T@U) (arg1@@76 T@U) (arg2@@28 T@U) ) (! (= (type (Handle2 arg0@@157 arg1@@76 arg2@@28)) HandleTypeType)
 :qid |funType:Handle2|
 :pattern ( (Handle2 arg0@@157 arg1@@76 arg2@@28))
))))
(assert (forall ((t0@@46 T@U) (t1@@22 T@U) (t2 T@U) (heap@@11 T@U) (h@@33 T@U) (r@@14 T@U) (rd@@5 T@U) (bx0@@13 T@U) (bx1 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@46) TyType) (= (type t1@@22) TyType)) (= (type t2) TyType)) (= (type heap@@11) (MapType0Type refType MapType1Type))) (= (type h@@33) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType))) (= (type r@@14) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType boolType))) (= (type rd@@5) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@13) BoxType)) (= (type bx1) BoxType)) (= (Apply2 t0@@46 t1@@22 t2 heap@@11 (Handle2 h@@33 r@@14 rd@@5) bx0@@13 bx1) (MapType3Select h@@33 heap@@11 bx0@@13 bx1)))
 :qid |unknown.0:0|
 :skolemid |1991|
 :pattern ( (Apply2 t0@@46 t1@@22 t2 heap@@11 (Handle2 h@@33 r@@14 rd@@5) bx0@@13 bx1))
)))
(assert (forall ((t0@@47 T@U) (t1@@23 T@U) (t2@@0 T@U) (heap@@12 T@U) (h@@34 T@U) (r@@15 T@U) (rd@@6 T@U) (bx0@@14 T@U) (bx1@@0 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (= (type t0@@47) TyType) (= (type t1@@23) TyType)) (= (type t2@@0) TyType)) (= (type heap@@12) (MapType0Type refType MapType1Type))) (= (type h@@34) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType))) (= (type r@@15) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType boolType))) (= (type rd@@6) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@14) BoxType)) (= (type bx1@@0) BoxType)) (U_2_bool (MapType3Select r@@15 heap@@12 bx0@@14 bx1@@0))) (Requires2 t0@@47 t1@@23 t2@@0 heap@@12 (Handle2 h@@34 r@@15 rd@@6) bx0@@14 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |1992|
 :pattern ( (Requires2 t0@@47 t1@@23 t2@@0 heap@@12 (Handle2 h@@34 r@@15 rd@@6) bx0@@14 bx1@@0))
)))
(assert (forall ((arg0@@158 T@U) (arg1@@77 T@U) (arg2@@29 T@U) (arg3@@11 T@U) (arg4@@3 T@U) (arg5@@0 T@U) (arg6@@0 T@U) ) (! (= (type (Reads2 arg0@@158 arg1@@77 arg2@@29 arg3@@11 arg4@@3 arg5@@0 arg6@@0)) (MapType0Type BoxType boolType))
 :qid |funType:Reads2|
 :pattern ( (Reads2 arg0@@158 arg1@@77 arg2@@29 arg3@@11 arg4@@3 arg5@@0 arg6@@0))
)))
(assert (forall ((t0@@48 T@U) (t1@@24 T@U) (t2@@1 T@U) (heap@@13 T@U) (h@@35 T@U) (r@@16 T@U) (rd@@7 T@U) (bx0@@15 T@U) (bx1@@1 T@U) (bx@@44 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (= (type t0@@48) TyType) (= (type t1@@24) TyType)) (= (type t2@@1) TyType)) (= (type heap@@13) (MapType0Type refType MapType1Type))) (= (type h@@35) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType))) (= (type r@@16) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType boolType))) (= (type rd@@7) (MapType3Type (MapType0Type refType MapType1Type) BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@15) BoxType)) (= (type bx1@@1) BoxType)) (= (type bx@@44) BoxType)) (= (U_2_bool (MapType0Select (Reads2 t0@@48 t1@@24 t2@@1 heap@@13 (Handle2 h@@35 r@@16 rd@@7) bx0@@15 bx1@@1) bx@@44)) (U_2_bool (MapType0Select (MapType3Select rd@@7 heap@@13 bx0@@15 bx1@@1) bx@@44))))
 :qid |unknown.0:0|
 :skolemid |1993|
 :pattern ( (MapType0Select (Reads2 t0@@48 t1@@24 t2@@1 heap@@13 (Handle2 h@@35 r@@16 rd@@7) bx0@@15 bx1@@1) bx@@44))
)))
(assert (forall ((t0@@49 T@U) (t1@@25 T@U) (t2@@2 T@U) (h0@@12 T@U) (h1@@12 T@U) (f@@29 T@U) (bx0@@16 T@U) (bx1@@2 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@49) TyType) (= (type t1@@25) TyType)) (= (type t2@@2) TyType)) (= (type h0@@12) (MapType0Type refType MapType1Type))) (= (type h1@@12) (MapType0Type refType MapType1Type))) (= (type f@@29) HandleTypeType)) (= (type bx0@@16) BoxType)) (= (type bx1@@2) BoxType)) (and (and (and ($HeapSucc h0@@12 h1@@12) (and ($IsGoodHeap h0@@12) ($IsGoodHeap h1@@12))) (and (and ($IsBox bx0@@16 t0@@49) ($IsBox bx1@@2 t1@@25)) ($Is f@@29 (Tclass._System.___hFunc2 t0@@49 t1@@25 t2@@2)))) (forall ((o@@56 T@U) (fld@@11 T@U) ) (! (let ((a@@94 (FieldTypeInv0 (type fld@@11))))
 (=> (and (and (= (type o@@56) refType) (= (type fld@@11) (FieldType a@@94))) (and (not (= o@@56 null)) (U_2_bool (MapType0Select (Reads2 t0@@49 t1@@25 t2@@2 h0@@12 f@@29 bx0@@16 bx1@@2) ($Box o@@56))))) (= (MapType1Select (MapType0Select h0@@12 o@@56) fld@@11) (MapType1Select (MapType0Select h1@@12 o@@56) fld@@11))))
 :qid |unknown.0:0|
 :skolemid |1994|
 :no-pattern (type o@@56)
 :no-pattern (type fld@@11)
 :no-pattern (U_2_int o@@56)
 :no-pattern (U_2_bool o@@56)
 :no-pattern (U_2_int fld@@11)
 :no-pattern (U_2_bool fld@@11)
)))) (= (Reads2 t0@@49 t1@@25 t2@@2 h0@@12 f@@29 bx0@@16 bx1@@2) (Reads2 t0@@49 t1@@25 t2@@2 h1@@12 f@@29 bx0@@16 bx1@@2)))
 :qid |unknown.0:0|
 :skolemid |1995|
 :pattern ( ($HeapSucc h0@@12 h1@@12) (Reads2 t0@@49 t1@@25 t2@@2 h1@@12 f@@29 bx0@@16 bx1@@2))
)))
(assert (forall ((t0@@50 T@U) (t1@@26 T@U) (t2@@3 T@U) (h0@@13 T@U) (h1@@13 T@U) (f@@30 T@U) (bx0@@17 T@U) (bx1@@3 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@50) TyType) (= (type t1@@26) TyType)) (= (type t2@@3) TyType)) (= (type h0@@13) (MapType0Type refType MapType1Type))) (= (type h1@@13) (MapType0Type refType MapType1Type))) (= (type f@@30) HandleTypeType)) (= (type bx0@@17) BoxType)) (= (type bx1@@3) BoxType)) (and (and (and ($HeapSucc h0@@13 h1@@13) (and ($IsGoodHeap h0@@13) ($IsGoodHeap h1@@13))) (and (and ($IsBox bx0@@17 t0@@50) ($IsBox bx1@@3 t1@@26)) ($Is f@@30 (Tclass._System.___hFunc2 t0@@50 t1@@26 t2@@3)))) (forall ((o@@57 T@U) (fld@@12 T@U) ) (! (let ((a@@95 (FieldTypeInv0 (type fld@@12))))
 (=> (and (and (= (type o@@57) refType) (= (type fld@@12) (FieldType a@@95))) (and (not (= o@@57 null)) (U_2_bool (MapType0Select (Reads2 t0@@50 t1@@26 t2@@3 h1@@13 f@@30 bx0@@17 bx1@@3) ($Box o@@57))))) (= (MapType1Select (MapType0Select h0@@13 o@@57) fld@@12) (MapType1Select (MapType0Select h1@@13 o@@57) fld@@12))))
 :qid |unknown.0:0|
 :skolemid |1996|
 :no-pattern (type o@@57)
 :no-pattern (type fld@@12)
 :no-pattern (U_2_int o@@57)
 :no-pattern (U_2_bool o@@57)
 :no-pattern (U_2_int fld@@12)
 :no-pattern (U_2_bool fld@@12)
)))) (= (Reads2 t0@@50 t1@@26 t2@@3 h0@@13 f@@30 bx0@@17 bx1@@3) (Reads2 t0@@50 t1@@26 t2@@3 h1@@13 f@@30 bx0@@17 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |1997|
 :pattern ( ($HeapSucc h0@@13 h1@@13) (Reads2 t0@@50 t1@@26 t2@@3 h1@@13 f@@30 bx0@@17 bx1@@3))
)))
(assert (forall ((t0@@51 T@U) (t1@@27 T@U) (t2@@4 T@U) (h0@@14 T@U) (h1@@14 T@U) (f@@31 T@U) (bx0@@18 T@U) (bx1@@4 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@51) TyType) (= (type t1@@27) TyType)) (= (type t2@@4) TyType)) (= (type h0@@14) (MapType0Type refType MapType1Type))) (= (type h1@@14) (MapType0Type refType MapType1Type))) (= (type f@@31) HandleTypeType)) (= (type bx0@@18) BoxType)) (= (type bx1@@4) BoxType)) (and (and (and ($HeapSucc h0@@14 h1@@14) (and ($IsGoodHeap h0@@14) ($IsGoodHeap h1@@14))) (and (and ($IsBox bx0@@18 t0@@51) ($IsBox bx1@@4 t1@@27)) ($Is f@@31 (Tclass._System.___hFunc2 t0@@51 t1@@27 t2@@4)))) (forall ((o@@58 T@U) (fld@@13 T@U) ) (! (let ((a@@96 (FieldTypeInv0 (type fld@@13))))
 (=> (and (and (= (type o@@58) refType) (= (type fld@@13) (FieldType a@@96))) (and (not (= o@@58 null)) (U_2_bool (MapType0Select (Reads2 t0@@51 t1@@27 t2@@4 h0@@14 f@@31 bx0@@18 bx1@@4) ($Box o@@58))))) (= (MapType1Select (MapType0Select h0@@14 o@@58) fld@@13) (MapType1Select (MapType0Select h1@@14 o@@58) fld@@13))))
 :qid |unknown.0:0|
 :skolemid |1998|
 :no-pattern (type o@@58)
 :no-pattern (type fld@@13)
 :no-pattern (U_2_int o@@58)
 :no-pattern (U_2_bool o@@58)
 :no-pattern (U_2_int fld@@13)
 :no-pattern (U_2_bool fld@@13)
)))) (= (Requires2 t0@@51 t1@@27 t2@@4 h0@@14 f@@31 bx0@@18 bx1@@4) (Requires2 t0@@51 t1@@27 t2@@4 h1@@14 f@@31 bx0@@18 bx1@@4)))
 :qid |unknown.0:0|
 :skolemid |1999|
 :pattern ( ($HeapSucc h0@@14 h1@@14) (Requires2 t0@@51 t1@@27 t2@@4 h1@@14 f@@31 bx0@@18 bx1@@4))
)))
(assert (forall ((t0@@52 T@U) (t1@@28 T@U) (t2@@5 T@U) (h0@@15 T@U) (h1@@15 T@U) (f@@32 T@U) (bx0@@19 T@U) (bx1@@5 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@52) TyType) (= (type t1@@28) TyType)) (= (type t2@@5) TyType)) (= (type h0@@15) (MapType0Type refType MapType1Type))) (= (type h1@@15) (MapType0Type refType MapType1Type))) (= (type f@@32) HandleTypeType)) (= (type bx0@@19) BoxType)) (= (type bx1@@5) BoxType)) (and (and (and ($HeapSucc h0@@15 h1@@15) (and ($IsGoodHeap h0@@15) ($IsGoodHeap h1@@15))) (and (and ($IsBox bx0@@19 t0@@52) ($IsBox bx1@@5 t1@@28)) ($Is f@@32 (Tclass._System.___hFunc2 t0@@52 t1@@28 t2@@5)))) (forall ((o@@59 T@U) (fld@@14 T@U) ) (! (let ((a@@97 (FieldTypeInv0 (type fld@@14))))
 (=> (and (and (= (type o@@59) refType) (= (type fld@@14) (FieldType a@@97))) (and (not (= o@@59 null)) (U_2_bool (MapType0Select (Reads2 t0@@52 t1@@28 t2@@5 h1@@15 f@@32 bx0@@19 bx1@@5) ($Box o@@59))))) (= (MapType1Select (MapType0Select h0@@15 o@@59) fld@@14) (MapType1Select (MapType0Select h1@@15 o@@59) fld@@14))))
 :qid |unknown.0:0|
 :skolemid |2000|
 :no-pattern (type o@@59)
 :no-pattern (type fld@@14)
 :no-pattern (U_2_int o@@59)
 :no-pattern (U_2_bool o@@59)
 :no-pattern (U_2_int fld@@14)
 :no-pattern (U_2_bool fld@@14)
)))) (= (Requires2 t0@@52 t1@@28 t2@@5 h0@@15 f@@32 bx0@@19 bx1@@5) (Requires2 t0@@52 t1@@28 t2@@5 h1@@15 f@@32 bx0@@19 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |2001|
 :pattern ( ($HeapSucc h0@@15 h1@@15) (Requires2 t0@@52 t1@@28 t2@@5 h1@@15 f@@32 bx0@@19 bx1@@5))
)))
(assert (forall ((t0@@53 T@U) (t1@@29 T@U) (t2@@6 T@U) (h0@@16 T@U) (h1@@16 T@U) (f@@33 T@U) (bx0@@20 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@53) TyType) (= (type t1@@29) TyType)) (= (type t2@@6) TyType)) (= (type h0@@16) (MapType0Type refType MapType1Type))) (= (type h1@@16) (MapType0Type refType MapType1Type))) (= (type f@@33) HandleTypeType)) (= (type bx0@@20) BoxType)) (= (type bx1@@6) BoxType)) (and (and (and ($HeapSucc h0@@16 h1@@16) (and ($IsGoodHeap h0@@16) ($IsGoodHeap h1@@16))) (and (and ($IsBox bx0@@20 t0@@53) ($IsBox bx1@@6 t1@@29)) ($Is f@@33 (Tclass._System.___hFunc2 t0@@53 t1@@29 t2@@6)))) (forall ((o@@60 T@U) (fld@@15 T@U) ) (! (let ((a@@98 (FieldTypeInv0 (type fld@@15))))
 (=> (and (and (= (type o@@60) refType) (= (type fld@@15) (FieldType a@@98))) (and (not (= o@@60 null)) (U_2_bool (MapType0Select (Reads2 t0@@53 t1@@29 t2@@6 h0@@16 f@@33 bx0@@20 bx1@@6) ($Box o@@60))))) (= (MapType1Select (MapType0Select h0@@16 o@@60) fld@@15) (MapType1Select (MapType0Select h1@@16 o@@60) fld@@15))))
 :qid |unknown.0:0|
 :skolemid |2002|
 :no-pattern (type o@@60)
 :no-pattern (type fld@@15)
 :no-pattern (U_2_int o@@60)
 :no-pattern (U_2_bool o@@60)
 :no-pattern (U_2_int fld@@15)
 :no-pattern (U_2_bool fld@@15)
)))) (= (Apply2 t0@@53 t1@@29 t2@@6 h0@@16 f@@33 bx0@@20 bx1@@6) (Apply2 t0@@53 t1@@29 t2@@6 h1@@16 f@@33 bx0@@20 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |2003|
 :pattern ( ($HeapSucc h0@@16 h1@@16) (Apply2 t0@@53 t1@@29 t2@@6 h1@@16 f@@33 bx0@@20 bx1@@6))
)))
(assert (forall ((t0@@54 T@U) (t1@@30 T@U) (t2@@7 T@U) (h0@@17 T@U) (h1@@17 T@U) (f@@34 T@U) (bx0@@21 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type t0@@54) TyType) (= (type t1@@30) TyType)) (= (type t2@@7) TyType)) (= (type h0@@17) (MapType0Type refType MapType1Type))) (= (type h1@@17) (MapType0Type refType MapType1Type))) (= (type f@@34) HandleTypeType)) (= (type bx0@@21) BoxType)) (= (type bx1@@7) BoxType)) (and (and (and ($HeapSucc h0@@17 h1@@17) (and ($IsGoodHeap h0@@17) ($IsGoodHeap h1@@17))) (and (and ($IsBox bx0@@21 t0@@54) ($IsBox bx1@@7 t1@@30)) ($Is f@@34 (Tclass._System.___hFunc2 t0@@54 t1@@30 t2@@7)))) (forall ((o@@61 T@U) (fld@@16 T@U) ) (! (let ((a@@99 (FieldTypeInv0 (type fld@@16))))
 (=> (and (and (= (type o@@61) refType) (= (type fld@@16) (FieldType a@@99))) (and (not (= o@@61 null)) (U_2_bool (MapType0Select (Reads2 t0@@54 t1@@30 t2@@7 h1@@17 f@@34 bx0@@21 bx1@@7) ($Box o@@61))))) (= (MapType1Select (MapType0Select h0@@17 o@@61) fld@@16) (MapType1Select (MapType0Select h1@@17 o@@61) fld@@16))))
 :qid |unknown.0:0|
 :skolemid |2004|
 :no-pattern (type o@@61)
 :no-pattern (type fld@@16)
 :no-pattern (U_2_int o@@61)
 :no-pattern (U_2_bool o@@61)
 :no-pattern (U_2_int fld@@16)
 :no-pattern (U_2_bool fld@@16)
)))) (= (Apply2 t0@@54 t1@@30 t2@@7 h0@@17 f@@34 bx0@@21 bx1@@7) (Apply2 t0@@54 t1@@30 t2@@7 h1@@17 f@@34 bx0@@21 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |2005|
 :pattern ( ($HeapSucc h0@@17 h1@@17) (Apply2 t0@@54 t1@@30 t2@@7 h1@@17 f@@34 bx0@@21 bx1@@7))
)))
(assert (forall ((t0@@55 T@U) (t1@@31 T@U) (t2@@8 T@U) (heap@@14 T@U) (f@@35 T@U) (bx0@@22 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@55) TyType) (= (type t1@@31) TyType)) (= (type t2@@8) TyType)) (= (type heap@@14) (MapType0Type refType MapType1Type))) (= (type f@@35) HandleTypeType)) (= (type bx0@@22) BoxType)) (= (type bx1@@8) BoxType)) (and ($IsGoodHeap heap@@14) (and (and ($IsBox bx0@@22 t0@@55) ($IsBox bx1@@8 t1@@31)) ($Is f@@35 (Tclass._System.___hFunc2 t0@@55 t1@@31 t2@@8))))) (= (|Set#Equal| (Reads2 t0@@55 t1@@31 t2@@8 $OneHeap f@@35 bx0@@22 bx1@@8) (|Set#Empty| BoxType)) (|Set#Equal| (Reads2 t0@@55 t1@@31 t2@@8 heap@@14 f@@35 bx0@@22 bx1@@8) (|Set#Empty| BoxType))))
 :qid |unknown.0:0|
 :skolemid |2006|
 :pattern ( (Reads2 t0@@55 t1@@31 t2@@8 $OneHeap f@@35 bx0@@22 bx1@@8) ($IsGoodHeap heap@@14))
 :pattern ( (Reads2 t0@@55 t1@@31 t2@@8 heap@@14 f@@35 bx0@@22 bx1@@8))
)))
(assert (forall ((t0@@56 T@U) (t1@@32 T@U) (t2@@9 T@U) (heap@@15 T@U) (f@@36 T@U) (bx0@@23 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type t0@@56) TyType) (= (type t1@@32) TyType)) (= (type t2@@9) TyType)) (= (type heap@@15) (MapType0Type refType MapType1Type))) (= (type f@@36) HandleTypeType)) (= (type bx0@@23) BoxType)) (= (type bx1@@9) BoxType)) (and (and ($IsGoodHeap heap@@15) (and (and ($IsBox bx0@@23 t0@@56) ($IsBox bx1@@9 t1@@32)) ($Is f@@36 (Tclass._System.___hFunc2 t0@@56 t1@@32 t2@@9)))) (|Set#Equal| (Reads2 t0@@56 t1@@32 t2@@9 $OneHeap f@@36 bx0@@23 bx1@@9) (|Set#Empty| BoxType)))) (= (Requires2 t0@@56 t1@@32 t2@@9 $OneHeap f@@36 bx0@@23 bx1@@9) (Requires2 t0@@56 t1@@32 t2@@9 heap@@15 f@@36 bx0@@23 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |2007|
 :pattern ( (Requires2 t0@@56 t1@@32 t2@@9 $OneHeap f@@36 bx0@@23 bx1@@9) ($IsGoodHeap heap@@15))
 :pattern ( (Requires2 t0@@56 t1@@32 t2@@9 heap@@15 f@@36 bx0@@23 bx1@@9))
)))
(assert (forall ((f@@37 T@U) (t0@@57 T@U) (t1@@33 T@U) (t2@@10 T@U) ) (!  (=> (and (and (and (= (type f@@37) HandleTypeType) (= (type t0@@57) TyType)) (= (type t1@@33) TyType)) (= (type t2@@10) TyType)) (= ($Is f@@37 (Tclass._System.___hFunc2 t0@@57 t1@@33 t2@@10)) (forall ((h@@36 T@U) (bx0@@24 T@U) (bx1@@10 T@U) ) (!  (=> (and (and (and (= (type h@@36) (MapType0Type refType MapType1Type)) (= (type bx0@@24) BoxType)) (= (type bx1@@10) BoxType)) (and (and ($IsGoodHeap h@@36) (and ($IsBox bx0@@24 t0@@57) ($IsBox bx1@@10 t1@@33))) (Requires2 t0@@57 t1@@33 t2@@10 h@@36 f@@37 bx0@@24 bx1@@10))) ($IsBox (Apply2 t0@@57 t1@@33 t2@@10 h@@36 f@@37 bx0@@24 bx1@@10) t2@@10))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2008|
 :pattern ( (Apply2 t0@@57 t1@@33 t2@@10 h@@36 f@@37 bx0@@24 bx1@@10))
))))
 :qid |unknown.0:0|
 :skolemid |2009|
 :pattern ( ($Is f@@37 (Tclass._System.___hFunc2 t0@@57 t1@@33 t2@@10)))
)))
(assert (forall ((f@@38 T@U) (t0@@58 T@U) (t1@@34 T@U) (t2@@11 T@U) (u0@@1 T@U) (u1@@0 T@U) (u2 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type f@@38) HandleTypeType) (= (type t0@@58) TyType)) (= (type t1@@34) TyType)) (= (type t2@@11) TyType)) (= (type u0@@1) TyType)) (= (type u1@@0) TyType)) (= (type u2) TyType)) (and (and (and ($Is f@@38 (Tclass._System.___hFunc2 t0@@58 t1@@34 t2@@11)) (forall ((bx@@45 T@U) ) (!  (=> (and (= (type bx@@45) BoxType) ($IsBox bx@@45 u0@@1)) ($IsBox bx@@45 t0@@58))
 :qid |unknown.0:0|
 :skolemid |2010|
 :pattern ( ($IsBox bx@@45 u0@@1))
 :pattern ( ($IsBox bx@@45 t0@@58))
))) (forall ((bx@@46 T@U) ) (!  (=> (and (= (type bx@@46) BoxType) ($IsBox bx@@46 u1@@0)) ($IsBox bx@@46 t1@@34))
 :qid |unknown.0:0|
 :skolemid |2011|
 :pattern ( ($IsBox bx@@46 u1@@0))
 :pattern ( ($IsBox bx@@46 t1@@34))
))) (forall ((bx@@47 T@U) ) (!  (=> (and (= (type bx@@47) BoxType) ($IsBox bx@@47 t2@@11)) ($IsBox bx@@47 u2))
 :qid |unknown.0:0|
 :skolemid |2012|
 :pattern ( ($IsBox bx@@47 t2@@11))
 :pattern ( ($IsBox bx@@47 u2))
)))) ($Is f@@38 (Tclass._System.___hFunc2 u0@@1 u1@@0 u2)))
 :qid |unknown.0:0|
 :skolemid |2013|
 :pattern ( ($Is f@@38 (Tclass._System.___hFunc2 t0@@58 t1@@34 t2@@11)) ($Is f@@38 (Tclass._System.___hFunc2 u0@@1 u1@@0 u2)))
)))
(assert (forall ((f@@39 T@U) (t0@@59 T@U) (t1@@35 T@U) (t2@@12 T@U) (h@@37 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@39) HandleTypeType) (= (type t0@@59) TyType)) (= (type t1@@35) TyType)) (= (type t2@@12) TyType)) (= (type h@@37) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@37)) (= ($IsAlloc f@@39 (Tclass._System.___hFunc2 t0@@59 t1@@35 t2@@12) h@@37) (forall ((bx0@@25 T@U) (bx1@@11 T@U) ) (!  (=> (and (= (type bx0@@25) BoxType) (= (type bx1@@11) BoxType)) (=> (and (and (and ($IsBox bx0@@25 t0@@59) ($IsAllocBox bx0@@25 t0@@59 h@@37)) (and ($IsBox bx1@@11 t1@@35) ($IsAllocBox bx1@@11 t1@@35 h@@37))) (Requires2 t0@@59 t1@@35 t2@@12 h@@37 f@@39 bx0@@25 bx1@@11)) (forall ((r@@17 T@U) ) (!  (=> (= (type r@@17) refType) (=> (and (not (= r@@17 null)) (U_2_bool (MapType0Select (Reads2 t0@@59 t1@@35 t2@@12 h@@37 f@@39 bx0@@25 bx1@@11) ($Box r@@17)))) (U_2_bool (MapType1Select (MapType0Select h@@37 r@@17) alloc))))
 :qid |unknown.0:0|
 :skolemid |2014|
 :pattern ( (MapType0Select (Reads2 t0@@59 t1@@35 t2@@12 h@@37 f@@39 bx0@@25 bx1@@11) ($Box r@@17)))
))))
 :qid |unknown.0:0|
 :skolemid |2015|
 :pattern ( (Apply2 t0@@59 t1@@35 t2@@12 h@@37 f@@39 bx0@@25 bx1@@11))
 :pattern ( (Reads2 t0@@59 t1@@35 t2@@12 h@@37 f@@39 bx0@@25 bx1@@11))
))))
 :qid |unknown.0:0|
 :skolemid |2016|
 :pattern ( ($IsAlloc f@@39 (Tclass._System.___hFunc2 t0@@59 t1@@35 t2@@12) h@@37))
)))
(assert (forall ((f@@40 T@U) (t0@@60 T@U) (t1@@36 T@U) (t2@@13 T@U) (h@@38 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@40) HandleTypeType) (= (type t0@@60) TyType)) (= (type t1@@36) TyType)) (= (type t2@@13) TyType)) (= (type h@@38) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@38) ($IsAlloc f@@40 (Tclass._System.___hFunc2 t0@@60 t1@@36 t2@@13) h@@38))) (forall ((bx0@@26 T@U) (bx1@@12 T@U) ) (!  (=> (and (= (type bx0@@26) BoxType) (= (type bx1@@12) BoxType)) (=> (and (and ($IsAllocBox bx0@@26 t0@@60 h@@38) ($IsAllocBox bx1@@12 t1@@36 h@@38)) (Requires2 t0@@60 t1@@36 t2@@13 h@@38 f@@40 bx0@@26 bx1@@12)) ($IsAllocBox (Apply2 t0@@60 t1@@36 t2@@13 h@@38 f@@40 bx0@@26 bx1@@12) t2@@13 h@@38)))
 :qid |unknown.0:0|
 :skolemid |2017|
 :pattern ( (Apply2 t0@@60 t1@@36 t2@@13 h@@38 f@@40 bx0@@26 bx1@@12))
)))
 :qid |unknown.0:0|
 :skolemid |2018|
 :pattern ( ($IsAlloc f@@40 (Tclass._System.___hFunc2 t0@@60 t1@@36 t2@@13) h@@38))
)))
(assert (forall ((arg0@@159 T@U) (arg1@@78 T@U) (arg2@@30 T@U) ) (! (= (type (Tclass._System.___hPartialFunc2 arg0@@159 arg1@@78 arg2@@30)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc2|
 :pattern ( (Tclass._System.___hPartialFunc2 arg0@@159 arg1@@78 arg2@@30))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$T1@@4| T@U) (|#$R@@33| T@U) ) (!  (=> (and (and (= (type |#$T0@@20|) TyType) (= (type |#$T1@@4|) TyType)) (= (type |#$R@@33|) TyType)) (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@20| |#$T1@@4| |#$R@@33|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@20| |#$T1@@4| |#$R@@33|)) |tytagFamily$_#PartialFunc2|)))
 :qid |unknown.0:0|
 :skolemid |2019|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@20| |#$T1@@4| |#$R@@33|))
)))
(assert (forall ((arg0@@160 T@U) ) (! (= (type (Tclass._System.___hPartialFunc2_0 arg0@@160)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc2_0|
 :pattern ( (Tclass._System.___hPartialFunc2_0 arg0@@160))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$T1@@5| T@U) (|#$R@@34| T@U) ) (!  (=> (and (and (= (type |#$T0@@21|) TyType) (= (type |#$T1@@5|) TyType)) (= (type |#$R@@34|) TyType)) (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@21| |#$T1@@5| |#$R@@34|)) |#$T0@@21|))
 :qid |unknown.0:0|
 :skolemid |2020|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@21| |#$T1@@5| |#$R@@34|))
)))
(assert (forall ((arg0@@161 T@U) ) (! (= (type (Tclass._System.___hPartialFunc2_1 arg0@@161)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc2_1|
 :pattern ( (Tclass._System.___hPartialFunc2_1 arg0@@161))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$T1@@6| T@U) (|#$R@@35| T@U) ) (!  (=> (and (and (= (type |#$T0@@22|) TyType) (= (type |#$T1@@6|) TyType)) (= (type |#$R@@35|) TyType)) (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@6| |#$R@@35|)) |#$T1@@6|))
 :qid |unknown.0:0|
 :skolemid |2021|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@22| |#$T1@@6| |#$R@@35|))
)))
(assert (forall ((arg0@@162 T@U) ) (! (= (type (Tclass._System.___hPartialFunc2_2 arg0@@162)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc2_2|
 :pattern ( (Tclass._System.___hPartialFunc2_2 arg0@@162))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$T1@@7| T@U) (|#$R@@36| T@U) ) (!  (=> (and (and (= (type |#$T0@@23|) TyType) (= (type |#$T1@@7|) TyType)) (= (type |#$R@@36|) TyType)) (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@23| |#$T1@@7| |#$R@@36|)) |#$R@@36|))
 :qid |unknown.0:0|
 :skolemid |2022|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@23| |#$T1@@7| |#$R@@36|))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$T1@@8| T@U) (|#$R@@37| T@U) (bx@@48 T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@24|) TyType) (= (type |#$T1@@8|) TyType)) (= (type |#$R@@37|) TyType)) (= (type bx@@48) BoxType)) ($IsBox bx@@48 (Tclass._System.___hPartialFunc2 |#$T0@@24| |#$T1@@8| |#$R@@37|))) (and (= ($Box ($Unbox HandleTypeType bx@@48)) bx@@48) ($Is ($Unbox HandleTypeType bx@@48) (Tclass._System.___hPartialFunc2 |#$T0@@24| |#$T1@@8| |#$R@@37|))))
 :qid |unknown.0:0|
 :skolemid |2023|
 :pattern ( ($IsBox bx@@48 (Tclass._System.___hPartialFunc2 |#$T0@@24| |#$T1@@8| |#$R@@37|)))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$T1@@9| T@U) (|#$R@@38| T@U) (|f#0@@7| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@25|) TyType) (= (type |#$T1@@9|) TyType)) (= (type |#$R@@38|) TyType)) (= (type |f#0@@7|) HandleTypeType)) (= ($Is |f#0@@7| (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@9| |#$R@@38|))  (and ($Is |f#0@@7| (Tclass._System.___hFunc2 |#$T0@@25| |#$T1@@9| |#$R@@38|)) (forall ((|x0#0@@1| T@U) (|x1#0| T@U) ) (!  (=> (and (and (= (type |x0#0@@1|) BoxType) (= (type |x1#0|) BoxType)) (and ($IsBox |x0#0@@1| |#$T0@@25|) ($IsBox |x1#0| |#$T1@@9|))) (|Set#Equal| (Reads2 |#$T0@@25| |#$T1@@9| |#$R@@38| $OneHeap |f#0@@7| |x0#0@@1| |x1#0|) (|Set#Empty| BoxType)))
 :qid |unknown.0:0|
 :skolemid |2024|
 :no-pattern (type |x0#0@@1|)
 :no-pattern (type |x1#0|)
 :no-pattern (U_2_int |x0#0@@1|)
 :no-pattern (U_2_bool |x0#0@@1|)
 :no-pattern (U_2_int |x1#0|)
 :no-pattern (U_2_bool |x1#0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2025|
 :pattern ( ($Is |f#0@@7| (Tclass._System.___hPartialFunc2 |#$T0@@25| |#$T1@@9| |#$R@@38|)))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$T1@@10| T@U) (|#$R@@39| T@U) (|f#0@@8| T@U) ($h@@12 T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@26|) TyType) (= (type |#$T1@@10|) TyType)) (= (type |#$R@@39|) TyType)) (= (type |f#0@@8|) HandleTypeType)) (= (type $h@@12) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@8| (Tclass._System.___hPartialFunc2 |#$T0@@26| |#$T1@@10| |#$R@@39|) $h@@12) ($IsAlloc |f#0@@8| (Tclass._System.___hFunc2 |#$T0@@26| |#$T1@@10| |#$R@@39|) $h@@12)))
 :qid |unknown.0:0|
 :skolemid |2026|
 :pattern ( ($IsAlloc |f#0@@8| (Tclass._System.___hPartialFunc2 |#$T0@@26| |#$T1@@10| |#$R@@39|) $h@@12))
)))
(assert (forall ((arg0@@163 T@U) (arg1@@79 T@U) (arg2@@31 T@U) ) (! (= (type (Tclass._System.___hTotalFunc2 arg0@@163 arg1@@79 arg2@@31)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc2|
 :pattern ( (Tclass._System.___hTotalFunc2 arg0@@163 arg1@@79 arg2@@31))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$T1@@11| T@U) (|#$R@@40| T@U) ) (!  (=> (and (and (= (type |#$T0@@27|) TyType) (= (type |#$T1@@11|) TyType)) (= (type |#$R@@40|) TyType)) (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@27| |#$T1@@11| |#$R@@40|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@27| |#$T1@@11| |#$R@@40|)) |tytagFamily$_#TotalFunc2|)))
 :qid |unknown.0:0|
 :skolemid |2027|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@27| |#$T1@@11| |#$R@@40|))
)))
(assert (forall ((arg0@@164 T@U) ) (! (= (type (Tclass._System.___hTotalFunc2_0 arg0@@164)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc2_0|
 :pattern ( (Tclass._System.___hTotalFunc2_0 arg0@@164))
)))
(assert (forall ((|#$T0@@28| T@U) (|#$T1@@12| T@U) (|#$R@@41| T@U) ) (!  (=> (and (and (= (type |#$T0@@28|) TyType) (= (type |#$T1@@12|) TyType)) (= (type |#$R@@41|) TyType)) (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@28| |#$T1@@12| |#$R@@41|)) |#$T0@@28|))
 :qid |unknown.0:0|
 :skolemid |2028|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@28| |#$T1@@12| |#$R@@41|))
)))
(assert (forall ((arg0@@165 T@U) ) (! (= (type (Tclass._System.___hTotalFunc2_1 arg0@@165)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc2_1|
 :pattern ( (Tclass._System.___hTotalFunc2_1 arg0@@165))
)))
(assert (forall ((|#$T0@@29| T@U) (|#$T1@@13| T@U) (|#$R@@42| T@U) ) (!  (=> (and (and (= (type |#$T0@@29|) TyType) (= (type |#$T1@@13|) TyType)) (= (type |#$R@@42|) TyType)) (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@29| |#$T1@@13| |#$R@@42|)) |#$T1@@13|))
 :qid |unknown.0:0|
 :skolemid |2029|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@29| |#$T1@@13| |#$R@@42|))
)))
(assert (forall ((arg0@@166 T@U) ) (! (= (type (Tclass._System.___hTotalFunc2_2 arg0@@166)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc2_2|
 :pattern ( (Tclass._System.___hTotalFunc2_2 arg0@@166))
)))
(assert (forall ((|#$T0@@30| T@U) (|#$T1@@14| T@U) (|#$R@@43| T@U) ) (!  (=> (and (and (= (type |#$T0@@30|) TyType) (= (type |#$T1@@14|) TyType)) (= (type |#$R@@43|) TyType)) (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@14| |#$R@@43|)) |#$R@@43|))
 :qid |unknown.0:0|
 :skolemid |2030|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@30| |#$T1@@14| |#$R@@43|))
)))
(assert (forall ((|#$T0@@31| T@U) (|#$T1@@15| T@U) (|#$R@@44| T@U) (bx@@49 T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@31|) TyType) (= (type |#$T1@@15|) TyType)) (= (type |#$R@@44|) TyType)) (= (type bx@@49) BoxType)) ($IsBox bx@@49 (Tclass._System.___hTotalFunc2 |#$T0@@31| |#$T1@@15| |#$R@@44|))) (and (= ($Box ($Unbox HandleTypeType bx@@49)) bx@@49) ($Is ($Unbox HandleTypeType bx@@49) (Tclass._System.___hTotalFunc2 |#$T0@@31| |#$T1@@15| |#$R@@44|))))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( ($IsBox bx@@49 (Tclass._System.___hTotalFunc2 |#$T0@@31| |#$T1@@15| |#$R@@44|)))
)))
(assert (forall ((|#$T0@@32| T@U) (|#$T1@@16| T@U) (|#$R@@45| T@U) (|f#0@@9| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@32|) TyType) (= (type |#$T1@@16|) TyType)) (= (type |#$R@@45|) TyType)) (= (type |f#0@@9|) HandleTypeType)) (= ($Is |f#0@@9| (Tclass._System.___hTotalFunc2 |#$T0@@32| |#$T1@@16| |#$R@@45|))  (and ($Is |f#0@@9| (Tclass._System.___hPartialFunc2 |#$T0@@32| |#$T1@@16| |#$R@@45|)) (forall ((|x0#0@@2| T@U) (|x1#0@@0| T@U) ) (!  (=> (and (and (= (type |x0#0@@2|) BoxType) (= (type |x1#0@@0|) BoxType)) (and ($IsBox |x0#0@@2| |#$T0@@32|) ($IsBox |x1#0@@0| |#$T1@@16|))) (Requires2 |#$T0@@32| |#$T1@@16| |#$R@@45| $OneHeap |f#0@@9| |x0#0@@2| |x1#0@@0|))
 :qid |unknown.0:0|
 :skolemid |2032|
 :no-pattern (type |x0#0@@2|)
 :no-pattern (type |x1#0@@0|)
 :no-pattern (U_2_int |x0#0@@2|)
 :no-pattern (U_2_bool |x0#0@@2|)
 :no-pattern (U_2_int |x1#0@@0|)
 :no-pattern (U_2_bool |x1#0@@0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2033|
 :pattern ( ($Is |f#0@@9| (Tclass._System.___hTotalFunc2 |#$T0@@32| |#$T1@@16| |#$R@@45|)))
)))
(assert (forall ((|#$T0@@33| T@U) (|#$T1@@17| T@U) (|#$R@@46| T@U) (|f#0@@10| T@U) ($h@@13 T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@33|) TyType) (= (type |#$T1@@17|) TyType)) (= (type |#$R@@46|) TyType)) (= (type |f#0@@10|) HandleTypeType)) (= (type $h@@13) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@10| (Tclass._System.___hTotalFunc2 |#$T0@@33| |#$T1@@17| |#$R@@46|) $h@@13) ($IsAlloc |f#0@@10| (Tclass._System.___hPartialFunc2 |#$T0@@33| |#$T1@@17| |#$R@@46|) $h@@13)))
 :qid |unknown.0:0|
 :skolemid |2034|
 :pattern ( ($IsAlloc |f#0@@10| (Tclass._System.___hTotalFunc2 |#$T0@@33| |#$T1@@17| |#$R@@46|) $h@@13))
)))
(assert (forall ((arg0@@167 T@U) (arg1@@80 T@U) (arg2@@32 T@U) (arg3@@12 T@U) ) (! (= (type (Tclass._System.___hFunc3 arg0@@167 arg1@@80 arg2@@32 arg3@@12)) TyType)
 :qid |funType:Tclass._System.___hFunc3|
 :pattern ( (Tclass._System.___hFunc3 arg0@@167 arg1@@80 arg2@@32 arg3@@12))
)))
(assert (forall ((|#$T0@@34| T@U) (|#$T1@@18| T@U) (|#$T2| T@U) (|#$R@@47| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@34|) TyType) (= (type |#$T1@@18|) TyType)) (= (type |#$T2|) TyType)) (= (type |#$R@@47|) TyType)) (and (= (Tag (Tclass._System.___hFunc3 |#$T0@@34| |#$T1@@18| |#$T2| |#$R@@47|)) Tagclass._System.___hFunc3) (= (TagFamily (Tclass._System.___hFunc3 |#$T0@@34| |#$T1@@18| |#$T2| |#$R@@47|)) |tytagFamily$_#Func3|)))
 :qid |unknown.0:0|
 :skolemid |2035|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@34| |#$T1@@18| |#$T2| |#$R@@47|))
)))
(assert (forall ((arg0@@168 T@U) ) (! (= (type (Tclass._System.___hFunc3_0 arg0@@168)) TyType)
 :qid |funType:Tclass._System.___hFunc3_0|
 :pattern ( (Tclass._System.___hFunc3_0 arg0@@168))
)))
(assert (forall ((|#$T0@@35| T@U) (|#$T1@@19| T@U) (|#$T2@@0| T@U) (|#$R@@48| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@35|) TyType) (= (type |#$T1@@19|) TyType)) (= (type |#$T2@@0|) TyType)) (= (type |#$R@@48|) TyType)) (= (Tclass._System.___hFunc3_0 (Tclass._System.___hFunc3 |#$T0@@35| |#$T1@@19| |#$T2@@0| |#$R@@48|)) |#$T0@@35|))
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@35| |#$T1@@19| |#$T2@@0| |#$R@@48|))
)))
(assert (forall ((arg0@@169 T@U) ) (! (= (type (Tclass._System.___hFunc3_1 arg0@@169)) TyType)
 :qid |funType:Tclass._System.___hFunc3_1|
 :pattern ( (Tclass._System.___hFunc3_1 arg0@@169))
)))
(assert (forall ((|#$T0@@36| T@U) (|#$T1@@20| T@U) (|#$T2@@1| T@U) (|#$R@@49| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@36|) TyType) (= (type |#$T1@@20|) TyType)) (= (type |#$T2@@1|) TyType)) (= (type |#$R@@49|) TyType)) (= (Tclass._System.___hFunc3_1 (Tclass._System.___hFunc3 |#$T0@@36| |#$T1@@20| |#$T2@@1| |#$R@@49|)) |#$T1@@20|))
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@36| |#$T1@@20| |#$T2@@1| |#$R@@49|))
)))
(assert (forall ((arg0@@170 T@U) ) (! (= (type (Tclass._System.___hFunc3_2 arg0@@170)) TyType)
 :qid |funType:Tclass._System.___hFunc3_2|
 :pattern ( (Tclass._System.___hFunc3_2 arg0@@170))
)))
(assert (forall ((|#$T0@@37| T@U) (|#$T1@@21| T@U) (|#$T2@@2| T@U) (|#$R@@50| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@37|) TyType) (= (type |#$T1@@21|) TyType)) (= (type |#$T2@@2|) TyType)) (= (type |#$R@@50|) TyType)) (= (Tclass._System.___hFunc3_2 (Tclass._System.___hFunc3 |#$T0@@37| |#$T1@@21| |#$T2@@2| |#$R@@50|)) |#$T2@@2|))
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@37| |#$T1@@21| |#$T2@@2| |#$R@@50|))
)))
(assert (forall ((arg0@@171 T@U) ) (! (= (type (Tclass._System.___hFunc3_3 arg0@@171)) TyType)
 :qid |funType:Tclass._System.___hFunc3_3|
 :pattern ( (Tclass._System.___hFunc3_3 arg0@@171))
)))
(assert (forall ((|#$T0@@38| T@U) (|#$T1@@22| T@U) (|#$T2@@3| T@U) (|#$R@@51| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@38|) TyType) (= (type |#$T1@@22|) TyType)) (= (type |#$T2@@3|) TyType)) (= (type |#$R@@51|) TyType)) (= (Tclass._System.___hFunc3_3 (Tclass._System.___hFunc3 |#$T0@@38| |#$T1@@22| |#$T2@@3| |#$R@@51|)) |#$R@@51|))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( (Tclass._System.___hFunc3 |#$T0@@38| |#$T1@@22| |#$T2@@3| |#$R@@51|))
)))
(assert (forall ((|#$T0@@39| T@U) (|#$T1@@23| T@U) (|#$T2@@4| T@U) (|#$R@@52| T@U) (bx@@50 T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@39|) TyType) (= (type |#$T1@@23|) TyType)) (= (type |#$T2@@4|) TyType)) (= (type |#$R@@52|) TyType)) (= (type bx@@50) BoxType)) ($IsBox bx@@50 (Tclass._System.___hFunc3 |#$T0@@39| |#$T1@@23| |#$T2@@4| |#$R@@52|))) (and (= ($Box ($Unbox HandleTypeType bx@@50)) bx@@50) ($Is ($Unbox HandleTypeType bx@@50) (Tclass._System.___hFunc3 |#$T0@@39| |#$T1@@23| |#$T2@@4| |#$R@@52|))))
 :qid |unknown.0:0|
 :skolemid |2040|
 :pattern ( ($IsBox bx@@50 (Tclass._System.___hFunc3 |#$T0@@39| |#$T1@@23| |#$T2@@4| |#$R@@52|)))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@172 T@T) (arg1@@81 T@T) (arg2@@33 T@T) (arg3@@13 T@T) (arg4@@4 T@T) ) (! (= (Ctor (MapType4Type arg0@@172 arg1@@81 arg2@@33 arg3@@13 arg4@@4)) 26)
 :qid |ctor:MapType4Type|
)) (forall ((arg0@@173 T@T) (arg1@@82 T@T) (arg2@@34 T@T) (arg3@@14 T@T) (arg4@@5 T@T) ) (! (= (MapType4TypeInv0 (MapType4Type arg0@@173 arg1@@82 arg2@@34 arg3@@14 arg4@@5)) arg0@@173)
 :qid |typeInv:MapType4TypeInv0|
 :pattern ( (MapType4Type arg0@@173 arg1@@82 arg2@@34 arg3@@14 arg4@@5))
))) (forall ((arg0@@174 T@T) (arg1@@83 T@T) (arg2@@35 T@T) (arg3@@15 T@T) (arg4@@6 T@T) ) (! (= (MapType4TypeInv1 (MapType4Type arg0@@174 arg1@@83 arg2@@35 arg3@@15 arg4@@6)) arg1@@83)
 :qid |typeInv:MapType4TypeInv1|
 :pattern ( (MapType4Type arg0@@174 arg1@@83 arg2@@35 arg3@@15 arg4@@6))
))) (forall ((arg0@@175 T@T) (arg1@@84 T@T) (arg2@@36 T@T) (arg3@@16 T@T) (arg4@@7 T@T) ) (! (= (MapType4TypeInv2 (MapType4Type arg0@@175 arg1@@84 arg2@@36 arg3@@16 arg4@@7)) arg2@@36)
 :qid |typeInv:MapType4TypeInv2|
 :pattern ( (MapType4Type arg0@@175 arg1@@84 arg2@@36 arg3@@16 arg4@@7))
))) (forall ((arg0@@176 T@T) (arg1@@85 T@T) (arg2@@37 T@T) (arg3@@17 T@T) (arg4@@8 T@T) ) (! (= (MapType4TypeInv3 (MapType4Type arg0@@176 arg1@@85 arg2@@37 arg3@@17 arg4@@8)) arg3@@17)
 :qid |typeInv:MapType4TypeInv3|
 :pattern ( (MapType4Type arg0@@176 arg1@@85 arg2@@37 arg3@@17 arg4@@8))
))) (forall ((arg0@@177 T@T) (arg1@@86 T@T) (arg2@@38 T@T) (arg3@@18 T@T) (arg4@@9 T@T) ) (! (= (MapType4TypeInv4 (MapType4Type arg0@@177 arg1@@86 arg2@@38 arg3@@18 arg4@@9)) arg4@@9)
 :qid |typeInv:MapType4TypeInv4|
 :pattern ( (MapType4Type arg0@@177 arg1@@86 arg2@@38 arg3@@18 arg4@@9))
))) (forall ((arg0@@178 T@U) (arg1@@87 T@U) (arg2@@39 T@U) (arg3@@19 T@U) (arg4@@10 T@U) ) (! (let ((aVar4 (MapType4TypeInv4 (type arg0@@178))))
(= (type (MapType4Select arg0@@178 arg1@@87 arg2@@39 arg3@@19 arg4@@10)) aVar4))
 :qid |funType:MapType4Select|
 :pattern ( (MapType4Select arg0@@178 arg1@@87 arg2@@39 arg3@@19 arg4@@10))
))) (forall ((arg0@@179 T@U) (arg1@@88 T@U) (arg2@@40 T@U) (arg3@@20 T@U) (arg4@@11 T@U) (arg5@@1 T@U) ) (! (let ((aVar4@@0 (type arg5@@1)))
(let ((aVar3@@2 (type arg4@@11)))
(let ((aVar2@@3 (type arg3@@20)))
(let ((aVar1@@4 (type arg2@@40)))
(let ((aVar0@@2 (type arg1@@88)))
(= (type (MapType4Store arg0@@179 arg1@@88 arg2@@40 arg3@@20 arg4@@11 arg5@@1)) (MapType4Type aVar0@@2 aVar1@@4 aVar2@@3 aVar3@@2 aVar4@@0)))))))
 :qid |funType:MapType4Store|
 :pattern ( (MapType4Store arg0@@179 arg1@@88 arg2@@40 arg3@@20 arg4@@11 arg5@@1))
))) (forall ((m@@54 T@U) (x0@@14 T@U) (x1@@8 T@U) (x2@@4 T@U) (x3 T@U) (val@@15 T@U) ) (! (let ((aVar4@@1 (MapType4TypeInv4 (type m@@54))))
 (=> (= (type val@@15) aVar4@@1) (= (MapType4Select (MapType4Store m@@54 x0@@14 x1@@8 x2@@4 x3 val@@15) x0@@14 x1@@8 x2@@4 x3) val@@15)))
 :qid |mapAx0:MapType4Select|
 :weight 0
))) (and (and (and (and (forall ((val@@16 T@U) (m@@55 T@U) (x0@@15 T@U) (x1@@9 T@U) (x2@@5 T@U) (x3@@0 T@U) (y0@@10 T@U) (y1@@6 T@U) (y2@@3 T@U) (y3 T@U) ) (!  (or (= x0@@15 y0@@10) (= (MapType4Select (MapType4Store m@@55 x0@@15 x1@@9 x2@@5 x3@@0 val@@16) y0@@10 y1@@6 y2@@3 y3) (MapType4Select m@@55 y0@@10 y1@@6 y2@@3 y3)))
 :qid |mapAx1:MapType4Select:0|
 :weight 0
)) (forall ((val@@17 T@U) (m@@56 T@U) (x0@@16 T@U) (x1@@10 T@U) (x2@@6 T@U) (x3@@1 T@U) (y0@@11 T@U) (y1@@7 T@U) (y2@@4 T@U) (y3@@0 T@U) ) (!  (or (= x1@@10 y1@@7) (= (MapType4Select (MapType4Store m@@56 x0@@16 x1@@10 x2@@6 x3@@1 val@@17) y0@@11 y1@@7 y2@@4 y3@@0) (MapType4Select m@@56 y0@@11 y1@@7 y2@@4 y3@@0)))
 :qid |mapAx1:MapType4Select:1|
 :weight 0
))) (forall ((val@@18 T@U) (m@@57 T@U) (x0@@17 T@U) (x1@@11 T@U) (x2@@7 T@U) (x3@@2 T@U) (y0@@12 T@U) (y1@@8 T@U) (y2@@5 T@U) (y3@@1 T@U) ) (!  (or (= x2@@7 y2@@5) (= (MapType4Select (MapType4Store m@@57 x0@@17 x1@@11 x2@@7 x3@@2 val@@18) y0@@12 y1@@8 y2@@5 y3@@1) (MapType4Select m@@57 y0@@12 y1@@8 y2@@5 y3@@1)))
 :qid |mapAx1:MapType4Select:2|
 :weight 0
))) (forall ((val@@19 T@U) (m@@58 T@U) (x0@@18 T@U) (x1@@12 T@U) (x2@@8 T@U) (x3@@3 T@U) (y0@@13 T@U) (y1@@9 T@U) (y2@@6 T@U) (y3@@2 T@U) ) (!  (or (= x3@@3 y3@@2) (= (MapType4Select (MapType4Store m@@58 x0@@18 x1@@12 x2@@8 x3@@3 val@@19) y0@@13 y1@@9 y2@@6 y3@@2) (MapType4Select m@@58 y0@@13 y1@@9 y2@@6 y3@@2)))
 :qid |mapAx1:MapType4Select:3|
 :weight 0
))) (forall ((val@@20 T@U) (m@@59 T@U) (x0@@19 T@U) (x1@@13 T@U) (x2@@9 T@U) (x3@@4 T@U) (y0@@14 T@U) (y1@@10 T@U) (y2@@7 T@U) (y3@@3 T@U) ) (!  (or true (= (MapType4Select (MapType4Store m@@59 x0@@19 x1@@13 x2@@9 x3@@4 val@@20) y0@@14 y1@@10 y2@@7 y3@@3) (MapType4Select m@@59 y0@@14 y1@@10 y2@@7 y3@@3)))
 :qid |mapAx2:MapType4Select|
 :weight 0
)))) (forall ((arg0@@180 T@U) (arg1@@89 T@U) (arg2@@41 T@U) (arg3@@21 T@U) (arg4@@12 T@U) (arg5@@2 T@U) (arg6@@1 T@U) (arg7 T@U) (arg8 T@U) ) (! (= (type (Apply3 arg0@@180 arg1@@89 arg2@@41 arg3@@21 arg4@@12 arg5@@2 arg6@@1 arg7 arg8)) BoxType)
 :qid |funType:Apply3|
 :pattern ( (Apply3 arg0@@180 arg1@@89 arg2@@41 arg3@@21 arg4@@12 arg5@@2 arg6@@1 arg7 arg8))
))) (forall ((arg0@@181 T@U) (arg1@@90 T@U) (arg2@@42 T@U) ) (! (= (type (Handle3 arg0@@181 arg1@@90 arg2@@42)) HandleTypeType)
 :qid |funType:Handle3|
 :pattern ( (Handle3 arg0@@181 arg1@@90 arg2@@42))
))))
(assert (forall ((t0@@61 T@U) (t1@@37 T@U) (t2@@14 T@U) (t3 T@U) (heap@@16 T@U) (h@@39 T@U) (r@@18 T@U) (rd@@8 T@U) (bx0@@27 T@U) (bx1@@13 T@U) (bx2 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@61) TyType) (= (type t1@@37) TyType)) (= (type t2@@14) TyType)) (= (type t3) TyType)) (= (type heap@@16) (MapType0Type refType MapType1Type))) (= (type h@@39) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType))) (= (type r@@18) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType boolType))) (= (type rd@@8) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@27) BoxType)) (= (type bx1@@13) BoxType)) (= (type bx2) BoxType)) (= (Apply3 t0@@61 t1@@37 t2@@14 t3 heap@@16 (Handle3 h@@39 r@@18 rd@@8) bx0@@27 bx1@@13 bx2) (MapType4Select h@@39 heap@@16 bx0@@27 bx1@@13 bx2)))
 :qid |unknown.0:0|
 :skolemid |2041|
 :pattern ( (Apply3 t0@@61 t1@@37 t2@@14 t3 heap@@16 (Handle3 h@@39 r@@18 rd@@8) bx0@@27 bx1@@13 bx2))
)))
(assert (forall ((t0@@62 T@U) (t1@@38 T@U) (t2@@15 T@U) (t3@@0 T@U) (heap@@17 T@U) (h@@40 T@U) (r@@19 T@U) (rd@@9 T@U) (bx0@@28 T@U) (bx1@@14 T@U) (bx2@@0 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@62) TyType) (= (type t1@@38) TyType)) (= (type t2@@15) TyType)) (= (type t3@@0) TyType)) (= (type heap@@17) (MapType0Type refType MapType1Type))) (= (type h@@40) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType))) (= (type r@@19) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType boolType))) (= (type rd@@9) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@28) BoxType)) (= (type bx1@@14) BoxType)) (= (type bx2@@0) BoxType)) (U_2_bool (MapType4Select r@@19 heap@@17 bx0@@28 bx1@@14 bx2@@0))) (Requires3 t0@@62 t1@@38 t2@@15 t3@@0 heap@@17 (Handle3 h@@40 r@@19 rd@@9) bx0@@28 bx1@@14 bx2@@0))
 :qid |unknown.0:0|
 :skolemid |2042|
 :pattern ( (Requires3 t0@@62 t1@@38 t2@@15 t3@@0 heap@@17 (Handle3 h@@40 r@@19 rd@@9) bx0@@28 bx1@@14 bx2@@0))
)))
(assert (forall ((arg0@@182 T@U) (arg1@@91 T@U) (arg2@@43 T@U) (arg3@@22 T@U) (arg4@@13 T@U) (arg5@@3 T@U) (arg6@@2 T@U) (arg7@@0 T@U) (arg8@@0 T@U) ) (! (= (type (Reads3 arg0@@182 arg1@@91 arg2@@43 arg3@@22 arg4@@13 arg5@@3 arg6@@2 arg7@@0 arg8@@0)) (MapType0Type BoxType boolType))
 :qid |funType:Reads3|
 :pattern ( (Reads3 arg0@@182 arg1@@91 arg2@@43 arg3@@22 arg4@@13 arg5@@3 arg6@@2 arg7@@0 arg8@@0))
)))
(assert (forall ((t0@@63 T@U) (t1@@39 T@U) (t2@@16 T@U) (t3@@1 T@U) (heap@@18 T@U) (h@@41 T@U) (r@@20 T@U) (rd@@10 T@U) (bx0@@29 T@U) (bx1@@15 T@U) (bx2@@1 T@U) (bx@@51 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@63) TyType) (= (type t1@@39) TyType)) (= (type t2@@16) TyType)) (= (type t3@@1) TyType)) (= (type heap@@18) (MapType0Type refType MapType1Type))) (= (type h@@41) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType))) (= (type r@@20) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType boolType))) (= (type rd@@10) (MapType4Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@29) BoxType)) (= (type bx1@@15) BoxType)) (= (type bx2@@1) BoxType)) (= (type bx@@51) BoxType)) (= (U_2_bool (MapType0Select (Reads3 t0@@63 t1@@39 t2@@16 t3@@1 heap@@18 (Handle3 h@@41 r@@20 rd@@10) bx0@@29 bx1@@15 bx2@@1) bx@@51)) (U_2_bool (MapType0Select (MapType4Select rd@@10 heap@@18 bx0@@29 bx1@@15 bx2@@1) bx@@51))))
 :qid |unknown.0:0|
 :skolemid |2043|
 :pattern ( (MapType0Select (Reads3 t0@@63 t1@@39 t2@@16 t3@@1 heap@@18 (Handle3 h@@41 r@@20 rd@@10) bx0@@29 bx1@@15 bx2@@1) bx@@51))
)))
(assert (forall ((t0@@64 T@U) (t1@@40 T@U) (t2@@17 T@U) (t3@@2 T@U) (h0@@18 T@U) (h1@@18 T@U) (f@@41 T@U) (bx0@@30 T@U) (bx1@@16 T@U) (bx2@@2 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@64) TyType) (= (type t1@@40) TyType)) (= (type t2@@17) TyType)) (= (type t3@@2) TyType)) (= (type h0@@18) (MapType0Type refType MapType1Type))) (= (type h1@@18) (MapType0Type refType MapType1Type))) (= (type f@@41) HandleTypeType)) (= (type bx0@@30) BoxType)) (= (type bx1@@16) BoxType)) (= (type bx2@@2) BoxType)) (and (and (and ($HeapSucc h0@@18 h1@@18) (and ($IsGoodHeap h0@@18) ($IsGoodHeap h1@@18))) (and (and (and ($IsBox bx0@@30 t0@@64) ($IsBox bx1@@16 t1@@40)) ($IsBox bx2@@2 t2@@17)) ($Is f@@41 (Tclass._System.___hFunc3 t0@@64 t1@@40 t2@@17 t3@@2)))) (forall ((o@@62 T@U) (fld@@17 T@U) ) (! (let ((a@@100 (FieldTypeInv0 (type fld@@17))))
 (=> (and (and (= (type o@@62) refType) (= (type fld@@17) (FieldType a@@100))) (and (not (= o@@62 null)) (U_2_bool (MapType0Select (Reads3 t0@@64 t1@@40 t2@@17 t3@@2 h0@@18 f@@41 bx0@@30 bx1@@16 bx2@@2) ($Box o@@62))))) (= (MapType1Select (MapType0Select h0@@18 o@@62) fld@@17) (MapType1Select (MapType0Select h1@@18 o@@62) fld@@17))))
 :qid |unknown.0:0|
 :skolemid |2044|
 :no-pattern (type o@@62)
 :no-pattern (type fld@@17)
 :no-pattern (U_2_int o@@62)
 :no-pattern (U_2_bool o@@62)
 :no-pattern (U_2_int fld@@17)
 :no-pattern (U_2_bool fld@@17)
)))) (= (Reads3 t0@@64 t1@@40 t2@@17 t3@@2 h0@@18 f@@41 bx0@@30 bx1@@16 bx2@@2) (Reads3 t0@@64 t1@@40 t2@@17 t3@@2 h1@@18 f@@41 bx0@@30 bx1@@16 bx2@@2)))
 :qid |unknown.0:0|
 :skolemid |2045|
 :pattern ( ($HeapSucc h0@@18 h1@@18) (Reads3 t0@@64 t1@@40 t2@@17 t3@@2 h1@@18 f@@41 bx0@@30 bx1@@16 bx2@@2))
)))
(assert (forall ((t0@@65 T@U) (t1@@41 T@U) (t2@@18 T@U) (t3@@3 T@U) (h0@@19 T@U) (h1@@19 T@U) (f@@42 T@U) (bx0@@31 T@U) (bx1@@17 T@U) (bx2@@3 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@65) TyType) (= (type t1@@41) TyType)) (= (type t2@@18) TyType)) (= (type t3@@3) TyType)) (= (type h0@@19) (MapType0Type refType MapType1Type))) (= (type h1@@19) (MapType0Type refType MapType1Type))) (= (type f@@42) HandleTypeType)) (= (type bx0@@31) BoxType)) (= (type bx1@@17) BoxType)) (= (type bx2@@3) BoxType)) (and (and (and ($HeapSucc h0@@19 h1@@19) (and ($IsGoodHeap h0@@19) ($IsGoodHeap h1@@19))) (and (and (and ($IsBox bx0@@31 t0@@65) ($IsBox bx1@@17 t1@@41)) ($IsBox bx2@@3 t2@@18)) ($Is f@@42 (Tclass._System.___hFunc3 t0@@65 t1@@41 t2@@18 t3@@3)))) (forall ((o@@63 T@U) (fld@@18 T@U) ) (! (let ((a@@101 (FieldTypeInv0 (type fld@@18))))
 (=> (and (and (= (type o@@63) refType) (= (type fld@@18) (FieldType a@@101))) (and (not (= o@@63 null)) (U_2_bool (MapType0Select (Reads3 t0@@65 t1@@41 t2@@18 t3@@3 h1@@19 f@@42 bx0@@31 bx1@@17 bx2@@3) ($Box o@@63))))) (= (MapType1Select (MapType0Select h0@@19 o@@63) fld@@18) (MapType1Select (MapType0Select h1@@19 o@@63) fld@@18))))
 :qid |unknown.0:0|
 :skolemid |2046|
 :no-pattern (type o@@63)
 :no-pattern (type fld@@18)
 :no-pattern (U_2_int o@@63)
 :no-pattern (U_2_bool o@@63)
 :no-pattern (U_2_int fld@@18)
 :no-pattern (U_2_bool fld@@18)
)))) (= (Reads3 t0@@65 t1@@41 t2@@18 t3@@3 h0@@19 f@@42 bx0@@31 bx1@@17 bx2@@3) (Reads3 t0@@65 t1@@41 t2@@18 t3@@3 h1@@19 f@@42 bx0@@31 bx1@@17 bx2@@3)))
 :qid |unknown.0:0|
 :skolemid |2047|
 :pattern ( ($HeapSucc h0@@19 h1@@19) (Reads3 t0@@65 t1@@41 t2@@18 t3@@3 h1@@19 f@@42 bx0@@31 bx1@@17 bx2@@3))
)))
(assert (forall ((t0@@66 T@U) (t1@@42 T@U) (t2@@19 T@U) (t3@@4 T@U) (h0@@20 T@U) (h1@@20 T@U) (f@@43 T@U) (bx0@@32 T@U) (bx1@@18 T@U) (bx2@@4 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@66) TyType) (= (type t1@@42) TyType)) (= (type t2@@19) TyType)) (= (type t3@@4) TyType)) (= (type h0@@20) (MapType0Type refType MapType1Type))) (= (type h1@@20) (MapType0Type refType MapType1Type))) (= (type f@@43) HandleTypeType)) (= (type bx0@@32) BoxType)) (= (type bx1@@18) BoxType)) (= (type bx2@@4) BoxType)) (and (and (and ($HeapSucc h0@@20 h1@@20) (and ($IsGoodHeap h0@@20) ($IsGoodHeap h1@@20))) (and (and (and ($IsBox bx0@@32 t0@@66) ($IsBox bx1@@18 t1@@42)) ($IsBox bx2@@4 t2@@19)) ($Is f@@43 (Tclass._System.___hFunc3 t0@@66 t1@@42 t2@@19 t3@@4)))) (forall ((o@@64 T@U) (fld@@19 T@U) ) (! (let ((a@@102 (FieldTypeInv0 (type fld@@19))))
 (=> (and (and (= (type o@@64) refType) (= (type fld@@19) (FieldType a@@102))) (and (not (= o@@64 null)) (U_2_bool (MapType0Select (Reads3 t0@@66 t1@@42 t2@@19 t3@@4 h0@@20 f@@43 bx0@@32 bx1@@18 bx2@@4) ($Box o@@64))))) (= (MapType1Select (MapType0Select h0@@20 o@@64) fld@@19) (MapType1Select (MapType0Select h1@@20 o@@64) fld@@19))))
 :qid |unknown.0:0|
 :skolemid |2048|
 :no-pattern (type o@@64)
 :no-pattern (type fld@@19)
 :no-pattern (U_2_int o@@64)
 :no-pattern (U_2_bool o@@64)
 :no-pattern (U_2_int fld@@19)
 :no-pattern (U_2_bool fld@@19)
)))) (= (Requires3 t0@@66 t1@@42 t2@@19 t3@@4 h0@@20 f@@43 bx0@@32 bx1@@18 bx2@@4) (Requires3 t0@@66 t1@@42 t2@@19 t3@@4 h1@@20 f@@43 bx0@@32 bx1@@18 bx2@@4)))
 :qid |unknown.0:0|
 :skolemid |2049|
 :pattern ( ($HeapSucc h0@@20 h1@@20) (Requires3 t0@@66 t1@@42 t2@@19 t3@@4 h1@@20 f@@43 bx0@@32 bx1@@18 bx2@@4))
)))
(assert (forall ((t0@@67 T@U) (t1@@43 T@U) (t2@@20 T@U) (t3@@5 T@U) (h0@@21 T@U) (h1@@21 T@U) (f@@44 T@U) (bx0@@33 T@U) (bx1@@19 T@U) (bx2@@5 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@67) TyType) (= (type t1@@43) TyType)) (= (type t2@@20) TyType)) (= (type t3@@5) TyType)) (= (type h0@@21) (MapType0Type refType MapType1Type))) (= (type h1@@21) (MapType0Type refType MapType1Type))) (= (type f@@44) HandleTypeType)) (= (type bx0@@33) BoxType)) (= (type bx1@@19) BoxType)) (= (type bx2@@5) BoxType)) (and (and (and ($HeapSucc h0@@21 h1@@21) (and ($IsGoodHeap h0@@21) ($IsGoodHeap h1@@21))) (and (and (and ($IsBox bx0@@33 t0@@67) ($IsBox bx1@@19 t1@@43)) ($IsBox bx2@@5 t2@@20)) ($Is f@@44 (Tclass._System.___hFunc3 t0@@67 t1@@43 t2@@20 t3@@5)))) (forall ((o@@65 T@U) (fld@@20 T@U) ) (! (let ((a@@103 (FieldTypeInv0 (type fld@@20))))
 (=> (and (and (= (type o@@65) refType) (= (type fld@@20) (FieldType a@@103))) (and (not (= o@@65 null)) (U_2_bool (MapType0Select (Reads3 t0@@67 t1@@43 t2@@20 t3@@5 h1@@21 f@@44 bx0@@33 bx1@@19 bx2@@5) ($Box o@@65))))) (= (MapType1Select (MapType0Select h0@@21 o@@65) fld@@20) (MapType1Select (MapType0Select h1@@21 o@@65) fld@@20))))
 :qid |unknown.0:0|
 :skolemid |2050|
 :no-pattern (type o@@65)
 :no-pattern (type fld@@20)
 :no-pattern (U_2_int o@@65)
 :no-pattern (U_2_bool o@@65)
 :no-pattern (U_2_int fld@@20)
 :no-pattern (U_2_bool fld@@20)
)))) (= (Requires3 t0@@67 t1@@43 t2@@20 t3@@5 h0@@21 f@@44 bx0@@33 bx1@@19 bx2@@5) (Requires3 t0@@67 t1@@43 t2@@20 t3@@5 h1@@21 f@@44 bx0@@33 bx1@@19 bx2@@5)))
 :qid |unknown.0:0|
 :skolemid |2051|
 :pattern ( ($HeapSucc h0@@21 h1@@21) (Requires3 t0@@67 t1@@43 t2@@20 t3@@5 h1@@21 f@@44 bx0@@33 bx1@@19 bx2@@5))
)))
(assert (forall ((t0@@68 T@U) (t1@@44 T@U) (t2@@21 T@U) (t3@@6 T@U) (h0@@22 T@U) (h1@@22 T@U) (f@@45 T@U) (bx0@@34 T@U) (bx1@@20 T@U) (bx2@@6 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@68) TyType) (= (type t1@@44) TyType)) (= (type t2@@21) TyType)) (= (type t3@@6) TyType)) (= (type h0@@22) (MapType0Type refType MapType1Type))) (= (type h1@@22) (MapType0Type refType MapType1Type))) (= (type f@@45) HandleTypeType)) (= (type bx0@@34) BoxType)) (= (type bx1@@20) BoxType)) (= (type bx2@@6) BoxType)) (and (and (and ($HeapSucc h0@@22 h1@@22) (and ($IsGoodHeap h0@@22) ($IsGoodHeap h1@@22))) (and (and (and ($IsBox bx0@@34 t0@@68) ($IsBox bx1@@20 t1@@44)) ($IsBox bx2@@6 t2@@21)) ($Is f@@45 (Tclass._System.___hFunc3 t0@@68 t1@@44 t2@@21 t3@@6)))) (forall ((o@@66 T@U) (fld@@21 T@U) ) (! (let ((a@@104 (FieldTypeInv0 (type fld@@21))))
 (=> (and (and (= (type o@@66) refType) (= (type fld@@21) (FieldType a@@104))) (and (not (= o@@66 null)) (U_2_bool (MapType0Select (Reads3 t0@@68 t1@@44 t2@@21 t3@@6 h0@@22 f@@45 bx0@@34 bx1@@20 bx2@@6) ($Box o@@66))))) (= (MapType1Select (MapType0Select h0@@22 o@@66) fld@@21) (MapType1Select (MapType0Select h1@@22 o@@66) fld@@21))))
 :qid |unknown.0:0|
 :skolemid |2052|
 :no-pattern (type o@@66)
 :no-pattern (type fld@@21)
 :no-pattern (U_2_int o@@66)
 :no-pattern (U_2_bool o@@66)
 :no-pattern (U_2_int fld@@21)
 :no-pattern (U_2_bool fld@@21)
)))) (= (Apply3 t0@@68 t1@@44 t2@@21 t3@@6 h0@@22 f@@45 bx0@@34 bx1@@20 bx2@@6) (Apply3 t0@@68 t1@@44 t2@@21 t3@@6 h1@@22 f@@45 bx0@@34 bx1@@20 bx2@@6)))
 :qid |unknown.0:0|
 :skolemid |2053|
 :pattern ( ($HeapSucc h0@@22 h1@@22) (Apply3 t0@@68 t1@@44 t2@@21 t3@@6 h1@@22 f@@45 bx0@@34 bx1@@20 bx2@@6))
)))
(assert (forall ((t0@@69 T@U) (t1@@45 T@U) (t2@@22 T@U) (t3@@7 T@U) (h0@@23 T@U) (h1@@23 T@U) (f@@46 T@U) (bx0@@35 T@U) (bx1@@21 T@U) (bx2@@7 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (= (type t0@@69) TyType) (= (type t1@@45) TyType)) (= (type t2@@22) TyType)) (= (type t3@@7) TyType)) (= (type h0@@23) (MapType0Type refType MapType1Type))) (= (type h1@@23) (MapType0Type refType MapType1Type))) (= (type f@@46) HandleTypeType)) (= (type bx0@@35) BoxType)) (= (type bx1@@21) BoxType)) (= (type bx2@@7) BoxType)) (and (and (and ($HeapSucc h0@@23 h1@@23) (and ($IsGoodHeap h0@@23) ($IsGoodHeap h1@@23))) (and (and (and ($IsBox bx0@@35 t0@@69) ($IsBox bx1@@21 t1@@45)) ($IsBox bx2@@7 t2@@22)) ($Is f@@46 (Tclass._System.___hFunc3 t0@@69 t1@@45 t2@@22 t3@@7)))) (forall ((o@@67 T@U) (fld@@22 T@U) ) (! (let ((a@@105 (FieldTypeInv0 (type fld@@22))))
 (=> (and (and (= (type o@@67) refType) (= (type fld@@22) (FieldType a@@105))) (and (not (= o@@67 null)) (U_2_bool (MapType0Select (Reads3 t0@@69 t1@@45 t2@@22 t3@@7 h1@@23 f@@46 bx0@@35 bx1@@21 bx2@@7) ($Box o@@67))))) (= (MapType1Select (MapType0Select h0@@23 o@@67) fld@@22) (MapType1Select (MapType0Select h1@@23 o@@67) fld@@22))))
 :qid |unknown.0:0|
 :skolemid |2054|
 :no-pattern (type o@@67)
 :no-pattern (type fld@@22)
 :no-pattern (U_2_int o@@67)
 :no-pattern (U_2_bool o@@67)
 :no-pattern (U_2_int fld@@22)
 :no-pattern (U_2_bool fld@@22)
)))) (= (Apply3 t0@@69 t1@@45 t2@@22 t3@@7 h0@@23 f@@46 bx0@@35 bx1@@21 bx2@@7) (Apply3 t0@@69 t1@@45 t2@@22 t3@@7 h1@@23 f@@46 bx0@@35 bx1@@21 bx2@@7)))
 :qid |unknown.0:0|
 :skolemid |2055|
 :pattern ( ($HeapSucc h0@@23 h1@@23) (Apply3 t0@@69 t1@@45 t2@@22 t3@@7 h1@@23 f@@46 bx0@@35 bx1@@21 bx2@@7))
)))
(assert (forall ((t0@@70 T@U) (t1@@46 T@U) (t2@@23 T@U) (t3@@8 T@U) (heap@@19 T@U) (f@@47 T@U) (bx0@@36 T@U) (bx1@@22 T@U) (bx2@@8 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (= (type t0@@70) TyType) (= (type t1@@46) TyType)) (= (type t2@@23) TyType)) (= (type t3@@8) TyType)) (= (type heap@@19) (MapType0Type refType MapType1Type))) (= (type f@@47) HandleTypeType)) (= (type bx0@@36) BoxType)) (= (type bx1@@22) BoxType)) (= (type bx2@@8) BoxType)) (and ($IsGoodHeap heap@@19) (and (and (and ($IsBox bx0@@36 t0@@70) ($IsBox bx1@@22 t1@@46)) ($IsBox bx2@@8 t2@@23)) ($Is f@@47 (Tclass._System.___hFunc3 t0@@70 t1@@46 t2@@23 t3@@8))))) (= (|Set#Equal| (Reads3 t0@@70 t1@@46 t2@@23 t3@@8 $OneHeap f@@47 bx0@@36 bx1@@22 bx2@@8) (|Set#Empty| BoxType)) (|Set#Equal| (Reads3 t0@@70 t1@@46 t2@@23 t3@@8 heap@@19 f@@47 bx0@@36 bx1@@22 bx2@@8) (|Set#Empty| BoxType))))
 :qid |unknown.0:0|
 :skolemid |2056|
 :pattern ( (Reads3 t0@@70 t1@@46 t2@@23 t3@@8 $OneHeap f@@47 bx0@@36 bx1@@22 bx2@@8) ($IsGoodHeap heap@@19))
 :pattern ( (Reads3 t0@@70 t1@@46 t2@@23 t3@@8 heap@@19 f@@47 bx0@@36 bx1@@22 bx2@@8))
)))
(assert (forall ((t0@@71 T@U) (t1@@47 T@U) (t2@@24 T@U) (t3@@9 T@U) (heap@@20 T@U) (f@@48 T@U) (bx0@@37 T@U) (bx1@@23 T@U) (bx2@@9 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (= (type t0@@71) TyType) (= (type t1@@47) TyType)) (= (type t2@@24) TyType)) (= (type t3@@9) TyType)) (= (type heap@@20) (MapType0Type refType MapType1Type))) (= (type f@@48) HandleTypeType)) (= (type bx0@@37) BoxType)) (= (type bx1@@23) BoxType)) (= (type bx2@@9) BoxType)) (and (and ($IsGoodHeap heap@@20) (and (and (and ($IsBox bx0@@37 t0@@71) ($IsBox bx1@@23 t1@@47)) ($IsBox bx2@@9 t2@@24)) ($Is f@@48 (Tclass._System.___hFunc3 t0@@71 t1@@47 t2@@24 t3@@9)))) (|Set#Equal| (Reads3 t0@@71 t1@@47 t2@@24 t3@@9 $OneHeap f@@48 bx0@@37 bx1@@23 bx2@@9) (|Set#Empty| BoxType)))) (= (Requires3 t0@@71 t1@@47 t2@@24 t3@@9 $OneHeap f@@48 bx0@@37 bx1@@23 bx2@@9) (Requires3 t0@@71 t1@@47 t2@@24 t3@@9 heap@@20 f@@48 bx0@@37 bx1@@23 bx2@@9)))
 :qid |unknown.0:0|
 :skolemid |2057|
 :pattern ( (Requires3 t0@@71 t1@@47 t2@@24 t3@@9 $OneHeap f@@48 bx0@@37 bx1@@23 bx2@@9) ($IsGoodHeap heap@@20))
 :pattern ( (Requires3 t0@@71 t1@@47 t2@@24 t3@@9 heap@@20 f@@48 bx0@@37 bx1@@23 bx2@@9))
)))
(assert (forall ((f@@49 T@U) (t0@@72 T@U) (t1@@48 T@U) (t2@@25 T@U) (t3@@10 T@U) ) (!  (=> (and (and (and (and (= (type f@@49) HandleTypeType) (= (type t0@@72) TyType)) (= (type t1@@48) TyType)) (= (type t2@@25) TyType)) (= (type t3@@10) TyType)) (= ($Is f@@49 (Tclass._System.___hFunc3 t0@@72 t1@@48 t2@@25 t3@@10)) (forall ((h@@42 T@U) (bx0@@38 T@U) (bx1@@24 T@U) (bx2@@10 T@U) ) (!  (=> (and (and (and (and (= (type h@@42) (MapType0Type refType MapType1Type)) (= (type bx0@@38) BoxType)) (= (type bx1@@24) BoxType)) (= (type bx2@@10) BoxType)) (and (and ($IsGoodHeap h@@42) (and (and ($IsBox bx0@@38 t0@@72) ($IsBox bx1@@24 t1@@48)) ($IsBox bx2@@10 t2@@25))) (Requires3 t0@@72 t1@@48 t2@@25 t3@@10 h@@42 f@@49 bx0@@38 bx1@@24 bx2@@10))) ($IsBox (Apply3 t0@@72 t1@@48 t2@@25 t3@@10 h@@42 f@@49 bx0@@38 bx1@@24 bx2@@10) t3@@10))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2058|
 :pattern ( (Apply3 t0@@72 t1@@48 t2@@25 t3@@10 h@@42 f@@49 bx0@@38 bx1@@24 bx2@@10))
))))
 :qid |unknown.0:0|
 :skolemid |2059|
 :pattern ( ($Is f@@49 (Tclass._System.___hFunc3 t0@@72 t1@@48 t2@@25 t3@@10)))
)))
(assert (forall ((f@@50 T@U) (t0@@73 T@U) (t1@@49 T@U) (t2@@26 T@U) (t3@@11 T@U) (u0@@2 T@U) (u1@@1 T@U) (u2@@0 T@U) (u3 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (= (type f@@50) HandleTypeType) (= (type t0@@73) TyType)) (= (type t1@@49) TyType)) (= (type t2@@26) TyType)) (= (type t3@@11) TyType)) (= (type u0@@2) TyType)) (= (type u1@@1) TyType)) (= (type u2@@0) TyType)) (= (type u3) TyType)) (and (and (and (and ($Is f@@50 (Tclass._System.___hFunc3 t0@@73 t1@@49 t2@@26 t3@@11)) (forall ((bx@@52 T@U) ) (!  (=> (and (= (type bx@@52) BoxType) ($IsBox bx@@52 u0@@2)) ($IsBox bx@@52 t0@@73))
 :qid |unknown.0:0|
 :skolemid |2060|
 :pattern ( ($IsBox bx@@52 u0@@2))
 :pattern ( ($IsBox bx@@52 t0@@73))
))) (forall ((bx@@53 T@U) ) (!  (=> (and (= (type bx@@53) BoxType) ($IsBox bx@@53 u1@@1)) ($IsBox bx@@53 t1@@49))
 :qid |unknown.0:0|
 :skolemid |2061|
 :pattern ( ($IsBox bx@@53 u1@@1))
 :pattern ( ($IsBox bx@@53 t1@@49))
))) (forall ((bx@@54 T@U) ) (!  (=> (and (= (type bx@@54) BoxType) ($IsBox bx@@54 u2@@0)) ($IsBox bx@@54 t2@@26))
 :qid |unknown.0:0|
 :skolemid |2062|
 :pattern ( ($IsBox bx@@54 u2@@0))
 :pattern ( ($IsBox bx@@54 t2@@26))
))) (forall ((bx@@55 T@U) ) (!  (=> (and (= (type bx@@55) BoxType) ($IsBox bx@@55 t3@@11)) ($IsBox bx@@55 u3))
 :qid |unknown.0:0|
 :skolemid |2063|
 :pattern ( ($IsBox bx@@55 t3@@11))
 :pattern ( ($IsBox bx@@55 u3))
)))) ($Is f@@50 (Tclass._System.___hFunc3 u0@@2 u1@@1 u2@@0 u3)))
 :qid |unknown.0:0|
 :skolemid |2064|
 :pattern ( ($Is f@@50 (Tclass._System.___hFunc3 t0@@73 t1@@49 t2@@26 t3@@11)) ($Is f@@50 (Tclass._System.___hFunc3 u0@@2 u1@@1 u2@@0 u3)))
)))
(assert (forall ((f@@51 T@U) (t0@@74 T@U) (t1@@50 T@U) (t2@@27 T@U) (t3@@12 T@U) (h@@43 T@U) ) (!  (=> (and (and (and (and (and (and (= (type f@@51) HandleTypeType) (= (type t0@@74) TyType)) (= (type t1@@50) TyType)) (= (type t2@@27) TyType)) (= (type t3@@12) TyType)) (= (type h@@43) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@43)) (= ($IsAlloc f@@51 (Tclass._System.___hFunc3 t0@@74 t1@@50 t2@@27 t3@@12) h@@43) (forall ((bx0@@39 T@U) (bx1@@25 T@U) (bx2@@11 T@U) ) (!  (=> (and (and (= (type bx0@@39) BoxType) (= (type bx1@@25) BoxType)) (= (type bx2@@11) BoxType)) (=> (and (and (and (and ($IsBox bx0@@39 t0@@74) ($IsAllocBox bx0@@39 t0@@74 h@@43)) (and ($IsBox bx1@@25 t1@@50) ($IsAllocBox bx1@@25 t1@@50 h@@43))) (and ($IsBox bx2@@11 t2@@27) ($IsAllocBox bx2@@11 t2@@27 h@@43))) (Requires3 t0@@74 t1@@50 t2@@27 t3@@12 h@@43 f@@51 bx0@@39 bx1@@25 bx2@@11)) (forall ((r@@21 T@U) ) (!  (=> (= (type r@@21) refType) (=> (and (not (= r@@21 null)) (U_2_bool (MapType0Select (Reads3 t0@@74 t1@@50 t2@@27 t3@@12 h@@43 f@@51 bx0@@39 bx1@@25 bx2@@11) ($Box r@@21)))) (U_2_bool (MapType1Select (MapType0Select h@@43 r@@21) alloc))))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( (MapType0Select (Reads3 t0@@74 t1@@50 t2@@27 t3@@12 h@@43 f@@51 bx0@@39 bx1@@25 bx2@@11) ($Box r@@21)))
))))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( (Apply3 t0@@74 t1@@50 t2@@27 t3@@12 h@@43 f@@51 bx0@@39 bx1@@25 bx2@@11))
 :pattern ( (Reads3 t0@@74 t1@@50 t2@@27 t3@@12 h@@43 f@@51 bx0@@39 bx1@@25 bx2@@11))
))))
 :qid |unknown.0:0|
 :skolemid |2067|
 :pattern ( ($IsAlloc f@@51 (Tclass._System.___hFunc3 t0@@74 t1@@50 t2@@27 t3@@12) h@@43))
)))
(assert (forall ((f@@52 T@U) (t0@@75 T@U) (t1@@51 T@U) (t2@@28 T@U) (t3@@13 T@U) (h@@44 T@U) ) (!  (=> (and (and (and (and (and (and (= (type f@@52) HandleTypeType) (= (type t0@@75) TyType)) (= (type t1@@51) TyType)) (= (type t2@@28) TyType)) (= (type t3@@13) TyType)) (= (type h@@44) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@44) ($IsAlloc f@@52 (Tclass._System.___hFunc3 t0@@75 t1@@51 t2@@28 t3@@13) h@@44))) (forall ((bx0@@40 T@U) (bx1@@26 T@U) (bx2@@12 T@U) ) (!  (=> (and (and (= (type bx0@@40) BoxType) (= (type bx1@@26) BoxType)) (= (type bx2@@12) BoxType)) (=> (and (and (and ($IsAllocBox bx0@@40 t0@@75 h@@44) ($IsAllocBox bx1@@26 t1@@51 h@@44)) ($IsAllocBox bx2@@12 t2@@28 h@@44)) (Requires3 t0@@75 t1@@51 t2@@28 t3@@13 h@@44 f@@52 bx0@@40 bx1@@26 bx2@@12)) ($IsAllocBox (Apply3 t0@@75 t1@@51 t2@@28 t3@@13 h@@44 f@@52 bx0@@40 bx1@@26 bx2@@12) t3@@13 h@@44)))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( (Apply3 t0@@75 t1@@51 t2@@28 t3@@13 h@@44 f@@52 bx0@@40 bx1@@26 bx2@@12))
)))
 :qid |unknown.0:0|
 :skolemid |2069|
 :pattern ( ($IsAlloc f@@52 (Tclass._System.___hFunc3 t0@@75 t1@@51 t2@@28 t3@@13) h@@44))
)))
(assert (forall ((arg0@@183 T@U) (arg1@@92 T@U) (arg2@@44 T@U) (arg3@@23 T@U) ) (! (= (type (Tclass._System.___hPartialFunc3 arg0@@183 arg1@@92 arg2@@44 arg3@@23)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc3|
 :pattern ( (Tclass._System.___hPartialFunc3 arg0@@183 arg1@@92 arg2@@44 arg3@@23))
)))
(assert (forall ((|#$T0@@40| T@U) (|#$T1@@24| T@U) (|#$T2@@5| T@U) (|#$R@@53| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@40|) TyType) (= (type |#$T1@@24|) TyType)) (= (type |#$T2@@5|) TyType)) (= (type |#$R@@53|) TyType)) (and (= (Tag (Tclass._System.___hPartialFunc3 |#$T0@@40| |#$T1@@24| |#$T2@@5| |#$R@@53|)) Tagclass._System.___hPartialFunc3) (= (TagFamily (Tclass._System.___hPartialFunc3 |#$T0@@40| |#$T1@@24| |#$T2@@5| |#$R@@53|)) |tytagFamily$_#PartialFunc3|)))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@40| |#$T1@@24| |#$T2@@5| |#$R@@53|))
)))
(assert (forall ((arg0@@184 T@U) ) (! (= (type (Tclass._System.___hPartialFunc3_0 arg0@@184)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc3_0|
 :pattern ( (Tclass._System.___hPartialFunc3_0 arg0@@184))
)))
(assert (forall ((|#$T0@@41| T@U) (|#$T1@@25| T@U) (|#$T2@@6| T@U) (|#$R@@54| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@41|) TyType) (= (type |#$T1@@25|) TyType)) (= (type |#$T2@@6|) TyType)) (= (type |#$R@@54|) TyType)) (= (Tclass._System.___hPartialFunc3_0 (Tclass._System.___hPartialFunc3 |#$T0@@41| |#$T1@@25| |#$T2@@6| |#$R@@54|)) |#$T0@@41|))
 :qid |unknown.0:0|
 :skolemid |2071|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@41| |#$T1@@25| |#$T2@@6| |#$R@@54|))
)))
(assert (forall ((arg0@@185 T@U) ) (! (= (type (Tclass._System.___hPartialFunc3_1 arg0@@185)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc3_1|
 :pattern ( (Tclass._System.___hPartialFunc3_1 arg0@@185))
)))
(assert (forall ((|#$T0@@42| T@U) (|#$T1@@26| T@U) (|#$T2@@7| T@U) (|#$R@@55| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@42|) TyType) (= (type |#$T1@@26|) TyType)) (= (type |#$T2@@7|) TyType)) (= (type |#$R@@55|) TyType)) (= (Tclass._System.___hPartialFunc3_1 (Tclass._System.___hPartialFunc3 |#$T0@@42| |#$T1@@26| |#$T2@@7| |#$R@@55|)) |#$T1@@26|))
 :qid |unknown.0:0|
 :skolemid |2072|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@42| |#$T1@@26| |#$T2@@7| |#$R@@55|))
)))
(assert (forall ((arg0@@186 T@U) ) (! (= (type (Tclass._System.___hPartialFunc3_2 arg0@@186)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc3_2|
 :pattern ( (Tclass._System.___hPartialFunc3_2 arg0@@186))
)))
(assert (forall ((|#$T0@@43| T@U) (|#$T1@@27| T@U) (|#$T2@@8| T@U) (|#$R@@56| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@43|) TyType) (= (type |#$T1@@27|) TyType)) (= (type |#$T2@@8|) TyType)) (= (type |#$R@@56|) TyType)) (= (Tclass._System.___hPartialFunc3_2 (Tclass._System.___hPartialFunc3 |#$T0@@43| |#$T1@@27| |#$T2@@8| |#$R@@56|)) |#$T2@@8|))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@43| |#$T1@@27| |#$T2@@8| |#$R@@56|))
)))
(assert (forall ((arg0@@187 T@U) ) (! (= (type (Tclass._System.___hPartialFunc3_3 arg0@@187)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc3_3|
 :pattern ( (Tclass._System.___hPartialFunc3_3 arg0@@187))
)))
(assert (forall ((|#$T0@@44| T@U) (|#$T1@@28| T@U) (|#$T2@@9| T@U) (|#$R@@57| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@44|) TyType) (= (type |#$T1@@28|) TyType)) (= (type |#$T2@@9|) TyType)) (= (type |#$R@@57|) TyType)) (= (Tclass._System.___hPartialFunc3_3 (Tclass._System.___hPartialFunc3 |#$T0@@44| |#$T1@@28| |#$T2@@9| |#$R@@57|)) |#$R@@57|))
 :qid |unknown.0:0|
 :skolemid |2074|
 :pattern ( (Tclass._System.___hPartialFunc3 |#$T0@@44| |#$T1@@28| |#$T2@@9| |#$R@@57|))
)))
(assert (forall ((|#$T0@@45| T@U) (|#$T1@@29| T@U) (|#$T2@@10| T@U) (|#$R@@58| T@U) (bx@@56 T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@45|) TyType) (= (type |#$T1@@29|) TyType)) (= (type |#$T2@@10|) TyType)) (= (type |#$R@@58|) TyType)) (= (type bx@@56) BoxType)) ($IsBox bx@@56 (Tclass._System.___hPartialFunc3 |#$T0@@45| |#$T1@@29| |#$T2@@10| |#$R@@58|))) (and (= ($Box ($Unbox HandleTypeType bx@@56)) bx@@56) ($Is ($Unbox HandleTypeType bx@@56) (Tclass._System.___hPartialFunc3 |#$T0@@45| |#$T1@@29| |#$T2@@10| |#$R@@58|))))
 :qid |unknown.0:0|
 :skolemid |2075|
 :pattern ( ($IsBox bx@@56 (Tclass._System.___hPartialFunc3 |#$T0@@45| |#$T1@@29| |#$T2@@10| |#$R@@58|)))
)))
(assert (forall ((|#$T0@@46| T@U) (|#$T1@@30| T@U) (|#$T2@@11| T@U) (|#$R@@59| T@U) (|f#0@@11| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@46|) TyType) (= (type |#$T1@@30|) TyType)) (= (type |#$T2@@11|) TyType)) (= (type |#$R@@59|) TyType)) (= (type |f#0@@11|) HandleTypeType)) (= ($Is |f#0@@11| (Tclass._System.___hPartialFunc3 |#$T0@@46| |#$T1@@30| |#$T2@@11| |#$R@@59|))  (and ($Is |f#0@@11| (Tclass._System.___hFunc3 |#$T0@@46| |#$T1@@30| |#$T2@@11| |#$R@@59|)) (forall ((|x0#0@@3| T@U) (|x1#0@@1| T@U) (|x2#0| T@U) ) (!  (=> (and (and (and (= (type |x0#0@@3|) BoxType) (= (type |x1#0@@1|) BoxType)) (= (type |x2#0|) BoxType)) (and (and ($IsBox |x0#0@@3| |#$T0@@46|) ($IsBox |x1#0@@1| |#$T1@@30|)) ($IsBox |x2#0| |#$T2@@11|))) (|Set#Equal| (Reads3 |#$T0@@46| |#$T1@@30| |#$T2@@11| |#$R@@59| $OneHeap |f#0@@11| |x0#0@@3| |x1#0@@1| |x2#0|) (|Set#Empty| BoxType)))
 :qid |unknown.0:0|
 :skolemid |2076|
 :no-pattern (type |x0#0@@3|)
 :no-pattern (type |x1#0@@1|)
 :no-pattern (type |x2#0|)
 :no-pattern (U_2_int |x0#0@@3|)
 :no-pattern (U_2_bool |x0#0@@3|)
 :no-pattern (U_2_int |x1#0@@1|)
 :no-pattern (U_2_bool |x1#0@@1|)
 :no-pattern (U_2_int |x2#0|)
 :no-pattern (U_2_bool |x2#0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2077|
 :pattern ( ($Is |f#0@@11| (Tclass._System.___hPartialFunc3 |#$T0@@46| |#$T1@@30| |#$T2@@11| |#$R@@59|)))
)))
(assert (forall ((|#$T0@@47| T@U) (|#$T1@@31| T@U) (|#$T2@@12| T@U) (|#$R@@60| T@U) (|f#0@@12| T@U) ($h@@14 T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@47|) TyType) (= (type |#$T1@@31|) TyType)) (= (type |#$T2@@12|) TyType)) (= (type |#$R@@60|) TyType)) (= (type |f#0@@12|) HandleTypeType)) (= (type $h@@14) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@12| (Tclass._System.___hPartialFunc3 |#$T0@@47| |#$T1@@31| |#$T2@@12| |#$R@@60|) $h@@14) ($IsAlloc |f#0@@12| (Tclass._System.___hFunc3 |#$T0@@47| |#$T1@@31| |#$T2@@12| |#$R@@60|) $h@@14)))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($IsAlloc |f#0@@12| (Tclass._System.___hPartialFunc3 |#$T0@@47| |#$T1@@31| |#$T2@@12| |#$R@@60|) $h@@14))
)))
(assert (forall ((arg0@@188 T@U) (arg1@@93 T@U) (arg2@@45 T@U) (arg3@@24 T@U) ) (! (= (type (Tclass._System.___hTotalFunc3 arg0@@188 arg1@@93 arg2@@45 arg3@@24)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc3|
 :pattern ( (Tclass._System.___hTotalFunc3 arg0@@188 arg1@@93 arg2@@45 arg3@@24))
)))
(assert (forall ((|#$T0@@48| T@U) (|#$T1@@32| T@U) (|#$T2@@13| T@U) (|#$R@@61| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@48|) TyType) (= (type |#$T1@@32|) TyType)) (= (type |#$T2@@13|) TyType)) (= (type |#$R@@61|) TyType)) (and (= (Tag (Tclass._System.___hTotalFunc3 |#$T0@@48| |#$T1@@32| |#$T2@@13| |#$R@@61|)) Tagclass._System.___hTotalFunc3) (= (TagFamily (Tclass._System.___hTotalFunc3 |#$T0@@48| |#$T1@@32| |#$T2@@13| |#$R@@61|)) |tytagFamily$_#TotalFunc3|)))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@48| |#$T1@@32| |#$T2@@13| |#$R@@61|))
)))
(assert (forall ((arg0@@189 T@U) ) (! (= (type (Tclass._System.___hTotalFunc3_0 arg0@@189)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc3_0|
 :pattern ( (Tclass._System.___hTotalFunc3_0 arg0@@189))
)))
(assert (forall ((|#$T0@@49| T@U) (|#$T1@@33| T@U) (|#$T2@@14| T@U) (|#$R@@62| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@49|) TyType) (= (type |#$T1@@33|) TyType)) (= (type |#$T2@@14|) TyType)) (= (type |#$R@@62|) TyType)) (= (Tclass._System.___hTotalFunc3_0 (Tclass._System.___hTotalFunc3 |#$T0@@49| |#$T1@@33| |#$T2@@14| |#$R@@62|)) |#$T0@@49|))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@49| |#$T1@@33| |#$T2@@14| |#$R@@62|))
)))
(assert (forall ((arg0@@190 T@U) ) (! (= (type (Tclass._System.___hTotalFunc3_1 arg0@@190)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc3_1|
 :pattern ( (Tclass._System.___hTotalFunc3_1 arg0@@190))
)))
(assert (forall ((|#$T0@@50| T@U) (|#$T1@@34| T@U) (|#$T2@@15| T@U) (|#$R@@63| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@50|) TyType) (= (type |#$T1@@34|) TyType)) (= (type |#$T2@@15|) TyType)) (= (type |#$R@@63|) TyType)) (= (Tclass._System.___hTotalFunc3_1 (Tclass._System.___hTotalFunc3 |#$T0@@50| |#$T1@@34| |#$T2@@15| |#$R@@63|)) |#$T1@@34|))
 :qid |unknown.0:0|
 :skolemid |2081|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@50| |#$T1@@34| |#$T2@@15| |#$R@@63|))
)))
(assert (forall ((arg0@@191 T@U) ) (! (= (type (Tclass._System.___hTotalFunc3_2 arg0@@191)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc3_2|
 :pattern ( (Tclass._System.___hTotalFunc3_2 arg0@@191))
)))
(assert (forall ((|#$T0@@51| T@U) (|#$T1@@35| T@U) (|#$T2@@16| T@U) (|#$R@@64| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@51|) TyType) (= (type |#$T1@@35|) TyType)) (= (type |#$T2@@16|) TyType)) (= (type |#$R@@64|) TyType)) (= (Tclass._System.___hTotalFunc3_2 (Tclass._System.___hTotalFunc3 |#$T0@@51| |#$T1@@35| |#$T2@@16| |#$R@@64|)) |#$T2@@16|))
 :qid |unknown.0:0|
 :skolemid |2082|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@51| |#$T1@@35| |#$T2@@16| |#$R@@64|))
)))
(assert (forall ((arg0@@192 T@U) ) (! (= (type (Tclass._System.___hTotalFunc3_3 arg0@@192)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc3_3|
 :pattern ( (Tclass._System.___hTotalFunc3_3 arg0@@192))
)))
(assert (forall ((|#$T0@@52| T@U) (|#$T1@@36| T@U) (|#$T2@@17| T@U) (|#$R@@65| T@U) ) (!  (=> (and (and (and (= (type |#$T0@@52|) TyType) (= (type |#$T1@@36|) TyType)) (= (type |#$T2@@17|) TyType)) (= (type |#$R@@65|) TyType)) (= (Tclass._System.___hTotalFunc3_3 (Tclass._System.___hTotalFunc3 |#$T0@@52| |#$T1@@36| |#$T2@@17| |#$R@@65|)) |#$R@@65|))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( (Tclass._System.___hTotalFunc3 |#$T0@@52| |#$T1@@36| |#$T2@@17| |#$R@@65|))
)))
(assert (forall ((|#$T0@@53| T@U) (|#$T1@@37| T@U) (|#$T2@@18| T@U) (|#$R@@66| T@U) (bx@@57 T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@53|) TyType) (= (type |#$T1@@37|) TyType)) (= (type |#$T2@@18|) TyType)) (= (type |#$R@@66|) TyType)) (= (type bx@@57) BoxType)) ($IsBox bx@@57 (Tclass._System.___hTotalFunc3 |#$T0@@53| |#$T1@@37| |#$T2@@18| |#$R@@66|))) (and (= ($Box ($Unbox HandleTypeType bx@@57)) bx@@57) ($Is ($Unbox HandleTypeType bx@@57) (Tclass._System.___hTotalFunc3 |#$T0@@53| |#$T1@@37| |#$T2@@18| |#$R@@66|))))
 :qid |unknown.0:0|
 :skolemid |2084|
 :pattern ( ($IsBox bx@@57 (Tclass._System.___hTotalFunc3 |#$T0@@53| |#$T1@@37| |#$T2@@18| |#$R@@66|)))
)))
(assert (forall ((|#$T0@@54| T@U) (|#$T1@@38| T@U) (|#$T2@@19| T@U) (|#$R@@67| T@U) (|f#0@@13| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@54|) TyType) (= (type |#$T1@@38|) TyType)) (= (type |#$T2@@19|) TyType)) (= (type |#$R@@67|) TyType)) (= (type |f#0@@13|) HandleTypeType)) (= ($Is |f#0@@13| (Tclass._System.___hTotalFunc3 |#$T0@@54| |#$T1@@38| |#$T2@@19| |#$R@@67|))  (and ($Is |f#0@@13| (Tclass._System.___hPartialFunc3 |#$T0@@54| |#$T1@@38| |#$T2@@19| |#$R@@67|)) (forall ((|x0#0@@4| T@U) (|x1#0@@2| T@U) (|x2#0@@0| T@U) ) (!  (=> (and (and (and (= (type |x0#0@@4|) BoxType) (= (type |x1#0@@2|) BoxType)) (= (type |x2#0@@0|) BoxType)) (and (and ($IsBox |x0#0@@4| |#$T0@@54|) ($IsBox |x1#0@@2| |#$T1@@38|)) ($IsBox |x2#0@@0| |#$T2@@19|))) (Requires3 |#$T0@@54| |#$T1@@38| |#$T2@@19| |#$R@@67| $OneHeap |f#0@@13| |x0#0@@4| |x1#0@@2| |x2#0@@0|))
 :qid |unknown.0:0|
 :skolemid |2085|
 :no-pattern (type |x0#0@@4|)
 :no-pattern (type |x1#0@@2|)
 :no-pattern (type |x2#0@@0|)
 :no-pattern (U_2_int |x0#0@@4|)
 :no-pattern (U_2_bool |x0#0@@4|)
 :no-pattern (U_2_int |x1#0@@2|)
 :no-pattern (U_2_bool |x1#0@@2|)
 :no-pattern (U_2_int |x2#0@@0|)
 :no-pattern (U_2_bool |x2#0@@0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2086|
 :pattern ( ($Is |f#0@@13| (Tclass._System.___hTotalFunc3 |#$T0@@54| |#$T1@@38| |#$T2@@19| |#$R@@67|)))
)))
(assert (forall ((|#$T0@@55| T@U) (|#$T1@@39| T@U) (|#$T2@@20| T@U) (|#$R@@68| T@U) (|f#0@@14| T@U) ($h@@15 T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@55|) TyType) (= (type |#$T1@@39|) TyType)) (= (type |#$T2@@20|) TyType)) (= (type |#$R@@68|) TyType)) (= (type |f#0@@14|) HandleTypeType)) (= (type $h@@15) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@14| (Tclass._System.___hTotalFunc3 |#$T0@@55| |#$T1@@39| |#$T2@@20| |#$R@@68|) $h@@15) ($IsAlloc |f#0@@14| (Tclass._System.___hPartialFunc3 |#$T0@@55| |#$T1@@39| |#$T2@@20| |#$R@@68|) $h@@15)))
 :qid |unknown.0:0|
 :skolemid |2087|
 :pattern ( ($IsAlloc |f#0@@14| (Tclass._System.___hTotalFunc3 |#$T0@@55| |#$T1@@39| |#$T2@@20| |#$R@@68|) $h@@15))
)))
(assert (forall ((arg0@@193 T@U) (arg1@@94 T@U) (arg2@@46 T@U) (arg3@@25 T@U) (arg4@@14 T@U) ) (! (= (type (Tclass._System.___hFunc4 arg0@@193 arg1@@94 arg2@@46 arg3@@25 arg4@@14)) TyType)
 :qid |funType:Tclass._System.___hFunc4|
 :pattern ( (Tclass._System.___hFunc4 arg0@@193 arg1@@94 arg2@@46 arg3@@25 arg4@@14))
)))
(assert (forall ((|#$T0@@56| T@U) (|#$T1@@40| T@U) (|#$T2@@21| T@U) (|#$T3| T@U) (|#$R@@69| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@56|) TyType) (= (type |#$T1@@40|) TyType)) (= (type |#$T2@@21|) TyType)) (= (type |#$T3|) TyType)) (= (type |#$R@@69|) TyType)) (and (= (Tag (Tclass._System.___hFunc4 |#$T0@@56| |#$T1@@40| |#$T2@@21| |#$T3| |#$R@@69|)) Tagclass._System.___hFunc4) (= (TagFamily (Tclass._System.___hFunc4 |#$T0@@56| |#$T1@@40| |#$T2@@21| |#$T3| |#$R@@69|)) |tytagFamily$_#Func4|)))
 :qid |unknown.0:0|
 :skolemid |2088|
 :pattern ( (Tclass._System.___hFunc4 |#$T0@@56| |#$T1@@40| |#$T2@@21| |#$T3| |#$R@@69|))
)))
(assert (forall ((arg0@@194 T@U) ) (! (= (type (Tclass._System.___hFunc4_0 arg0@@194)) TyType)
 :qid |funType:Tclass._System.___hFunc4_0|
 :pattern ( (Tclass._System.___hFunc4_0 arg0@@194))
)))
(assert (forall ((|#$T0@@57| T@U) (|#$T1@@41| T@U) (|#$T2@@22| T@U) (|#$T3@@0| T@U) (|#$R@@70| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@57|) TyType) (= (type |#$T1@@41|) TyType)) (= (type |#$T2@@22|) TyType)) (= (type |#$T3@@0|) TyType)) (= (type |#$R@@70|) TyType)) (= (Tclass._System.___hFunc4_0 (Tclass._System.___hFunc4 |#$T0@@57| |#$T1@@41| |#$T2@@22| |#$T3@@0| |#$R@@70|)) |#$T0@@57|))
 :qid |unknown.0:0|
 :skolemid |2089|
 :pattern ( (Tclass._System.___hFunc4 |#$T0@@57| |#$T1@@41| |#$T2@@22| |#$T3@@0| |#$R@@70|))
)))
(assert (forall ((arg0@@195 T@U) ) (! (= (type (Tclass._System.___hFunc4_1 arg0@@195)) TyType)
 :qid |funType:Tclass._System.___hFunc4_1|
 :pattern ( (Tclass._System.___hFunc4_1 arg0@@195))
)))
(assert (forall ((|#$T0@@58| T@U) (|#$T1@@42| T@U) (|#$T2@@23| T@U) (|#$T3@@1| T@U) (|#$R@@71| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@58|) TyType) (= (type |#$T1@@42|) TyType)) (= (type |#$T2@@23|) TyType)) (= (type |#$T3@@1|) TyType)) (= (type |#$R@@71|) TyType)) (= (Tclass._System.___hFunc4_1 (Tclass._System.___hFunc4 |#$T0@@58| |#$T1@@42| |#$T2@@23| |#$T3@@1| |#$R@@71|)) |#$T1@@42|))
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( (Tclass._System.___hFunc4 |#$T0@@58| |#$T1@@42| |#$T2@@23| |#$T3@@1| |#$R@@71|))
)))
(assert (forall ((arg0@@196 T@U) ) (! (= (type (Tclass._System.___hFunc4_2 arg0@@196)) TyType)
 :qid |funType:Tclass._System.___hFunc4_2|
 :pattern ( (Tclass._System.___hFunc4_2 arg0@@196))
)))
(assert (forall ((|#$T0@@59| T@U) (|#$T1@@43| T@U) (|#$T2@@24| T@U) (|#$T3@@2| T@U) (|#$R@@72| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@59|) TyType) (= (type |#$T1@@43|) TyType)) (= (type |#$T2@@24|) TyType)) (= (type |#$T3@@2|) TyType)) (= (type |#$R@@72|) TyType)) (= (Tclass._System.___hFunc4_2 (Tclass._System.___hFunc4 |#$T0@@59| |#$T1@@43| |#$T2@@24| |#$T3@@2| |#$R@@72|)) |#$T2@@24|))
 :qid |unknown.0:0|
 :skolemid |2091|
 :pattern ( (Tclass._System.___hFunc4 |#$T0@@59| |#$T1@@43| |#$T2@@24| |#$T3@@2| |#$R@@72|))
)))
(assert (forall ((arg0@@197 T@U) ) (! (= (type (Tclass._System.___hFunc4_3 arg0@@197)) TyType)
 :qid |funType:Tclass._System.___hFunc4_3|
 :pattern ( (Tclass._System.___hFunc4_3 arg0@@197))
)))
(assert (forall ((|#$T0@@60| T@U) (|#$T1@@44| T@U) (|#$T2@@25| T@U) (|#$T3@@3| T@U) (|#$R@@73| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@60|) TyType) (= (type |#$T1@@44|) TyType)) (= (type |#$T2@@25|) TyType)) (= (type |#$T3@@3|) TyType)) (= (type |#$R@@73|) TyType)) (= (Tclass._System.___hFunc4_3 (Tclass._System.___hFunc4 |#$T0@@60| |#$T1@@44| |#$T2@@25| |#$T3@@3| |#$R@@73|)) |#$T3@@3|))
 :qid |unknown.0:0|
 :skolemid |2092|
 :pattern ( (Tclass._System.___hFunc4 |#$T0@@60| |#$T1@@44| |#$T2@@25| |#$T3@@3| |#$R@@73|))
)))
(assert (forall ((arg0@@198 T@U) ) (! (= (type (Tclass._System.___hFunc4_4 arg0@@198)) TyType)
 :qid |funType:Tclass._System.___hFunc4_4|
 :pattern ( (Tclass._System.___hFunc4_4 arg0@@198))
)))
(assert (forall ((|#$T0@@61| T@U) (|#$T1@@45| T@U) (|#$T2@@26| T@U) (|#$T3@@4| T@U) (|#$R@@74| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@61|) TyType) (= (type |#$T1@@45|) TyType)) (= (type |#$T2@@26|) TyType)) (= (type |#$T3@@4|) TyType)) (= (type |#$R@@74|) TyType)) (= (Tclass._System.___hFunc4_4 (Tclass._System.___hFunc4 |#$T0@@61| |#$T1@@45| |#$T2@@26| |#$T3@@4| |#$R@@74|)) |#$R@@74|))
 :qid |unknown.0:0|
 :skolemid |2093|
 :pattern ( (Tclass._System.___hFunc4 |#$T0@@61| |#$T1@@45| |#$T2@@26| |#$T3@@4| |#$R@@74|))
)))
(assert (forall ((|#$T0@@62| T@U) (|#$T1@@46| T@U) (|#$T2@@27| T@U) (|#$T3@@5| T@U) (|#$R@@75| T@U) (bx@@58 T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@62|) TyType) (= (type |#$T1@@46|) TyType)) (= (type |#$T2@@27|) TyType)) (= (type |#$T3@@5|) TyType)) (= (type |#$R@@75|) TyType)) (= (type bx@@58) BoxType)) ($IsBox bx@@58 (Tclass._System.___hFunc4 |#$T0@@62| |#$T1@@46| |#$T2@@27| |#$T3@@5| |#$R@@75|))) (and (= ($Box ($Unbox HandleTypeType bx@@58)) bx@@58) ($Is ($Unbox HandleTypeType bx@@58) (Tclass._System.___hFunc4 |#$T0@@62| |#$T1@@46| |#$T2@@27| |#$T3@@5| |#$R@@75|))))
 :qid |unknown.0:0|
 :skolemid |2094|
 :pattern ( ($IsBox bx@@58 (Tclass._System.___hFunc4 |#$T0@@62| |#$T1@@46| |#$T2@@27| |#$T3@@5| |#$R@@75|)))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@199 T@T) (arg1@@95 T@T) (arg2@@47 T@T) (arg3@@26 T@T) (arg4@@15 T@T) (arg5@@4 T@T) ) (! (= (Ctor (MapType5Type arg0@@199 arg1@@95 arg2@@47 arg3@@26 arg4@@15 arg5@@4)) 27)
 :qid |ctor:MapType5Type|
)) (forall ((arg0@@200 T@T) (arg1@@96 T@T) (arg2@@48 T@T) (arg3@@27 T@T) (arg4@@16 T@T) (arg5@@5 T@T) ) (! (= (MapType5TypeInv0 (MapType5Type arg0@@200 arg1@@96 arg2@@48 arg3@@27 arg4@@16 arg5@@5)) arg0@@200)
 :qid |typeInv:MapType5TypeInv0|
 :pattern ( (MapType5Type arg0@@200 arg1@@96 arg2@@48 arg3@@27 arg4@@16 arg5@@5))
))) (forall ((arg0@@201 T@T) (arg1@@97 T@T) (arg2@@49 T@T) (arg3@@28 T@T) (arg4@@17 T@T) (arg5@@6 T@T) ) (! (= (MapType5TypeInv1 (MapType5Type arg0@@201 arg1@@97 arg2@@49 arg3@@28 arg4@@17 arg5@@6)) arg1@@97)
 :qid |typeInv:MapType5TypeInv1|
 :pattern ( (MapType5Type arg0@@201 arg1@@97 arg2@@49 arg3@@28 arg4@@17 arg5@@6))
))) (forall ((arg0@@202 T@T) (arg1@@98 T@T) (arg2@@50 T@T) (arg3@@29 T@T) (arg4@@18 T@T) (arg5@@7 T@T) ) (! (= (MapType5TypeInv2 (MapType5Type arg0@@202 arg1@@98 arg2@@50 arg3@@29 arg4@@18 arg5@@7)) arg2@@50)
 :qid |typeInv:MapType5TypeInv2|
 :pattern ( (MapType5Type arg0@@202 arg1@@98 arg2@@50 arg3@@29 arg4@@18 arg5@@7))
))) (forall ((arg0@@203 T@T) (arg1@@99 T@T) (arg2@@51 T@T) (arg3@@30 T@T) (arg4@@19 T@T) (arg5@@8 T@T) ) (! (= (MapType5TypeInv3 (MapType5Type arg0@@203 arg1@@99 arg2@@51 arg3@@30 arg4@@19 arg5@@8)) arg3@@30)
 :qid |typeInv:MapType5TypeInv3|
 :pattern ( (MapType5Type arg0@@203 arg1@@99 arg2@@51 arg3@@30 arg4@@19 arg5@@8))
))) (forall ((arg0@@204 T@T) (arg1@@100 T@T) (arg2@@52 T@T) (arg3@@31 T@T) (arg4@@20 T@T) (arg5@@9 T@T) ) (! (= (MapType5TypeInv4 (MapType5Type arg0@@204 arg1@@100 arg2@@52 arg3@@31 arg4@@20 arg5@@9)) arg4@@20)
 :qid |typeInv:MapType5TypeInv4|
 :pattern ( (MapType5Type arg0@@204 arg1@@100 arg2@@52 arg3@@31 arg4@@20 arg5@@9))
))) (forall ((arg0@@205 T@T) (arg1@@101 T@T) (arg2@@53 T@T) (arg3@@32 T@T) (arg4@@21 T@T) (arg5@@10 T@T) ) (! (= (MapType5TypeInv5 (MapType5Type arg0@@205 arg1@@101 arg2@@53 arg3@@32 arg4@@21 arg5@@10)) arg5@@10)
 :qid |typeInv:MapType5TypeInv5|
 :pattern ( (MapType5Type arg0@@205 arg1@@101 arg2@@53 arg3@@32 arg4@@21 arg5@@10))
))) (forall ((arg0@@206 T@U) (arg1@@102 T@U) (arg2@@54 T@U) (arg3@@33 T@U) (arg4@@22 T@U) (arg5@@11 T@U) ) (! (let ((aVar5 (MapType5TypeInv5 (type arg0@@206))))
(= (type (MapType5Select arg0@@206 arg1@@102 arg2@@54 arg3@@33 arg4@@22 arg5@@11)) aVar5))
 :qid |funType:MapType5Select|
 :pattern ( (MapType5Select arg0@@206 arg1@@102 arg2@@54 arg3@@33 arg4@@22 arg5@@11))
))) (forall ((arg0@@207 T@U) (arg1@@103 T@U) (arg2@@55 T@U) (arg3@@34 T@U) (arg4@@23 T@U) (arg5@@12 T@U) (arg6@@3 T@U) ) (! (let ((aVar5@@0 (type arg6@@3)))
(let ((aVar4@@2 (type arg5@@12)))
(let ((aVar3@@3 (type arg4@@23)))
(let ((aVar2@@4 (type arg3@@34)))
(let ((aVar1@@5 (type arg2@@55)))
(let ((aVar0@@3 (type arg1@@103)))
(= (type (MapType5Store arg0@@207 arg1@@103 arg2@@55 arg3@@34 arg4@@23 arg5@@12 arg6@@3)) (MapType5Type aVar0@@3 aVar1@@5 aVar2@@4 aVar3@@3 aVar4@@2 aVar5@@0))))))))
 :qid |funType:MapType5Store|
 :pattern ( (MapType5Store arg0@@207 arg1@@103 arg2@@55 arg3@@34 arg4@@23 arg5@@12 arg6@@3))
))) (forall ((m@@60 T@U) (x0@@20 T@U) (x1@@14 T@U) (x2@@10 T@U) (x3@@5 T@U) (x4 T@U) (val@@21 T@U) ) (! (let ((aVar5@@1 (MapType5TypeInv5 (type m@@60))))
 (=> (= (type val@@21) aVar5@@1) (= (MapType5Select (MapType5Store m@@60 x0@@20 x1@@14 x2@@10 x3@@5 x4 val@@21) x0@@20 x1@@14 x2@@10 x3@@5 x4) val@@21)))
 :qid |mapAx0:MapType5Select|
 :weight 0
))) (and (and (and (and (and (forall ((val@@22 T@U) (m@@61 T@U) (x0@@21 T@U) (x1@@15 T@U) (x2@@11 T@U) (x3@@6 T@U) (x4@@0 T@U) (y0@@15 T@U) (y1@@11 T@U) (y2@@8 T@U) (y3@@4 T@U) (y4 T@U) ) (!  (or (= x0@@21 y0@@15) (= (MapType5Select (MapType5Store m@@61 x0@@21 x1@@15 x2@@11 x3@@6 x4@@0 val@@22) y0@@15 y1@@11 y2@@8 y3@@4 y4) (MapType5Select m@@61 y0@@15 y1@@11 y2@@8 y3@@4 y4)))
 :qid |mapAx1:MapType5Select:0|
 :weight 0
)) (forall ((val@@23 T@U) (m@@62 T@U) (x0@@22 T@U) (x1@@16 T@U) (x2@@12 T@U) (x3@@7 T@U) (x4@@1 T@U) (y0@@16 T@U) (y1@@12 T@U) (y2@@9 T@U) (y3@@5 T@U) (y4@@0 T@U) ) (!  (or (= x1@@16 y1@@12) (= (MapType5Select (MapType5Store m@@62 x0@@22 x1@@16 x2@@12 x3@@7 x4@@1 val@@23) y0@@16 y1@@12 y2@@9 y3@@5 y4@@0) (MapType5Select m@@62 y0@@16 y1@@12 y2@@9 y3@@5 y4@@0)))
 :qid |mapAx1:MapType5Select:1|
 :weight 0
))) (forall ((val@@24 T@U) (m@@63 T@U) (x0@@23 T@U) (x1@@17 T@U) (x2@@13 T@U) (x3@@8 T@U) (x4@@2 T@U) (y0@@17 T@U) (y1@@13 T@U) (y2@@10 T@U) (y3@@6 T@U) (y4@@1 T@U) ) (!  (or (= x2@@13 y2@@10) (= (MapType5Select (MapType5Store m@@63 x0@@23 x1@@17 x2@@13 x3@@8 x4@@2 val@@24) y0@@17 y1@@13 y2@@10 y3@@6 y4@@1) (MapType5Select m@@63 y0@@17 y1@@13 y2@@10 y3@@6 y4@@1)))
 :qid |mapAx1:MapType5Select:2|
 :weight 0
))) (forall ((val@@25 T@U) (m@@64 T@U) (x0@@24 T@U) (x1@@18 T@U) (x2@@14 T@U) (x3@@9 T@U) (x4@@3 T@U) (y0@@18 T@U) (y1@@14 T@U) (y2@@11 T@U) (y3@@7 T@U) (y4@@2 T@U) ) (!  (or (= x3@@9 y3@@7) (= (MapType5Select (MapType5Store m@@64 x0@@24 x1@@18 x2@@14 x3@@9 x4@@3 val@@25) y0@@18 y1@@14 y2@@11 y3@@7 y4@@2) (MapType5Select m@@64 y0@@18 y1@@14 y2@@11 y3@@7 y4@@2)))
 :qid |mapAx1:MapType5Select:3|
 :weight 0
))) (forall ((val@@26 T@U) (m@@65 T@U) (x0@@25 T@U) (x1@@19 T@U) (x2@@15 T@U) (x3@@10 T@U) (x4@@4 T@U) (y0@@19 T@U) (y1@@15 T@U) (y2@@12 T@U) (y3@@8 T@U) (y4@@3 T@U) ) (!  (or (= x4@@4 y4@@3) (= (MapType5Select (MapType5Store m@@65 x0@@25 x1@@19 x2@@15 x3@@10 x4@@4 val@@26) y0@@19 y1@@15 y2@@12 y3@@8 y4@@3) (MapType5Select m@@65 y0@@19 y1@@15 y2@@12 y3@@8 y4@@3)))
 :qid |mapAx1:MapType5Select:4|
 :weight 0
))) (forall ((val@@27 T@U) (m@@66 T@U) (x0@@26 T@U) (x1@@20 T@U) (x2@@16 T@U) (x3@@11 T@U) (x4@@5 T@U) (y0@@20 T@U) (y1@@16 T@U) (y2@@13 T@U) (y3@@9 T@U) (y4@@4 T@U) ) (!  (or true (= (MapType5Select (MapType5Store m@@66 x0@@26 x1@@20 x2@@16 x3@@11 x4@@5 val@@27) y0@@20 y1@@16 y2@@13 y3@@9 y4@@4) (MapType5Select m@@66 y0@@20 y1@@16 y2@@13 y3@@9 y4@@4)))
 :qid |mapAx2:MapType5Select|
 :weight 0
)))) (forall ((arg0@@208 T@U) (arg1@@104 T@U) (arg2@@56 T@U) (arg3@@35 T@U) (arg4@@24 T@U) (arg5@@13 T@U) (arg6@@4 T@U) (arg7@@1 T@U) (arg8@@1 T@U) (arg9 T@U) (arg10 T@U) ) (! (= (type (Apply4 arg0@@208 arg1@@104 arg2@@56 arg3@@35 arg4@@24 arg5@@13 arg6@@4 arg7@@1 arg8@@1 arg9 arg10)) BoxType)
 :qid |funType:Apply4|
 :pattern ( (Apply4 arg0@@208 arg1@@104 arg2@@56 arg3@@35 arg4@@24 arg5@@13 arg6@@4 arg7@@1 arg8@@1 arg9 arg10))
))) (forall ((arg0@@209 T@U) (arg1@@105 T@U) (arg2@@57 T@U) ) (! (= (type (Handle4 arg0@@209 arg1@@105 arg2@@57)) HandleTypeType)
 :qid |funType:Handle4|
 :pattern ( (Handle4 arg0@@209 arg1@@105 arg2@@57))
))))
(assert (forall ((t0@@76 T@U) (t1@@52 T@U) (t2@@29 T@U) (t3@@14 T@U) (t4 T@U) (heap@@21 T@U) (h@@45 T@U) (r@@22 T@U) (rd@@11 T@U) (bx0@@41 T@U) (bx1@@27 T@U) (bx2@@13 T@U) (bx3 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@76) TyType) (= (type t1@@52) TyType)) (= (type t2@@29) TyType)) (= (type t3@@14) TyType)) (= (type t4) TyType)) (= (type heap@@21) (MapType0Type refType MapType1Type))) (= (type h@@45) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType))) (= (type r@@22) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType boolType))) (= (type rd@@11) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@41) BoxType)) (= (type bx1@@27) BoxType)) (= (type bx2@@13) BoxType)) (= (type bx3) BoxType)) (= (Apply4 t0@@76 t1@@52 t2@@29 t3@@14 t4 heap@@21 (Handle4 h@@45 r@@22 rd@@11) bx0@@41 bx1@@27 bx2@@13 bx3) (MapType5Select h@@45 heap@@21 bx0@@41 bx1@@27 bx2@@13 bx3)))
 :qid |unknown.0:0|
 :skolemid |2095|
 :pattern ( (Apply4 t0@@76 t1@@52 t2@@29 t3@@14 t4 heap@@21 (Handle4 h@@45 r@@22 rd@@11) bx0@@41 bx1@@27 bx2@@13 bx3))
)))
(assert (forall ((t0@@77 T@U) (t1@@53 T@U) (t2@@30 T@U) (t3@@15 T@U) (t4@@0 T@U) (heap@@22 T@U) (h@@46 T@U) (r@@23 T@U) (rd@@12 T@U) (bx0@@42 T@U) (bx1@@28 T@U) (bx2@@14 T@U) (bx3@@0 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@77) TyType) (= (type t1@@53) TyType)) (= (type t2@@30) TyType)) (= (type t3@@15) TyType)) (= (type t4@@0) TyType)) (= (type heap@@22) (MapType0Type refType MapType1Type))) (= (type h@@46) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType))) (= (type r@@23) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType boolType))) (= (type rd@@12) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@42) BoxType)) (= (type bx1@@28) BoxType)) (= (type bx2@@14) BoxType)) (= (type bx3@@0) BoxType)) (U_2_bool (MapType5Select r@@23 heap@@22 bx0@@42 bx1@@28 bx2@@14 bx3@@0))) (Requires4 t0@@77 t1@@53 t2@@30 t3@@15 t4@@0 heap@@22 (Handle4 h@@46 r@@23 rd@@12) bx0@@42 bx1@@28 bx2@@14 bx3@@0))
 :qid |unknown.0:0|
 :skolemid |2096|
 :pattern ( (Requires4 t0@@77 t1@@53 t2@@30 t3@@15 t4@@0 heap@@22 (Handle4 h@@46 r@@23 rd@@12) bx0@@42 bx1@@28 bx2@@14 bx3@@0))
)))
(assert (forall ((arg0@@210 T@U) (arg1@@106 T@U) (arg2@@58 T@U) (arg3@@36 T@U) (arg4@@25 T@U) (arg5@@14 T@U) (arg6@@5 T@U) (arg7@@2 T@U) (arg8@@2 T@U) (arg9@@0 T@U) (arg10@@0 T@U) ) (! (= (type (Reads4 arg0@@210 arg1@@106 arg2@@58 arg3@@36 arg4@@25 arg5@@14 arg6@@5 arg7@@2 arg8@@2 arg9@@0 arg10@@0)) (MapType0Type BoxType boolType))
 :qid |funType:Reads4|
 :pattern ( (Reads4 arg0@@210 arg1@@106 arg2@@58 arg3@@36 arg4@@25 arg5@@14 arg6@@5 arg7@@2 arg8@@2 arg9@@0 arg10@@0))
)))
(assert (forall ((t0@@78 T@U) (t1@@54 T@U) (t2@@31 T@U) (t3@@16 T@U) (t4@@1 T@U) (heap@@23 T@U) (h@@47 T@U) (r@@24 T@U) (rd@@13 T@U) (bx0@@43 T@U) (bx1@@29 T@U) (bx2@@15 T@U) (bx3@@1 T@U) (bx@@59 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@78) TyType) (= (type t1@@54) TyType)) (= (type t2@@31) TyType)) (= (type t3@@16) TyType)) (= (type t4@@1) TyType)) (= (type heap@@23) (MapType0Type refType MapType1Type))) (= (type h@@47) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType))) (= (type r@@24) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType boolType))) (= (type rd@@13) (MapType5Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@43) BoxType)) (= (type bx1@@29) BoxType)) (= (type bx2@@15) BoxType)) (= (type bx3@@1) BoxType)) (= (type bx@@59) BoxType)) (= (U_2_bool (MapType0Select (Reads4 t0@@78 t1@@54 t2@@31 t3@@16 t4@@1 heap@@23 (Handle4 h@@47 r@@24 rd@@13) bx0@@43 bx1@@29 bx2@@15 bx3@@1) bx@@59)) (U_2_bool (MapType0Select (MapType5Select rd@@13 heap@@23 bx0@@43 bx1@@29 bx2@@15 bx3@@1) bx@@59))))
 :qid |unknown.0:0|
 :skolemid |2097|
 :pattern ( (MapType0Select (Reads4 t0@@78 t1@@54 t2@@31 t3@@16 t4@@1 heap@@23 (Handle4 h@@47 r@@24 rd@@13) bx0@@43 bx1@@29 bx2@@15 bx3@@1) bx@@59))
)))
(assert (forall ((t0@@79 T@U) (t1@@55 T@U) (t2@@32 T@U) (t3@@17 T@U) (t4@@2 T@U) (h0@@24 T@U) (h1@@24 T@U) (f@@53 T@U) (bx0@@44 T@U) (bx1@@30 T@U) (bx2@@16 T@U) (bx3@@2 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@79) TyType) (= (type t1@@55) TyType)) (= (type t2@@32) TyType)) (= (type t3@@17) TyType)) (= (type t4@@2) TyType)) (= (type h0@@24) (MapType0Type refType MapType1Type))) (= (type h1@@24) (MapType0Type refType MapType1Type))) (= (type f@@53) HandleTypeType)) (= (type bx0@@44) BoxType)) (= (type bx1@@30) BoxType)) (= (type bx2@@16) BoxType)) (= (type bx3@@2) BoxType)) (and (and (and ($HeapSucc h0@@24 h1@@24) (and ($IsGoodHeap h0@@24) ($IsGoodHeap h1@@24))) (and (and (and (and ($IsBox bx0@@44 t0@@79) ($IsBox bx1@@30 t1@@55)) ($IsBox bx2@@16 t2@@32)) ($IsBox bx3@@2 t3@@17)) ($Is f@@53 (Tclass._System.___hFunc4 t0@@79 t1@@55 t2@@32 t3@@17 t4@@2)))) (forall ((o@@68 T@U) (fld@@23 T@U) ) (! (let ((a@@106 (FieldTypeInv0 (type fld@@23))))
 (=> (and (and (= (type o@@68) refType) (= (type fld@@23) (FieldType a@@106))) (and (not (= o@@68 null)) (U_2_bool (MapType0Select (Reads4 t0@@79 t1@@55 t2@@32 t3@@17 t4@@2 h0@@24 f@@53 bx0@@44 bx1@@30 bx2@@16 bx3@@2) ($Box o@@68))))) (= (MapType1Select (MapType0Select h0@@24 o@@68) fld@@23) (MapType1Select (MapType0Select h1@@24 o@@68) fld@@23))))
 :qid |unknown.0:0|
 :skolemid |2098|
 :no-pattern (type o@@68)
 :no-pattern (type fld@@23)
 :no-pattern (U_2_int o@@68)
 :no-pattern (U_2_bool o@@68)
 :no-pattern (U_2_int fld@@23)
 :no-pattern (U_2_bool fld@@23)
)))) (= (Reads4 t0@@79 t1@@55 t2@@32 t3@@17 t4@@2 h0@@24 f@@53 bx0@@44 bx1@@30 bx2@@16 bx3@@2) (Reads4 t0@@79 t1@@55 t2@@32 t3@@17 t4@@2 h1@@24 f@@53 bx0@@44 bx1@@30 bx2@@16 bx3@@2)))
 :qid |unknown.0:0|
 :skolemid |2099|
 :pattern ( ($HeapSucc h0@@24 h1@@24) (Reads4 t0@@79 t1@@55 t2@@32 t3@@17 t4@@2 h1@@24 f@@53 bx0@@44 bx1@@30 bx2@@16 bx3@@2))
)))
(assert (forall ((t0@@80 T@U) (t1@@56 T@U) (t2@@33 T@U) (t3@@18 T@U) (t4@@3 T@U) (h0@@25 T@U) (h1@@25 T@U) (f@@54 T@U) (bx0@@45 T@U) (bx1@@31 T@U) (bx2@@17 T@U) (bx3@@3 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@80) TyType) (= (type t1@@56) TyType)) (= (type t2@@33) TyType)) (= (type t3@@18) TyType)) (= (type t4@@3) TyType)) (= (type h0@@25) (MapType0Type refType MapType1Type))) (= (type h1@@25) (MapType0Type refType MapType1Type))) (= (type f@@54) HandleTypeType)) (= (type bx0@@45) BoxType)) (= (type bx1@@31) BoxType)) (= (type bx2@@17) BoxType)) (= (type bx3@@3) BoxType)) (and (and (and ($HeapSucc h0@@25 h1@@25) (and ($IsGoodHeap h0@@25) ($IsGoodHeap h1@@25))) (and (and (and (and ($IsBox bx0@@45 t0@@80) ($IsBox bx1@@31 t1@@56)) ($IsBox bx2@@17 t2@@33)) ($IsBox bx3@@3 t3@@18)) ($Is f@@54 (Tclass._System.___hFunc4 t0@@80 t1@@56 t2@@33 t3@@18 t4@@3)))) (forall ((o@@69 T@U) (fld@@24 T@U) ) (! (let ((a@@107 (FieldTypeInv0 (type fld@@24))))
 (=> (and (and (= (type o@@69) refType) (= (type fld@@24) (FieldType a@@107))) (and (not (= o@@69 null)) (U_2_bool (MapType0Select (Reads4 t0@@80 t1@@56 t2@@33 t3@@18 t4@@3 h1@@25 f@@54 bx0@@45 bx1@@31 bx2@@17 bx3@@3) ($Box o@@69))))) (= (MapType1Select (MapType0Select h0@@25 o@@69) fld@@24) (MapType1Select (MapType0Select h1@@25 o@@69) fld@@24))))
 :qid |unknown.0:0|
 :skolemid |2100|
 :no-pattern (type o@@69)
 :no-pattern (type fld@@24)
 :no-pattern (U_2_int o@@69)
 :no-pattern (U_2_bool o@@69)
 :no-pattern (U_2_int fld@@24)
 :no-pattern (U_2_bool fld@@24)
)))) (= (Reads4 t0@@80 t1@@56 t2@@33 t3@@18 t4@@3 h0@@25 f@@54 bx0@@45 bx1@@31 bx2@@17 bx3@@3) (Reads4 t0@@80 t1@@56 t2@@33 t3@@18 t4@@3 h1@@25 f@@54 bx0@@45 bx1@@31 bx2@@17 bx3@@3)))
 :qid |unknown.0:0|
 :skolemid |2101|
 :pattern ( ($HeapSucc h0@@25 h1@@25) (Reads4 t0@@80 t1@@56 t2@@33 t3@@18 t4@@3 h1@@25 f@@54 bx0@@45 bx1@@31 bx2@@17 bx3@@3))
)))
(assert (forall ((t0@@81 T@U) (t1@@57 T@U) (t2@@34 T@U) (t3@@19 T@U) (t4@@4 T@U) (h0@@26 T@U) (h1@@26 T@U) (f@@55 T@U) (bx0@@46 T@U) (bx1@@32 T@U) (bx2@@18 T@U) (bx3@@4 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@81) TyType) (= (type t1@@57) TyType)) (= (type t2@@34) TyType)) (= (type t3@@19) TyType)) (= (type t4@@4) TyType)) (= (type h0@@26) (MapType0Type refType MapType1Type))) (= (type h1@@26) (MapType0Type refType MapType1Type))) (= (type f@@55) HandleTypeType)) (= (type bx0@@46) BoxType)) (= (type bx1@@32) BoxType)) (= (type bx2@@18) BoxType)) (= (type bx3@@4) BoxType)) (and (and (and ($HeapSucc h0@@26 h1@@26) (and ($IsGoodHeap h0@@26) ($IsGoodHeap h1@@26))) (and (and (and (and ($IsBox bx0@@46 t0@@81) ($IsBox bx1@@32 t1@@57)) ($IsBox bx2@@18 t2@@34)) ($IsBox bx3@@4 t3@@19)) ($Is f@@55 (Tclass._System.___hFunc4 t0@@81 t1@@57 t2@@34 t3@@19 t4@@4)))) (forall ((o@@70 T@U) (fld@@25 T@U) ) (! (let ((a@@108 (FieldTypeInv0 (type fld@@25))))
 (=> (and (and (= (type o@@70) refType) (= (type fld@@25) (FieldType a@@108))) (and (not (= o@@70 null)) (U_2_bool (MapType0Select (Reads4 t0@@81 t1@@57 t2@@34 t3@@19 t4@@4 h0@@26 f@@55 bx0@@46 bx1@@32 bx2@@18 bx3@@4) ($Box o@@70))))) (= (MapType1Select (MapType0Select h0@@26 o@@70) fld@@25) (MapType1Select (MapType0Select h1@@26 o@@70) fld@@25))))
 :qid |unknown.0:0|
 :skolemid |2102|
 :no-pattern (type o@@70)
 :no-pattern (type fld@@25)
 :no-pattern (U_2_int o@@70)
 :no-pattern (U_2_bool o@@70)
 :no-pattern (U_2_int fld@@25)
 :no-pattern (U_2_bool fld@@25)
)))) (= (Requires4 t0@@81 t1@@57 t2@@34 t3@@19 t4@@4 h0@@26 f@@55 bx0@@46 bx1@@32 bx2@@18 bx3@@4) (Requires4 t0@@81 t1@@57 t2@@34 t3@@19 t4@@4 h1@@26 f@@55 bx0@@46 bx1@@32 bx2@@18 bx3@@4)))
 :qid |unknown.0:0|
 :skolemid |2103|
 :pattern ( ($HeapSucc h0@@26 h1@@26) (Requires4 t0@@81 t1@@57 t2@@34 t3@@19 t4@@4 h1@@26 f@@55 bx0@@46 bx1@@32 bx2@@18 bx3@@4))
)))
(assert (forall ((t0@@82 T@U) (t1@@58 T@U) (t2@@35 T@U) (t3@@20 T@U) (t4@@5 T@U) (h0@@27 T@U) (h1@@27 T@U) (f@@56 T@U) (bx0@@47 T@U) (bx1@@33 T@U) (bx2@@19 T@U) (bx3@@5 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@82) TyType) (= (type t1@@58) TyType)) (= (type t2@@35) TyType)) (= (type t3@@20) TyType)) (= (type t4@@5) TyType)) (= (type h0@@27) (MapType0Type refType MapType1Type))) (= (type h1@@27) (MapType0Type refType MapType1Type))) (= (type f@@56) HandleTypeType)) (= (type bx0@@47) BoxType)) (= (type bx1@@33) BoxType)) (= (type bx2@@19) BoxType)) (= (type bx3@@5) BoxType)) (and (and (and ($HeapSucc h0@@27 h1@@27) (and ($IsGoodHeap h0@@27) ($IsGoodHeap h1@@27))) (and (and (and (and ($IsBox bx0@@47 t0@@82) ($IsBox bx1@@33 t1@@58)) ($IsBox bx2@@19 t2@@35)) ($IsBox bx3@@5 t3@@20)) ($Is f@@56 (Tclass._System.___hFunc4 t0@@82 t1@@58 t2@@35 t3@@20 t4@@5)))) (forall ((o@@71 T@U) (fld@@26 T@U) ) (! (let ((a@@109 (FieldTypeInv0 (type fld@@26))))
 (=> (and (and (= (type o@@71) refType) (= (type fld@@26) (FieldType a@@109))) (and (not (= o@@71 null)) (U_2_bool (MapType0Select (Reads4 t0@@82 t1@@58 t2@@35 t3@@20 t4@@5 h1@@27 f@@56 bx0@@47 bx1@@33 bx2@@19 bx3@@5) ($Box o@@71))))) (= (MapType1Select (MapType0Select h0@@27 o@@71) fld@@26) (MapType1Select (MapType0Select h1@@27 o@@71) fld@@26))))
 :qid |unknown.0:0|
 :skolemid |2104|
 :no-pattern (type o@@71)
 :no-pattern (type fld@@26)
 :no-pattern (U_2_int o@@71)
 :no-pattern (U_2_bool o@@71)
 :no-pattern (U_2_int fld@@26)
 :no-pattern (U_2_bool fld@@26)
)))) (= (Requires4 t0@@82 t1@@58 t2@@35 t3@@20 t4@@5 h0@@27 f@@56 bx0@@47 bx1@@33 bx2@@19 bx3@@5) (Requires4 t0@@82 t1@@58 t2@@35 t3@@20 t4@@5 h1@@27 f@@56 bx0@@47 bx1@@33 bx2@@19 bx3@@5)))
 :qid |unknown.0:0|
 :skolemid |2105|
 :pattern ( ($HeapSucc h0@@27 h1@@27) (Requires4 t0@@82 t1@@58 t2@@35 t3@@20 t4@@5 h1@@27 f@@56 bx0@@47 bx1@@33 bx2@@19 bx3@@5))
)))
(assert (forall ((t0@@83 T@U) (t1@@59 T@U) (t2@@36 T@U) (t3@@21 T@U) (t4@@6 T@U) (h0@@28 T@U) (h1@@28 T@U) (f@@57 T@U) (bx0@@48 T@U) (bx1@@34 T@U) (bx2@@20 T@U) (bx3@@6 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@83) TyType) (= (type t1@@59) TyType)) (= (type t2@@36) TyType)) (= (type t3@@21) TyType)) (= (type t4@@6) TyType)) (= (type h0@@28) (MapType0Type refType MapType1Type))) (= (type h1@@28) (MapType0Type refType MapType1Type))) (= (type f@@57) HandleTypeType)) (= (type bx0@@48) BoxType)) (= (type bx1@@34) BoxType)) (= (type bx2@@20) BoxType)) (= (type bx3@@6) BoxType)) (and (and (and ($HeapSucc h0@@28 h1@@28) (and ($IsGoodHeap h0@@28) ($IsGoodHeap h1@@28))) (and (and (and (and ($IsBox bx0@@48 t0@@83) ($IsBox bx1@@34 t1@@59)) ($IsBox bx2@@20 t2@@36)) ($IsBox bx3@@6 t3@@21)) ($Is f@@57 (Tclass._System.___hFunc4 t0@@83 t1@@59 t2@@36 t3@@21 t4@@6)))) (forall ((o@@72 T@U) (fld@@27 T@U) ) (! (let ((a@@110 (FieldTypeInv0 (type fld@@27))))
 (=> (and (and (= (type o@@72) refType) (= (type fld@@27) (FieldType a@@110))) (and (not (= o@@72 null)) (U_2_bool (MapType0Select (Reads4 t0@@83 t1@@59 t2@@36 t3@@21 t4@@6 h0@@28 f@@57 bx0@@48 bx1@@34 bx2@@20 bx3@@6) ($Box o@@72))))) (= (MapType1Select (MapType0Select h0@@28 o@@72) fld@@27) (MapType1Select (MapType0Select h1@@28 o@@72) fld@@27))))
 :qid |unknown.0:0|
 :skolemid |2106|
 :no-pattern (type o@@72)
 :no-pattern (type fld@@27)
 :no-pattern (U_2_int o@@72)
 :no-pattern (U_2_bool o@@72)
 :no-pattern (U_2_int fld@@27)
 :no-pattern (U_2_bool fld@@27)
)))) (= (Apply4 t0@@83 t1@@59 t2@@36 t3@@21 t4@@6 h0@@28 f@@57 bx0@@48 bx1@@34 bx2@@20 bx3@@6) (Apply4 t0@@83 t1@@59 t2@@36 t3@@21 t4@@6 h1@@28 f@@57 bx0@@48 bx1@@34 bx2@@20 bx3@@6)))
 :qid |unknown.0:0|
 :skolemid |2107|
 :pattern ( ($HeapSucc h0@@28 h1@@28) (Apply4 t0@@83 t1@@59 t2@@36 t3@@21 t4@@6 h1@@28 f@@57 bx0@@48 bx1@@34 bx2@@20 bx3@@6))
)))
(assert (forall ((t0@@84 T@U) (t1@@60 T@U) (t2@@37 T@U) (t3@@22 T@U) (t4@@7 T@U) (h0@@29 T@U) (h1@@29 T@U) (f@@58 T@U) (bx0@@49 T@U) (bx1@@35 T@U) (bx2@@21 T@U) (bx3@@7 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@84) TyType) (= (type t1@@60) TyType)) (= (type t2@@37) TyType)) (= (type t3@@22) TyType)) (= (type t4@@7) TyType)) (= (type h0@@29) (MapType0Type refType MapType1Type))) (= (type h1@@29) (MapType0Type refType MapType1Type))) (= (type f@@58) HandleTypeType)) (= (type bx0@@49) BoxType)) (= (type bx1@@35) BoxType)) (= (type bx2@@21) BoxType)) (= (type bx3@@7) BoxType)) (and (and (and ($HeapSucc h0@@29 h1@@29) (and ($IsGoodHeap h0@@29) ($IsGoodHeap h1@@29))) (and (and (and (and ($IsBox bx0@@49 t0@@84) ($IsBox bx1@@35 t1@@60)) ($IsBox bx2@@21 t2@@37)) ($IsBox bx3@@7 t3@@22)) ($Is f@@58 (Tclass._System.___hFunc4 t0@@84 t1@@60 t2@@37 t3@@22 t4@@7)))) (forall ((o@@73 T@U) (fld@@28 T@U) ) (! (let ((a@@111 (FieldTypeInv0 (type fld@@28))))
 (=> (and (and (= (type o@@73) refType) (= (type fld@@28) (FieldType a@@111))) (and (not (= o@@73 null)) (U_2_bool (MapType0Select (Reads4 t0@@84 t1@@60 t2@@37 t3@@22 t4@@7 h1@@29 f@@58 bx0@@49 bx1@@35 bx2@@21 bx3@@7) ($Box o@@73))))) (= (MapType1Select (MapType0Select h0@@29 o@@73) fld@@28) (MapType1Select (MapType0Select h1@@29 o@@73) fld@@28))))
 :qid |unknown.0:0|
 :skolemid |2108|
 :no-pattern (type o@@73)
 :no-pattern (type fld@@28)
 :no-pattern (U_2_int o@@73)
 :no-pattern (U_2_bool o@@73)
 :no-pattern (U_2_int fld@@28)
 :no-pattern (U_2_bool fld@@28)
)))) (= (Apply4 t0@@84 t1@@60 t2@@37 t3@@22 t4@@7 h0@@29 f@@58 bx0@@49 bx1@@35 bx2@@21 bx3@@7) (Apply4 t0@@84 t1@@60 t2@@37 t3@@22 t4@@7 h1@@29 f@@58 bx0@@49 bx1@@35 bx2@@21 bx3@@7)))
 :qid |unknown.0:0|
 :skolemid |2109|
 :pattern ( ($HeapSucc h0@@29 h1@@29) (Apply4 t0@@84 t1@@60 t2@@37 t3@@22 t4@@7 h1@@29 f@@58 bx0@@49 bx1@@35 bx2@@21 bx3@@7))
)))
(assert (forall ((t0@@85 T@U) (t1@@61 T@U) (t2@@38 T@U) (t3@@23 T@U) (t4@@8 T@U) (heap@@24 T@U) (f@@59 T@U) (bx0@@50 T@U) (bx1@@36 T@U) (bx2@@22 T@U) (bx3@@8 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@85) TyType) (= (type t1@@61) TyType)) (= (type t2@@38) TyType)) (= (type t3@@23) TyType)) (= (type t4@@8) TyType)) (= (type heap@@24) (MapType0Type refType MapType1Type))) (= (type f@@59) HandleTypeType)) (= (type bx0@@50) BoxType)) (= (type bx1@@36) BoxType)) (= (type bx2@@22) BoxType)) (= (type bx3@@8) BoxType)) (and ($IsGoodHeap heap@@24) (and (and (and (and ($IsBox bx0@@50 t0@@85) ($IsBox bx1@@36 t1@@61)) ($IsBox bx2@@22 t2@@38)) ($IsBox bx3@@8 t3@@23)) ($Is f@@59 (Tclass._System.___hFunc4 t0@@85 t1@@61 t2@@38 t3@@23 t4@@8))))) (= (|Set#Equal| (Reads4 t0@@85 t1@@61 t2@@38 t3@@23 t4@@8 $OneHeap f@@59 bx0@@50 bx1@@36 bx2@@22 bx3@@8) (|Set#Empty| BoxType)) (|Set#Equal| (Reads4 t0@@85 t1@@61 t2@@38 t3@@23 t4@@8 heap@@24 f@@59 bx0@@50 bx1@@36 bx2@@22 bx3@@8) (|Set#Empty| BoxType))))
 :qid |unknown.0:0|
 :skolemid |2110|
 :pattern ( (Reads4 t0@@85 t1@@61 t2@@38 t3@@23 t4@@8 $OneHeap f@@59 bx0@@50 bx1@@36 bx2@@22 bx3@@8) ($IsGoodHeap heap@@24))
 :pattern ( (Reads4 t0@@85 t1@@61 t2@@38 t3@@23 t4@@8 heap@@24 f@@59 bx0@@50 bx1@@36 bx2@@22 bx3@@8))
)))
(assert (forall ((t0@@86 T@U) (t1@@62 T@U) (t2@@39 T@U) (t3@@24 T@U) (t4@@9 T@U) (heap@@25 T@U) (f@@60 T@U) (bx0@@51 T@U) (bx1@@37 T@U) (bx2@@23 T@U) (bx3@@9 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@86) TyType) (= (type t1@@62) TyType)) (= (type t2@@39) TyType)) (= (type t3@@24) TyType)) (= (type t4@@9) TyType)) (= (type heap@@25) (MapType0Type refType MapType1Type))) (= (type f@@60) HandleTypeType)) (= (type bx0@@51) BoxType)) (= (type bx1@@37) BoxType)) (= (type bx2@@23) BoxType)) (= (type bx3@@9) BoxType)) (and (and ($IsGoodHeap heap@@25) (and (and (and (and ($IsBox bx0@@51 t0@@86) ($IsBox bx1@@37 t1@@62)) ($IsBox bx2@@23 t2@@39)) ($IsBox bx3@@9 t3@@24)) ($Is f@@60 (Tclass._System.___hFunc4 t0@@86 t1@@62 t2@@39 t3@@24 t4@@9)))) (|Set#Equal| (Reads4 t0@@86 t1@@62 t2@@39 t3@@24 t4@@9 $OneHeap f@@60 bx0@@51 bx1@@37 bx2@@23 bx3@@9) (|Set#Empty| BoxType)))) (= (Requires4 t0@@86 t1@@62 t2@@39 t3@@24 t4@@9 $OneHeap f@@60 bx0@@51 bx1@@37 bx2@@23 bx3@@9) (Requires4 t0@@86 t1@@62 t2@@39 t3@@24 t4@@9 heap@@25 f@@60 bx0@@51 bx1@@37 bx2@@23 bx3@@9)))
 :qid |unknown.0:0|
 :skolemid |2111|
 :pattern ( (Requires4 t0@@86 t1@@62 t2@@39 t3@@24 t4@@9 $OneHeap f@@60 bx0@@51 bx1@@37 bx2@@23 bx3@@9) ($IsGoodHeap heap@@25))
 :pattern ( (Requires4 t0@@86 t1@@62 t2@@39 t3@@24 t4@@9 heap@@25 f@@60 bx0@@51 bx1@@37 bx2@@23 bx3@@9))
)))
(assert (forall ((f@@61 T@U) (t0@@87 T@U) (t1@@63 T@U) (t2@@40 T@U) (t3@@25 T@U) (t4@@10 T@U) ) (!  (=> (and (and (and (and (and (= (type f@@61) HandleTypeType) (= (type t0@@87) TyType)) (= (type t1@@63) TyType)) (= (type t2@@40) TyType)) (= (type t3@@25) TyType)) (= (type t4@@10) TyType)) (= ($Is f@@61 (Tclass._System.___hFunc4 t0@@87 t1@@63 t2@@40 t3@@25 t4@@10)) (forall ((h@@48 T@U) (bx0@@52 T@U) (bx1@@38 T@U) (bx2@@24 T@U) (bx3@@10 T@U) ) (!  (=> (and (and (and (and (and (= (type h@@48) (MapType0Type refType MapType1Type)) (= (type bx0@@52) BoxType)) (= (type bx1@@38) BoxType)) (= (type bx2@@24) BoxType)) (= (type bx3@@10) BoxType)) (and (and ($IsGoodHeap h@@48) (and (and (and ($IsBox bx0@@52 t0@@87) ($IsBox bx1@@38 t1@@63)) ($IsBox bx2@@24 t2@@40)) ($IsBox bx3@@10 t3@@25))) (Requires4 t0@@87 t1@@63 t2@@40 t3@@25 t4@@10 h@@48 f@@61 bx0@@52 bx1@@38 bx2@@24 bx3@@10))) ($IsBox (Apply4 t0@@87 t1@@63 t2@@40 t3@@25 t4@@10 h@@48 f@@61 bx0@@52 bx1@@38 bx2@@24 bx3@@10) t4@@10))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2112|
 :pattern ( (Apply4 t0@@87 t1@@63 t2@@40 t3@@25 t4@@10 h@@48 f@@61 bx0@@52 bx1@@38 bx2@@24 bx3@@10))
))))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($Is f@@61 (Tclass._System.___hFunc4 t0@@87 t1@@63 t2@@40 t3@@25 t4@@10)))
)))
(assert (forall ((f@@62 T@U) (t0@@88 T@U) (t1@@64 T@U) (t2@@41 T@U) (t3@@26 T@U) (t4@@11 T@U) (u0@@3 T@U) (u1@@2 T@U) (u2@@1 T@U) (u3@@0 T@U) (u4 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (= (type f@@62) HandleTypeType) (= (type t0@@88) TyType)) (= (type t1@@64) TyType)) (= (type t2@@41) TyType)) (= (type t3@@26) TyType)) (= (type t4@@11) TyType)) (= (type u0@@3) TyType)) (= (type u1@@2) TyType)) (= (type u2@@1) TyType)) (= (type u3@@0) TyType)) (= (type u4) TyType)) (and (and (and (and (and ($Is f@@62 (Tclass._System.___hFunc4 t0@@88 t1@@64 t2@@41 t3@@26 t4@@11)) (forall ((bx@@60 T@U) ) (!  (=> (and (= (type bx@@60) BoxType) ($IsBox bx@@60 u0@@3)) ($IsBox bx@@60 t0@@88))
 :qid |unknown.0:0|
 :skolemid |2114|
 :pattern ( ($IsBox bx@@60 u0@@3))
 :pattern ( ($IsBox bx@@60 t0@@88))
))) (forall ((bx@@61 T@U) ) (!  (=> (and (= (type bx@@61) BoxType) ($IsBox bx@@61 u1@@2)) ($IsBox bx@@61 t1@@64))
 :qid |unknown.0:0|
 :skolemid |2115|
 :pattern ( ($IsBox bx@@61 u1@@2))
 :pattern ( ($IsBox bx@@61 t1@@64))
))) (forall ((bx@@62 T@U) ) (!  (=> (and (= (type bx@@62) BoxType) ($IsBox bx@@62 u2@@1)) ($IsBox bx@@62 t2@@41))
 :qid |unknown.0:0|
 :skolemid |2116|
 :pattern ( ($IsBox bx@@62 u2@@1))
 :pattern ( ($IsBox bx@@62 t2@@41))
))) (forall ((bx@@63 T@U) ) (!  (=> (and (= (type bx@@63) BoxType) ($IsBox bx@@63 u3@@0)) ($IsBox bx@@63 t3@@26))
 :qid |unknown.0:0|
 :skolemid |2117|
 :pattern ( ($IsBox bx@@63 u3@@0))
 :pattern ( ($IsBox bx@@63 t3@@26))
))) (forall ((bx@@64 T@U) ) (!  (=> (and (= (type bx@@64) BoxType) ($IsBox bx@@64 t4@@11)) ($IsBox bx@@64 u4))
 :qid |unknown.0:0|
 :skolemid |2118|
 :pattern ( ($IsBox bx@@64 t4@@11))
 :pattern ( ($IsBox bx@@64 u4))
)))) ($Is f@@62 (Tclass._System.___hFunc4 u0@@3 u1@@2 u2@@1 u3@@0 u4)))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Is f@@62 (Tclass._System.___hFunc4 t0@@88 t1@@64 t2@@41 t3@@26 t4@@11)) ($Is f@@62 (Tclass._System.___hFunc4 u0@@3 u1@@2 u2@@1 u3@@0 u4)))
)))
(assert (forall ((f@@63 T@U) (t0@@89 T@U) (t1@@65 T@U) (t2@@42 T@U) (t3@@27 T@U) (t4@@12 T@U) (h@@49 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type f@@63) HandleTypeType) (= (type t0@@89) TyType)) (= (type t1@@65) TyType)) (= (type t2@@42) TyType)) (= (type t3@@27) TyType)) (= (type t4@@12) TyType)) (= (type h@@49) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@49)) (= ($IsAlloc f@@63 (Tclass._System.___hFunc4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12) h@@49) (forall ((bx0@@53 T@U) (bx1@@39 T@U) (bx2@@25 T@U) (bx3@@11 T@U) ) (!  (=> (and (and (and (= (type bx0@@53) BoxType) (= (type bx1@@39) BoxType)) (= (type bx2@@25) BoxType)) (= (type bx3@@11) BoxType)) (=> (and (and (and (and (and ($IsBox bx0@@53 t0@@89) ($IsAllocBox bx0@@53 t0@@89 h@@49)) (and ($IsBox bx1@@39 t1@@65) ($IsAllocBox bx1@@39 t1@@65 h@@49))) (and ($IsBox bx2@@25 t2@@42) ($IsAllocBox bx2@@25 t2@@42 h@@49))) (and ($IsBox bx3@@11 t3@@27) ($IsAllocBox bx3@@11 t3@@27 h@@49))) (Requires4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12 h@@49 f@@63 bx0@@53 bx1@@39 bx2@@25 bx3@@11)) (forall ((r@@25 T@U) ) (!  (=> (= (type r@@25) refType) (=> (and (not (= r@@25 null)) (U_2_bool (MapType0Select (Reads4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12 h@@49 f@@63 bx0@@53 bx1@@39 bx2@@25 bx3@@11) ($Box r@@25)))) (U_2_bool (MapType1Select (MapType0Select h@@49 r@@25) alloc))))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( (MapType0Select (Reads4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12 h@@49 f@@63 bx0@@53 bx1@@39 bx2@@25 bx3@@11) ($Box r@@25)))
))))
 :qid |unknown.0:0|
 :skolemid |2121|
 :pattern ( (Apply4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12 h@@49 f@@63 bx0@@53 bx1@@39 bx2@@25 bx3@@11))
 :pattern ( (Reads4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12 h@@49 f@@63 bx0@@53 bx1@@39 bx2@@25 bx3@@11))
))))
 :qid |unknown.0:0|
 :skolemid |2122|
 :pattern ( ($IsAlloc f@@63 (Tclass._System.___hFunc4 t0@@89 t1@@65 t2@@42 t3@@27 t4@@12) h@@49))
)))
(assert (forall ((f@@64 T@U) (t0@@90 T@U) (t1@@66 T@U) (t2@@43 T@U) (t3@@28 T@U) (t4@@13 T@U) (h@@50 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type f@@64) HandleTypeType) (= (type t0@@90) TyType)) (= (type t1@@66) TyType)) (= (type t2@@43) TyType)) (= (type t3@@28) TyType)) (= (type t4@@13) TyType)) (= (type h@@50) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@50) ($IsAlloc f@@64 (Tclass._System.___hFunc4 t0@@90 t1@@66 t2@@43 t3@@28 t4@@13) h@@50))) (forall ((bx0@@54 T@U) (bx1@@40 T@U) (bx2@@26 T@U) (bx3@@12 T@U) ) (!  (=> (and (and (and (= (type bx0@@54) BoxType) (= (type bx1@@40) BoxType)) (= (type bx2@@26) BoxType)) (= (type bx3@@12) BoxType)) (=> (and (and (and (and ($IsAllocBox bx0@@54 t0@@90 h@@50) ($IsAllocBox bx1@@40 t1@@66 h@@50)) ($IsAllocBox bx2@@26 t2@@43 h@@50)) ($IsAllocBox bx3@@12 t3@@28 h@@50)) (Requires4 t0@@90 t1@@66 t2@@43 t3@@28 t4@@13 h@@50 f@@64 bx0@@54 bx1@@40 bx2@@26 bx3@@12)) ($IsAllocBox (Apply4 t0@@90 t1@@66 t2@@43 t3@@28 t4@@13 h@@50 f@@64 bx0@@54 bx1@@40 bx2@@26 bx3@@12) t4@@13 h@@50)))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( (Apply4 t0@@90 t1@@66 t2@@43 t3@@28 t4@@13 h@@50 f@@64 bx0@@54 bx1@@40 bx2@@26 bx3@@12))
)))
 :qid |unknown.0:0|
 :skolemid |2124|
 :pattern ( ($IsAlloc f@@64 (Tclass._System.___hFunc4 t0@@90 t1@@66 t2@@43 t3@@28 t4@@13) h@@50))
)))
(assert (forall ((arg0@@211 T@U) (arg1@@107 T@U) (arg2@@59 T@U) (arg3@@37 T@U) (arg4@@26 T@U) ) (! (= (type (Tclass._System.___hPartialFunc4 arg0@@211 arg1@@107 arg2@@59 arg3@@37 arg4@@26)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc4|
 :pattern ( (Tclass._System.___hPartialFunc4 arg0@@211 arg1@@107 arg2@@59 arg3@@37 arg4@@26))
)))
(assert (forall ((|#$T0@@63| T@U) (|#$T1@@47| T@U) (|#$T2@@28| T@U) (|#$T3@@6| T@U) (|#$R@@76| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@63|) TyType) (= (type |#$T1@@47|) TyType)) (= (type |#$T2@@28|) TyType)) (= (type |#$T3@@6|) TyType)) (= (type |#$R@@76|) TyType)) (and (= (Tag (Tclass._System.___hPartialFunc4 |#$T0@@63| |#$T1@@47| |#$T2@@28| |#$T3@@6| |#$R@@76|)) Tagclass._System.___hPartialFunc4) (= (TagFamily (Tclass._System.___hPartialFunc4 |#$T0@@63| |#$T1@@47| |#$T2@@28| |#$T3@@6| |#$R@@76|)) |tytagFamily$_#PartialFunc4|)))
 :qid |unknown.0:0|
 :skolemid |2125|
 :pattern ( (Tclass._System.___hPartialFunc4 |#$T0@@63| |#$T1@@47| |#$T2@@28| |#$T3@@6| |#$R@@76|))
)))
(assert (forall ((arg0@@212 T@U) ) (! (= (type (Tclass._System.___hPartialFunc4_0 arg0@@212)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc4_0|
 :pattern ( (Tclass._System.___hPartialFunc4_0 arg0@@212))
)))
(assert (forall ((|#$T0@@64| T@U) (|#$T1@@48| T@U) (|#$T2@@29| T@U) (|#$T3@@7| T@U) (|#$R@@77| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@64|) TyType) (= (type |#$T1@@48|) TyType)) (= (type |#$T2@@29|) TyType)) (= (type |#$T3@@7|) TyType)) (= (type |#$R@@77|) TyType)) (= (Tclass._System.___hPartialFunc4_0 (Tclass._System.___hPartialFunc4 |#$T0@@64| |#$T1@@48| |#$T2@@29| |#$T3@@7| |#$R@@77|)) |#$T0@@64|))
 :qid |unknown.0:0|
 :skolemid |2126|
 :pattern ( (Tclass._System.___hPartialFunc4 |#$T0@@64| |#$T1@@48| |#$T2@@29| |#$T3@@7| |#$R@@77|))
)))
(assert (forall ((arg0@@213 T@U) ) (! (= (type (Tclass._System.___hPartialFunc4_1 arg0@@213)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc4_1|
 :pattern ( (Tclass._System.___hPartialFunc4_1 arg0@@213))
)))
(assert (forall ((|#$T0@@65| T@U) (|#$T1@@49| T@U) (|#$T2@@30| T@U) (|#$T3@@8| T@U) (|#$R@@78| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@65|) TyType) (= (type |#$T1@@49|) TyType)) (= (type |#$T2@@30|) TyType)) (= (type |#$T3@@8|) TyType)) (= (type |#$R@@78|) TyType)) (= (Tclass._System.___hPartialFunc4_1 (Tclass._System.___hPartialFunc4 |#$T0@@65| |#$T1@@49| |#$T2@@30| |#$T3@@8| |#$R@@78|)) |#$T1@@49|))
 :qid |unknown.0:0|
 :skolemid |2127|
 :pattern ( (Tclass._System.___hPartialFunc4 |#$T0@@65| |#$T1@@49| |#$T2@@30| |#$T3@@8| |#$R@@78|))
)))
(assert (forall ((arg0@@214 T@U) ) (! (= (type (Tclass._System.___hPartialFunc4_2 arg0@@214)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc4_2|
 :pattern ( (Tclass._System.___hPartialFunc4_2 arg0@@214))
)))
(assert (forall ((|#$T0@@66| T@U) (|#$T1@@50| T@U) (|#$T2@@31| T@U) (|#$T3@@9| T@U) (|#$R@@79| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@66|) TyType) (= (type |#$T1@@50|) TyType)) (= (type |#$T2@@31|) TyType)) (= (type |#$T3@@9|) TyType)) (= (type |#$R@@79|) TyType)) (= (Tclass._System.___hPartialFunc4_2 (Tclass._System.___hPartialFunc4 |#$T0@@66| |#$T1@@50| |#$T2@@31| |#$T3@@9| |#$R@@79|)) |#$T2@@31|))
 :qid |unknown.0:0|
 :skolemid |2128|
 :pattern ( (Tclass._System.___hPartialFunc4 |#$T0@@66| |#$T1@@50| |#$T2@@31| |#$T3@@9| |#$R@@79|))
)))
(assert (forall ((arg0@@215 T@U) ) (! (= (type (Tclass._System.___hPartialFunc4_3 arg0@@215)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc4_3|
 :pattern ( (Tclass._System.___hPartialFunc4_3 arg0@@215))
)))
(assert (forall ((|#$T0@@67| T@U) (|#$T1@@51| T@U) (|#$T2@@32| T@U) (|#$T3@@10| T@U) (|#$R@@80| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@67|) TyType) (= (type |#$T1@@51|) TyType)) (= (type |#$T2@@32|) TyType)) (= (type |#$T3@@10|) TyType)) (= (type |#$R@@80|) TyType)) (= (Tclass._System.___hPartialFunc4_3 (Tclass._System.___hPartialFunc4 |#$T0@@67| |#$T1@@51| |#$T2@@32| |#$T3@@10| |#$R@@80|)) |#$T3@@10|))
 :qid |unknown.0:0|
 :skolemid |2129|
 :pattern ( (Tclass._System.___hPartialFunc4 |#$T0@@67| |#$T1@@51| |#$T2@@32| |#$T3@@10| |#$R@@80|))
)))
(assert (forall ((arg0@@216 T@U) ) (! (= (type (Tclass._System.___hPartialFunc4_4 arg0@@216)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc4_4|
 :pattern ( (Tclass._System.___hPartialFunc4_4 arg0@@216))
)))
(assert (forall ((|#$T0@@68| T@U) (|#$T1@@52| T@U) (|#$T2@@33| T@U) (|#$T3@@11| T@U) (|#$R@@81| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@68|) TyType) (= (type |#$T1@@52|) TyType)) (= (type |#$T2@@33|) TyType)) (= (type |#$T3@@11|) TyType)) (= (type |#$R@@81|) TyType)) (= (Tclass._System.___hPartialFunc4_4 (Tclass._System.___hPartialFunc4 |#$T0@@68| |#$T1@@52| |#$T2@@33| |#$T3@@11| |#$R@@81|)) |#$R@@81|))
 :qid |unknown.0:0|
 :skolemid |2130|
 :pattern ( (Tclass._System.___hPartialFunc4 |#$T0@@68| |#$T1@@52| |#$T2@@33| |#$T3@@11| |#$R@@81|))
)))
(assert (forall ((|#$T0@@69| T@U) (|#$T1@@53| T@U) (|#$T2@@34| T@U) (|#$T3@@12| T@U) (|#$R@@82| T@U) (bx@@65 T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@69|) TyType) (= (type |#$T1@@53|) TyType)) (= (type |#$T2@@34|) TyType)) (= (type |#$T3@@12|) TyType)) (= (type |#$R@@82|) TyType)) (= (type bx@@65) BoxType)) ($IsBox bx@@65 (Tclass._System.___hPartialFunc4 |#$T0@@69| |#$T1@@53| |#$T2@@34| |#$T3@@12| |#$R@@82|))) (and (= ($Box ($Unbox HandleTypeType bx@@65)) bx@@65) ($Is ($Unbox HandleTypeType bx@@65) (Tclass._System.___hPartialFunc4 |#$T0@@69| |#$T1@@53| |#$T2@@34| |#$T3@@12| |#$R@@82|))))
 :qid |unknown.0:0|
 :skolemid |2131|
 :pattern ( ($IsBox bx@@65 (Tclass._System.___hPartialFunc4 |#$T0@@69| |#$T1@@53| |#$T2@@34| |#$T3@@12| |#$R@@82|)))
)))
(assert (forall ((|#$T0@@70| T@U) (|#$T1@@54| T@U) (|#$T2@@35| T@U) (|#$T3@@13| T@U) (|#$R@@83| T@U) (|f#0@@15| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@70|) TyType) (= (type |#$T1@@54|) TyType)) (= (type |#$T2@@35|) TyType)) (= (type |#$T3@@13|) TyType)) (= (type |#$R@@83|) TyType)) (= (type |f#0@@15|) HandleTypeType)) (= ($Is |f#0@@15| (Tclass._System.___hPartialFunc4 |#$T0@@70| |#$T1@@54| |#$T2@@35| |#$T3@@13| |#$R@@83|))  (and ($Is |f#0@@15| (Tclass._System.___hFunc4 |#$T0@@70| |#$T1@@54| |#$T2@@35| |#$T3@@13| |#$R@@83|)) (forall ((|x0#0@@5| T@U) (|x1#0@@3| T@U) (|x2#0@@1| T@U) (|x3#0| T@U) ) (!  (=> (and (and (and (and (= (type |x0#0@@5|) BoxType) (= (type |x1#0@@3|) BoxType)) (= (type |x2#0@@1|) BoxType)) (= (type |x3#0|) BoxType)) (and (and (and ($IsBox |x0#0@@5| |#$T0@@70|) ($IsBox |x1#0@@3| |#$T1@@54|)) ($IsBox |x2#0@@1| |#$T2@@35|)) ($IsBox |x3#0| |#$T3@@13|))) (|Set#Equal| (Reads4 |#$T0@@70| |#$T1@@54| |#$T2@@35| |#$T3@@13| |#$R@@83| $OneHeap |f#0@@15| |x0#0@@5| |x1#0@@3| |x2#0@@1| |x3#0|) (|Set#Empty| BoxType)))
 :qid |unknown.0:0|
 :skolemid |2132|
 :no-pattern (type |x0#0@@5|)
 :no-pattern (type |x1#0@@3|)
 :no-pattern (type |x2#0@@1|)
 :no-pattern (type |x3#0|)
 :no-pattern (U_2_int |x0#0@@5|)
 :no-pattern (U_2_bool |x0#0@@5|)
 :no-pattern (U_2_int |x1#0@@3|)
 :no-pattern (U_2_bool |x1#0@@3|)
 :no-pattern (U_2_int |x2#0@@1|)
 :no-pattern (U_2_bool |x2#0@@1|)
 :no-pattern (U_2_int |x3#0|)
 :no-pattern (U_2_bool |x3#0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2133|
 :pattern ( ($Is |f#0@@15| (Tclass._System.___hPartialFunc4 |#$T0@@70| |#$T1@@54| |#$T2@@35| |#$T3@@13| |#$R@@83|)))
)))
(assert (forall ((|#$T0@@71| T@U) (|#$T1@@55| T@U) (|#$T2@@36| T@U) (|#$T3@@14| T@U) (|#$R@@84| T@U) (|f#0@@16| T@U) ($h@@16 T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@71|) TyType) (= (type |#$T1@@55|) TyType)) (= (type |#$T2@@36|) TyType)) (= (type |#$T3@@14|) TyType)) (= (type |#$R@@84|) TyType)) (= (type |f#0@@16|) HandleTypeType)) (= (type $h@@16) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@16| (Tclass._System.___hPartialFunc4 |#$T0@@71| |#$T1@@55| |#$T2@@36| |#$T3@@14| |#$R@@84|) $h@@16) ($IsAlloc |f#0@@16| (Tclass._System.___hFunc4 |#$T0@@71| |#$T1@@55| |#$T2@@36| |#$T3@@14| |#$R@@84|) $h@@16)))
 :qid |unknown.0:0|
 :skolemid |2134|
 :pattern ( ($IsAlloc |f#0@@16| (Tclass._System.___hPartialFunc4 |#$T0@@71| |#$T1@@55| |#$T2@@36| |#$T3@@14| |#$R@@84|) $h@@16))
)))
(assert (forall ((arg0@@217 T@U) (arg1@@108 T@U) (arg2@@60 T@U) (arg3@@38 T@U) (arg4@@27 T@U) ) (! (= (type (Tclass._System.___hTotalFunc4 arg0@@217 arg1@@108 arg2@@60 arg3@@38 arg4@@27)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc4|
 :pattern ( (Tclass._System.___hTotalFunc4 arg0@@217 arg1@@108 arg2@@60 arg3@@38 arg4@@27))
)))
(assert (forall ((|#$T0@@72| T@U) (|#$T1@@56| T@U) (|#$T2@@37| T@U) (|#$T3@@15| T@U) (|#$R@@85| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@72|) TyType) (= (type |#$T1@@56|) TyType)) (= (type |#$T2@@37|) TyType)) (= (type |#$T3@@15|) TyType)) (= (type |#$R@@85|) TyType)) (and (= (Tag (Tclass._System.___hTotalFunc4 |#$T0@@72| |#$T1@@56| |#$T2@@37| |#$T3@@15| |#$R@@85|)) Tagclass._System.___hTotalFunc4) (= (TagFamily (Tclass._System.___hTotalFunc4 |#$T0@@72| |#$T1@@56| |#$T2@@37| |#$T3@@15| |#$R@@85|)) |tytagFamily$_#TotalFunc4|)))
 :qid |unknown.0:0|
 :skolemid |2135|
 :pattern ( (Tclass._System.___hTotalFunc4 |#$T0@@72| |#$T1@@56| |#$T2@@37| |#$T3@@15| |#$R@@85|))
)))
(assert (forall ((arg0@@218 T@U) ) (! (= (type (Tclass._System.___hTotalFunc4_0 arg0@@218)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc4_0|
 :pattern ( (Tclass._System.___hTotalFunc4_0 arg0@@218))
)))
(assert (forall ((|#$T0@@73| T@U) (|#$T1@@57| T@U) (|#$T2@@38| T@U) (|#$T3@@16| T@U) (|#$R@@86| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@73|) TyType) (= (type |#$T1@@57|) TyType)) (= (type |#$T2@@38|) TyType)) (= (type |#$T3@@16|) TyType)) (= (type |#$R@@86|) TyType)) (= (Tclass._System.___hTotalFunc4_0 (Tclass._System.___hTotalFunc4 |#$T0@@73| |#$T1@@57| |#$T2@@38| |#$T3@@16| |#$R@@86|)) |#$T0@@73|))
 :qid |unknown.0:0|
 :skolemid |2136|
 :pattern ( (Tclass._System.___hTotalFunc4 |#$T0@@73| |#$T1@@57| |#$T2@@38| |#$T3@@16| |#$R@@86|))
)))
(assert (forall ((arg0@@219 T@U) ) (! (= (type (Tclass._System.___hTotalFunc4_1 arg0@@219)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc4_1|
 :pattern ( (Tclass._System.___hTotalFunc4_1 arg0@@219))
)))
(assert (forall ((|#$T0@@74| T@U) (|#$T1@@58| T@U) (|#$T2@@39| T@U) (|#$T3@@17| T@U) (|#$R@@87| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@74|) TyType) (= (type |#$T1@@58|) TyType)) (= (type |#$T2@@39|) TyType)) (= (type |#$T3@@17|) TyType)) (= (type |#$R@@87|) TyType)) (= (Tclass._System.___hTotalFunc4_1 (Tclass._System.___hTotalFunc4 |#$T0@@74| |#$T1@@58| |#$T2@@39| |#$T3@@17| |#$R@@87|)) |#$T1@@58|))
 :qid |unknown.0:0|
 :skolemid |2137|
 :pattern ( (Tclass._System.___hTotalFunc4 |#$T0@@74| |#$T1@@58| |#$T2@@39| |#$T3@@17| |#$R@@87|))
)))
(assert (forall ((arg0@@220 T@U) ) (! (= (type (Tclass._System.___hTotalFunc4_2 arg0@@220)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc4_2|
 :pattern ( (Tclass._System.___hTotalFunc4_2 arg0@@220))
)))
(assert (forall ((|#$T0@@75| T@U) (|#$T1@@59| T@U) (|#$T2@@40| T@U) (|#$T3@@18| T@U) (|#$R@@88| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@75|) TyType) (= (type |#$T1@@59|) TyType)) (= (type |#$T2@@40|) TyType)) (= (type |#$T3@@18|) TyType)) (= (type |#$R@@88|) TyType)) (= (Tclass._System.___hTotalFunc4_2 (Tclass._System.___hTotalFunc4 |#$T0@@75| |#$T1@@59| |#$T2@@40| |#$T3@@18| |#$R@@88|)) |#$T2@@40|))
 :qid |unknown.0:0|
 :skolemid |2138|
 :pattern ( (Tclass._System.___hTotalFunc4 |#$T0@@75| |#$T1@@59| |#$T2@@40| |#$T3@@18| |#$R@@88|))
)))
(assert (forall ((arg0@@221 T@U) ) (! (= (type (Tclass._System.___hTotalFunc4_3 arg0@@221)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc4_3|
 :pattern ( (Tclass._System.___hTotalFunc4_3 arg0@@221))
)))
(assert (forall ((|#$T0@@76| T@U) (|#$T1@@60| T@U) (|#$T2@@41| T@U) (|#$T3@@19| T@U) (|#$R@@89| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@76|) TyType) (= (type |#$T1@@60|) TyType)) (= (type |#$T2@@41|) TyType)) (= (type |#$T3@@19|) TyType)) (= (type |#$R@@89|) TyType)) (= (Tclass._System.___hTotalFunc4_3 (Tclass._System.___hTotalFunc4 |#$T0@@76| |#$T1@@60| |#$T2@@41| |#$T3@@19| |#$R@@89|)) |#$T3@@19|))
 :qid |unknown.0:0|
 :skolemid |2139|
 :pattern ( (Tclass._System.___hTotalFunc4 |#$T0@@76| |#$T1@@60| |#$T2@@41| |#$T3@@19| |#$R@@89|))
)))
(assert (forall ((arg0@@222 T@U) ) (! (= (type (Tclass._System.___hTotalFunc4_4 arg0@@222)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc4_4|
 :pattern ( (Tclass._System.___hTotalFunc4_4 arg0@@222))
)))
(assert (forall ((|#$T0@@77| T@U) (|#$T1@@61| T@U) (|#$T2@@42| T@U) (|#$T3@@20| T@U) (|#$R@@90| T@U) ) (!  (=> (and (and (and (and (= (type |#$T0@@77|) TyType) (= (type |#$T1@@61|) TyType)) (= (type |#$T2@@42|) TyType)) (= (type |#$T3@@20|) TyType)) (= (type |#$R@@90|) TyType)) (= (Tclass._System.___hTotalFunc4_4 (Tclass._System.___hTotalFunc4 |#$T0@@77| |#$T1@@61| |#$T2@@42| |#$T3@@20| |#$R@@90|)) |#$R@@90|))
 :qid |unknown.0:0|
 :skolemid |2140|
 :pattern ( (Tclass._System.___hTotalFunc4 |#$T0@@77| |#$T1@@61| |#$T2@@42| |#$T3@@20| |#$R@@90|))
)))
(assert (forall ((|#$T0@@78| T@U) (|#$T1@@62| T@U) (|#$T2@@43| T@U) (|#$T3@@21| T@U) (|#$R@@91| T@U) (bx@@66 T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@78|) TyType) (= (type |#$T1@@62|) TyType)) (= (type |#$T2@@43|) TyType)) (= (type |#$T3@@21|) TyType)) (= (type |#$R@@91|) TyType)) (= (type bx@@66) BoxType)) ($IsBox bx@@66 (Tclass._System.___hTotalFunc4 |#$T0@@78| |#$T1@@62| |#$T2@@43| |#$T3@@21| |#$R@@91|))) (and (= ($Box ($Unbox HandleTypeType bx@@66)) bx@@66) ($Is ($Unbox HandleTypeType bx@@66) (Tclass._System.___hTotalFunc4 |#$T0@@78| |#$T1@@62| |#$T2@@43| |#$T3@@21| |#$R@@91|))))
 :qid |unknown.0:0|
 :skolemid |2141|
 :pattern ( ($IsBox bx@@66 (Tclass._System.___hTotalFunc4 |#$T0@@78| |#$T1@@62| |#$T2@@43| |#$T3@@21| |#$R@@91|)))
)))
(assert (forall ((|#$T0@@79| T@U) (|#$T1@@63| T@U) (|#$T2@@44| T@U) (|#$T3@@22| T@U) (|#$R@@92| T@U) (|f#0@@17| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@79|) TyType) (= (type |#$T1@@63|) TyType)) (= (type |#$T2@@44|) TyType)) (= (type |#$T3@@22|) TyType)) (= (type |#$R@@92|) TyType)) (= (type |f#0@@17|) HandleTypeType)) (= ($Is |f#0@@17| (Tclass._System.___hTotalFunc4 |#$T0@@79| |#$T1@@63| |#$T2@@44| |#$T3@@22| |#$R@@92|))  (and ($Is |f#0@@17| (Tclass._System.___hPartialFunc4 |#$T0@@79| |#$T1@@63| |#$T2@@44| |#$T3@@22| |#$R@@92|)) (forall ((|x0#0@@6| T@U) (|x1#0@@4| T@U) (|x2#0@@2| T@U) (|x3#0@@0| T@U) ) (!  (=> (and (and (and (and (= (type |x0#0@@6|) BoxType) (= (type |x1#0@@4|) BoxType)) (= (type |x2#0@@2|) BoxType)) (= (type |x3#0@@0|) BoxType)) (and (and (and ($IsBox |x0#0@@6| |#$T0@@79|) ($IsBox |x1#0@@4| |#$T1@@63|)) ($IsBox |x2#0@@2| |#$T2@@44|)) ($IsBox |x3#0@@0| |#$T3@@22|))) (Requires4 |#$T0@@79| |#$T1@@63| |#$T2@@44| |#$T3@@22| |#$R@@92| $OneHeap |f#0@@17| |x0#0@@6| |x1#0@@4| |x2#0@@2| |x3#0@@0|))
 :qid |unknown.0:0|
 :skolemid |2142|
 :no-pattern (type |x0#0@@6|)
 :no-pattern (type |x1#0@@4|)
 :no-pattern (type |x2#0@@2|)
 :no-pattern (type |x3#0@@0|)
 :no-pattern (U_2_int |x0#0@@6|)
 :no-pattern (U_2_bool |x0#0@@6|)
 :no-pattern (U_2_int |x1#0@@4|)
 :no-pattern (U_2_bool |x1#0@@4|)
 :no-pattern (U_2_int |x2#0@@2|)
 :no-pattern (U_2_bool |x2#0@@2|)
 :no-pattern (U_2_int |x3#0@@0|)
 :no-pattern (U_2_bool |x3#0@@0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2143|
 :pattern ( ($Is |f#0@@17| (Tclass._System.___hTotalFunc4 |#$T0@@79| |#$T1@@63| |#$T2@@44| |#$T3@@22| |#$R@@92|)))
)))
(assert (forall ((|#$T0@@80| T@U) (|#$T1@@64| T@U) (|#$T2@@45| T@U) (|#$T3@@23| T@U) (|#$R@@93| T@U) (|f#0@@18| T@U) ($h@@17 T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@80|) TyType) (= (type |#$T1@@64|) TyType)) (= (type |#$T2@@45|) TyType)) (= (type |#$T3@@23|) TyType)) (= (type |#$R@@93|) TyType)) (= (type |f#0@@18|) HandleTypeType)) (= (type $h@@17) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@18| (Tclass._System.___hTotalFunc4 |#$T0@@80| |#$T1@@64| |#$T2@@45| |#$T3@@23| |#$R@@93|) $h@@17) ($IsAlloc |f#0@@18| (Tclass._System.___hPartialFunc4 |#$T0@@80| |#$T1@@64| |#$T2@@45| |#$T3@@23| |#$R@@93|) $h@@17)))
 :qid |unknown.0:0|
 :skolemid |2144|
 :pattern ( ($IsAlloc |f#0@@18| (Tclass._System.___hTotalFunc4 |#$T0@@80| |#$T1@@64| |#$T2@@45| |#$T3@@23| |#$R@@93|) $h@@17))
)))
(assert (forall ((arg0@@223 T@U) (arg1@@109 T@U) (arg2@@61 T@U) (arg3@@39 T@U) (arg4@@28 T@U) (arg5@@15 T@U) ) (! (= (type (Tclass._System.___hFunc5 arg0@@223 arg1@@109 arg2@@61 arg3@@39 arg4@@28 arg5@@15)) TyType)
 :qid |funType:Tclass._System.___hFunc5|
 :pattern ( (Tclass._System.___hFunc5 arg0@@223 arg1@@109 arg2@@61 arg3@@39 arg4@@28 arg5@@15))
)))
(assert (forall ((|#$T0@@81| T@U) (|#$T1@@65| T@U) (|#$T2@@46| T@U) (|#$T3@@24| T@U) (|#$T4| T@U) (|#$R@@94| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@81|) TyType) (= (type |#$T1@@65|) TyType)) (= (type |#$T2@@46|) TyType)) (= (type |#$T3@@24|) TyType)) (= (type |#$T4|) TyType)) (= (type |#$R@@94|) TyType)) (and (= (Tag (Tclass._System.___hFunc5 |#$T0@@81| |#$T1@@65| |#$T2@@46| |#$T3@@24| |#$T4| |#$R@@94|)) Tagclass._System.___hFunc5) (= (TagFamily (Tclass._System.___hFunc5 |#$T0@@81| |#$T1@@65| |#$T2@@46| |#$T3@@24| |#$T4| |#$R@@94|)) |tytagFamily$_#Func5|)))
 :qid |unknown.0:0|
 :skolemid |2145|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@81| |#$T1@@65| |#$T2@@46| |#$T3@@24| |#$T4| |#$R@@94|))
)))
(assert (forall ((arg0@@224 T@U) ) (! (= (type (Tclass._System.___hFunc5_0 arg0@@224)) TyType)
 :qid |funType:Tclass._System.___hFunc5_0|
 :pattern ( (Tclass._System.___hFunc5_0 arg0@@224))
)))
(assert (forall ((|#$T0@@82| T@U) (|#$T1@@66| T@U) (|#$T2@@47| T@U) (|#$T3@@25| T@U) (|#$T4@@0| T@U) (|#$R@@95| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@82|) TyType) (= (type |#$T1@@66|) TyType)) (= (type |#$T2@@47|) TyType)) (= (type |#$T3@@25|) TyType)) (= (type |#$T4@@0|) TyType)) (= (type |#$R@@95|) TyType)) (= (Tclass._System.___hFunc5_0 (Tclass._System.___hFunc5 |#$T0@@82| |#$T1@@66| |#$T2@@47| |#$T3@@25| |#$T4@@0| |#$R@@95|)) |#$T0@@82|))
 :qid |unknown.0:0|
 :skolemid |2146|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@82| |#$T1@@66| |#$T2@@47| |#$T3@@25| |#$T4@@0| |#$R@@95|))
)))
(assert (forall ((arg0@@225 T@U) ) (! (= (type (Tclass._System.___hFunc5_1 arg0@@225)) TyType)
 :qid |funType:Tclass._System.___hFunc5_1|
 :pattern ( (Tclass._System.___hFunc5_1 arg0@@225))
)))
(assert (forall ((|#$T0@@83| T@U) (|#$T1@@67| T@U) (|#$T2@@48| T@U) (|#$T3@@26| T@U) (|#$T4@@1| T@U) (|#$R@@96| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@83|) TyType) (= (type |#$T1@@67|) TyType)) (= (type |#$T2@@48|) TyType)) (= (type |#$T3@@26|) TyType)) (= (type |#$T4@@1|) TyType)) (= (type |#$R@@96|) TyType)) (= (Tclass._System.___hFunc5_1 (Tclass._System.___hFunc5 |#$T0@@83| |#$T1@@67| |#$T2@@48| |#$T3@@26| |#$T4@@1| |#$R@@96|)) |#$T1@@67|))
 :qid |unknown.0:0|
 :skolemid |2147|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@83| |#$T1@@67| |#$T2@@48| |#$T3@@26| |#$T4@@1| |#$R@@96|))
)))
(assert (forall ((arg0@@226 T@U) ) (! (= (type (Tclass._System.___hFunc5_2 arg0@@226)) TyType)
 :qid |funType:Tclass._System.___hFunc5_2|
 :pattern ( (Tclass._System.___hFunc5_2 arg0@@226))
)))
(assert (forall ((|#$T0@@84| T@U) (|#$T1@@68| T@U) (|#$T2@@49| T@U) (|#$T3@@27| T@U) (|#$T4@@2| T@U) (|#$R@@97| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@84|) TyType) (= (type |#$T1@@68|) TyType)) (= (type |#$T2@@49|) TyType)) (= (type |#$T3@@27|) TyType)) (= (type |#$T4@@2|) TyType)) (= (type |#$R@@97|) TyType)) (= (Tclass._System.___hFunc5_2 (Tclass._System.___hFunc5 |#$T0@@84| |#$T1@@68| |#$T2@@49| |#$T3@@27| |#$T4@@2| |#$R@@97|)) |#$T2@@49|))
 :qid |unknown.0:0|
 :skolemid |2148|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@84| |#$T1@@68| |#$T2@@49| |#$T3@@27| |#$T4@@2| |#$R@@97|))
)))
(assert (forall ((arg0@@227 T@U) ) (! (= (type (Tclass._System.___hFunc5_3 arg0@@227)) TyType)
 :qid |funType:Tclass._System.___hFunc5_3|
 :pattern ( (Tclass._System.___hFunc5_3 arg0@@227))
)))
(assert (forall ((|#$T0@@85| T@U) (|#$T1@@69| T@U) (|#$T2@@50| T@U) (|#$T3@@28| T@U) (|#$T4@@3| T@U) (|#$R@@98| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@85|) TyType) (= (type |#$T1@@69|) TyType)) (= (type |#$T2@@50|) TyType)) (= (type |#$T3@@28|) TyType)) (= (type |#$T4@@3|) TyType)) (= (type |#$R@@98|) TyType)) (= (Tclass._System.___hFunc5_3 (Tclass._System.___hFunc5 |#$T0@@85| |#$T1@@69| |#$T2@@50| |#$T3@@28| |#$T4@@3| |#$R@@98|)) |#$T3@@28|))
 :qid |unknown.0:0|
 :skolemid |2149|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@85| |#$T1@@69| |#$T2@@50| |#$T3@@28| |#$T4@@3| |#$R@@98|))
)))
(assert (forall ((arg0@@228 T@U) ) (! (= (type (Tclass._System.___hFunc5_4 arg0@@228)) TyType)
 :qid |funType:Tclass._System.___hFunc5_4|
 :pattern ( (Tclass._System.___hFunc5_4 arg0@@228))
)))
(assert (forall ((|#$T0@@86| T@U) (|#$T1@@70| T@U) (|#$T2@@51| T@U) (|#$T3@@29| T@U) (|#$T4@@4| T@U) (|#$R@@99| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@86|) TyType) (= (type |#$T1@@70|) TyType)) (= (type |#$T2@@51|) TyType)) (= (type |#$T3@@29|) TyType)) (= (type |#$T4@@4|) TyType)) (= (type |#$R@@99|) TyType)) (= (Tclass._System.___hFunc5_4 (Tclass._System.___hFunc5 |#$T0@@86| |#$T1@@70| |#$T2@@51| |#$T3@@29| |#$T4@@4| |#$R@@99|)) |#$T4@@4|))
 :qid |unknown.0:0|
 :skolemid |2150|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@86| |#$T1@@70| |#$T2@@51| |#$T3@@29| |#$T4@@4| |#$R@@99|))
)))
(assert (forall ((arg0@@229 T@U) ) (! (= (type (Tclass._System.___hFunc5_5 arg0@@229)) TyType)
 :qid |funType:Tclass._System.___hFunc5_5|
 :pattern ( (Tclass._System.___hFunc5_5 arg0@@229))
)))
(assert (forall ((|#$T0@@87| T@U) (|#$T1@@71| T@U) (|#$T2@@52| T@U) (|#$T3@@30| T@U) (|#$T4@@5| T@U) (|#$R@@100| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@87|) TyType) (= (type |#$T1@@71|) TyType)) (= (type |#$T2@@52|) TyType)) (= (type |#$T3@@30|) TyType)) (= (type |#$T4@@5|) TyType)) (= (type |#$R@@100|) TyType)) (= (Tclass._System.___hFunc5_5 (Tclass._System.___hFunc5 |#$T0@@87| |#$T1@@71| |#$T2@@52| |#$T3@@30| |#$T4@@5| |#$R@@100|)) |#$R@@100|))
 :qid |unknown.0:0|
 :skolemid |2151|
 :pattern ( (Tclass._System.___hFunc5 |#$T0@@87| |#$T1@@71| |#$T2@@52| |#$T3@@30| |#$T4@@5| |#$R@@100|))
)))
(assert (forall ((|#$T0@@88| T@U) (|#$T1@@72| T@U) (|#$T2@@53| T@U) (|#$T3@@31| T@U) (|#$T4@@6| T@U) (|#$R@@101| T@U) (bx@@67 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type |#$T0@@88|) TyType) (= (type |#$T1@@72|) TyType)) (= (type |#$T2@@53|) TyType)) (= (type |#$T3@@31|) TyType)) (= (type |#$T4@@6|) TyType)) (= (type |#$R@@101|) TyType)) (= (type bx@@67) BoxType)) ($IsBox bx@@67 (Tclass._System.___hFunc5 |#$T0@@88| |#$T1@@72| |#$T2@@53| |#$T3@@31| |#$T4@@6| |#$R@@101|))) (and (= ($Box ($Unbox HandleTypeType bx@@67)) bx@@67) ($Is ($Unbox HandleTypeType bx@@67) (Tclass._System.___hFunc5 |#$T0@@88| |#$T1@@72| |#$T2@@53| |#$T3@@31| |#$T4@@6| |#$R@@101|))))
 :qid |unknown.0:0|
 :skolemid |2152|
 :pattern ( ($IsBox bx@@67 (Tclass._System.___hFunc5 |#$T0@@88| |#$T1@@72| |#$T2@@53| |#$T3@@31| |#$T4@@6| |#$R@@101|)))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((arg0@@230 T@T) (arg1@@110 T@T) (arg2@@62 T@T) (arg3@@40 T@T) (arg4@@29 T@T) (arg5@@16 T@T) (arg6@@6 T@T) ) (! (= (Ctor (MapType6Type arg0@@230 arg1@@110 arg2@@62 arg3@@40 arg4@@29 arg5@@16 arg6@@6)) 28)
 :qid |ctor:MapType6Type|
)) (forall ((arg0@@231 T@T) (arg1@@111 T@T) (arg2@@63 T@T) (arg3@@41 T@T) (arg4@@30 T@T) (arg5@@17 T@T) (arg6@@7 T@T) ) (! (= (MapType6TypeInv0 (MapType6Type arg0@@231 arg1@@111 arg2@@63 arg3@@41 arg4@@30 arg5@@17 arg6@@7)) arg0@@231)
 :qid |typeInv:MapType6TypeInv0|
 :pattern ( (MapType6Type arg0@@231 arg1@@111 arg2@@63 arg3@@41 arg4@@30 arg5@@17 arg6@@7))
))) (forall ((arg0@@232 T@T) (arg1@@112 T@T) (arg2@@64 T@T) (arg3@@42 T@T) (arg4@@31 T@T) (arg5@@18 T@T) (arg6@@8 T@T) ) (! (= (MapType6TypeInv1 (MapType6Type arg0@@232 arg1@@112 arg2@@64 arg3@@42 arg4@@31 arg5@@18 arg6@@8)) arg1@@112)
 :qid |typeInv:MapType6TypeInv1|
 :pattern ( (MapType6Type arg0@@232 arg1@@112 arg2@@64 arg3@@42 arg4@@31 arg5@@18 arg6@@8))
))) (forall ((arg0@@233 T@T) (arg1@@113 T@T) (arg2@@65 T@T) (arg3@@43 T@T) (arg4@@32 T@T) (arg5@@19 T@T) (arg6@@9 T@T) ) (! (= (MapType6TypeInv2 (MapType6Type arg0@@233 arg1@@113 arg2@@65 arg3@@43 arg4@@32 arg5@@19 arg6@@9)) arg2@@65)
 :qid |typeInv:MapType6TypeInv2|
 :pattern ( (MapType6Type arg0@@233 arg1@@113 arg2@@65 arg3@@43 arg4@@32 arg5@@19 arg6@@9))
))) (forall ((arg0@@234 T@T) (arg1@@114 T@T) (arg2@@66 T@T) (arg3@@44 T@T) (arg4@@33 T@T) (arg5@@20 T@T) (arg6@@10 T@T) ) (! (= (MapType6TypeInv3 (MapType6Type arg0@@234 arg1@@114 arg2@@66 arg3@@44 arg4@@33 arg5@@20 arg6@@10)) arg3@@44)
 :qid |typeInv:MapType6TypeInv3|
 :pattern ( (MapType6Type arg0@@234 arg1@@114 arg2@@66 arg3@@44 arg4@@33 arg5@@20 arg6@@10))
))) (forall ((arg0@@235 T@T) (arg1@@115 T@T) (arg2@@67 T@T) (arg3@@45 T@T) (arg4@@34 T@T) (arg5@@21 T@T) (arg6@@11 T@T) ) (! (= (MapType6TypeInv4 (MapType6Type arg0@@235 arg1@@115 arg2@@67 arg3@@45 arg4@@34 arg5@@21 arg6@@11)) arg4@@34)
 :qid |typeInv:MapType6TypeInv4|
 :pattern ( (MapType6Type arg0@@235 arg1@@115 arg2@@67 arg3@@45 arg4@@34 arg5@@21 arg6@@11))
))) (forall ((arg0@@236 T@T) (arg1@@116 T@T) (arg2@@68 T@T) (arg3@@46 T@T) (arg4@@35 T@T) (arg5@@22 T@T) (arg6@@12 T@T) ) (! (= (MapType6TypeInv5 (MapType6Type arg0@@236 arg1@@116 arg2@@68 arg3@@46 arg4@@35 arg5@@22 arg6@@12)) arg5@@22)
 :qid |typeInv:MapType6TypeInv5|
 :pattern ( (MapType6Type arg0@@236 arg1@@116 arg2@@68 arg3@@46 arg4@@35 arg5@@22 arg6@@12))
))) (forall ((arg0@@237 T@T) (arg1@@117 T@T) (arg2@@69 T@T) (arg3@@47 T@T) (arg4@@36 T@T) (arg5@@23 T@T) (arg6@@13 T@T) ) (! (= (MapType6TypeInv6 (MapType6Type arg0@@237 arg1@@117 arg2@@69 arg3@@47 arg4@@36 arg5@@23 arg6@@13)) arg6@@13)
 :qid |typeInv:MapType6TypeInv6|
 :pattern ( (MapType6Type arg0@@237 arg1@@117 arg2@@69 arg3@@47 arg4@@36 arg5@@23 arg6@@13))
))) (forall ((arg0@@238 T@U) (arg1@@118 T@U) (arg2@@70 T@U) (arg3@@48 T@U) (arg4@@37 T@U) (arg5@@24 T@U) (arg6@@14 T@U) ) (! (let ((aVar6 (MapType6TypeInv6 (type arg0@@238))))
(= (type (MapType6Select arg0@@238 arg1@@118 arg2@@70 arg3@@48 arg4@@37 arg5@@24 arg6@@14)) aVar6))
 :qid |funType:MapType6Select|
 :pattern ( (MapType6Select arg0@@238 arg1@@118 arg2@@70 arg3@@48 arg4@@37 arg5@@24 arg6@@14))
))) (forall ((arg0@@239 T@U) (arg1@@119 T@U) (arg2@@71 T@U) (arg3@@49 T@U) (arg4@@38 T@U) (arg5@@25 T@U) (arg6@@15 T@U) (arg7@@3 T@U) ) (! (let ((aVar6@@0 (type arg7@@3)))
(let ((aVar5@@2 (type arg6@@15)))
(let ((aVar4@@3 (type arg5@@25)))
(let ((aVar3@@4 (type arg4@@38)))
(let ((aVar2@@5 (type arg3@@49)))
(let ((aVar1@@6 (type arg2@@71)))
(let ((aVar0@@4 (type arg1@@119)))
(= (type (MapType6Store arg0@@239 arg1@@119 arg2@@71 arg3@@49 arg4@@38 arg5@@25 arg6@@15 arg7@@3)) (MapType6Type aVar0@@4 aVar1@@6 aVar2@@5 aVar3@@4 aVar4@@3 aVar5@@2 aVar6@@0)))))))))
 :qid |funType:MapType6Store|
 :pattern ( (MapType6Store arg0@@239 arg1@@119 arg2@@71 arg3@@49 arg4@@38 arg5@@25 arg6@@15 arg7@@3))
))) (forall ((m@@67 T@U) (x0@@27 T@U) (x1@@21 T@U) (x2@@17 T@U) (x3@@12 T@U) (x4@@6 T@U) (x5 T@U) (val@@28 T@U) ) (! (let ((aVar6@@1 (MapType6TypeInv6 (type m@@67))))
 (=> (= (type val@@28) aVar6@@1) (= (MapType6Select (MapType6Store m@@67 x0@@27 x1@@21 x2@@17 x3@@12 x4@@6 x5 val@@28) x0@@27 x1@@21 x2@@17 x3@@12 x4@@6 x5) val@@28)))
 :qid |mapAx0:MapType6Select|
 :weight 0
))) (and (and (and (and (and (and (forall ((val@@29 T@U) (m@@68 T@U) (x0@@28 T@U) (x1@@22 T@U) (x2@@18 T@U) (x3@@13 T@U) (x4@@7 T@U) (x5@@0 T@U) (y0@@21 T@U) (y1@@17 T@U) (y2@@14 T@U) (y3@@10 T@U) (y4@@5 T@U) (y5 T@U) ) (!  (or (= x0@@28 y0@@21) (= (MapType6Select (MapType6Store m@@68 x0@@28 x1@@22 x2@@18 x3@@13 x4@@7 x5@@0 val@@29) y0@@21 y1@@17 y2@@14 y3@@10 y4@@5 y5) (MapType6Select m@@68 y0@@21 y1@@17 y2@@14 y3@@10 y4@@5 y5)))
 :qid |mapAx1:MapType6Select:0|
 :weight 0
)) (forall ((val@@30 T@U) (m@@69 T@U) (x0@@29 T@U) (x1@@23 T@U) (x2@@19 T@U) (x3@@14 T@U) (x4@@8 T@U) (x5@@1 T@U) (y0@@22 T@U) (y1@@18 T@U) (y2@@15 T@U) (y3@@11 T@U) (y4@@6 T@U) (y5@@0 T@U) ) (!  (or (= x1@@23 y1@@18) (= (MapType6Select (MapType6Store m@@69 x0@@29 x1@@23 x2@@19 x3@@14 x4@@8 x5@@1 val@@30) y0@@22 y1@@18 y2@@15 y3@@11 y4@@6 y5@@0) (MapType6Select m@@69 y0@@22 y1@@18 y2@@15 y3@@11 y4@@6 y5@@0)))
 :qid |mapAx1:MapType6Select:1|
 :weight 0
))) (forall ((val@@31 T@U) (m@@70 T@U) (x0@@30 T@U) (x1@@24 T@U) (x2@@20 T@U) (x3@@15 T@U) (x4@@9 T@U) (x5@@2 T@U) (y0@@23 T@U) (y1@@19 T@U) (y2@@16 T@U) (y3@@12 T@U) (y4@@7 T@U) (y5@@1 T@U) ) (!  (or (= x2@@20 y2@@16) (= (MapType6Select (MapType6Store m@@70 x0@@30 x1@@24 x2@@20 x3@@15 x4@@9 x5@@2 val@@31) y0@@23 y1@@19 y2@@16 y3@@12 y4@@7 y5@@1) (MapType6Select m@@70 y0@@23 y1@@19 y2@@16 y3@@12 y4@@7 y5@@1)))
 :qid |mapAx1:MapType6Select:2|
 :weight 0
))) (forall ((val@@32 T@U) (m@@71 T@U) (x0@@31 T@U) (x1@@25 T@U) (x2@@21 T@U) (x3@@16 T@U) (x4@@10 T@U) (x5@@3 T@U) (y0@@24 T@U) (y1@@20 T@U) (y2@@17 T@U) (y3@@13 T@U) (y4@@8 T@U) (y5@@2 T@U) ) (!  (or (= x3@@16 y3@@13) (= (MapType6Select (MapType6Store m@@71 x0@@31 x1@@25 x2@@21 x3@@16 x4@@10 x5@@3 val@@32) y0@@24 y1@@20 y2@@17 y3@@13 y4@@8 y5@@2) (MapType6Select m@@71 y0@@24 y1@@20 y2@@17 y3@@13 y4@@8 y5@@2)))
 :qid |mapAx1:MapType6Select:3|
 :weight 0
))) (forall ((val@@33 T@U) (m@@72 T@U) (x0@@32 T@U) (x1@@26 T@U) (x2@@22 T@U) (x3@@17 T@U) (x4@@11 T@U) (x5@@4 T@U) (y0@@25 T@U) (y1@@21 T@U) (y2@@18 T@U) (y3@@14 T@U) (y4@@9 T@U) (y5@@3 T@U) ) (!  (or (= x4@@11 y4@@9) (= (MapType6Select (MapType6Store m@@72 x0@@32 x1@@26 x2@@22 x3@@17 x4@@11 x5@@4 val@@33) y0@@25 y1@@21 y2@@18 y3@@14 y4@@9 y5@@3) (MapType6Select m@@72 y0@@25 y1@@21 y2@@18 y3@@14 y4@@9 y5@@3)))
 :qid |mapAx1:MapType6Select:4|
 :weight 0
))) (forall ((val@@34 T@U) (m@@73 T@U) (x0@@33 T@U) (x1@@27 T@U) (x2@@23 T@U) (x3@@18 T@U) (x4@@12 T@U) (x5@@5 T@U) (y0@@26 T@U) (y1@@22 T@U) (y2@@19 T@U) (y3@@15 T@U) (y4@@10 T@U) (y5@@4 T@U) ) (!  (or (= x5@@5 y5@@4) (= (MapType6Select (MapType6Store m@@73 x0@@33 x1@@27 x2@@23 x3@@18 x4@@12 x5@@5 val@@34) y0@@26 y1@@22 y2@@19 y3@@15 y4@@10 y5@@4) (MapType6Select m@@73 y0@@26 y1@@22 y2@@19 y3@@15 y4@@10 y5@@4)))
 :qid |mapAx1:MapType6Select:5|
 :weight 0
))) (forall ((val@@35 T@U) (m@@74 T@U) (x0@@34 T@U) (x1@@28 T@U) (x2@@24 T@U) (x3@@19 T@U) (x4@@13 T@U) (x5@@6 T@U) (y0@@27 T@U) (y1@@23 T@U) (y2@@20 T@U) (y3@@16 T@U) (y4@@11 T@U) (y5@@5 T@U) ) (!  (or true (= (MapType6Select (MapType6Store m@@74 x0@@34 x1@@28 x2@@24 x3@@19 x4@@13 x5@@6 val@@35) y0@@27 y1@@23 y2@@20 y3@@16 y4@@11 y5@@5) (MapType6Select m@@74 y0@@27 y1@@23 y2@@20 y3@@16 y4@@11 y5@@5)))
 :qid |mapAx2:MapType6Select|
 :weight 0
)))) (forall ((arg0@@240 T@U) (arg1@@120 T@U) (arg2@@72 T@U) (arg3@@50 T@U) (arg4@@39 T@U) (arg5@@26 T@U) (arg6@@16 T@U) (arg7@@4 T@U) (arg8@@3 T@U) (arg9@@1 T@U) (arg10@@1 T@U) (arg11 T@U) (arg12 T@U) ) (! (= (type (Apply5 arg0@@240 arg1@@120 arg2@@72 arg3@@50 arg4@@39 arg5@@26 arg6@@16 arg7@@4 arg8@@3 arg9@@1 arg10@@1 arg11 arg12)) BoxType)
 :qid |funType:Apply5|
 :pattern ( (Apply5 arg0@@240 arg1@@120 arg2@@72 arg3@@50 arg4@@39 arg5@@26 arg6@@16 arg7@@4 arg8@@3 arg9@@1 arg10@@1 arg11 arg12))
))) (forall ((arg0@@241 T@U) (arg1@@121 T@U) (arg2@@73 T@U) ) (! (= (type (Handle5 arg0@@241 arg1@@121 arg2@@73)) HandleTypeType)
 :qid |funType:Handle5|
 :pattern ( (Handle5 arg0@@241 arg1@@121 arg2@@73))
))))
(assert (forall ((t0@@91 T@U) (t1@@67 T@U) (t2@@44 T@U) (t3@@29 T@U) (t4@@14 T@U) (t5 T@U) (heap@@26 T@U) (h@@51 T@U) (r@@26 T@U) (rd@@14 T@U) (bx0@@55 T@U) (bx1@@41 T@U) (bx2@@27 T@U) (bx3@@13 T@U) (bx4 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@91) TyType) (= (type t1@@67) TyType)) (= (type t2@@44) TyType)) (= (type t3@@29) TyType)) (= (type t4@@14) TyType)) (= (type t5) TyType)) (= (type heap@@26) (MapType0Type refType MapType1Type))) (= (type h@@51) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType BoxType))) (= (type r@@26) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType boolType))) (= (type rd@@14) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@55) BoxType)) (= (type bx1@@41) BoxType)) (= (type bx2@@27) BoxType)) (= (type bx3@@13) BoxType)) (= (type bx4) BoxType)) (= (Apply5 t0@@91 t1@@67 t2@@44 t3@@29 t4@@14 t5 heap@@26 (Handle5 h@@51 r@@26 rd@@14) bx0@@55 bx1@@41 bx2@@27 bx3@@13 bx4) (MapType6Select h@@51 heap@@26 bx0@@55 bx1@@41 bx2@@27 bx3@@13 bx4)))
 :qid |unknown.0:0|
 :skolemid |2153|
 :pattern ( (Apply5 t0@@91 t1@@67 t2@@44 t3@@29 t4@@14 t5 heap@@26 (Handle5 h@@51 r@@26 rd@@14) bx0@@55 bx1@@41 bx2@@27 bx3@@13 bx4))
)))
(assert (forall ((t0@@92 T@U) (t1@@68 T@U) (t2@@45 T@U) (t3@@30 T@U) (t4@@15 T@U) (t5@@0 T@U) (heap@@27 T@U) (h@@52 T@U) (r@@27 T@U) (rd@@15 T@U) (bx0@@56 T@U) (bx1@@42 T@U) (bx2@@28 T@U) (bx3@@14 T@U) (bx4@@0 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@92) TyType) (= (type t1@@68) TyType)) (= (type t2@@45) TyType)) (= (type t3@@30) TyType)) (= (type t4@@15) TyType)) (= (type t5@@0) TyType)) (= (type heap@@27) (MapType0Type refType MapType1Type))) (= (type h@@52) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType BoxType))) (= (type r@@27) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType boolType))) (= (type rd@@15) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@56) BoxType)) (= (type bx1@@42) BoxType)) (= (type bx2@@28) BoxType)) (= (type bx3@@14) BoxType)) (= (type bx4@@0) BoxType)) (U_2_bool (MapType6Select r@@27 heap@@27 bx0@@56 bx1@@42 bx2@@28 bx3@@14 bx4@@0))) (Requires5 t0@@92 t1@@68 t2@@45 t3@@30 t4@@15 t5@@0 heap@@27 (Handle5 h@@52 r@@27 rd@@15) bx0@@56 bx1@@42 bx2@@28 bx3@@14 bx4@@0))
 :qid |unknown.0:0|
 :skolemid |2154|
 :pattern ( (Requires5 t0@@92 t1@@68 t2@@45 t3@@30 t4@@15 t5@@0 heap@@27 (Handle5 h@@52 r@@27 rd@@15) bx0@@56 bx1@@42 bx2@@28 bx3@@14 bx4@@0))
)))
(assert (forall ((arg0@@242 T@U) (arg1@@122 T@U) (arg2@@74 T@U) (arg3@@51 T@U) (arg4@@40 T@U) (arg5@@27 T@U) (arg6@@17 T@U) (arg7@@5 T@U) (arg8@@4 T@U) (arg9@@2 T@U) (arg10@@2 T@U) (arg11@@0 T@U) (arg12@@0 T@U) ) (! (= (type (Reads5 arg0@@242 arg1@@122 arg2@@74 arg3@@51 arg4@@40 arg5@@27 arg6@@17 arg7@@5 arg8@@4 arg9@@2 arg10@@2 arg11@@0 arg12@@0)) (MapType0Type BoxType boolType))
 :qid |funType:Reads5|
 :pattern ( (Reads5 arg0@@242 arg1@@122 arg2@@74 arg3@@51 arg4@@40 arg5@@27 arg6@@17 arg7@@5 arg8@@4 arg9@@2 arg10@@2 arg11@@0 arg12@@0))
)))
(assert (forall ((t0@@93 T@U) (t1@@69 T@U) (t2@@46 T@U) (t3@@31 T@U) (t4@@16 T@U) (t5@@1 T@U) (heap@@28 T@U) (h@@53 T@U) (r@@28 T@U) (rd@@16 T@U) (bx0@@57 T@U) (bx1@@43 T@U) (bx2@@29 T@U) (bx3@@15 T@U) (bx4@@1 T@U) (bx@@68 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@93) TyType) (= (type t1@@69) TyType)) (= (type t2@@46) TyType)) (= (type t3@@31) TyType)) (= (type t4@@16) TyType)) (= (type t5@@1) TyType)) (= (type heap@@28) (MapType0Type refType MapType1Type))) (= (type h@@53) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType BoxType))) (= (type r@@28) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType boolType))) (= (type rd@@16) (MapType6Type (MapType0Type refType MapType1Type) BoxType BoxType BoxType BoxType BoxType (MapType0Type BoxType boolType)))) (= (type bx0@@57) BoxType)) (= (type bx1@@43) BoxType)) (= (type bx2@@29) BoxType)) (= (type bx3@@15) BoxType)) (= (type bx4@@1) BoxType)) (= (type bx@@68) BoxType)) (= (U_2_bool (MapType0Select (Reads5 t0@@93 t1@@69 t2@@46 t3@@31 t4@@16 t5@@1 heap@@28 (Handle5 h@@53 r@@28 rd@@16) bx0@@57 bx1@@43 bx2@@29 bx3@@15 bx4@@1) bx@@68)) (U_2_bool (MapType0Select (MapType6Select rd@@16 heap@@28 bx0@@57 bx1@@43 bx2@@29 bx3@@15 bx4@@1) bx@@68))))
 :qid |unknown.0:0|
 :skolemid |2155|
 :pattern ( (MapType0Select (Reads5 t0@@93 t1@@69 t2@@46 t3@@31 t4@@16 t5@@1 heap@@28 (Handle5 h@@53 r@@28 rd@@16) bx0@@57 bx1@@43 bx2@@29 bx3@@15 bx4@@1) bx@@68))
)))
(assert (forall ((t0@@94 T@U) (t1@@70 T@U) (t2@@47 T@U) (t3@@32 T@U) (t4@@17 T@U) (t5@@2 T@U) (h0@@30 T@U) (h1@@30 T@U) (f@@65 T@U) (bx0@@58 T@U) (bx1@@44 T@U) (bx2@@30 T@U) (bx3@@16 T@U) (bx4@@2 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@94) TyType) (= (type t1@@70) TyType)) (= (type t2@@47) TyType)) (= (type t3@@32) TyType)) (= (type t4@@17) TyType)) (= (type t5@@2) TyType)) (= (type h0@@30) (MapType0Type refType MapType1Type))) (= (type h1@@30) (MapType0Type refType MapType1Type))) (= (type f@@65) HandleTypeType)) (= (type bx0@@58) BoxType)) (= (type bx1@@44) BoxType)) (= (type bx2@@30) BoxType)) (= (type bx3@@16) BoxType)) (= (type bx4@@2) BoxType)) (and (and (and ($HeapSucc h0@@30 h1@@30) (and ($IsGoodHeap h0@@30) ($IsGoodHeap h1@@30))) (and (and (and (and (and ($IsBox bx0@@58 t0@@94) ($IsBox bx1@@44 t1@@70)) ($IsBox bx2@@30 t2@@47)) ($IsBox bx3@@16 t3@@32)) ($IsBox bx4@@2 t4@@17)) ($Is f@@65 (Tclass._System.___hFunc5 t0@@94 t1@@70 t2@@47 t3@@32 t4@@17 t5@@2)))) (forall ((o@@74 T@U) (fld@@29 T@U) ) (! (let ((a@@112 (FieldTypeInv0 (type fld@@29))))
 (=> (and (and (= (type o@@74) refType) (= (type fld@@29) (FieldType a@@112))) (and (not (= o@@74 null)) (U_2_bool (MapType0Select (Reads5 t0@@94 t1@@70 t2@@47 t3@@32 t4@@17 t5@@2 h0@@30 f@@65 bx0@@58 bx1@@44 bx2@@30 bx3@@16 bx4@@2) ($Box o@@74))))) (= (MapType1Select (MapType0Select h0@@30 o@@74) fld@@29) (MapType1Select (MapType0Select h1@@30 o@@74) fld@@29))))
 :qid |unknown.0:0|
 :skolemid |2156|
 :no-pattern (type o@@74)
 :no-pattern (type fld@@29)
 :no-pattern (U_2_int o@@74)
 :no-pattern (U_2_bool o@@74)
 :no-pattern (U_2_int fld@@29)
 :no-pattern (U_2_bool fld@@29)
)))) (= (Reads5 t0@@94 t1@@70 t2@@47 t3@@32 t4@@17 t5@@2 h0@@30 f@@65 bx0@@58 bx1@@44 bx2@@30 bx3@@16 bx4@@2) (Reads5 t0@@94 t1@@70 t2@@47 t3@@32 t4@@17 t5@@2 h1@@30 f@@65 bx0@@58 bx1@@44 bx2@@30 bx3@@16 bx4@@2)))
 :qid |unknown.0:0|
 :skolemid |2157|
 :pattern ( ($HeapSucc h0@@30 h1@@30) (Reads5 t0@@94 t1@@70 t2@@47 t3@@32 t4@@17 t5@@2 h1@@30 f@@65 bx0@@58 bx1@@44 bx2@@30 bx3@@16 bx4@@2))
)))
(assert (forall ((t0@@95 T@U) (t1@@71 T@U) (t2@@48 T@U) (t3@@33 T@U) (t4@@18 T@U) (t5@@3 T@U) (h0@@31 T@U) (h1@@31 T@U) (f@@66 T@U) (bx0@@59 T@U) (bx1@@45 T@U) (bx2@@31 T@U) (bx3@@17 T@U) (bx4@@3 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@95) TyType) (= (type t1@@71) TyType)) (= (type t2@@48) TyType)) (= (type t3@@33) TyType)) (= (type t4@@18) TyType)) (= (type t5@@3) TyType)) (= (type h0@@31) (MapType0Type refType MapType1Type))) (= (type h1@@31) (MapType0Type refType MapType1Type))) (= (type f@@66) HandleTypeType)) (= (type bx0@@59) BoxType)) (= (type bx1@@45) BoxType)) (= (type bx2@@31) BoxType)) (= (type bx3@@17) BoxType)) (= (type bx4@@3) BoxType)) (and (and (and ($HeapSucc h0@@31 h1@@31) (and ($IsGoodHeap h0@@31) ($IsGoodHeap h1@@31))) (and (and (and (and (and ($IsBox bx0@@59 t0@@95) ($IsBox bx1@@45 t1@@71)) ($IsBox bx2@@31 t2@@48)) ($IsBox bx3@@17 t3@@33)) ($IsBox bx4@@3 t4@@18)) ($Is f@@66 (Tclass._System.___hFunc5 t0@@95 t1@@71 t2@@48 t3@@33 t4@@18 t5@@3)))) (forall ((o@@75 T@U) (fld@@30 T@U) ) (! (let ((a@@113 (FieldTypeInv0 (type fld@@30))))
 (=> (and (and (= (type o@@75) refType) (= (type fld@@30) (FieldType a@@113))) (and (not (= o@@75 null)) (U_2_bool (MapType0Select (Reads5 t0@@95 t1@@71 t2@@48 t3@@33 t4@@18 t5@@3 h1@@31 f@@66 bx0@@59 bx1@@45 bx2@@31 bx3@@17 bx4@@3) ($Box o@@75))))) (= (MapType1Select (MapType0Select h0@@31 o@@75) fld@@30) (MapType1Select (MapType0Select h1@@31 o@@75) fld@@30))))
 :qid |unknown.0:0|
 :skolemid |2158|
 :no-pattern (type o@@75)
 :no-pattern (type fld@@30)
 :no-pattern (U_2_int o@@75)
 :no-pattern (U_2_bool o@@75)
 :no-pattern (U_2_int fld@@30)
 :no-pattern (U_2_bool fld@@30)
)))) (= (Reads5 t0@@95 t1@@71 t2@@48 t3@@33 t4@@18 t5@@3 h0@@31 f@@66 bx0@@59 bx1@@45 bx2@@31 bx3@@17 bx4@@3) (Reads5 t0@@95 t1@@71 t2@@48 t3@@33 t4@@18 t5@@3 h1@@31 f@@66 bx0@@59 bx1@@45 bx2@@31 bx3@@17 bx4@@3)))
 :qid |unknown.0:0|
 :skolemid |2159|
 :pattern ( ($HeapSucc h0@@31 h1@@31) (Reads5 t0@@95 t1@@71 t2@@48 t3@@33 t4@@18 t5@@3 h1@@31 f@@66 bx0@@59 bx1@@45 bx2@@31 bx3@@17 bx4@@3))
)))
(assert (forall ((t0@@96 T@U) (t1@@72 T@U) (t2@@49 T@U) (t3@@34 T@U) (t4@@19 T@U) (t5@@4 T@U) (h0@@32 T@U) (h1@@32 T@U) (f@@67 T@U) (bx0@@60 T@U) (bx1@@46 T@U) (bx2@@32 T@U) (bx3@@18 T@U) (bx4@@4 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@96) TyType) (= (type t1@@72) TyType)) (= (type t2@@49) TyType)) (= (type t3@@34) TyType)) (= (type t4@@19) TyType)) (= (type t5@@4) TyType)) (= (type h0@@32) (MapType0Type refType MapType1Type))) (= (type h1@@32) (MapType0Type refType MapType1Type))) (= (type f@@67) HandleTypeType)) (= (type bx0@@60) BoxType)) (= (type bx1@@46) BoxType)) (= (type bx2@@32) BoxType)) (= (type bx3@@18) BoxType)) (= (type bx4@@4) BoxType)) (and (and (and ($HeapSucc h0@@32 h1@@32) (and ($IsGoodHeap h0@@32) ($IsGoodHeap h1@@32))) (and (and (and (and (and ($IsBox bx0@@60 t0@@96) ($IsBox bx1@@46 t1@@72)) ($IsBox bx2@@32 t2@@49)) ($IsBox bx3@@18 t3@@34)) ($IsBox bx4@@4 t4@@19)) ($Is f@@67 (Tclass._System.___hFunc5 t0@@96 t1@@72 t2@@49 t3@@34 t4@@19 t5@@4)))) (forall ((o@@76 T@U) (fld@@31 T@U) ) (! (let ((a@@114 (FieldTypeInv0 (type fld@@31))))
 (=> (and (and (= (type o@@76) refType) (= (type fld@@31) (FieldType a@@114))) (and (not (= o@@76 null)) (U_2_bool (MapType0Select (Reads5 t0@@96 t1@@72 t2@@49 t3@@34 t4@@19 t5@@4 h0@@32 f@@67 bx0@@60 bx1@@46 bx2@@32 bx3@@18 bx4@@4) ($Box o@@76))))) (= (MapType1Select (MapType0Select h0@@32 o@@76) fld@@31) (MapType1Select (MapType0Select h1@@32 o@@76) fld@@31))))
 :qid |unknown.0:0|
 :skolemid |2160|
 :no-pattern (type o@@76)
 :no-pattern (type fld@@31)
 :no-pattern (U_2_int o@@76)
 :no-pattern (U_2_bool o@@76)
 :no-pattern (U_2_int fld@@31)
 :no-pattern (U_2_bool fld@@31)
)))) (= (Requires5 t0@@96 t1@@72 t2@@49 t3@@34 t4@@19 t5@@4 h0@@32 f@@67 bx0@@60 bx1@@46 bx2@@32 bx3@@18 bx4@@4) (Requires5 t0@@96 t1@@72 t2@@49 t3@@34 t4@@19 t5@@4 h1@@32 f@@67 bx0@@60 bx1@@46 bx2@@32 bx3@@18 bx4@@4)))
 :qid |unknown.0:0|
 :skolemid |2161|
 :pattern ( ($HeapSucc h0@@32 h1@@32) (Requires5 t0@@96 t1@@72 t2@@49 t3@@34 t4@@19 t5@@4 h1@@32 f@@67 bx0@@60 bx1@@46 bx2@@32 bx3@@18 bx4@@4))
)))
(assert (forall ((t0@@97 T@U) (t1@@73 T@U) (t2@@50 T@U) (t3@@35 T@U) (t4@@20 T@U) (t5@@5 T@U) (h0@@33 T@U) (h1@@33 T@U) (f@@68 T@U) (bx0@@61 T@U) (bx1@@47 T@U) (bx2@@33 T@U) (bx3@@19 T@U) (bx4@@5 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@97) TyType) (= (type t1@@73) TyType)) (= (type t2@@50) TyType)) (= (type t3@@35) TyType)) (= (type t4@@20) TyType)) (= (type t5@@5) TyType)) (= (type h0@@33) (MapType0Type refType MapType1Type))) (= (type h1@@33) (MapType0Type refType MapType1Type))) (= (type f@@68) HandleTypeType)) (= (type bx0@@61) BoxType)) (= (type bx1@@47) BoxType)) (= (type bx2@@33) BoxType)) (= (type bx3@@19) BoxType)) (= (type bx4@@5) BoxType)) (and (and (and ($HeapSucc h0@@33 h1@@33) (and ($IsGoodHeap h0@@33) ($IsGoodHeap h1@@33))) (and (and (and (and (and ($IsBox bx0@@61 t0@@97) ($IsBox bx1@@47 t1@@73)) ($IsBox bx2@@33 t2@@50)) ($IsBox bx3@@19 t3@@35)) ($IsBox bx4@@5 t4@@20)) ($Is f@@68 (Tclass._System.___hFunc5 t0@@97 t1@@73 t2@@50 t3@@35 t4@@20 t5@@5)))) (forall ((o@@77 T@U) (fld@@32 T@U) ) (! (let ((a@@115 (FieldTypeInv0 (type fld@@32))))
 (=> (and (and (= (type o@@77) refType) (= (type fld@@32) (FieldType a@@115))) (and (not (= o@@77 null)) (U_2_bool (MapType0Select (Reads5 t0@@97 t1@@73 t2@@50 t3@@35 t4@@20 t5@@5 h1@@33 f@@68 bx0@@61 bx1@@47 bx2@@33 bx3@@19 bx4@@5) ($Box o@@77))))) (= (MapType1Select (MapType0Select h0@@33 o@@77) fld@@32) (MapType1Select (MapType0Select h1@@33 o@@77) fld@@32))))
 :qid |unknown.0:0|
 :skolemid |2162|
 :no-pattern (type o@@77)
 :no-pattern (type fld@@32)
 :no-pattern (U_2_int o@@77)
 :no-pattern (U_2_bool o@@77)
 :no-pattern (U_2_int fld@@32)
 :no-pattern (U_2_bool fld@@32)
)))) (= (Requires5 t0@@97 t1@@73 t2@@50 t3@@35 t4@@20 t5@@5 h0@@33 f@@68 bx0@@61 bx1@@47 bx2@@33 bx3@@19 bx4@@5) (Requires5 t0@@97 t1@@73 t2@@50 t3@@35 t4@@20 t5@@5 h1@@33 f@@68 bx0@@61 bx1@@47 bx2@@33 bx3@@19 bx4@@5)))
 :qid |unknown.0:0|
 :skolemid |2163|
 :pattern ( ($HeapSucc h0@@33 h1@@33) (Requires5 t0@@97 t1@@73 t2@@50 t3@@35 t4@@20 t5@@5 h1@@33 f@@68 bx0@@61 bx1@@47 bx2@@33 bx3@@19 bx4@@5))
)))
(assert (forall ((t0@@98 T@U) (t1@@74 T@U) (t2@@51 T@U) (t3@@36 T@U) (t4@@21 T@U) (t5@@6 T@U) (h0@@34 T@U) (h1@@34 T@U) (f@@69 T@U) (bx0@@62 T@U) (bx1@@48 T@U) (bx2@@34 T@U) (bx3@@20 T@U) (bx4@@6 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@98) TyType) (= (type t1@@74) TyType)) (= (type t2@@51) TyType)) (= (type t3@@36) TyType)) (= (type t4@@21) TyType)) (= (type t5@@6) TyType)) (= (type h0@@34) (MapType0Type refType MapType1Type))) (= (type h1@@34) (MapType0Type refType MapType1Type))) (= (type f@@69) HandleTypeType)) (= (type bx0@@62) BoxType)) (= (type bx1@@48) BoxType)) (= (type bx2@@34) BoxType)) (= (type bx3@@20) BoxType)) (= (type bx4@@6) BoxType)) (and (and (and ($HeapSucc h0@@34 h1@@34) (and ($IsGoodHeap h0@@34) ($IsGoodHeap h1@@34))) (and (and (and (and (and ($IsBox bx0@@62 t0@@98) ($IsBox bx1@@48 t1@@74)) ($IsBox bx2@@34 t2@@51)) ($IsBox bx3@@20 t3@@36)) ($IsBox bx4@@6 t4@@21)) ($Is f@@69 (Tclass._System.___hFunc5 t0@@98 t1@@74 t2@@51 t3@@36 t4@@21 t5@@6)))) (forall ((o@@78 T@U) (fld@@33 T@U) ) (! (let ((a@@116 (FieldTypeInv0 (type fld@@33))))
 (=> (and (and (= (type o@@78) refType) (= (type fld@@33) (FieldType a@@116))) (and (not (= o@@78 null)) (U_2_bool (MapType0Select (Reads5 t0@@98 t1@@74 t2@@51 t3@@36 t4@@21 t5@@6 h0@@34 f@@69 bx0@@62 bx1@@48 bx2@@34 bx3@@20 bx4@@6) ($Box o@@78))))) (= (MapType1Select (MapType0Select h0@@34 o@@78) fld@@33) (MapType1Select (MapType0Select h1@@34 o@@78) fld@@33))))
 :qid |unknown.0:0|
 :skolemid |2164|
 :no-pattern (type o@@78)
 :no-pattern (type fld@@33)
 :no-pattern (U_2_int o@@78)
 :no-pattern (U_2_bool o@@78)
 :no-pattern (U_2_int fld@@33)
 :no-pattern (U_2_bool fld@@33)
)))) (= (Apply5 t0@@98 t1@@74 t2@@51 t3@@36 t4@@21 t5@@6 h0@@34 f@@69 bx0@@62 bx1@@48 bx2@@34 bx3@@20 bx4@@6) (Apply5 t0@@98 t1@@74 t2@@51 t3@@36 t4@@21 t5@@6 h1@@34 f@@69 bx0@@62 bx1@@48 bx2@@34 bx3@@20 bx4@@6)))
 :qid |unknown.0:0|
 :skolemid |2165|
 :pattern ( ($HeapSucc h0@@34 h1@@34) (Apply5 t0@@98 t1@@74 t2@@51 t3@@36 t4@@21 t5@@6 h1@@34 f@@69 bx0@@62 bx1@@48 bx2@@34 bx3@@20 bx4@@6))
)))
(assert (forall ((t0@@99 T@U) (t1@@75 T@U) (t2@@52 T@U) (t3@@37 T@U) (t4@@22 T@U) (t5@@7 T@U) (h0@@35 T@U) (h1@@35 T@U) (f@@70 T@U) (bx0@@63 T@U) (bx1@@49 T@U) (bx2@@35 T@U) (bx3@@21 T@U) (bx4@@7 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@99) TyType) (= (type t1@@75) TyType)) (= (type t2@@52) TyType)) (= (type t3@@37) TyType)) (= (type t4@@22) TyType)) (= (type t5@@7) TyType)) (= (type h0@@35) (MapType0Type refType MapType1Type))) (= (type h1@@35) (MapType0Type refType MapType1Type))) (= (type f@@70) HandleTypeType)) (= (type bx0@@63) BoxType)) (= (type bx1@@49) BoxType)) (= (type bx2@@35) BoxType)) (= (type bx3@@21) BoxType)) (= (type bx4@@7) BoxType)) (and (and (and ($HeapSucc h0@@35 h1@@35) (and ($IsGoodHeap h0@@35) ($IsGoodHeap h1@@35))) (and (and (and (and (and ($IsBox bx0@@63 t0@@99) ($IsBox bx1@@49 t1@@75)) ($IsBox bx2@@35 t2@@52)) ($IsBox bx3@@21 t3@@37)) ($IsBox bx4@@7 t4@@22)) ($Is f@@70 (Tclass._System.___hFunc5 t0@@99 t1@@75 t2@@52 t3@@37 t4@@22 t5@@7)))) (forall ((o@@79 T@U) (fld@@34 T@U) ) (! (let ((a@@117 (FieldTypeInv0 (type fld@@34))))
 (=> (and (and (= (type o@@79) refType) (= (type fld@@34) (FieldType a@@117))) (and (not (= o@@79 null)) (U_2_bool (MapType0Select (Reads5 t0@@99 t1@@75 t2@@52 t3@@37 t4@@22 t5@@7 h1@@35 f@@70 bx0@@63 bx1@@49 bx2@@35 bx3@@21 bx4@@7) ($Box o@@79))))) (= (MapType1Select (MapType0Select h0@@35 o@@79) fld@@34) (MapType1Select (MapType0Select h1@@35 o@@79) fld@@34))))
 :qid |unknown.0:0|
 :skolemid |2166|
 :no-pattern (type o@@79)
 :no-pattern (type fld@@34)
 :no-pattern (U_2_int o@@79)
 :no-pattern (U_2_bool o@@79)
 :no-pattern (U_2_int fld@@34)
 :no-pattern (U_2_bool fld@@34)
)))) (= (Apply5 t0@@99 t1@@75 t2@@52 t3@@37 t4@@22 t5@@7 h0@@35 f@@70 bx0@@63 bx1@@49 bx2@@35 bx3@@21 bx4@@7) (Apply5 t0@@99 t1@@75 t2@@52 t3@@37 t4@@22 t5@@7 h1@@35 f@@70 bx0@@63 bx1@@49 bx2@@35 bx3@@21 bx4@@7)))
 :qid |unknown.0:0|
 :skolemid |2167|
 :pattern ( ($HeapSucc h0@@35 h1@@35) (Apply5 t0@@99 t1@@75 t2@@52 t3@@37 t4@@22 t5@@7 h1@@35 f@@70 bx0@@63 bx1@@49 bx2@@35 bx3@@21 bx4@@7))
)))
(assert (forall ((t0@@100 T@U) (t1@@76 T@U) (t2@@53 T@U) (t3@@38 T@U) (t4@@23 T@U) (t5@@8 T@U) (heap@@29 T@U) (f@@71 T@U) (bx0@@64 T@U) (bx1@@50 T@U) (bx2@@36 T@U) (bx3@@22 T@U) (bx4@@8 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@100) TyType) (= (type t1@@76) TyType)) (= (type t2@@53) TyType)) (= (type t3@@38) TyType)) (= (type t4@@23) TyType)) (= (type t5@@8) TyType)) (= (type heap@@29) (MapType0Type refType MapType1Type))) (= (type f@@71) HandleTypeType)) (= (type bx0@@64) BoxType)) (= (type bx1@@50) BoxType)) (= (type bx2@@36) BoxType)) (= (type bx3@@22) BoxType)) (= (type bx4@@8) BoxType)) (and ($IsGoodHeap heap@@29) (and (and (and (and (and ($IsBox bx0@@64 t0@@100) ($IsBox bx1@@50 t1@@76)) ($IsBox bx2@@36 t2@@53)) ($IsBox bx3@@22 t3@@38)) ($IsBox bx4@@8 t4@@23)) ($Is f@@71 (Tclass._System.___hFunc5 t0@@100 t1@@76 t2@@53 t3@@38 t4@@23 t5@@8))))) (= (|Set#Equal| (Reads5 t0@@100 t1@@76 t2@@53 t3@@38 t4@@23 t5@@8 $OneHeap f@@71 bx0@@64 bx1@@50 bx2@@36 bx3@@22 bx4@@8) (|Set#Empty| BoxType)) (|Set#Equal| (Reads5 t0@@100 t1@@76 t2@@53 t3@@38 t4@@23 t5@@8 heap@@29 f@@71 bx0@@64 bx1@@50 bx2@@36 bx3@@22 bx4@@8) (|Set#Empty| BoxType))))
 :qid |unknown.0:0|
 :skolemid |2168|
 :pattern ( (Reads5 t0@@100 t1@@76 t2@@53 t3@@38 t4@@23 t5@@8 $OneHeap f@@71 bx0@@64 bx1@@50 bx2@@36 bx3@@22 bx4@@8) ($IsGoodHeap heap@@29))
 :pattern ( (Reads5 t0@@100 t1@@76 t2@@53 t3@@38 t4@@23 t5@@8 heap@@29 f@@71 bx0@@64 bx1@@50 bx2@@36 bx3@@22 bx4@@8))
)))
(assert (forall ((t0@@101 T@U) (t1@@77 T@U) (t2@@54 T@U) (t3@@39 T@U) (t4@@24 T@U) (t5@@9 T@U) (heap@@30 T@U) (f@@72 T@U) (bx0@@65 T@U) (bx1@@51 T@U) (bx2@@37 T@U) (bx3@@23 T@U) (bx4@@9 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type t0@@101) TyType) (= (type t1@@77) TyType)) (= (type t2@@54) TyType)) (= (type t3@@39) TyType)) (= (type t4@@24) TyType)) (= (type t5@@9) TyType)) (= (type heap@@30) (MapType0Type refType MapType1Type))) (= (type f@@72) HandleTypeType)) (= (type bx0@@65) BoxType)) (= (type bx1@@51) BoxType)) (= (type bx2@@37) BoxType)) (= (type bx3@@23) BoxType)) (= (type bx4@@9) BoxType)) (and (and ($IsGoodHeap heap@@30) (and (and (and (and (and ($IsBox bx0@@65 t0@@101) ($IsBox bx1@@51 t1@@77)) ($IsBox bx2@@37 t2@@54)) ($IsBox bx3@@23 t3@@39)) ($IsBox bx4@@9 t4@@24)) ($Is f@@72 (Tclass._System.___hFunc5 t0@@101 t1@@77 t2@@54 t3@@39 t4@@24 t5@@9)))) (|Set#Equal| (Reads5 t0@@101 t1@@77 t2@@54 t3@@39 t4@@24 t5@@9 $OneHeap f@@72 bx0@@65 bx1@@51 bx2@@37 bx3@@23 bx4@@9) (|Set#Empty| BoxType)))) (= (Requires5 t0@@101 t1@@77 t2@@54 t3@@39 t4@@24 t5@@9 $OneHeap f@@72 bx0@@65 bx1@@51 bx2@@37 bx3@@23 bx4@@9) (Requires5 t0@@101 t1@@77 t2@@54 t3@@39 t4@@24 t5@@9 heap@@30 f@@72 bx0@@65 bx1@@51 bx2@@37 bx3@@23 bx4@@9)))
 :qid |unknown.0:0|
 :skolemid |2169|
 :pattern ( (Requires5 t0@@101 t1@@77 t2@@54 t3@@39 t4@@24 t5@@9 $OneHeap f@@72 bx0@@65 bx1@@51 bx2@@37 bx3@@23 bx4@@9) ($IsGoodHeap heap@@30))
 :pattern ( (Requires5 t0@@101 t1@@77 t2@@54 t3@@39 t4@@24 t5@@9 heap@@30 f@@72 bx0@@65 bx1@@51 bx2@@37 bx3@@23 bx4@@9))
)))
(assert (forall ((f@@73 T@U) (t0@@102 T@U) (t1@@78 T@U) (t2@@55 T@U) (t3@@40 T@U) (t4@@25 T@U) (t5@@10 T@U) ) (!  (=> (and (and (and (and (and (and (= (type f@@73) HandleTypeType) (= (type t0@@102) TyType)) (= (type t1@@78) TyType)) (= (type t2@@55) TyType)) (= (type t3@@40) TyType)) (= (type t4@@25) TyType)) (= (type t5@@10) TyType)) (= ($Is f@@73 (Tclass._System.___hFunc5 t0@@102 t1@@78 t2@@55 t3@@40 t4@@25 t5@@10)) (forall ((h@@54 T@U) (bx0@@66 T@U) (bx1@@52 T@U) (bx2@@38 T@U) (bx3@@24 T@U) (bx4@@10 T@U) ) (!  (=> (and (and (and (and (and (and (= (type h@@54) (MapType0Type refType MapType1Type)) (= (type bx0@@66) BoxType)) (= (type bx1@@52) BoxType)) (= (type bx2@@38) BoxType)) (= (type bx3@@24) BoxType)) (= (type bx4@@10) BoxType)) (and (and ($IsGoodHeap h@@54) (and (and (and (and ($IsBox bx0@@66 t0@@102) ($IsBox bx1@@52 t1@@78)) ($IsBox bx2@@38 t2@@55)) ($IsBox bx3@@24 t3@@40)) ($IsBox bx4@@10 t4@@25))) (Requires5 t0@@102 t1@@78 t2@@55 t3@@40 t4@@25 t5@@10 h@@54 f@@73 bx0@@66 bx1@@52 bx2@@38 bx3@@24 bx4@@10))) ($IsBox (Apply5 t0@@102 t1@@78 t2@@55 t3@@40 t4@@25 t5@@10 h@@54 f@@73 bx0@@66 bx1@@52 bx2@@38 bx3@@24 bx4@@10) t5@@10))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2170|
 :pattern ( (Apply5 t0@@102 t1@@78 t2@@55 t3@@40 t4@@25 t5@@10 h@@54 f@@73 bx0@@66 bx1@@52 bx2@@38 bx3@@24 bx4@@10))
))))
 :qid |unknown.0:0|
 :skolemid |2171|
 :pattern ( ($Is f@@73 (Tclass._System.___hFunc5 t0@@102 t1@@78 t2@@55 t3@@40 t4@@25 t5@@10)))
)))
(assert (forall ((f@@74 T@U) (t0@@103 T@U) (t1@@79 T@U) (t2@@56 T@U) (t3@@41 T@U) (t4@@26 T@U) (t5@@11 T@U) (u0@@4 T@U) (u1@@3 T@U) (u2@@2 T@U) (u3@@1 T@U) (u4@@0 T@U) (u5 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type f@@74) HandleTypeType) (= (type t0@@103) TyType)) (= (type t1@@79) TyType)) (= (type t2@@56) TyType)) (= (type t3@@41) TyType)) (= (type t4@@26) TyType)) (= (type t5@@11) TyType)) (= (type u0@@4) TyType)) (= (type u1@@3) TyType)) (= (type u2@@2) TyType)) (= (type u3@@1) TyType)) (= (type u4@@0) TyType)) (= (type u5) TyType)) (and (and (and (and (and (and ($Is f@@74 (Tclass._System.___hFunc5 t0@@103 t1@@79 t2@@56 t3@@41 t4@@26 t5@@11)) (forall ((bx@@69 T@U) ) (!  (=> (and (= (type bx@@69) BoxType) ($IsBox bx@@69 u0@@4)) ($IsBox bx@@69 t0@@103))
 :qid |unknown.0:0|
 :skolemid |2172|
 :pattern ( ($IsBox bx@@69 u0@@4))
 :pattern ( ($IsBox bx@@69 t0@@103))
))) (forall ((bx@@70 T@U) ) (!  (=> (and (= (type bx@@70) BoxType) ($IsBox bx@@70 u1@@3)) ($IsBox bx@@70 t1@@79))
 :qid |unknown.0:0|
 :skolemid |2173|
 :pattern ( ($IsBox bx@@70 u1@@3))
 :pattern ( ($IsBox bx@@70 t1@@79))
))) (forall ((bx@@71 T@U) ) (!  (=> (and (= (type bx@@71) BoxType) ($IsBox bx@@71 u2@@2)) ($IsBox bx@@71 t2@@56))
 :qid |unknown.0:0|
 :skolemid |2174|
 :pattern ( ($IsBox bx@@71 u2@@2))
 :pattern ( ($IsBox bx@@71 t2@@56))
))) (forall ((bx@@72 T@U) ) (!  (=> (and (= (type bx@@72) BoxType) ($IsBox bx@@72 u3@@1)) ($IsBox bx@@72 t3@@41))
 :qid |unknown.0:0|
 :skolemid |2175|
 :pattern ( ($IsBox bx@@72 u3@@1))
 :pattern ( ($IsBox bx@@72 t3@@41))
))) (forall ((bx@@73 T@U) ) (!  (=> (and (= (type bx@@73) BoxType) ($IsBox bx@@73 u4@@0)) ($IsBox bx@@73 t4@@26))
 :qid |unknown.0:0|
 :skolemid |2176|
 :pattern ( ($IsBox bx@@73 u4@@0))
 :pattern ( ($IsBox bx@@73 t4@@26))
))) (forall ((bx@@74 T@U) ) (!  (=> (and (= (type bx@@74) BoxType) ($IsBox bx@@74 t5@@11)) ($IsBox bx@@74 u5))
 :qid |unknown.0:0|
 :skolemid |2177|
 :pattern ( ($IsBox bx@@74 t5@@11))
 :pattern ( ($IsBox bx@@74 u5))
)))) ($Is f@@74 (Tclass._System.___hFunc5 u0@@4 u1@@3 u2@@2 u3@@1 u4@@0 u5)))
 :qid |unknown.0:0|
 :skolemid |2178|
 :pattern ( ($Is f@@74 (Tclass._System.___hFunc5 t0@@103 t1@@79 t2@@56 t3@@41 t4@@26 t5@@11)) ($Is f@@74 (Tclass._System.___hFunc5 u0@@4 u1@@3 u2@@2 u3@@1 u4@@0 u5)))
)))
(assert (forall ((f@@75 T@U) (t0@@104 T@U) (t1@@80 T@U) (t2@@57 T@U) (t3@@42 T@U) (t4@@27 T@U) (t5@@12 T@U) (h@@55 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type f@@75) HandleTypeType) (= (type t0@@104) TyType)) (= (type t1@@80) TyType)) (= (type t2@@57) TyType)) (= (type t3@@42) TyType)) (= (type t4@@27) TyType)) (= (type t5@@12) TyType)) (= (type h@@55) (MapType0Type refType MapType1Type))) ($IsGoodHeap h@@55)) (= ($IsAlloc f@@75 (Tclass._System.___hFunc5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12) h@@55) (forall ((bx0@@67 T@U) (bx1@@53 T@U) (bx2@@39 T@U) (bx3@@25 T@U) (bx4@@11 T@U) ) (!  (=> (and (and (and (and (= (type bx0@@67) BoxType) (= (type bx1@@53) BoxType)) (= (type bx2@@39) BoxType)) (= (type bx3@@25) BoxType)) (= (type bx4@@11) BoxType)) (=> (and (and (and (and (and (and ($IsBox bx0@@67 t0@@104) ($IsAllocBox bx0@@67 t0@@104 h@@55)) (and ($IsBox bx1@@53 t1@@80) ($IsAllocBox bx1@@53 t1@@80 h@@55))) (and ($IsBox bx2@@39 t2@@57) ($IsAllocBox bx2@@39 t2@@57 h@@55))) (and ($IsBox bx3@@25 t3@@42) ($IsAllocBox bx3@@25 t3@@42 h@@55))) (and ($IsBox bx4@@11 t4@@27) ($IsAllocBox bx4@@11 t4@@27 h@@55))) (Requires5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12 h@@55 f@@75 bx0@@67 bx1@@53 bx2@@39 bx3@@25 bx4@@11)) (forall ((r@@29 T@U) ) (!  (=> (= (type r@@29) refType) (=> (and (not (= r@@29 null)) (U_2_bool (MapType0Select (Reads5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12 h@@55 f@@75 bx0@@67 bx1@@53 bx2@@39 bx3@@25 bx4@@11) ($Box r@@29)))) (U_2_bool (MapType1Select (MapType0Select h@@55 r@@29) alloc))))
 :qid |unknown.0:0|
 :skolemid |2179|
 :pattern ( (MapType0Select (Reads5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12 h@@55 f@@75 bx0@@67 bx1@@53 bx2@@39 bx3@@25 bx4@@11) ($Box r@@29)))
))))
 :qid |unknown.0:0|
 :skolemid |2180|
 :pattern ( (Apply5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12 h@@55 f@@75 bx0@@67 bx1@@53 bx2@@39 bx3@@25 bx4@@11))
 :pattern ( (Reads5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12 h@@55 f@@75 bx0@@67 bx1@@53 bx2@@39 bx3@@25 bx4@@11))
))))
 :qid |unknown.0:0|
 :skolemid |2181|
 :pattern ( ($IsAlloc f@@75 (Tclass._System.___hFunc5 t0@@104 t1@@80 t2@@57 t3@@42 t4@@27 t5@@12) h@@55))
)))
(assert (forall ((f@@76 T@U) (t0@@105 T@U) (t1@@81 T@U) (t2@@58 T@U) (t3@@43 T@U) (t4@@28 T@U) (t5@@13 T@U) (h@@56 T@U) ) (!  (=> (and (and (and (and (and (and (and (and (= (type f@@76) HandleTypeType) (= (type t0@@105) TyType)) (= (type t1@@81) TyType)) (= (type t2@@58) TyType)) (= (type t3@@43) TyType)) (= (type t4@@28) TyType)) (= (type t5@@13) TyType)) (= (type h@@56) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap h@@56) ($IsAlloc f@@76 (Tclass._System.___hFunc5 t0@@105 t1@@81 t2@@58 t3@@43 t4@@28 t5@@13) h@@56))) (forall ((bx0@@68 T@U) (bx1@@54 T@U) (bx2@@40 T@U) (bx3@@26 T@U) (bx4@@12 T@U) ) (!  (=> (and (and (and (and (= (type bx0@@68) BoxType) (= (type bx1@@54) BoxType)) (= (type bx2@@40) BoxType)) (= (type bx3@@26) BoxType)) (= (type bx4@@12) BoxType)) (=> (and (and (and (and (and ($IsAllocBox bx0@@68 t0@@105 h@@56) ($IsAllocBox bx1@@54 t1@@81 h@@56)) ($IsAllocBox bx2@@40 t2@@58 h@@56)) ($IsAllocBox bx3@@26 t3@@43 h@@56)) ($IsAllocBox bx4@@12 t4@@28 h@@56)) (Requires5 t0@@105 t1@@81 t2@@58 t3@@43 t4@@28 t5@@13 h@@56 f@@76 bx0@@68 bx1@@54 bx2@@40 bx3@@26 bx4@@12)) ($IsAllocBox (Apply5 t0@@105 t1@@81 t2@@58 t3@@43 t4@@28 t5@@13 h@@56 f@@76 bx0@@68 bx1@@54 bx2@@40 bx3@@26 bx4@@12) t5@@13 h@@56)))
 :qid |unknown.0:0|
 :skolemid |2182|
 :pattern ( (Apply5 t0@@105 t1@@81 t2@@58 t3@@43 t4@@28 t5@@13 h@@56 f@@76 bx0@@68 bx1@@54 bx2@@40 bx3@@26 bx4@@12))
)))
 :qid |unknown.0:0|
 :skolemid |2183|
 :pattern ( ($IsAlloc f@@76 (Tclass._System.___hFunc5 t0@@105 t1@@81 t2@@58 t3@@43 t4@@28 t5@@13) h@@56))
)))
(assert (forall ((arg0@@243 T@U) (arg1@@123 T@U) (arg2@@75 T@U) (arg3@@52 T@U) (arg4@@41 T@U) (arg5@@28 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5 arg0@@243 arg1@@123 arg2@@75 arg3@@52 arg4@@41 arg5@@28)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5|
 :pattern ( (Tclass._System.___hPartialFunc5 arg0@@243 arg1@@123 arg2@@75 arg3@@52 arg4@@41 arg5@@28))
)))
(assert (forall ((|#$T0@@89| T@U) (|#$T1@@73| T@U) (|#$T2@@54| T@U) (|#$T3@@32| T@U) (|#$T4@@7| T@U) (|#$R@@102| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@89|) TyType) (= (type |#$T1@@73|) TyType)) (= (type |#$T2@@54|) TyType)) (= (type |#$T3@@32|) TyType)) (= (type |#$T4@@7|) TyType)) (= (type |#$R@@102|) TyType)) (and (= (Tag (Tclass._System.___hPartialFunc5 |#$T0@@89| |#$T1@@73| |#$T2@@54| |#$T3@@32| |#$T4@@7| |#$R@@102|)) Tagclass._System.___hPartialFunc5) (= (TagFamily (Tclass._System.___hPartialFunc5 |#$T0@@89| |#$T1@@73| |#$T2@@54| |#$T3@@32| |#$T4@@7| |#$R@@102|)) |tytagFamily$_#PartialFunc5|)))
 :qid |unknown.0:0|
 :skolemid |2184|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@89| |#$T1@@73| |#$T2@@54| |#$T3@@32| |#$T4@@7| |#$R@@102|))
)))
(assert (forall ((arg0@@244 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5_0 arg0@@244)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5_0|
 :pattern ( (Tclass._System.___hPartialFunc5_0 arg0@@244))
)))
(assert (forall ((|#$T0@@90| T@U) (|#$T1@@74| T@U) (|#$T2@@55| T@U) (|#$T3@@33| T@U) (|#$T4@@8| T@U) (|#$R@@103| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@90|) TyType) (= (type |#$T1@@74|) TyType)) (= (type |#$T2@@55|) TyType)) (= (type |#$T3@@33|) TyType)) (= (type |#$T4@@8|) TyType)) (= (type |#$R@@103|) TyType)) (= (Tclass._System.___hPartialFunc5_0 (Tclass._System.___hPartialFunc5 |#$T0@@90| |#$T1@@74| |#$T2@@55| |#$T3@@33| |#$T4@@8| |#$R@@103|)) |#$T0@@90|))
 :qid |unknown.0:0|
 :skolemid |2185|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@90| |#$T1@@74| |#$T2@@55| |#$T3@@33| |#$T4@@8| |#$R@@103|))
)))
(assert (forall ((arg0@@245 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5_1 arg0@@245)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5_1|
 :pattern ( (Tclass._System.___hPartialFunc5_1 arg0@@245))
)))
(assert (forall ((|#$T0@@91| T@U) (|#$T1@@75| T@U) (|#$T2@@56| T@U) (|#$T3@@34| T@U) (|#$T4@@9| T@U) (|#$R@@104| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@91|) TyType) (= (type |#$T1@@75|) TyType)) (= (type |#$T2@@56|) TyType)) (= (type |#$T3@@34|) TyType)) (= (type |#$T4@@9|) TyType)) (= (type |#$R@@104|) TyType)) (= (Tclass._System.___hPartialFunc5_1 (Tclass._System.___hPartialFunc5 |#$T0@@91| |#$T1@@75| |#$T2@@56| |#$T3@@34| |#$T4@@9| |#$R@@104|)) |#$T1@@75|))
 :qid |unknown.0:0|
 :skolemid |2186|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@91| |#$T1@@75| |#$T2@@56| |#$T3@@34| |#$T4@@9| |#$R@@104|))
)))
(assert (forall ((arg0@@246 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5_2 arg0@@246)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5_2|
 :pattern ( (Tclass._System.___hPartialFunc5_2 arg0@@246))
)))
(assert (forall ((|#$T0@@92| T@U) (|#$T1@@76| T@U) (|#$T2@@57| T@U) (|#$T3@@35| T@U) (|#$T4@@10| T@U) (|#$R@@105| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@92|) TyType) (= (type |#$T1@@76|) TyType)) (= (type |#$T2@@57|) TyType)) (= (type |#$T3@@35|) TyType)) (= (type |#$T4@@10|) TyType)) (= (type |#$R@@105|) TyType)) (= (Tclass._System.___hPartialFunc5_2 (Tclass._System.___hPartialFunc5 |#$T0@@92| |#$T1@@76| |#$T2@@57| |#$T3@@35| |#$T4@@10| |#$R@@105|)) |#$T2@@57|))
 :qid |unknown.0:0|
 :skolemid |2187|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@92| |#$T1@@76| |#$T2@@57| |#$T3@@35| |#$T4@@10| |#$R@@105|))
)))
(assert (forall ((arg0@@247 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5_3 arg0@@247)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5_3|
 :pattern ( (Tclass._System.___hPartialFunc5_3 arg0@@247))
)))
(assert (forall ((|#$T0@@93| T@U) (|#$T1@@77| T@U) (|#$T2@@58| T@U) (|#$T3@@36| T@U) (|#$T4@@11| T@U) (|#$R@@106| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@93|) TyType) (= (type |#$T1@@77|) TyType)) (= (type |#$T2@@58|) TyType)) (= (type |#$T3@@36|) TyType)) (= (type |#$T4@@11|) TyType)) (= (type |#$R@@106|) TyType)) (= (Tclass._System.___hPartialFunc5_3 (Tclass._System.___hPartialFunc5 |#$T0@@93| |#$T1@@77| |#$T2@@58| |#$T3@@36| |#$T4@@11| |#$R@@106|)) |#$T3@@36|))
 :qid |unknown.0:0|
 :skolemid |2188|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@93| |#$T1@@77| |#$T2@@58| |#$T3@@36| |#$T4@@11| |#$R@@106|))
)))
(assert (forall ((arg0@@248 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5_4 arg0@@248)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5_4|
 :pattern ( (Tclass._System.___hPartialFunc5_4 arg0@@248))
)))
(assert (forall ((|#$T0@@94| T@U) (|#$T1@@78| T@U) (|#$T2@@59| T@U) (|#$T3@@37| T@U) (|#$T4@@12| T@U) (|#$R@@107| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@94|) TyType) (= (type |#$T1@@78|) TyType)) (= (type |#$T2@@59|) TyType)) (= (type |#$T3@@37|) TyType)) (= (type |#$T4@@12|) TyType)) (= (type |#$R@@107|) TyType)) (= (Tclass._System.___hPartialFunc5_4 (Tclass._System.___hPartialFunc5 |#$T0@@94| |#$T1@@78| |#$T2@@59| |#$T3@@37| |#$T4@@12| |#$R@@107|)) |#$T4@@12|))
 :qid |unknown.0:0|
 :skolemid |2189|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@94| |#$T1@@78| |#$T2@@59| |#$T3@@37| |#$T4@@12| |#$R@@107|))
)))
(assert (forall ((arg0@@249 T@U) ) (! (= (type (Tclass._System.___hPartialFunc5_5 arg0@@249)) TyType)
 :qid |funType:Tclass._System.___hPartialFunc5_5|
 :pattern ( (Tclass._System.___hPartialFunc5_5 arg0@@249))
)))
(assert (forall ((|#$T0@@95| T@U) (|#$T1@@79| T@U) (|#$T2@@60| T@U) (|#$T3@@38| T@U) (|#$T4@@13| T@U) (|#$R@@108| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@95|) TyType) (= (type |#$T1@@79|) TyType)) (= (type |#$T2@@60|) TyType)) (= (type |#$T3@@38|) TyType)) (= (type |#$T4@@13|) TyType)) (= (type |#$R@@108|) TyType)) (= (Tclass._System.___hPartialFunc5_5 (Tclass._System.___hPartialFunc5 |#$T0@@95| |#$T1@@79| |#$T2@@60| |#$T3@@38| |#$T4@@13| |#$R@@108|)) |#$R@@108|))
 :qid |unknown.0:0|
 :skolemid |2190|
 :pattern ( (Tclass._System.___hPartialFunc5 |#$T0@@95| |#$T1@@79| |#$T2@@60| |#$T3@@38| |#$T4@@13| |#$R@@108|))
)))
(assert (forall ((|#$T0@@96| T@U) (|#$T1@@80| T@U) (|#$T2@@61| T@U) (|#$T3@@39| T@U) (|#$T4@@14| T@U) (|#$R@@109| T@U) (bx@@75 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type |#$T0@@96|) TyType) (= (type |#$T1@@80|) TyType)) (= (type |#$T2@@61|) TyType)) (= (type |#$T3@@39|) TyType)) (= (type |#$T4@@14|) TyType)) (= (type |#$R@@109|) TyType)) (= (type bx@@75) BoxType)) ($IsBox bx@@75 (Tclass._System.___hPartialFunc5 |#$T0@@96| |#$T1@@80| |#$T2@@61| |#$T3@@39| |#$T4@@14| |#$R@@109|))) (and (= ($Box ($Unbox HandleTypeType bx@@75)) bx@@75) ($Is ($Unbox HandleTypeType bx@@75) (Tclass._System.___hPartialFunc5 |#$T0@@96| |#$T1@@80| |#$T2@@61| |#$T3@@39| |#$T4@@14| |#$R@@109|))))
 :qid |unknown.0:0|
 :skolemid |2191|
 :pattern ( ($IsBox bx@@75 (Tclass._System.___hPartialFunc5 |#$T0@@96| |#$T1@@80| |#$T2@@61| |#$T3@@39| |#$T4@@14| |#$R@@109|)))
)))
(assert (forall ((|#$T0@@97| T@U) (|#$T1@@81| T@U) (|#$T2@@62| T@U) (|#$T3@@40| T@U) (|#$T4@@15| T@U) (|#$R@@110| T@U) (|f#0@@19| T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@97|) TyType) (= (type |#$T1@@81|) TyType)) (= (type |#$T2@@62|) TyType)) (= (type |#$T3@@40|) TyType)) (= (type |#$T4@@15|) TyType)) (= (type |#$R@@110|) TyType)) (= (type |f#0@@19|) HandleTypeType)) (= ($Is |f#0@@19| (Tclass._System.___hPartialFunc5 |#$T0@@97| |#$T1@@81| |#$T2@@62| |#$T3@@40| |#$T4@@15| |#$R@@110|))  (and ($Is |f#0@@19| (Tclass._System.___hFunc5 |#$T0@@97| |#$T1@@81| |#$T2@@62| |#$T3@@40| |#$T4@@15| |#$R@@110|)) (forall ((|x0#0@@7| T@U) (|x1#0@@5| T@U) (|x2#0@@3| T@U) (|x3#0@@1| T@U) (|x4#0| T@U) ) (!  (=> (and (and (and (and (and (= (type |x0#0@@7|) BoxType) (= (type |x1#0@@5|) BoxType)) (= (type |x2#0@@3|) BoxType)) (= (type |x3#0@@1|) BoxType)) (= (type |x4#0|) BoxType)) (and (and (and (and ($IsBox |x0#0@@7| |#$T0@@97|) ($IsBox |x1#0@@5| |#$T1@@81|)) ($IsBox |x2#0@@3| |#$T2@@62|)) ($IsBox |x3#0@@1| |#$T3@@40|)) ($IsBox |x4#0| |#$T4@@15|))) (|Set#Equal| (Reads5 |#$T0@@97| |#$T1@@81| |#$T2@@62| |#$T3@@40| |#$T4@@15| |#$R@@110| $OneHeap |f#0@@19| |x0#0@@7| |x1#0@@5| |x2#0@@3| |x3#0@@1| |x4#0|) (|Set#Empty| BoxType)))
 :qid |unknown.0:0|
 :skolemid |2192|
 :no-pattern (type |x0#0@@7|)
 :no-pattern (type |x1#0@@5|)
 :no-pattern (type |x2#0@@3|)
 :no-pattern (type |x3#0@@1|)
 :no-pattern (type |x4#0|)
 :no-pattern (U_2_int |x0#0@@7|)
 :no-pattern (U_2_bool |x0#0@@7|)
 :no-pattern (U_2_int |x1#0@@5|)
 :no-pattern (U_2_bool |x1#0@@5|)
 :no-pattern (U_2_int |x2#0@@3|)
 :no-pattern (U_2_bool |x2#0@@3|)
 :no-pattern (U_2_int |x3#0@@1|)
 :no-pattern (U_2_bool |x3#0@@1|)
 :no-pattern (U_2_int |x4#0|)
 :no-pattern (U_2_bool |x4#0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2193|
 :pattern ( ($Is |f#0@@19| (Tclass._System.___hPartialFunc5 |#$T0@@97| |#$T1@@81| |#$T2@@62| |#$T3@@40| |#$T4@@15| |#$R@@110|)))
)))
(assert (forall ((|#$T0@@98| T@U) (|#$T1@@82| T@U) (|#$T2@@63| T@U) (|#$T3@@41| T@U) (|#$T4@@16| T@U) (|#$R@@111| T@U) (|f#0@@20| T@U) ($h@@18 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type |#$T0@@98|) TyType) (= (type |#$T1@@82|) TyType)) (= (type |#$T2@@63|) TyType)) (= (type |#$T3@@41|) TyType)) (= (type |#$T4@@16|) TyType)) (= (type |#$R@@111|) TyType)) (= (type |f#0@@20|) HandleTypeType)) (= (type $h@@18) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@20| (Tclass._System.___hPartialFunc5 |#$T0@@98| |#$T1@@82| |#$T2@@63| |#$T3@@41| |#$T4@@16| |#$R@@111|) $h@@18) ($IsAlloc |f#0@@20| (Tclass._System.___hFunc5 |#$T0@@98| |#$T1@@82| |#$T2@@63| |#$T3@@41| |#$T4@@16| |#$R@@111|) $h@@18)))
 :qid |unknown.0:0|
 :skolemid |2194|
 :pattern ( ($IsAlloc |f#0@@20| (Tclass._System.___hPartialFunc5 |#$T0@@98| |#$T1@@82| |#$T2@@63| |#$T3@@41| |#$T4@@16| |#$R@@111|) $h@@18))
)))
(assert (forall ((arg0@@250 T@U) (arg1@@124 T@U) (arg2@@76 T@U) (arg3@@53 T@U) (arg4@@42 T@U) (arg5@@29 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5 arg0@@250 arg1@@124 arg2@@76 arg3@@53 arg4@@42 arg5@@29)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5|
 :pattern ( (Tclass._System.___hTotalFunc5 arg0@@250 arg1@@124 arg2@@76 arg3@@53 arg4@@42 arg5@@29))
)))
(assert (forall ((|#$T0@@99| T@U) (|#$T1@@83| T@U) (|#$T2@@64| T@U) (|#$T3@@42| T@U) (|#$T4@@17| T@U) (|#$R@@112| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@99|) TyType) (= (type |#$T1@@83|) TyType)) (= (type |#$T2@@64|) TyType)) (= (type |#$T3@@42|) TyType)) (= (type |#$T4@@17|) TyType)) (= (type |#$R@@112|) TyType)) (and (= (Tag (Tclass._System.___hTotalFunc5 |#$T0@@99| |#$T1@@83| |#$T2@@64| |#$T3@@42| |#$T4@@17| |#$R@@112|)) Tagclass._System.___hTotalFunc5) (= (TagFamily (Tclass._System.___hTotalFunc5 |#$T0@@99| |#$T1@@83| |#$T2@@64| |#$T3@@42| |#$T4@@17| |#$R@@112|)) |tytagFamily$_#TotalFunc5|)))
 :qid |unknown.0:0|
 :skolemid |2195|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@99| |#$T1@@83| |#$T2@@64| |#$T3@@42| |#$T4@@17| |#$R@@112|))
)))
(assert (forall ((arg0@@251 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5_0 arg0@@251)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5_0|
 :pattern ( (Tclass._System.___hTotalFunc5_0 arg0@@251))
)))
(assert (forall ((|#$T0@@100| T@U) (|#$T1@@84| T@U) (|#$T2@@65| T@U) (|#$T3@@43| T@U) (|#$T4@@18| T@U) (|#$R@@113| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@100|) TyType) (= (type |#$T1@@84|) TyType)) (= (type |#$T2@@65|) TyType)) (= (type |#$T3@@43|) TyType)) (= (type |#$T4@@18|) TyType)) (= (type |#$R@@113|) TyType)) (= (Tclass._System.___hTotalFunc5_0 (Tclass._System.___hTotalFunc5 |#$T0@@100| |#$T1@@84| |#$T2@@65| |#$T3@@43| |#$T4@@18| |#$R@@113|)) |#$T0@@100|))
 :qid |unknown.0:0|
 :skolemid |2196|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@100| |#$T1@@84| |#$T2@@65| |#$T3@@43| |#$T4@@18| |#$R@@113|))
)))
(assert (forall ((arg0@@252 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5_1 arg0@@252)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5_1|
 :pattern ( (Tclass._System.___hTotalFunc5_1 arg0@@252))
)))
(assert (forall ((|#$T0@@101| T@U) (|#$T1@@85| T@U) (|#$T2@@66| T@U) (|#$T3@@44| T@U) (|#$T4@@19| T@U) (|#$R@@114| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@101|) TyType) (= (type |#$T1@@85|) TyType)) (= (type |#$T2@@66|) TyType)) (= (type |#$T3@@44|) TyType)) (= (type |#$T4@@19|) TyType)) (= (type |#$R@@114|) TyType)) (= (Tclass._System.___hTotalFunc5_1 (Tclass._System.___hTotalFunc5 |#$T0@@101| |#$T1@@85| |#$T2@@66| |#$T3@@44| |#$T4@@19| |#$R@@114|)) |#$T1@@85|))
 :qid |unknown.0:0|
 :skolemid |2197|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@101| |#$T1@@85| |#$T2@@66| |#$T3@@44| |#$T4@@19| |#$R@@114|))
)))
(assert (forall ((arg0@@253 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5_2 arg0@@253)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5_2|
 :pattern ( (Tclass._System.___hTotalFunc5_2 arg0@@253))
)))
(assert (forall ((|#$T0@@102| T@U) (|#$T1@@86| T@U) (|#$T2@@67| T@U) (|#$T3@@45| T@U) (|#$T4@@20| T@U) (|#$R@@115| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@102|) TyType) (= (type |#$T1@@86|) TyType)) (= (type |#$T2@@67|) TyType)) (= (type |#$T3@@45|) TyType)) (= (type |#$T4@@20|) TyType)) (= (type |#$R@@115|) TyType)) (= (Tclass._System.___hTotalFunc5_2 (Tclass._System.___hTotalFunc5 |#$T0@@102| |#$T1@@86| |#$T2@@67| |#$T3@@45| |#$T4@@20| |#$R@@115|)) |#$T2@@67|))
 :qid |unknown.0:0|
 :skolemid |2198|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@102| |#$T1@@86| |#$T2@@67| |#$T3@@45| |#$T4@@20| |#$R@@115|))
)))
(assert (forall ((arg0@@254 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5_3 arg0@@254)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5_3|
 :pattern ( (Tclass._System.___hTotalFunc5_3 arg0@@254))
)))
(assert (forall ((|#$T0@@103| T@U) (|#$T1@@87| T@U) (|#$T2@@68| T@U) (|#$T3@@46| T@U) (|#$T4@@21| T@U) (|#$R@@116| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@103|) TyType) (= (type |#$T1@@87|) TyType)) (= (type |#$T2@@68|) TyType)) (= (type |#$T3@@46|) TyType)) (= (type |#$T4@@21|) TyType)) (= (type |#$R@@116|) TyType)) (= (Tclass._System.___hTotalFunc5_3 (Tclass._System.___hTotalFunc5 |#$T0@@103| |#$T1@@87| |#$T2@@68| |#$T3@@46| |#$T4@@21| |#$R@@116|)) |#$T3@@46|))
 :qid |unknown.0:0|
 :skolemid |2199|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@103| |#$T1@@87| |#$T2@@68| |#$T3@@46| |#$T4@@21| |#$R@@116|))
)))
(assert (forall ((arg0@@255 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5_4 arg0@@255)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5_4|
 :pattern ( (Tclass._System.___hTotalFunc5_4 arg0@@255))
)))
(assert (forall ((|#$T0@@104| T@U) (|#$T1@@88| T@U) (|#$T2@@69| T@U) (|#$T3@@47| T@U) (|#$T4@@22| T@U) (|#$R@@117| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@104|) TyType) (= (type |#$T1@@88|) TyType)) (= (type |#$T2@@69|) TyType)) (= (type |#$T3@@47|) TyType)) (= (type |#$T4@@22|) TyType)) (= (type |#$R@@117|) TyType)) (= (Tclass._System.___hTotalFunc5_4 (Tclass._System.___hTotalFunc5 |#$T0@@104| |#$T1@@88| |#$T2@@69| |#$T3@@47| |#$T4@@22| |#$R@@117|)) |#$T4@@22|))
 :qid |unknown.0:0|
 :skolemid |2200|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@104| |#$T1@@88| |#$T2@@69| |#$T3@@47| |#$T4@@22| |#$R@@117|))
)))
(assert (forall ((arg0@@256 T@U) ) (! (= (type (Tclass._System.___hTotalFunc5_5 arg0@@256)) TyType)
 :qid |funType:Tclass._System.___hTotalFunc5_5|
 :pattern ( (Tclass._System.___hTotalFunc5_5 arg0@@256))
)))
(assert (forall ((|#$T0@@105| T@U) (|#$T1@@89| T@U) (|#$T2@@70| T@U) (|#$T3@@48| T@U) (|#$T4@@23| T@U) (|#$R@@118| T@U) ) (!  (=> (and (and (and (and (and (= (type |#$T0@@105|) TyType) (= (type |#$T1@@89|) TyType)) (= (type |#$T2@@70|) TyType)) (= (type |#$T3@@48|) TyType)) (= (type |#$T4@@23|) TyType)) (= (type |#$R@@118|) TyType)) (= (Tclass._System.___hTotalFunc5_5 (Tclass._System.___hTotalFunc5 |#$T0@@105| |#$T1@@89| |#$T2@@70| |#$T3@@48| |#$T4@@23| |#$R@@118|)) |#$R@@118|))
 :qid |unknown.0:0|
 :skolemid |2201|
 :pattern ( (Tclass._System.___hTotalFunc5 |#$T0@@105| |#$T1@@89| |#$T2@@70| |#$T3@@48| |#$T4@@23| |#$R@@118|))
)))
(assert (forall ((|#$T0@@106| T@U) (|#$T1@@90| T@U) (|#$T2@@71| T@U) (|#$T3@@49| T@U) (|#$T4@@24| T@U) (|#$R@@119| T@U) (bx@@76 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type |#$T0@@106|) TyType) (= (type |#$T1@@90|) TyType)) (= (type |#$T2@@71|) TyType)) (= (type |#$T3@@49|) TyType)) (= (type |#$T4@@24|) TyType)) (= (type |#$R@@119|) TyType)) (= (type bx@@76) BoxType)) ($IsBox bx@@76 (Tclass._System.___hTotalFunc5 |#$T0@@106| |#$T1@@90| |#$T2@@71| |#$T3@@49| |#$T4@@24| |#$R@@119|))) (and (= ($Box ($Unbox HandleTypeType bx@@76)) bx@@76) ($Is ($Unbox HandleTypeType bx@@76) (Tclass._System.___hTotalFunc5 |#$T0@@106| |#$T1@@90| |#$T2@@71| |#$T3@@49| |#$T4@@24| |#$R@@119|))))
 :qid |unknown.0:0|
 :skolemid |2202|
 :pattern ( ($IsBox bx@@76 (Tclass._System.___hTotalFunc5 |#$T0@@106| |#$T1@@90| |#$T2@@71| |#$T3@@49| |#$T4@@24| |#$R@@119|)))
)))
(assert (forall ((|#$T0@@107| T@U) (|#$T1@@91| T@U) (|#$T2@@72| T@U) (|#$T3@@50| T@U) (|#$T4@@25| T@U) (|#$R@@120| T@U) (|f#0@@21| T@U) ) (!  (=> (and (and (and (and (and (and (= (type |#$T0@@107|) TyType) (= (type |#$T1@@91|) TyType)) (= (type |#$T2@@72|) TyType)) (= (type |#$T3@@50|) TyType)) (= (type |#$T4@@25|) TyType)) (= (type |#$R@@120|) TyType)) (= (type |f#0@@21|) HandleTypeType)) (= ($Is |f#0@@21| (Tclass._System.___hTotalFunc5 |#$T0@@107| |#$T1@@91| |#$T2@@72| |#$T3@@50| |#$T4@@25| |#$R@@120|))  (and ($Is |f#0@@21| (Tclass._System.___hPartialFunc5 |#$T0@@107| |#$T1@@91| |#$T2@@72| |#$T3@@50| |#$T4@@25| |#$R@@120|)) (forall ((|x0#0@@8| T@U) (|x1#0@@6| T@U) (|x2#0@@4| T@U) (|x3#0@@2| T@U) (|x4#0@@0| T@U) ) (!  (=> (and (and (and (and (and (= (type |x0#0@@8|) BoxType) (= (type |x1#0@@6|) BoxType)) (= (type |x2#0@@4|) BoxType)) (= (type |x3#0@@2|) BoxType)) (= (type |x4#0@@0|) BoxType)) (and (and (and (and ($IsBox |x0#0@@8| |#$T0@@107|) ($IsBox |x1#0@@6| |#$T1@@91|)) ($IsBox |x2#0@@4| |#$T2@@72|)) ($IsBox |x3#0@@2| |#$T3@@50|)) ($IsBox |x4#0@@0| |#$T4@@25|))) (Requires5 |#$T0@@107| |#$T1@@91| |#$T2@@72| |#$T3@@50| |#$T4@@25| |#$R@@120| $OneHeap |f#0@@21| |x0#0@@8| |x1#0@@6| |x2#0@@4| |x3#0@@2| |x4#0@@0|))
 :qid |unknown.0:0|
 :skolemid |2203|
 :no-pattern (type |x0#0@@8|)
 :no-pattern (type |x1#0@@6|)
 :no-pattern (type |x2#0@@4|)
 :no-pattern (type |x3#0@@2|)
 :no-pattern (type |x4#0@@0|)
 :no-pattern (U_2_int |x0#0@@8|)
 :no-pattern (U_2_bool |x0#0@@8|)
 :no-pattern (U_2_int |x1#0@@6|)
 :no-pattern (U_2_bool |x1#0@@6|)
 :no-pattern (U_2_int |x2#0@@4|)
 :no-pattern (U_2_bool |x2#0@@4|)
 :no-pattern (U_2_int |x3#0@@2|)
 :no-pattern (U_2_bool |x3#0@@2|)
 :no-pattern (U_2_int |x4#0@@0|)
 :no-pattern (U_2_bool |x4#0@@0|)
)))))
 :qid |unknown.0:0|
 :skolemid |2204|
 :pattern ( ($Is |f#0@@21| (Tclass._System.___hTotalFunc5 |#$T0@@107| |#$T1@@91| |#$T2@@72| |#$T3@@50| |#$T4@@25| |#$R@@120|)))
)))
(assert (forall ((|#$T0@@108| T@U) (|#$T1@@92| T@U) (|#$T2@@73| T@U) (|#$T3@@51| T@U) (|#$T4@@26| T@U) (|#$R@@121| T@U) (|f#0@@22| T@U) ($h@@19 T@U) ) (!  (=> (and (and (and (and (and (and (and (= (type |#$T0@@108|) TyType) (= (type |#$T1@@92|) TyType)) (= (type |#$T2@@73|) TyType)) (= (type |#$T3@@51|) TyType)) (= (type |#$T4@@26|) TyType)) (= (type |#$R@@121|) TyType)) (= (type |f#0@@22|) HandleTypeType)) (= (type $h@@19) (MapType0Type refType MapType1Type))) (= ($IsAlloc |f#0@@22| (Tclass._System.___hTotalFunc5 |#$T0@@108| |#$T1@@92| |#$T2@@73| |#$T3@@51| |#$T4@@26| |#$R@@121|) $h@@19) ($IsAlloc |f#0@@22| (Tclass._System.___hPartialFunc5 |#$T0@@108| |#$T1@@92| |#$T2@@73| |#$T3@@51| |#$T4@@26| |#$R@@121|) $h@@19)))
 :qid |unknown.0:0|
 :skolemid |2205|
 :pattern ( ($IsAlloc |f#0@@22| (Tclass._System.___hTotalFunc5 |#$T0@@108| |#$T1@@92| |#$T2@@73| |#$T3@@51| |#$T4@@26| |#$R@@121|) $h@@19))
)))
(assert (forall ((arg0@@257 T@U) ) (! (= (type (DatatypeCtorId arg0@@257)) DtCtorIdType)
 :qid |funType:DatatypeCtorId|
 :pattern ( (DatatypeCtorId arg0@@257))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (!  (=> (and (= (type |a#0#0#0|) BoxType) (= (type |a#0#1#0|) BoxType)) (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2206|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (= (type d@@0) DatatypeTypeType) (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|)))
 :qid |unknown.0:0|
 :skolemid |2207|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (and (= (type d@@1) DatatypeTypeType) (_System.Tuple2.___hMake2_q d@@1)) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (!  (and (and (= (type |a#1#0#0|) BoxType) (= (type |a#1#1#0|) BoxType)) (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2208|
 :no-pattern (type |a#1#0#0|)
 :no-pattern (type |a#1#1#0|)
 :no-pattern (U_2_int |a#1#0#0|)
 :no-pattern (U_2_bool |a#1#0#0|)
 :no-pattern (U_2_int |a#1#1#0|)
 :no-pattern (U_2_bool |a#1#1#0|)
)))
 :qid |unknown.0:0|
 :skolemid |2209|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) ) (!  (=> (and (= (type |_System._tuple#2$T0|) TyType) (= (type |_System._tuple#2$T1|) TyType)) (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) |tytagFamily$_tuple#2|)))
 :qid |unknown.0:0|
 :skolemid |2210|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))
)))
(assert (forall ((arg0@@258 T@U) ) (! (= (type (Tclass._System.Tuple2_0 arg0@@258)) TyType)
 :qid |funType:Tclass._System.Tuple2_0|
 :pattern ( (Tclass._System.Tuple2_0 arg0@@258))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) ) (!  (=> (and (= (type |_System._tuple#2$T0@@0|) TyType) (= (type |_System._tuple#2$T1@@0|) TyType)) (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)) |_System._tuple#2$T0@@0|))
 :qid |unknown.0:0|
 :skolemid |2211|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))
)))
(assert (forall ((arg0@@259 T@U) ) (! (= (type (Tclass._System.Tuple2_1 arg0@@259)) TyType)
 :qid |funType:Tclass._System.Tuple2_1|
 :pattern ( (Tclass._System.Tuple2_1 arg0@@259))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) ) (!  (=> (and (= (type |_System._tuple#2$T0@@1|) TyType) (= (type |_System._tuple#2$T1@@1|) TyType)) (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) |_System._tuple#2$T1@@1|))
 :qid |unknown.0:0|
 :skolemid |2212|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) (bx@@77 T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0@@2|) TyType) (= (type |_System._tuple#2$T1@@2|) TyType)) (= (type bx@@77) BoxType)) ($IsBox bx@@77 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))) (and (= ($Box ($Unbox DatatypeTypeType bx@@77)) bx@@77) ($Is ($Unbox DatatypeTypeType bx@@77) (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))))
 :qid |unknown.0:0|
 :skolemid |2213|
 :pattern ( ($IsBox bx@@77 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0@@3|) TyType) (= (type |_System._tuple#2$T1@@3|) TyType)) (= (type |a#2#0#0|) BoxType)) (= (type |a#2#1#0|) BoxType)) (= ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@3|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@3|))))
 :qid |unknown.0:0|
 :skolemid |2214|
 :pattern ( ($Is (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (|a#3#0#0| T@U) (|a#3#1#0| T@U) ($h@@20 T@U) ) (!  (=> (and (and (and (and (and (= (type |_System._tuple#2$T0@@4|) TyType) (= (type |_System._tuple#2$T1@@4|) TyType)) (= (type |a#3#0#0|) BoxType)) (= (type |a#3#1#0|) BoxType)) (= (type $h@@20) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@20)) (= ($IsAlloc (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|) $h@@20)  (and ($IsAllocBox |a#3#0#0| |_System._tuple#2$T0@@4| $h@@20) ($IsAllocBox |a#3#1#0| |_System._tuple#2$T1@@4| $h@@20))))
 :qid |unknown.0:0|
 :skolemid |2215|
 :pattern ( ($IsAlloc (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|) $h@@20))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#2$T0@@5| T@U) ($h@@21 T@U) ) (!  (=> (and (and (and (= (type d@@2) DatatypeTypeType) (= (type |_System._tuple#2$T0@@5|) TyType)) (= (type $h@@21) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@2) (exists ((|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (type |_System._tuple#2$T1@@5|) TyType) ($IsAlloc d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|) $h@@21))
 :qid |unknown.0:0|
 :skolemid |2216|
 :pattern ( ($IsAlloc d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|) $h@@21))
))))) ($IsAllocBox (_System.Tuple2._0 d@@2) |_System._tuple#2$T0@@5| $h@@21))
 :qid |unknown.0:0|
 :skolemid |2217|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@2) |_System._tuple#2$T0@@5| $h@@21))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T1@@6| T@U) ($h@@22 T@U) ) (!  (=> (and (and (and (= (type d@@3) DatatypeTypeType) (= (type |_System._tuple#2$T1@@6|) TyType)) (= (type $h@@22) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T0@@6| T@U) ) (!  (and (= (type |_System._tuple#2$T0@@6|) TyType) ($IsAlloc d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@22))
 :qid |unknown.0:0|
 :skolemid |2218|
 :pattern ( ($IsAlloc d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@22))
))))) ($IsAllocBox (_System.Tuple2._1 d@@3) |_System._tuple#2$T1@@6| $h@@22))
 :qid |unknown.0:0|
 :skolemid |2219|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@3) |_System._tuple#2$T1@@6| $h@@22))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (!  (=> (and (= (type |a#4#0#0|) BoxType) (= (type |a#4#1#0|) BoxType)) (= (|#_System._tuple#2._#Make2| (Lit |a#4#0#0|) (Lit |a#4#1#0|)) (Lit (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))))
 :qid |unknown.0:0|
 :skolemid |2220|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit |a#4#0#0|) (Lit |a#4#1#0|)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (!  (=> (and (= (type |a#5#0#0|) BoxType) (= (type |a#5#1#0|) BoxType)) (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)) |a#5#0#0|))
 :qid |unknown.0:0|
 :skolemid |2221|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (!  (=> (and (= (type |a#6#0#0|) BoxType) (= (type |a#6#1#0|) BoxType)) (< (BoxRank |a#6#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))))
 :qid |unknown.0:0|
 :skolemid |2222|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (!  (=> (and (= (type |a#7#0#0|) BoxType) (= (type |a#7#1#0|) BoxType)) (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|))
 :qid |unknown.0:0|
 :skolemid |2223|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (!  (=> (and (= (type |a#8#0#0|) BoxType) (= (type |a#8#1#0|) BoxType)) (< (BoxRank |a#8#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#8#0#0| |a#8#1#0|))))
 :qid |unknown.0:0|
 :skolemid |2224|
 :pattern ( (|#_System._tuple#2._#Make2| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (and (= (type d@@4) DatatypeTypeType) (|$IsA#_System.Tuple2| d@@4)) (_System.Tuple2.___hMake2_q d@@4))
 :qid |unknown.0:0|
 :skolemid |2225|
 :pattern ( (|$IsA#_System.Tuple2| d@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@7| T@U) (|_System._tuple#2$T1@@7| T@U) (d@@5 T@U) ) (!  (=> (and (and (and (= (type |_System._tuple#2$T0@@7|) TyType) (= (type |_System._tuple#2$T1@@7|) TyType)) (= (type d@@5) DatatypeTypeType)) ($Is d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|))) (_System.Tuple2.___hMake2_q d@@5))
 :qid |unknown.0:0|
 :skolemid |2226|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5) ($Is d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|)))
)))
(assert (forall ((a@@118 T@U) (b@@61 T@U) ) (!  (=> (and (and (= (type a@@118) DatatypeTypeType) (= (type b@@61) DatatypeTypeType)) true) (= (|_System.Tuple2#Equal| a@@118 b@@61)  (and (= (_System.Tuple2._0 a@@118) (_System.Tuple2._0 b@@61)) (= (_System.Tuple2._1 a@@118) (_System.Tuple2._1 b@@61)))))
 :qid |unknown.0:0|
 :skolemid |2227|
 :pattern ( (|_System.Tuple2#Equal| a@@118 b@@61))
)))
(assert (forall ((a@@119 T@U) (b@@62 T@U) ) (!  (=> (and (= (type a@@119) DatatypeTypeType) (= (type b@@62) DatatypeTypeType)) (= (|_System.Tuple2#Equal| a@@119 b@@62) (= a@@119 b@@62)))
 :qid |unknown.0:0|
 :skolemid |2228|
 :pattern ( (|_System.Tuple2#Equal| a@@119 b@@62))
)))
(assert (= (type |#_System._tuple#0._#Make0|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#_System._tuple#0._#Make0|) |##_System._tuple#0._#Make0|))
(assert (forall ((d@@6 T@U) ) (!  (=> (= (type d@@6) DatatypeTypeType) (= (_System.Tuple0.___hMake0_q d@@6) (= (DatatypeCtorId d@@6) |##_System._tuple#0._#Make0|)))
 :qid |unknown.0:0|
 :skolemid |2229|
 :pattern ( (_System.Tuple0.___hMake0_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (and (= (type d@@7) DatatypeTypeType) (_System.Tuple0.___hMake0_q d@@7)) (= d@@7 |#_System._tuple#0._#Make0|))
 :qid |unknown.0:0|
 :skolemid |2230|
 :pattern ( (_System.Tuple0.___hMake0_q d@@7))
)))
(assert (= (type Tclass._System.Tuple0) TyType))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (forall ((bx@@78 T@U) ) (!  (=> (and (= (type bx@@78) BoxType) ($IsBox bx@@78 Tclass._System.Tuple0)) (and (= ($Box ($Unbox DatatypeTypeType bx@@78)) bx@@78) ($Is ($Unbox DatatypeTypeType bx@@78) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |2231|
 :pattern ( ($IsBox bx@@78 Tclass._System.Tuple0))
)))
(assert ($Is |#_System._tuple#0._#Make0| Tclass._System.Tuple0))
(assert (forall (($h@@23 T@U) ) (!  (=> (and (= (type $h@@23) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@23)) ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@23))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2232|
 :pattern ( ($IsAlloc |#_System._tuple#0._#Make0| Tclass._System.Tuple0 $h@@23))
)))
(assert (= |#_System._tuple#0._#Make0| (Lit |#_System._tuple#0._#Make0|)))
(assert (forall ((d@@8 T@U) ) (!  (=> (and (= (type d@@8) DatatypeTypeType) (|$IsA#_System.Tuple0| d@@8)) (_System.Tuple0.___hMake0_q d@@8))
 :qid |unknown.0:0|
 :skolemid |2233|
 :pattern ( (|$IsA#_System.Tuple0| d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (and (= (type d@@9) DatatypeTypeType) ($Is d@@9 Tclass._System.Tuple0)) (_System.Tuple0.___hMake0_q d@@9))
 :qid |unknown.0:0|
 :skolemid |2234|
 :pattern ( (_System.Tuple0.___hMake0_q d@@9) ($Is d@@9 Tclass._System.Tuple0))
)))
(assert (forall ((a@@120 T@U) (b@@63 T@U) ) (!  (=> (and (and (= (type a@@120) DatatypeTypeType) (= (type b@@63) DatatypeTypeType)) true) (= (|_System.Tuple0#Equal| a@@120 b@@63) true))
 :qid |unknown.0:0|
 :skolemid |2235|
 :pattern ( (|_System.Tuple0#Equal| a@@120 b@@63))
)))
(assert (forall ((a@@121 T@U) (b@@64 T@U) ) (!  (=> (and (= (type a@@121) DatatypeTypeType) (= (type b@@64) DatatypeTypeType)) (= (|_System.Tuple0#Equal| a@@121 b@@64) (= a@@121 b@@64)))
 :qid |unknown.0:0|
 :skolemid |2236|
 :pattern ( (|_System.Tuple0#Equal| a@@121 b@@64))
)))
(assert (= (type Tclass.Proof.__default) TyType))
(assert (= (Tag Tclass.Proof.__default) Tagclass.Proof.__default))
(assert (= (TagFamily Tclass.Proof.__default) tytagFamily$_default))
(assert (forall ((bx@@79 T@U) ) (!  (=> (and (= (type bx@@79) BoxType) ($IsBox bx@@79 Tclass.Proof.__default)) (and (= ($Box ($Unbox refType bx@@79)) bx@@79) ($Is ($Unbox refType bx@@79) Tclass.Proof.__default)))
 :qid |unknown.0:0|
 :skolemid |2237|
 :pattern ( ($IsBox bx@@79 Tclass.Proof.__default))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> (= (type $o@@9) refType) (= ($Is $o@@9 Tclass.Proof.__default)  (or (= $o@@9 null) (= (dtype $o@@9) Tclass.Proof.__default))))
 :qid |unknown.0:0|
 :skolemid |2238|
 :pattern ( ($Is $o@@9 Tclass.Proof.__default))
)))
(assert (forall (($o@@10 T@U) ($h@@24 T@U) ) (!  (=> (and (= (type $o@@10) refType) (= (type $h@@24) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@10 Tclass.Proof.__default $h@@24)  (or (= $o@@10 null) (U_2_bool (MapType1Select (MapType0Select $h@@24 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2239|
 :pattern ( ($IsAlloc $o@@10 Tclass.Proof.__default $h@@24))
)))
(assert (= (type Tclass.DistributedSystem.Constants) TyType))
(assert (= (Tag Tclass.DistributedSystem.Constants) Tagclass.DistributedSystem.Constants))
(assert (= (TagFamily Tclass.DistributedSystem.Constants) tytagFamily$Constants))
(assert (forall ((bx@@80 T@U) ) (!  (=> (and (= (type bx@@80) BoxType) ($IsBox bx@@80 Tclass.DistributedSystem.Constants)) (and (= ($Box ($Unbox DatatypeTypeType bx@@80)) bx@@80) ($Is ($Unbox DatatypeTypeType bx@@80) Tclass.DistributedSystem.Constants)))
 :qid |unknown.0:0|
 :skolemid |2240|
 :pattern ( ($IsBox bx@@80 Tclass.DistributedSystem.Constants))
)))
(assert (= (type Tclass.DistributedSystem.Variables) TyType))
(assert (= (Tag Tclass.DistributedSystem.Variables) Tagclass.DistributedSystem.Variables))
(assert (= (TagFamily Tclass.DistributedSystem.Variables) tytagFamily$Variables))
(assert (forall ((bx@@81 T@U) ) (!  (=> (and (= (type bx@@81) BoxType) ($IsBox bx@@81 Tclass.DistributedSystem.Variables)) (and (= ($Box ($Unbox DatatypeTypeType bx@@81)) bx@@81) ($Is ($Unbox DatatypeTypeType bx@@81) Tclass.DistributedSystem.Variables)))
 :qid |unknown.0:0|
 :skolemid |2241|
 :pattern ( ($IsBox bx@@81 Tclass.DistributedSystem.Variables))
)))
(assert (= (type Tclass.Host.Message) TyType))
(assert (= (Tag Tclass.Host.Message) Tagclass.Host.Message))
(assert (= (TagFamily Tclass.Host.Message) tytagFamily$Message))
(assert (forall ((bx@@82 T@U) ) (!  (=> (and (= (type bx@@82) BoxType) ($IsBox bx@@82 Tclass.Host.Message)) (and (= ($Box ($Unbox DatatypeTypeType bx@@82)) bx@@82) ($Is ($Unbox DatatypeTypeType bx@@82) Tclass.Host.Message)))
 :qid |unknown.0:0|
 :skolemid |2242|
 :pattern ( ($IsBox bx@@82 Tclass.Host.Message))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|c#0@@3| T@U) (|v#0| T@U) (|message#0| T@U) ) (!  (=> (and (and (and (= (type |c#0@@3|) DatatypeTypeType) (= (type |v#0|) DatatypeTypeType)) (= (type |message#0|) DatatypeTypeType)) (or (|Proof.__default.InFlight#canCall| |c#0@@3| |v#0| |message#0|) (and (not (= 3 $FunctionContextHeight)) (and (and ($Is |c#0@@3| Tclass.DistributedSystem.Constants) ($Is |v#0| Tclass.DistributedSystem.Variables)) ($Is |message#0| Tclass.Host.Message))))) true)
 :qid |exercise01dfy.59:22|
 :skolemid |2243|
 :pattern ( (Proof.__default.InFlight |c#0@@3| |v#0| |message#0|))
))))
(assert (forall ((|c#0@@4| T@U) (|v#0@@0| T@U) (|message#0@@0| T@U) ) (!  (=> (and (and (and (= (type |c#0@@4|) DatatypeTypeType) (= (type |v#0@@0|) DatatypeTypeType)) (= (type |message#0@@0|) DatatypeTypeType)) (and (and ($Is |c#0@@4| Tclass.DistributedSystem.Constants) ($Is |v#0@@0| Tclass.DistributedSystem.Variables)) ($Is |message#0@@0| Tclass.Host.Message))) (= (|Proof.__default.InFlight#requires| |c#0@@4| |v#0@@0| |message#0@@0|) true))
 :qid |exercise01dfy.59:22|
 :skolemid |2244|
 :pattern ( (|Proof.__default.InFlight#requires| |c#0@@4| |v#0@@0| |message#0@@0|))
)))
(assert  (and (and (forall ((arg0@@260 T@U) ) (! (= (type (DistributedSystem.Variables.network arg0@@260)) DatatypeTypeType)
 :qid |funType:DistributedSystem.Variables.network|
 :pattern ( (DistributedSystem.Variables.network arg0@@260))
)) (forall ((arg0@@261 T@U) ) (! (= (type (Network.Variables.sentMsgs arg0@@261)) (MapType0Type BoxType boolType))
 :qid |funType:Network.Variables.sentMsgs|
 :pattern ( (Network.Variables.sentMsgs arg0@@261))
))) (forall ((arg0@@262 T@U) ) (! (= (type (DistributedSystem.Variables.hosts arg0@@262)) (SeqType BoxType))
 :qid |funType:DistributedSystem.Variables.hosts|
 :pattern ( (DistributedSystem.Variables.hosts arg0@@262))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|c#0@@5| T@U) (|v#0@@1| T@U) (|message#0@@1| T@U) ) (!  (=> (and (and (and (= (type |c#0@@5|) DatatypeTypeType) (= (type |v#0@@1|) DatatypeTypeType)) (= (type |message#0@@1|) DatatypeTypeType)) (or (|Proof.__default.InFlight#canCall| |c#0@@5| |v#0@@1| |message#0@@1|) (and (not (= 3 $FunctionContextHeight)) (and (and ($Is |c#0@@5| Tclass.DistributedSystem.Constants) ($Is |v#0@@1| Tclass.DistributedSystem.Variables)) ($Is |message#0@@1| Tclass.Host.Message))))) (and (and (|DistributedSystem.Variables.WF#canCall| |v#0@@1| |c#0@@5|) (=> (DistributedSystem.Variables.WF |v#0@@1| |c#0@@5|) (and (and (DistributedSystem.Variables.Variables_q |v#0@@1|) (Network.Variables.Variables_q (DistributedSystem.Variables.network |v#0@@1|))) (=> (U_2_bool (MapType0Select (Network.Variables.sentMsgs (DistributedSystem.Variables.network |v#0@@1|)) ($Box |message#0@@1|))) (and (and (Host.Message.GrantMsg_q |message#0@@1|) (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@5| (Host.Message.dest |message#0@@1|))) (=> (DistributedSystem.Constants.ValidHostId |c#0@@5| (Host.Message.dest |message#0@@1|)) (and (Host.Message.GrantMsg_q |message#0@@1|) (and (and (DistributedSystem.Variables.Variables_q |v#0@@1|) (Host.Message.GrantMsg_q |message#0@@1|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@1|) (Host.Message.dest |message#0@@1|)))))))))))) (= (Proof.__default.InFlight |c#0@@5| |v#0@@1| |message#0@@1|)  (and (and (and (DistributedSystem.Variables.WF |v#0@@1| |c#0@@5|) (U_2_bool (MapType0Select (Network.Variables.sentMsgs (DistributedSystem.Variables.network |v#0@@1|)) ($Box |message#0@@1|)))) (DistributedSystem.Constants.ValidHostId |c#0@@5| (Host.Message.dest |message#0@@1|))) (> (Host.Message.epoch |message#0@@1|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@1|) (Host.Message.dest |message#0@@1|)))))))))
 :qid |exercise01dfy.59:22|
 :skolemid |2245|
 :pattern ( (Proof.__default.InFlight |c#0@@5| |v#0@@1| |message#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|c#0@@6| T@U) (|v#0@@2| T@U) (|message#0@@2| T@U) ) (!  (=> (and (and (and (= (type |c#0@@6|) DatatypeTypeType) (= (type |v#0@@2|) DatatypeTypeType)) (= (type |message#0@@2|) DatatypeTypeType)) (or (|Proof.__default.InFlight#canCall| (Lit |c#0@@6|) (Lit |v#0@@2|) (Lit |message#0@@2|)) (and (not (= 3 $FunctionContextHeight)) (and (and ($Is |c#0@@6| Tclass.DistributedSystem.Constants) ($Is |v#0@@2| Tclass.DistributedSystem.Variables)) ($Is |message#0@@2| Tclass.Host.Message))))) (and (and (|DistributedSystem.Variables.WF#canCall| (Lit |v#0@@2|) (Lit |c#0@@6|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@2|) (Lit |c#0@@6|))))) (and (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@2|)) (Network.Variables.Variables_q (Lit (DistributedSystem.Variables.network (Lit |v#0@@2|))))) (=> (U_2_bool (MapType0Select (Lit (Network.Variables.sentMsgs (Lit (DistributedSystem.Variables.network (Lit |v#0@@2|))))) ($Box (Lit |message#0@@2|)))) (and (and (Host.Message.GrantMsg_q (Lit |message#0@@2|)) (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@6|) (LitInt (Host.Message.dest (Lit |message#0@@2|))))) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Constants.ValidHostId (Lit |c#0@@6|) (LitInt (Host.Message.dest (Lit |message#0@@2|))))))) (and (Host.Message.GrantMsg_q (Lit |message#0@@2|)) (and (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@2|)) (Host.Message.GrantMsg_q (Lit |message#0@@2|))) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@2|))) (LitInt (Host.Message.dest (Lit |message#0@@2|)))))))))))))) (= (Proof.__default.InFlight (Lit |c#0@@6|) (Lit |v#0@@2|) (Lit |message#0@@2|))  (and (and (and (DistributedSystem.Variables.WF (Lit |v#0@@2|) (Lit |c#0@@6|)) (U_2_bool (MapType0Select (Lit (Network.Variables.sentMsgs (Lit (DistributedSystem.Variables.network (Lit |v#0@@2|))))) ($Box (Lit |message#0@@2|))))) (DistributedSystem.Constants.ValidHostId (Lit |c#0@@6|) (LitInt (Host.Message.dest (Lit |message#0@@2|))))) (> (Host.Message.epoch (Lit |message#0@@2|)) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@2|))) (LitInt (Host.Message.dest (Lit |message#0@@2|)))))))))))
 :qid |exercise01dfy.59:22|
 :weight 3
 :skolemid |2246|
 :pattern ( (Proof.__default.InFlight (Lit |c#0@@6|) (Lit |v#0@@2|) (Lit |message#0@@2|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|c#0@@7| T@U) (|v#0@@3| T@U) ) (!  (=> (and (and (= (type |c#0@@7|) DatatypeTypeType) (= (type |v#0@@3|) DatatypeTypeType)) (or (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@7| |v#0@@3|) (and (not (= 4 $FunctionContextHeight)) (and (and ($Is |c#0@@7| Tclass.DistributedSystem.Constants) ($Is |v#0@@3| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@3| |c#0@@7|))))) true)
 :qid |exercise01dfy.69:46|
 :skolemid |2249|
 :pattern ( (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@7| |v#0@@3|))
))))
(assert (forall ((|c#0@@8| T@U) (|v#0@@4| T@U) ) (!  (=> (and (and (= (type |c#0@@8|) DatatypeTypeType) (= (type |v#0@@4|) DatatypeTypeType)) (and ($Is |c#0@@8| Tclass.DistributedSystem.Constants) ($Is |v#0@@4| Tclass.DistributedSystem.Variables))) (= (|Proof.__default.InFlightGrantImpliesNoLockHolder#requires| |c#0@@8| |v#0@@4|) (DistributedSystem.Variables.WF |v#0@@4| |c#0@@8|)))
 :qid |exercise01dfy.69:46|
 :skolemid |2250|
 :pattern ( (|Proof.__default.InFlightGrantImpliesNoLockHolder#requires| |c#0@@8| |v#0@@4|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|c#0@@9| T@U) (|v#0@@5| T@U) ) (!  (=> (and (and (= (type |c#0@@9|) DatatypeTypeType) (= (type |v#0@@5|) DatatypeTypeType)) (or (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@9| |v#0@@5|) (and (not (= 4 $FunctionContextHeight)) (and (and ($Is |c#0@@9| Tclass.DistributedSystem.Constants) ($Is |v#0@@5| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@5| |c#0@@9|))))) (and (forall ((|message#0@@3| T@U) ) (!  (=> (and (= (type |message#0@@3|) DatatypeTypeType) ($Is |message#0@@3| Tclass.Host.Message)) (and (|Proof.__default.InFlight#canCall| |c#0@@9| |v#0@@5| |message#0@@3|) (=> (Proof.__default.InFlight |c#0@@9| |v#0@@5| |message#0@@3|) (forall ((|idx#0| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@9| |idx#0|) (=> (DistributedSystem.Constants.ValidHostId |c#0@@9| |idx#0|) (and (DistributedSystem.Variables.Variables_q |v#0@@5|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@5|) |idx#0|))))))
 :qid |exercise01dfy.74:12|
 :skolemid |2253|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@5|) |idx#0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@9| |idx#0|))
)))))
 :qid |exercise01dfy.72:12|
 :skolemid |2254|
 :pattern ( (Proof.__default.InFlight |c#0@@9| |v#0@@5| |message#0@@3|))
)) (= (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@9| |v#0@@5|) (forall ((|message#0@@4| T@U) ) (!  (=> (and (and (= (type |message#0@@4|) DatatypeTypeType) ($Is |message#0@@4| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@9| |v#0@@5| |message#0@@4|)) (forall ((|idx#0@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@9| |idx#0@@0|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@5|) |idx#0@@0|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2251|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@5|) |idx#0@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@9| |idx#0@@0|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2252|
 :pattern ( (Proof.__default.InFlight |c#0@@9| |v#0@@5| |message#0@@4|))
)))))
 :qid |exercise01dfy.69:46|
 :skolemid |2255|
 :pattern ( (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@9| |v#0@@5|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|c#0@@10| T@U) (|v#0@@6| T@U) ) (!  (=> (and (and (= (type |c#0@@10|) DatatypeTypeType) (= (type |v#0@@6|) DatatypeTypeType)) (or (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| (Lit |c#0@@10|) (Lit |v#0@@6|)) (and (not (= 4 $FunctionContextHeight)) (and (and ($Is |c#0@@10| Tclass.DistributedSystem.Constants) ($Is |v#0@@6| Tclass.DistributedSystem.Variables)) (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@6|) (Lit |c#0@@10|))))))))) (and (forall ((|message#1| T@U) ) (!  (=> (and (= (type |message#1|) DatatypeTypeType) ($Is |message#1| Tclass.Host.Message)) (and (|Proof.__default.InFlight#canCall| (Lit |c#0@@10|) (Lit |v#0@@6|) |message#1|) (=> (Proof.__default.InFlight (Lit |c#0@@10|) (Lit |v#0@@6|) |message#1|) (forall ((|idx#1| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@10|) |idx#1|) (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@10|) |idx#1|) (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@6|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@6|))) |idx#1|))))))
 :qid |exercise01dfy.74:12|
 :skolemid |2258|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@6|) |idx#1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@10| |idx#1|))
)))))
 :qid |exercise01dfy.72:12|
 :skolemid |2259|
 :pattern ( (Proof.__default.InFlight |c#0@@10| |v#0@@6| |message#1|))
)) (= (Proof.__default.InFlightGrantImpliesNoLockHolder (Lit |c#0@@10|) (Lit |v#0@@6|)) (forall ((|message#1@@0| T@U) ) (!  (=> (and (and (= (type |message#1@@0|) DatatypeTypeType) ($Is |message#1@@0| Tclass.Host.Message)) (Proof.__default.InFlight (Lit |c#0@@10|) (Lit |v#0@@6|) |message#1@@0|)) (forall ((|idx#1@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@10|) |idx#1@@0|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@6|))) |idx#1@@0|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2256|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@6|) |idx#1@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@10| |idx#1@@0|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2257|
 :pattern ( (Proof.__default.InFlight |c#0@@10| |v#0@@6| |message#1@@0|))
)))))
 :qid |exercise01dfy.69:46|
 :weight 3
 :skolemid |2260|
 :pattern ( (Proof.__default.InFlightGrantImpliesNoLockHolder (Lit |c#0@@10|) (Lit |v#0@@6|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|c#0@@11| T@U) (|v#0@@7| T@U) ) (!  (=> (and (and (= (type |c#0@@11|) DatatypeTypeType) (= (type |v#0@@7|) DatatypeTypeType)) (or (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@11| |v#0@@7|) (and (not (= 5 $FunctionContextHeight)) (and (and ($Is |c#0@@11| Tclass.DistributedSystem.Constants) ($Is |v#0@@7| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@7| |c#0@@11|))))) true)
 :qid |exercise01dfy.78:39|
 :skolemid |2268|
 :pattern ( (Proof.__default.LockHolderHasHighestEpoch |c#0@@11| |v#0@@7|))
))))
(assert (forall ((|c#0@@12| T@U) (|v#0@@8| T@U) ) (!  (=> (and (and (= (type |c#0@@12|) DatatypeTypeType) (= (type |v#0@@8|) DatatypeTypeType)) (and ($Is |c#0@@12| Tclass.DistributedSystem.Constants) ($Is |v#0@@8| Tclass.DistributedSystem.Variables))) (= (|Proof.__default.LockHolderHasHighestEpoch#requires| |c#0@@12| |v#0@@8|) (DistributedSystem.Variables.WF |v#0@@8| |c#0@@12|)))
 :qid |exercise01dfy.78:39|
 :skolemid |2269|
 :pattern ( (|Proof.__default.LockHolderHasHighestEpoch#requires| |c#0@@12| |v#0@@8|))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|c#0@@13| T@U) (|v#0@@9| T@U) ) (!  (=> (and (and (= (type |c#0@@13|) DatatypeTypeType) (= (type |v#0@@9|) DatatypeTypeType)) (or (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@13| |v#0@@9|) (and (not (= 5 $FunctionContextHeight)) (and (and ($Is |c#0@@13| Tclass.DistributedSystem.Constants) ($Is |v#0@@9| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@9| |c#0@@13|))))) (and (forall ((|idx#0@@1| Int) ) (!  (and (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@13| |idx#0@@1|) (=> (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx#0@@1|) (and (DistributedSystem.Variables.Variables_q |v#0@@9|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@1|)))))) (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx#0@@1|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@1|)))) (forall ((|idx'#0| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@13| |idx'#0|) (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx'#0|) (not (= |idx'#0| |idx#0@@1|))) (and (and (DistributedSystem.Variables.Variables_q |v#0@@9|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@1|)))) (and (DistributedSystem.Variables.Variables_q |v#0@@9|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx'#0|)))))))
 :qid |exercise01dfy.83:12|
 :skolemid |2272|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx'#0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx'#0|))
))))
 :qid |exercise01dfy.82:12|
 :skolemid |2273|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx#0@@1|))
)) (= (Proof.__default.LockHolderHasHighestEpoch |c#0@@13| |v#0@@9|) (forall ((|idx#0@@2| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx#0@@2|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@2|)))) (forall ((|idx'#0@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx'#0@@0|) (not (= |idx'#0@@0| |idx#0@@2|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@2|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx'#0@@0|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2270|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx'#0@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx'#0@@0|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2271|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@9|) |idx#0@@2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@13| |idx#0@@2|))
)))))
 :qid |exercise01dfy.78:39|
 :skolemid |2274|
 :pattern ( (Proof.__default.LockHolderHasHighestEpoch |c#0@@13| |v#0@@9|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|c#0@@14| T@U) (|v#0@@10| T@U) ) (!  (=> (and (and (= (type |c#0@@14|) DatatypeTypeType) (= (type |v#0@@10|) DatatypeTypeType)) (or (|Proof.__default.LockHolderHasHighestEpoch#canCall| (Lit |c#0@@14|) (Lit |v#0@@10|)) (and (not (= 5 $FunctionContextHeight)) (and (and ($Is |c#0@@14| Tclass.DistributedSystem.Constants) ($Is |v#0@@10| Tclass.DistributedSystem.Variables)) (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@10|) (Lit |c#0@@14|))))))))) (and (forall ((|idx#1@@1| Int) ) (!  (and (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@14|) |idx#1@@1|) (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@14|) |idx#1@@1|) (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@10|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx#1@@1|)))))) (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@14|) |idx#1@@1|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx#1@@1|)))) (forall ((|idx'#1| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@14|) |idx'#1|) (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@14|) |idx'#1|) (not (= |idx'#1| |idx#1@@1|))) (and (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@10|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx#1@@1|)))) (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@10|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx'#1|)))))))
 :qid |exercise01dfy.83:12|
 :skolemid |2277|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@10|) |idx'#1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@14| |idx'#1|))
))))
 :qid |exercise01dfy.82:12|
 :skolemid |2278|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@10|) |idx#1@@1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@14| |idx#1@@1|))
)) (= (Proof.__default.LockHolderHasHighestEpoch (Lit |c#0@@14|) (Lit |v#0@@10|)) (forall ((|idx#1@@2| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@14|) |idx#1@@2|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx#1@@2|)))) (forall ((|idx'#1@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@14|) |idx'#1@@0|) (not (= |idx'#1@@0| |idx#1@@2|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx#1@@2|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@10|))) |idx'#1@@0|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2275|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@10|) |idx'#1@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@14| |idx'#1@@0|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2276|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@10|) |idx#1@@2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@14| |idx#1@@2|))
)))))
 :qid |exercise01dfy.78:39|
 :weight 3
 :skolemid |2279|
 :pattern ( (Proof.__default.LockHolderHasHighestEpoch (Lit |c#0@@14|) (Lit |v#0@@10|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|c#0@@15| T@U) (|v#0@@11| T@U) ) (!  (=> (and (and (= (type |c#0@@15|) DatatypeTypeType) (= (type |v#0@@11|) DatatypeTypeType)) (or (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@15| |v#0@@11|) (and (not (= 6 $FunctionContextHeight)) (and (and ($Is |c#0@@15| Tclass.DistributedSystem.Constants) ($Is |v#0@@11| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@11| |c#0@@15|))))) true)
 :qid |exercise01dfy.88:42|
 :skolemid |2287|
 :pattern ( (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@15| |v#0@@11|))
))))
(assert (forall ((|c#0@@16| T@U) (|v#0@@12| T@U) ) (!  (=> (and (and (= (type |c#0@@16|) DatatypeTypeType) (= (type |v#0@@12|) DatatypeTypeType)) (and ($Is |c#0@@16| Tclass.DistributedSystem.Constants) ($Is |v#0@@12| Tclass.DistributedSystem.Variables))) (= (|Proof.__default.InFlightGrantHasHighestEpoch#requires| |c#0@@16| |v#0@@12|) (DistributedSystem.Variables.WF |v#0@@12| |c#0@@16|)))
 :qid |exercise01dfy.88:42|
 :skolemid |2288|
 :pattern ( (|Proof.__default.InFlightGrantHasHighestEpoch#requires| |c#0@@16| |v#0@@12|))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|c#0@@17| T@U) (|v#0@@13| T@U) ) (!  (=> (and (and (= (type |c#0@@17|) DatatypeTypeType) (= (type |v#0@@13|) DatatypeTypeType)) (or (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@17| |v#0@@13|) (and (not (= 6 $FunctionContextHeight)) (and (and ($Is |c#0@@17| Tclass.DistributedSystem.Constants) ($Is |v#0@@13| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@13| |c#0@@17|))))) (and (forall ((|msg#0| T@U) ) (!  (=> (and (= (type |msg#0|) DatatypeTypeType) ($Is |msg#0| Tclass.Host.Message)) (and (|Proof.__default.InFlight#canCall| |c#0@@17| |v#0@@13| |msg#0|) (=> (Proof.__default.InFlight |c#0@@17| |v#0@@13| |msg#0|) (forall ((|idx#0@@3| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@17| |idx#0@@3|) (=> (DistributedSystem.Constants.ValidHostId |c#0@@17| |idx#0@@3|) (and (Host.Message.GrantMsg_q |msg#0|) (and (DistributedSystem.Variables.Variables_q |v#0@@13|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@13|) |idx#0@@3|)))))))
 :qid |exercise01dfy.92:12|
 :skolemid |2291|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@13|) |idx#0@@3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@17| |idx#0@@3|))
)))))
 :qid |exercise01dfy.91:12|
 :skolemid |2292|
 :pattern ( (Host.Message.epoch |msg#0|))
 :pattern ( (Proof.__default.InFlight |c#0@@17| |v#0@@13| |msg#0|))
)) (= (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@17| |v#0@@13|) (forall ((|msg#0@@0| T@U) ) (!  (=> (= (type |msg#0@@0|) DatatypeTypeType) (=> (and ($Is |msg#0@@0| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@17| |v#0@@13| |msg#0@@0|)) (forall ((|idx#0@@4| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@17| |idx#0@@4|) (> (Host.Message.epoch |msg#0@@0|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@13|) |idx#0@@4|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2289|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@13|) |idx#0@@4|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@17| |idx#0@@4|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2290|
 :pattern ( (Host.Message.epoch |msg#0@@0|))
 :pattern ( (Proof.__default.InFlight |c#0@@17| |v#0@@13| |msg#0@@0|))
)))))
 :qid |exercise01dfy.88:42|
 :skolemid |2293|
 :pattern ( (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@17| |v#0@@13|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|c#0@@18| T@U) (|v#0@@14| T@U) ) (!  (=> (and (and (= (type |c#0@@18|) DatatypeTypeType) (= (type |v#0@@14|) DatatypeTypeType)) (or (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| (Lit |c#0@@18|) (Lit |v#0@@14|)) (and (not (= 6 $FunctionContextHeight)) (and (and ($Is |c#0@@18| Tclass.DistributedSystem.Constants) ($Is |v#0@@14| Tclass.DistributedSystem.Variables)) (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@14|) (Lit |c#0@@18|))))))))) (and (forall ((|msg#1| T@U) ) (!  (=> (and (= (type |msg#1|) DatatypeTypeType) ($Is |msg#1| Tclass.Host.Message)) (and (|Proof.__default.InFlight#canCall| (Lit |c#0@@18|) (Lit |v#0@@14|) |msg#1|) (=> (Proof.__default.InFlight (Lit |c#0@@18|) (Lit |v#0@@14|) |msg#1|) (forall ((|idx#1@@3| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@18|) |idx#1@@3|) (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@18|) |idx#1@@3|) (and (Host.Message.GrantMsg_q |msg#1|) (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@14|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@14|))) |idx#1@@3|)))))))
 :qid |exercise01dfy.92:12|
 :skolemid |2296|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@14|) |idx#1@@3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@18| |idx#1@@3|))
)))))
 :qid |exercise01dfy.91:12|
 :skolemid |2297|
 :pattern ( (Host.Message.epoch |msg#1|))
 :pattern ( (Proof.__default.InFlight |c#0@@18| |v#0@@14| |msg#1|))
)) (= (Proof.__default.InFlightGrantHasHighestEpoch (Lit |c#0@@18|) (Lit |v#0@@14|)) (forall ((|msg#1@@0| T@U) ) (!  (=> (= (type |msg#1@@0|) DatatypeTypeType) (=> (and ($Is |msg#1@@0| Tclass.Host.Message) (Proof.__default.InFlight (Lit |c#0@@18|) (Lit |v#0@@14|) |msg#1@@0|)) (forall ((|idx#1@@4| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@18|) |idx#1@@4|) (> (Host.Message.epoch |msg#1@@0|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@14|))) |idx#1@@4|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2294|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@14|) |idx#1@@4|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@18| |idx#1@@4|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2295|
 :pattern ( (Host.Message.epoch |msg#1@@0|))
 :pattern ( (Proof.__default.InFlight |c#0@@18| |v#0@@14| |msg#1@@0|))
)))))
 :qid |exercise01dfy.88:42|
 :weight 3
 :skolemid |2298|
 :pattern ( (Proof.__default.InFlightGrantHasHighestEpoch (Lit |c#0@@18|) (Lit |v#0@@14|)))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|c#0@@19| T@U) (|v#0@@15| T@U) ) (!  (=> (and (and (= (type |c#0@@19|) DatatypeTypeType) (= (type |v#0@@15|) DatatypeTypeType)) (or (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@19| |v#0@@15|) (and (not (= 7 $FunctionContextHeight)) (and (and ($Is |c#0@@19| Tclass.DistributedSystem.Constants) ($Is |v#0@@15| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@15| |c#0@@19|))))) true)
 :qid |exercise01dfy.96:33|
 :skolemid |2306|
 :pattern ( (Proof.__default.NoTwoInFlightGrants |c#0@@19| |v#0@@15|))
))))
(assert (forall ((|c#0@@20| T@U) (|v#0@@16| T@U) ) (!  (=> (and (and (= (type |c#0@@20|) DatatypeTypeType) (= (type |v#0@@16|) DatatypeTypeType)) (and ($Is |c#0@@20| Tclass.DistributedSystem.Constants) ($Is |v#0@@16| Tclass.DistributedSystem.Variables))) (= (|Proof.__default.NoTwoInFlightGrants#requires| |c#0@@20| |v#0@@16|) (DistributedSystem.Variables.WF |v#0@@16| |c#0@@20|)))
 :qid |exercise01dfy.96:33|
 :skolemid |2307|
 :pattern ( (|Proof.__default.NoTwoInFlightGrants#requires| |c#0@@20| |v#0@@16|))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|c#0@@21| T@U) (|v#0@@17| T@U) ) (!  (=> (and (and (= (type |c#0@@21|) DatatypeTypeType) (= (type |v#0@@17|) DatatypeTypeType)) (or (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@21| |v#0@@17|) (and (not (= 7 $FunctionContextHeight)) (and (and ($Is |c#0@@21| Tclass.DistributedSystem.Constants) ($Is |v#0@@17| Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.WF |v#0@@17| |c#0@@21|))))) (and (forall ((|msg1#0| T@U) (|msg2#0| T@U) ) (!  (=> (and (and (= (type |msg1#0|) DatatypeTypeType) (= (type |msg2#0|) DatatypeTypeType)) (and ($Is |msg1#0| Tclass.Host.Message) ($Is |msg2#0| Tclass.Host.Message))) (and (and (|Proof.__default.InFlight#canCall| |c#0@@21| |v#0@@17| |msg1#0|) (=> (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg1#0|) (|Proof.__default.InFlight#canCall| |c#0@@21| |v#0@@17| |msg2#0|))) (=> (and (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg1#0|) (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg2#0|)) (and (|$IsA#Host.Message| |msg1#0|) (|$IsA#Host.Message| |msg2#0|)))))
 :qid |exercise01dfy.99:12|
 :skolemid |2309|
 :pattern ( (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg2#0|) (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg1#0|))
)) (= (Proof.__default.NoTwoInFlightGrants |c#0@@21| |v#0@@17|) (forall ((|msg1#0@@0| T@U) (|msg2#0@@0| T@U) ) (!  (=> (and (= (type |msg1#0@@0|) DatatypeTypeType) (= (type |msg2#0@@0|) DatatypeTypeType)) (=> (and (and ($Is |msg1#0@@0| Tclass.Host.Message) ($Is |msg2#0@@0| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg1#0@@0|) (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg2#0@@0|))) (|Host.Message#Equal| |msg1#0@@0| |msg2#0@@0|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2308|
 :pattern ( (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg2#0@@0|) (Proof.__default.InFlight |c#0@@21| |v#0@@17| |msg1#0@@0|))
)))))
 :qid |exercise01dfy.96:33|
 :skolemid |2310|
 :pattern ( (Proof.__default.NoTwoInFlightGrants |c#0@@21| |v#0@@17|))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|c#0@@22| T@U) (|v#0@@18| T@U) ) (!  (=> (and (and (= (type |c#0@@22|) DatatypeTypeType) (= (type |v#0@@18|) DatatypeTypeType)) (or (|Proof.__default.NoTwoInFlightGrants#canCall| (Lit |c#0@@22|) (Lit |v#0@@18|)) (and (not (= 7 $FunctionContextHeight)) (and (and ($Is |c#0@@22| Tclass.DistributedSystem.Constants) ($Is |v#0@@18| Tclass.DistributedSystem.Variables)) (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@18|) (Lit |c#0@@22|))))))))) (and (forall ((|msg1#1| T@U) (|msg2#1| T@U) ) (!  (=> (and (and (= (type |msg1#1|) DatatypeTypeType) (= (type |msg2#1|) DatatypeTypeType)) (and ($Is |msg1#1| Tclass.Host.Message) ($Is |msg2#1| Tclass.Host.Message))) (and (and (|Proof.__default.InFlight#canCall| (Lit |c#0@@22|) (Lit |v#0@@18|) |msg1#1|) (=> (Proof.__default.InFlight (Lit |c#0@@22|) (Lit |v#0@@18|) |msg1#1|) (|Proof.__default.InFlight#canCall| (Lit |c#0@@22|) (Lit |v#0@@18|) |msg2#1|))) (=> (and (Proof.__default.InFlight (Lit |c#0@@22|) (Lit |v#0@@18|) |msg1#1|) (Proof.__default.InFlight (Lit |c#0@@22|) (Lit |v#0@@18|) |msg2#1|)) (and (|$IsA#Host.Message| |msg1#1|) (|$IsA#Host.Message| |msg2#1|)))))
 :qid |exercise01dfy.99:12|
 :skolemid |2312|
 :pattern ( (Proof.__default.InFlight |c#0@@22| |v#0@@18| |msg2#1|) (Proof.__default.InFlight |c#0@@22| |v#0@@18| |msg1#1|))
)) (= (Proof.__default.NoTwoInFlightGrants (Lit |c#0@@22|) (Lit |v#0@@18|)) (forall ((|msg1#1@@0| T@U) (|msg2#1@@0| T@U) ) (!  (=> (and (= (type |msg1#1@@0|) DatatypeTypeType) (= (type |msg2#1@@0|) DatatypeTypeType)) (=> (and (and ($Is |msg1#1@@0| Tclass.Host.Message) ($Is |msg2#1@@0| Tclass.Host.Message)) (and (Proof.__default.InFlight (Lit |c#0@@22|) (Lit |v#0@@18|) |msg1#1@@0|) (Proof.__default.InFlight (Lit |c#0@@22|) (Lit |v#0@@18|) |msg2#1@@0|))) (|Host.Message#Equal| |msg1#1@@0| |msg2#1@@0|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2311|
 :pattern ( (Proof.__default.InFlight |c#0@@22| |v#0@@18| |msg2#1@@0|) (Proof.__default.InFlight |c#0@@22| |v#0@@18| |msg1#1@@0|))
)))))
 :qid |exercise01dfy.96:33|
 :weight 3
 :skolemid |2313|
 :pattern ( (Proof.__default.NoTwoInFlightGrants (Lit |c#0@@22|) (Lit |v#0@@18|)))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall ((|c#0@@23| T@U) (|v#0@@19| T@U) ) (!  (=> (and (and (= (type |c#0@@23|) DatatypeTypeType) (= (type |v#0@@19|) DatatypeTypeType)) (or (|Proof.__default.Inv#canCall| |c#0@@23| |v#0@@19|) (and (not (= 8 $FunctionContextHeight)) (and ($Is |c#0@@23| Tclass.DistributedSystem.Constants) ($Is |v#0@@19| Tclass.DistributedSystem.Variables))))) true)
 :qid |exercise01dfy.105:17|
 :skolemid |2319|
 :pattern ( (Proof.__default.Inv |c#0@@23| |v#0@@19|))
))))
(assert (forall ((|c#0@@24| T@U) (|v#0@@20| T@U) ) (!  (=> (and (and (= (type |c#0@@24|) DatatypeTypeType) (= (type |v#0@@20|) DatatypeTypeType)) (and ($Is |c#0@@24| Tclass.DistributedSystem.Constants) ($Is |v#0@@20| Tclass.DistributedSystem.Variables))) (= (|Proof.__default.Inv#requires| |c#0@@24| |v#0@@20|) true))
 :qid |exercise01dfy.105:17|
 :skolemid |2320|
 :pattern ( (|Proof.__default.Inv#requires| |c#0@@24| |v#0@@20|))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall ((|c#0@@25| T@U) (|v#0@@21| T@U) ) (!  (=> (and (and (= (type |c#0@@25|) DatatypeTypeType) (= (type |v#0@@21|) DatatypeTypeType)) (or (|Proof.__default.Inv#canCall| |c#0@@25| |v#0@@21|) (and (not (= 8 $FunctionContextHeight)) (and ($Is |c#0@@25| Tclass.DistributedSystem.Constants) ($Is |v#0@@21| Tclass.DistributedSystem.Variables))))) (and (and (|DistributedSystem.Variables.WF#canCall| |v#0@@21| |c#0@@25|) (=> (DistributedSystem.Variables.WF |v#0@@21| |c#0@@25|) (and (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@25| |v#0@@21|) (=> (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@25| |v#0@@21|) (and (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@25| |v#0@@21|) (=> (Proof.__default.LockHolderHasHighestEpoch |c#0@@25| |v#0@@21|) (and (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@25| |v#0@@21|) (=> (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@25| |v#0@@21|) (and (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@25| |v#0@@21|) (=> (Proof.__default.NoTwoInFlightGrants |c#0@@25| |v#0@@21|) (|SafetySpec.__default.Safety#canCall| |c#0@@25| |v#0@@21|))))))))))) (= (Proof.__default.Inv |c#0@@25| |v#0@@21|)  (and (and (and (and (and (DistributedSystem.Variables.WF |v#0@@21| |c#0@@25|) (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@25| |v#0@@21|)) (Proof.__default.LockHolderHasHighestEpoch |c#0@@25| |v#0@@21|)) (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@25| |v#0@@21|)) (Proof.__default.NoTwoInFlightGrants |c#0@@25| |v#0@@21|)) (SafetySpec.__default.Safety |c#0@@25| |v#0@@21|)))))
 :qid |exercise01dfy.105:17|
 :skolemid |2321|
 :pattern ( (Proof.__default.Inv |c#0@@25| |v#0@@21|))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall ((|c#0@@26| T@U) (|v#0@@22| T@U) ) (!  (=> (and (and (= (type |c#0@@26|) DatatypeTypeType) (= (type |v#0@@22|) DatatypeTypeType)) (or (|Proof.__default.Inv#canCall| (Lit |c#0@@26|) (Lit |v#0@@22|)) (and (not (= 8 $FunctionContextHeight)) (and ($Is |c#0@@26| Tclass.DistributedSystem.Constants) ($Is |v#0@@22| Tclass.DistributedSystem.Variables))))) (and (and (|DistributedSystem.Variables.WF#canCall| (Lit |v#0@@22|) (Lit |c#0@@26|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@22|) (Lit |c#0@@26|))))) (and (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| (Lit |c#0@@26|) (Lit |v#0@@22|)) (=> (U_2_bool (Lit (bool_2_U (Proof.__default.InFlightGrantImpliesNoLockHolder (Lit |c#0@@26|) (Lit |v#0@@22|))))) (and (|Proof.__default.LockHolderHasHighestEpoch#canCall| (Lit |c#0@@26|) (Lit |v#0@@22|)) (=> (U_2_bool (Lit (bool_2_U (Proof.__default.LockHolderHasHighestEpoch (Lit |c#0@@26|) (Lit |v#0@@22|))))) (and (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| (Lit |c#0@@26|) (Lit |v#0@@22|)) (=> (U_2_bool (Lit (bool_2_U (Proof.__default.InFlightGrantHasHighestEpoch (Lit |c#0@@26|) (Lit |v#0@@22|))))) (and (|Proof.__default.NoTwoInFlightGrants#canCall| (Lit |c#0@@26|) (Lit |v#0@@22|)) (=> (U_2_bool (Lit (bool_2_U (Proof.__default.NoTwoInFlightGrants (Lit |c#0@@26|) (Lit |v#0@@22|))))) (|SafetySpec.__default.Safety#canCall| (Lit |c#0@@26|) (Lit |v#0@@22|)))))))))))) (= (Proof.__default.Inv (Lit |c#0@@26|) (Lit |v#0@@22|)) (U_2_bool (Lit (bool_2_U  (and (and (and (and (and (DistributedSystem.Variables.WF (Lit |v#0@@22|) (Lit |c#0@@26|)) (Proof.__default.InFlightGrantImpliesNoLockHolder (Lit |c#0@@26|) (Lit |v#0@@22|))) (Proof.__default.LockHolderHasHighestEpoch (Lit |c#0@@26|) (Lit |v#0@@22|))) (Proof.__default.InFlightGrantHasHighestEpoch (Lit |c#0@@26|) (Lit |v#0@@22|))) (Proof.__default.NoTwoInFlightGrants (Lit |c#0@@26|) (Lit |v#0@@22|))) (SafetySpec.__default.Safety (Lit |c#0@@26|) (Lit |v#0@@22|)))))))))
 :qid |exercise01dfy.105:17|
 :weight 3
 :skolemid |2322|
 :pattern ( (Proof.__default.Inv (Lit |c#0@@26|) (Lit |v#0@@22|)))
))))
(assert (forall ((arg0@@263 T@U) ) (! (= (type (Tclass.Network.MessageOps arg0@@263)) TyType)
 :qid |funType:Tclass.Network.MessageOps|
 :pattern ( (Tclass.Network.MessageOps arg0@@263))
)))
(assert (forall ((Network.MessageOps$Message T@U) ) (!  (=> (= (type Network.MessageOps$Message) TyType) (and (= (Tag (Tclass.Network.MessageOps Network.MessageOps$Message)) Tagclass.Network.MessageOps) (= (TagFamily (Tclass.Network.MessageOps Network.MessageOps$Message)) tytagFamily$MessageOps)))
 :qid |unknown.0:0|
 :skolemid |2425|
 :pattern ( (Tclass.Network.MessageOps Network.MessageOps$Message))
)))
(assert (forall ((arg0@@264 T@U) ) (! (= (type (Tclass.Network.MessageOps_0 arg0@@264)) TyType)
 :qid |funType:Tclass.Network.MessageOps_0|
 :pattern ( (Tclass.Network.MessageOps_0 arg0@@264))
)))
(assert (forall ((Network.MessageOps$Message@@0 T@U) ) (!  (=> (= (type Network.MessageOps$Message@@0) TyType) (= (Tclass.Network.MessageOps_0 (Tclass.Network.MessageOps Network.MessageOps$Message@@0)) Network.MessageOps$Message@@0))
 :qid |unknown.0:0|
 :skolemid |2426|
 :pattern ( (Tclass.Network.MessageOps Network.MessageOps$Message@@0))
)))
(assert (forall ((Network.MessageOps$Message@@1 T@U) (bx@@83 T@U) ) (!  (=> (and (and (= (type Network.MessageOps$Message@@1) TyType) (= (type bx@@83) BoxType)) ($IsBox bx@@83 (Tclass.Network.MessageOps Network.MessageOps$Message@@1))) (and (= ($Box ($Unbox DatatypeTypeType bx@@83)) bx@@83) ($Is ($Unbox DatatypeTypeType bx@@83) (Tclass.Network.MessageOps Network.MessageOps$Message@@1))))
 :qid |unknown.0:0|
 :skolemid |2427|
 :pattern ( ($IsBox bx@@83 (Tclass.Network.MessageOps Network.MessageOps$Message@@1)))
)))
(assert (= (type Tclass.DistributedSystem.Step) TyType))
(assert (= (Tag Tclass.DistributedSystem.Step) Tagclass.DistributedSystem.Step))
(assert (= (TagFamily Tclass.DistributedSystem.Step) tytagFamily$Step))
(assert (forall ((bx@@84 T@U) ) (!  (=> (and (= (type bx@@84) BoxType) ($IsBox bx@@84 Tclass.DistributedSystem.Step)) (and (= ($Box ($Unbox DatatypeTypeType bx@@84)) bx@@84) ($Is ($Unbox DatatypeTypeType bx@@84) Tclass.DistributedSystem.Step)))
 :qid |unknown.0:0|
 :skolemid |2428|
 :pattern ( ($IsBox bx@@84 Tclass.DistributedSystem.Step))
)))
(assert (= (type Tclass.Host.Step) TyType))
(assert (= (Tag Tclass.Host.Step) Tagclass.Host.Step))
(assert (= (TagFamily Tclass.Host.Step) tytagFamily$Step))
(assert (forall ((bx@@85 T@U) ) (!  (=> (and (= (type bx@@85) BoxType) ($IsBox bx@@85 Tclass.Host.Step)) (and (= ($Box ($Unbox DatatypeTypeType bx@@85)) bx@@85) ($Is ($Unbox DatatypeTypeType bx@@85) Tclass.Host.Step)))
 :qid |unknown.0:0|
 :skolemid |2431|
 :pattern ( ($IsBox bx@@85 Tclass.Host.Step))
)))
(assert (= (type Tclass.Host.Constants) TyType))
(assert (= (Tag Tclass.Host.Constants) Tagclass.Host.Constants))
(assert (= (TagFamily Tclass.Host.Constants) tytagFamily$Constants))
(assert (forall ((bx@@86 T@U) ) (!  (=> (and (= (type bx@@86) BoxType) ($IsBox bx@@86 Tclass.Host.Constants)) (and (= ($Box ($Unbox DatatypeTypeType bx@@86)) bx@@86) ($Is ($Unbox DatatypeTypeType bx@@86) Tclass.Host.Constants)))
 :qid |unknown.0:0|
 :skolemid |2432|
 :pattern ( ($IsBox bx@@86 Tclass.Host.Constants))
)))
(assert (= (type Tclass.Host.Variables) TyType))
(assert (= (Tag Tclass.Host.Variables) Tagclass.Host.Variables))
(assert (= (TagFamily Tclass.Host.Variables) tytagFamily$Variables))
(assert (forall ((bx@@87 T@U) ) (!  (=> (and (= (type bx@@87) BoxType) ($IsBox bx@@87 Tclass.Host.Variables)) (and (= ($Box ($Unbox DatatypeTypeType bx@@87)) bx@@87) ($Is ($Unbox DatatypeTypeType bx@@87) Tclass.Host.Variables)))
 :qid |unknown.0:0|
 :skolemid |2433|
 :pattern ( ($IsBox bx@@87 Tclass.Host.Variables))
)))
(assert (= (type Tclass.HostIdentifiers.__default) TyType))
(assert (= (Tag Tclass.HostIdentifiers.__default) Tagclass.HostIdentifiers.__default))
(assert (= (TagFamily Tclass.HostIdentifiers.__default) tytagFamily$_default))
(assert (forall ((bx@@88 T@U) ) (!  (=> (and (= (type bx@@88) BoxType) ($IsBox bx@@88 Tclass.HostIdentifiers.__default)) (and (= ($Box ($Unbox refType bx@@88)) bx@@88) ($Is ($Unbox refType bx@@88) Tclass.HostIdentifiers.__default)))
 :qid |unknown.0:0|
 :skolemid |2470|
 :pattern ( ($IsBox bx@@88 Tclass.HostIdentifiers.__default))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> (= (type $o@@11) refType) (= ($Is $o@@11 Tclass.HostIdentifiers.__default)  (or (= $o@@11 null) (= (dtype $o@@11) Tclass.HostIdentifiers.__default))))
 :qid |unknown.0:0|
 :skolemid |2471|
 :pattern ( ($Is $o@@11 Tclass.HostIdentifiers.__default))
)))
(assert (forall (($o@@12 T@U) ($h@@25 T@U) ) (!  (=> (and (= (type $o@@12) refType) (= (type $h@@25) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@12 Tclass.HostIdentifiers.__default $h@@25)  (or (= $o@@12 null) (U_2_bool (MapType1Select (MapType0Select $h@@25 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2472|
 :pattern ( ($IsAlloc $o@@12 Tclass.HostIdentifiers.__default $h@@25))
)))
(assert  (=> true (forall ((|numHosts#0| Int) (|hostid#0| Int) ) (!  (=> (or (|HostIdentifiers.__default.ValidHostId#canCall| |numHosts#0| |hostid#0|) (<= (LitInt 0) |numHosts#0|)) true)
 :qid |networktdfy.10:25|
 :skolemid |2473|
 :pattern ( (HostIdentifiers.__default.ValidHostId |numHosts#0| |hostid#0|))
))))
(assert (forall ((|numHosts#0@@0| Int) (|hostid#0@@0| Int) ) (!  (=> (<= (LitInt 0) |numHosts#0@@0|) (= (|HostIdentifiers.__default.ValidHostId#requires| |numHosts#0@@0| |hostid#0@@0|) true))
 :qid |networktdfy.10:25|
 :skolemid |2474|
 :pattern ( (|HostIdentifiers.__default.ValidHostId#requires| |numHosts#0@@0| |hostid#0@@0|))
)))
(assert  (=> true (forall ((|numHosts#0@@1| Int) (|hostid#0@@1| Int) ) (!  (=> (or (|HostIdentifiers.__default.ValidHostId#canCall| |numHosts#0@@1| |hostid#0@@1|) (<= (LitInt 0) |numHosts#0@@1|)) (= (HostIdentifiers.__default.ValidHostId |numHosts#0@@1| |hostid#0@@1|)  (and (<= (LitInt 0) |hostid#0@@1|) (< |hostid#0@@1| |numHosts#0@@1|))))
 :qid |networktdfy.10:25|
 :skolemid |2475|
 :pattern ( (HostIdentifiers.__default.ValidHostId |numHosts#0@@1| |hostid#0@@1|))
))))
(assert  (=> true (forall ((|numHosts#0@@2| Int) (|hostid#0@@2| Int) ) (!  (=> (or (|HostIdentifiers.__default.ValidHostId#canCall| (LitInt |numHosts#0@@2|) (LitInt |hostid#0@@2|)) (<= (LitInt 0) |numHosts#0@@2|)) (= (HostIdentifiers.__default.ValidHostId (LitInt |numHosts#0@@2|) (LitInt |hostid#0@@2|))  (and (<= (LitInt 0) (LitInt |hostid#0@@2|)) (< |hostid#0@@2| |numHosts#0@@2|))))
 :qid |networktdfy.10:25|
 :weight 3
 :skolemid |2476|
 :pattern ( (HostIdentifiers.__default.ValidHostId (LitInt |numHosts#0@@2|) (LitInt |hostid#0@@2|)))
))))
(assert (forall ((arg0@@265 Int) ) (! (= (type (HostIdentifiers.__default.AllHosts arg0@@265)) (MapType0Type BoxType boolType))
 :qid |funType:HostIdentifiers.__default.AllHosts|
 :pattern ( (HostIdentifiers.__default.AllHosts arg0@@265))
)))
(assert  (=> true (forall ((|numHosts#0@@3| Int) ) (!  (=> (or (|HostIdentifiers.__default.AllHosts#canCall| |numHosts#0@@3|) (<= (LitInt 0) |numHosts#0@@3|)) ($Is (HostIdentifiers.__default.AllHosts |numHosts#0@@3|) (TSet TInt)))
 :qid |networktdfy.15:21|
 :skolemid |2477|
 :pattern ( (HostIdentifiers.__default.AllHosts |numHosts#0@@3|))
))))
(assert (forall ((|numHosts#0@@4| Int) ) (!  (=> (<= (LitInt 0) |numHosts#0@@4|) (= (|HostIdentifiers.__default.AllHosts#requires| |numHosts#0@@4|) true))
 :qid |networktdfy.15:21|
 :skolemid |2478|
 :pattern ( (|HostIdentifiers.__default.AllHosts#requires| |numHosts#0@@4|))
)))
(assert (forall ((arg0@@266 T@U) (arg1@@125 Int) (arg2@@77 Int) (arg3@@54 Int) ) (! (= (type (|lambda#13| arg0@@266 arg1@@125 arg2@@77 arg3@@54)) (MapType0Type BoxType boolType))
 :qid |funType:lambda#13|
 :pattern ( (|lambda#13| arg0@@266 arg1@@125 arg2@@77 arg3@@54))
)))
(assert  (=> true (forall ((|numHosts#0@@5| Int) ) (!  (=> (or (|HostIdentifiers.__default.AllHosts#canCall| |numHosts#0@@5|) (<= (LitInt 0) |numHosts#0@@5|)) (and (forall ((|hostid#2| Int) ) (!  (=> (<= (LitInt 0) |hostid#2|) (=> (< |hostid#2| |numHosts#0@@5|) (|HostIdentifiers.__default.ValidHostId#canCall| |numHosts#0@@5| |hostid#2|)))
 :qid |networktdfy.16:9|
 :skolemid |2479|
 :pattern ( (HostIdentifiers.__default.ValidHostId |numHosts#0@@5| |hostid#2|))
)) (= (HostIdentifiers.__default.AllHosts |numHosts#0@@5|) (|lambda#13| TInt (LitInt 0) |numHosts#0@@5| |numHosts#0@@5|))))
 :qid |networktdfy.15:21|
 :skolemid |2480|
 :pattern ( (HostIdentifiers.__default.AllHosts |numHosts#0@@5|))
))))
(assert  (=> true (forall ((|numHosts#0@@6| Int) ) (!  (=> (or (|HostIdentifiers.__default.AllHosts#canCall| (LitInt |numHosts#0@@6|)) (<= (LitInt 0) |numHosts#0@@6|)) (and (forall ((|hostid#3| Int) ) (!  (=> (<= (LitInt 0) |hostid#3|) (=> (< |hostid#3| |numHosts#0@@6|) (|HostIdentifiers.__default.ValidHostId#canCall| (LitInt |numHosts#0@@6|) |hostid#3|)))
 :qid |networktdfy.16:9|
 :skolemid |2481|
 :pattern ( (HostIdentifiers.__default.ValidHostId |numHosts#0@@6| |hostid#3|))
)) (= (HostIdentifiers.__default.AllHosts (LitInt |numHosts#0@@6|)) (|lambda#13| TInt (LitInt 0) |numHosts#0@@6| (LitInt |numHosts#0@@6|)))))
 :qid |networktdfy.15:21|
 :weight 3
 :skolemid |2482|
 :pattern ( (HostIdentifiers.__default.AllHosts (LitInt |numHosts#0@@6|)))
))))
(assert (forall ((arg0@@267 T@U) ) (! (= (type (|#UtilitiesLibrary.Option.Some| arg0@@267)) DatatypeTypeType)
 :qid |funType:#UtilitiesLibrary.Option.Some|
 :pattern ( (|#UtilitiesLibrary.Option.Some| arg0@@267))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (!  (=> (= (type |a#0#0#0@@0|) BoxType) (= (DatatypeCtorId (|#UtilitiesLibrary.Option.Some| |a#0#0#0@@0|)) |##UtilitiesLibrary.Option.Some|))
 :qid |UtilitiesLibrarydfy.52:29|
 :skolemid |2483|
 :pattern ( (|#UtilitiesLibrary.Option.Some| |a#0#0#0@@0|))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (= (type d@@10) DatatypeTypeType) (= (UtilitiesLibrary.Option.Some_q d@@10) (= (DatatypeCtorId d@@10) |##UtilitiesLibrary.Option.Some|)))
 :qid |unknown.0:0|
 :skolemid |2484|
 :pattern ( (UtilitiesLibrary.Option.Some_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (and (= (type d@@11) DatatypeTypeType) (UtilitiesLibrary.Option.Some_q d@@11)) (exists ((|a#1#0#0@@0| T@U) ) (!  (and (= (type |a#1#0#0@@0|) BoxType) (= d@@11 (|#UtilitiesLibrary.Option.Some| |a#1#0#0@@0|)))
 :qid |UtilitiesLibrarydfy.52:29|
 :skolemid |2485|
 :no-pattern (type |a#1#0#0@@0|)
 :no-pattern (U_2_int |a#1#0#0@@0|)
 :no-pattern (U_2_bool |a#1#0#0@@0|)
)))
 :qid |unknown.0:0|
 :skolemid |2486|
 :pattern ( (UtilitiesLibrary.Option.Some_q d@@11))
)))
(assert (forall ((arg0@@268 T@U) ) (! (= (type (Tclass.UtilitiesLibrary.Option arg0@@268)) TyType)
 :qid |funType:Tclass.UtilitiesLibrary.Option|
 :pattern ( (Tclass.UtilitiesLibrary.Option arg0@@268))
)))
(assert (forall ((UtilitiesLibrary.Option$T T@U) ) (!  (=> (= (type UtilitiesLibrary.Option$T) TyType) (and (= (Tag (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T)) Tagclass.UtilitiesLibrary.Option) (= (TagFamily (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T)) tytagFamily$Option)))
 :qid |unknown.0:0|
 :skolemid |2487|
 :pattern ( (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T))
)))
(assert (forall ((arg0@@269 T@U) ) (! (= (type (Tclass.UtilitiesLibrary.Option_0 arg0@@269)) TyType)
 :qid |funType:Tclass.UtilitiesLibrary.Option_0|
 :pattern ( (Tclass.UtilitiesLibrary.Option_0 arg0@@269))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@0 T@U) ) (!  (=> (= (type UtilitiesLibrary.Option$T@@0) TyType) (= (Tclass.UtilitiesLibrary.Option_0 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@0)) UtilitiesLibrary.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |2488|
 :pattern ( (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@0))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@1 T@U) (bx@@89 T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary.Option$T@@1) TyType) (= (type bx@@89) BoxType)) ($IsBox bx@@89 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@1))) (and (= ($Box ($Unbox DatatypeTypeType bx@@89)) bx@@89) ($Is ($Unbox DatatypeTypeType bx@@89) (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@1))))
 :qid |unknown.0:0|
 :skolemid |2489|
 :pattern ( ($IsBox bx@@89 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@1)))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@2 T@U) (|a#2#0#0@@0| T@U) ) (!  (=> (and (= (type UtilitiesLibrary.Option$T@@2) TyType) (= (type |a#2#0#0@@0|) BoxType)) (= ($Is (|#UtilitiesLibrary.Option.Some| |a#2#0#0@@0|) (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@2)) ($IsBox |a#2#0#0@@0| UtilitiesLibrary.Option$T@@2)))
 :qid |unknown.0:0|
 :skolemid |2490|
 :pattern ( ($Is (|#UtilitiesLibrary.Option.Some| |a#2#0#0@@0|) (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@2)))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@3 T@U) (|a#3#0#0@@0| T@U) ($h@@26 T@U) ) (!  (=> (and (and (and (= (type UtilitiesLibrary.Option$T@@3) TyType) (= (type |a#3#0#0@@0|) BoxType)) (= (type $h@@26) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@26)) (= ($IsAlloc (|#UtilitiesLibrary.Option.Some| |a#3#0#0@@0|) (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@3) $h@@26) ($IsAllocBox |a#3#0#0@@0| UtilitiesLibrary.Option$T@@3 $h@@26)))
 :qid |unknown.0:0|
 :skolemid |2491|
 :pattern ( ($IsAlloc (|#UtilitiesLibrary.Option.Some| |a#3#0#0@@0|) (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@3) $h@@26))
)))
(assert (forall ((arg0@@270 T@U) ) (! (= (type (UtilitiesLibrary.Option.value arg0@@270)) BoxType)
 :qid |funType:UtilitiesLibrary.Option.value|
 :pattern ( (UtilitiesLibrary.Option.value arg0@@270))
)))
(assert (forall ((d@@12 T@U) (UtilitiesLibrary.Option$T@@4 T@U) ($h@@27 T@U) ) (!  (=> (and (and (and (= (type d@@12) DatatypeTypeType) (= (type UtilitiesLibrary.Option$T@@4) TyType)) (= (type $h@@27) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@27) (and (UtilitiesLibrary.Option.Some_q d@@12) ($IsAlloc d@@12 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@4) $h@@27)))) ($IsAllocBox (UtilitiesLibrary.Option.value d@@12) UtilitiesLibrary.Option$T@@4 $h@@27))
 :qid |unknown.0:0|
 :skolemid |2492|
 :pattern ( ($IsAllocBox (UtilitiesLibrary.Option.value d@@12) UtilitiesLibrary.Option$T@@4 $h@@27))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (!  (=> (= (type |a#4#0#0@@0|) BoxType) (= (|#UtilitiesLibrary.Option.Some| (Lit |a#4#0#0@@0|)) (Lit (|#UtilitiesLibrary.Option.Some| |a#4#0#0@@0|))))
 :qid |UtilitiesLibrarydfy.52:29|
 :skolemid |2493|
 :pattern ( (|#UtilitiesLibrary.Option.Some| (Lit |a#4#0#0@@0|)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (!  (=> (= (type |a#5#0#0@@0|) BoxType) (= (UtilitiesLibrary.Option.value (|#UtilitiesLibrary.Option.Some| |a#5#0#0@@0|)) |a#5#0#0@@0|))
 :qid |UtilitiesLibrarydfy.52:29|
 :skolemid |2494|
 :pattern ( (|#UtilitiesLibrary.Option.Some| |a#5#0#0@@0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) ) (!  (=> (= (type |a#6#0#0@@0|) BoxType) (< (BoxRank |a#6#0#0@@0|) (DtRank (|#UtilitiesLibrary.Option.Some| |a#6#0#0@@0|))))
 :qid |UtilitiesLibrarydfy.52:29|
 :skolemid |2495|
 :pattern ( (|#UtilitiesLibrary.Option.Some| |a#6#0#0@@0|))
)))
(assert (= (type |#UtilitiesLibrary.Option.None|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Option.None|) |##UtilitiesLibrary.Option.None|))
(assert (forall ((d@@13 T@U) ) (!  (=> (= (type d@@13) DatatypeTypeType) (= (UtilitiesLibrary.Option.None_q d@@13) (= (DatatypeCtorId d@@13) |##UtilitiesLibrary.Option.None|)))
 :qid |unknown.0:0|
 :skolemid |2496|
 :pattern ( (UtilitiesLibrary.Option.None_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (and (= (type d@@14) DatatypeTypeType) (UtilitiesLibrary.Option.None_q d@@14)) (= d@@14 |#UtilitiesLibrary.Option.None|))
 :qid |unknown.0:0|
 :skolemid |2497|
 :pattern ( (UtilitiesLibrary.Option.None_q d@@14))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@5 T@U) ) (!  (=> (= (type UtilitiesLibrary.Option$T@@5) TyType) ($Is |#UtilitiesLibrary.Option.None| (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@5)))
 :qid |unknown.0:0|
 :skolemid |2498|
 :pattern ( ($Is |#UtilitiesLibrary.Option.None| (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@5)))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@6 T@U) ($h@@28 T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary.Option$T@@6) TyType) (= (type $h@@28) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@28)) ($IsAlloc |#UtilitiesLibrary.Option.None| (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@6) $h@@28))
 :qid |unknown.0:0|
 :skolemid |2499|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Option.None| (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@6) $h@@28))
)))
(assert (= |#UtilitiesLibrary.Option.None| (Lit |#UtilitiesLibrary.Option.None|)))
(assert (forall ((d@@15 T@U) ) (!  (=> (and (= (type d@@15) DatatypeTypeType) (|$IsA#UtilitiesLibrary.Option| d@@15)) (or (UtilitiesLibrary.Option.Some_q d@@15) (UtilitiesLibrary.Option.None_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |2500|
 :pattern ( (|$IsA#UtilitiesLibrary.Option| d@@15))
)))
(assert (forall ((UtilitiesLibrary.Option$T@@7 T@U) (d@@16 T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary.Option$T@@7) TyType) (= (type d@@16) DatatypeTypeType)) ($Is d@@16 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@7))) (or (UtilitiesLibrary.Option.Some_q d@@16) (UtilitiesLibrary.Option.None_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |2501|
 :pattern ( (UtilitiesLibrary.Option.None_q d@@16) ($Is d@@16 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@7)))
 :pattern ( (UtilitiesLibrary.Option.Some_q d@@16) ($Is d@@16 (Tclass.UtilitiesLibrary.Option UtilitiesLibrary.Option$T@@7)))
)))
(assert (forall ((a@@122 T@U) (b@@65 T@U) ) (!  (=> (and (and (= (type a@@122) DatatypeTypeType) (= (type b@@65) DatatypeTypeType)) (and (UtilitiesLibrary.Option.Some_q a@@122) (UtilitiesLibrary.Option.Some_q b@@65))) (= (|UtilitiesLibrary.Option#Equal| a@@122 b@@65) (= (UtilitiesLibrary.Option.value a@@122) (UtilitiesLibrary.Option.value b@@65))))
 :qid |unknown.0:0|
 :skolemid |2502|
 :pattern ( (|UtilitiesLibrary.Option#Equal| a@@122 b@@65) (UtilitiesLibrary.Option.Some_q a@@122))
 :pattern ( (|UtilitiesLibrary.Option#Equal| a@@122 b@@65) (UtilitiesLibrary.Option.Some_q b@@65))
)))
(assert (forall ((a@@123 T@U) (b@@66 T@U) ) (!  (=> (and (and (= (type a@@123) DatatypeTypeType) (= (type b@@66) DatatypeTypeType)) (and (UtilitiesLibrary.Option.None_q a@@123) (UtilitiesLibrary.Option.None_q b@@66))) (= (|UtilitiesLibrary.Option#Equal| a@@123 b@@66) true))
 :qid |unknown.0:0|
 :skolemid |2503|
 :pattern ( (|UtilitiesLibrary.Option#Equal| a@@123 b@@66) (UtilitiesLibrary.Option.None_q a@@123))
 :pattern ( (|UtilitiesLibrary.Option#Equal| a@@123 b@@66) (UtilitiesLibrary.Option.None_q b@@66))
)))
(assert (forall ((a@@124 T@U) (b@@67 T@U) ) (!  (=> (and (= (type a@@124) DatatypeTypeType) (= (type b@@67) DatatypeTypeType)) (= (|UtilitiesLibrary.Option#Equal| a@@124 b@@67) (= a@@124 b@@67)))
 :qid |unknown.0:0|
 :skolemid |2504|
 :pattern ( (|UtilitiesLibrary.Option#Equal| a@@124 b@@67))
)))
(assert (= (type |#UtilitiesLibrary.Direction.North|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Direction.North|) |##UtilitiesLibrary.Direction.North|))
(assert (forall ((d@@17 T@U) ) (!  (=> (= (type d@@17) DatatypeTypeType) (= (UtilitiesLibrary.Direction.North_q d@@17) (= (DatatypeCtorId d@@17) |##UtilitiesLibrary.Direction.North|)))
 :qid |unknown.0:0|
 :skolemid |2505|
 :pattern ( (UtilitiesLibrary.Direction.North_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (and (= (type d@@18) DatatypeTypeType) (UtilitiesLibrary.Direction.North_q d@@18)) (= d@@18 |#UtilitiesLibrary.Direction.North|))
 :qid |unknown.0:0|
 :skolemid |2506|
 :pattern ( (UtilitiesLibrary.Direction.North_q d@@18))
)))
(assert (= (type Tclass.UtilitiesLibrary.Direction) TyType))
(assert (= (Tag Tclass.UtilitiesLibrary.Direction) Tagclass.UtilitiesLibrary.Direction))
(assert (= (TagFamily Tclass.UtilitiesLibrary.Direction) tytagFamily$Direction))
(assert (forall ((bx@@90 T@U) ) (!  (=> (and (= (type bx@@90) BoxType) ($IsBox bx@@90 Tclass.UtilitiesLibrary.Direction)) (and (= ($Box ($Unbox DatatypeTypeType bx@@90)) bx@@90) ($Is ($Unbox DatatypeTypeType bx@@90) Tclass.UtilitiesLibrary.Direction)))
 :qid |unknown.0:0|
 :skolemid |2507|
 :pattern ( ($IsBox bx@@90 Tclass.UtilitiesLibrary.Direction))
)))
(assert ($Is |#UtilitiesLibrary.Direction.North| Tclass.UtilitiesLibrary.Direction))
(assert (forall (($h@@29 T@U) ) (!  (=> (and (= (type $h@@29) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@29)) ($IsAlloc |#UtilitiesLibrary.Direction.North| Tclass.UtilitiesLibrary.Direction $h@@29))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2508|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Direction.North| Tclass.UtilitiesLibrary.Direction $h@@29))
)))
(assert (= |#UtilitiesLibrary.Direction.North| (Lit |#UtilitiesLibrary.Direction.North|)))
(assert (= (type |#UtilitiesLibrary.Direction.East|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Direction.East|) |##UtilitiesLibrary.Direction.East|))
(assert (forall ((d@@19 T@U) ) (!  (=> (= (type d@@19) DatatypeTypeType) (= (UtilitiesLibrary.Direction.East_q d@@19) (= (DatatypeCtorId d@@19) |##UtilitiesLibrary.Direction.East|)))
 :qid |unknown.0:0|
 :skolemid |2509|
 :pattern ( (UtilitiesLibrary.Direction.East_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (and (= (type d@@20) DatatypeTypeType) (UtilitiesLibrary.Direction.East_q d@@20)) (= d@@20 |#UtilitiesLibrary.Direction.East|))
 :qid |unknown.0:0|
 :skolemid |2510|
 :pattern ( (UtilitiesLibrary.Direction.East_q d@@20))
)))
(assert ($Is |#UtilitiesLibrary.Direction.East| Tclass.UtilitiesLibrary.Direction))
(assert (forall (($h@@30 T@U) ) (!  (=> (and (= (type $h@@30) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@30)) ($IsAlloc |#UtilitiesLibrary.Direction.East| Tclass.UtilitiesLibrary.Direction $h@@30))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2511|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Direction.East| Tclass.UtilitiesLibrary.Direction $h@@30))
)))
(assert (= |#UtilitiesLibrary.Direction.East| (Lit |#UtilitiesLibrary.Direction.East|)))
(assert (= (type |#UtilitiesLibrary.Direction.South|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Direction.South|) |##UtilitiesLibrary.Direction.South|))
(assert (forall ((d@@21 T@U) ) (!  (=> (= (type d@@21) DatatypeTypeType) (= (UtilitiesLibrary.Direction.South_q d@@21) (= (DatatypeCtorId d@@21) |##UtilitiesLibrary.Direction.South|)))
 :qid |unknown.0:0|
 :skolemid |2512|
 :pattern ( (UtilitiesLibrary.Direction.South_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (and (= (type d@@22) DatatypeTypeType) (UtilitiesLibrary.Direction.South_q d@@22)) (= d@@22 |#UtilitiesLibrary.Direction.South|))
 :qid |unknown.0:0|
 :skolemid |2513|
 :pattern ( (UtilitiesLibrary.Direction.South_q d@@22))
)))
(assert ($Is |#UtilitiesLibrary.Direction.South| Tclass.UtilitiesLibrary.Direction))
(assert (forall (($h@@31 T@U) ) (!  (=> (and (= (type $h@@31) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@31)) ($IsAlloc |#UtilitiesLibrary.Direction.South| Tclass.UtilitiesLibrary.Direction $h@@31))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2514|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Direction.South| Tclass.UtilitiesLibrary.Direction $h@@31))
)))
(assert (= |#UtilitiesLibrary.Direction.South| (Lit |#UtilitiesLibrary.Direction.South|)))
(assert (= (type |#UtilitiesLibrary.Direction.West|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Direction.West|) |##UtilitiesLibrary.Direction.West|))
(assert (forall ((d@@23 T@U) ) (!  (=> (= (type d@@23) DatatypeTypeType) (= (UtilitiesLibrary.Direction.West_q d@@23) (= (DatatypeCtorId d@@23) |##UtilitiesLibrary.Direction.West|)))
 :qid |unknown.0:0|
 :skolemid |2515|
 :pattern ( (UtilitiesLibrary.Direction.West_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (and (= (type d@@24) DatatypeTypeType) (UtilitiesLibrary.Direction.West_q d@@24)) (= d@@24 |#UtilitiesLibrary.Direction.West|))
 :qid |unknown.0:0|
 :skolemid |2516|
 :pattern ( (UtilitiesLibrary.Direction.West_q d@@24))
)))
(assert ($Is |#UtilitiesLibrary.Direction.West| Tclass.UtilitiesLibrary.Direction))
(assert (forall (($h@@32 T@U) ) (!  (=> (and (= (type $h@@32) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@32)) ($IsAlloc |#UtilitiesLibrary.Direction.West| Tclass.UtilitiesLibrary.Direction $h@@32))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2517|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Direction.West| Tclass.UtilitiesLibrary.Direction $h@@32))
)))
(assert (= |#UtilitiesLibrary.Direction.West| (Lit |#UtilitiesLibrary.Direction.West|)))
(assert (forall ((d@@25 T@U) ) (!  (=> (and (= (type d@@25) DatatypeTypeType) (|$IsA#UtilitiesLibrary.Direction| d@@25)) (or (or (or (UtilitiesLibrary.Direction.North_q d@@25) (UtilitiesLibrary.Direction.East_q d@@25)) (UtilitiesLibrary.Direction.South_q d@@25)) (UtilitiesLibrary.Direction.West_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |2518|
 :pattern ( (|$IsA#UtilitiesLibrary.Direction| d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (and (= (type d@@26) DatatypeTypeType) ($Is d@@26 Tclass.UtilitiesLibrary.Direction)) (or (or (or (UtilitiesLibrary.Direction.North_q d@@26) (UtilitiesLibrary.Direction.East_q d@@26)) (UtilitiesLibrary.Direction.South_q d@@26)) (UtilitiesLibrary.Direction.West_q d@@26)))
 :qid |unknown.0:0|
 :skolemid |2519|
 :pattern ( (UtilitiesLibrary.Direction.West_q d@@26) ($Is d@@26 Tclass.UtilitiesLibrary.Direction))
 :pattern ( (UtilitiesLibrary.Direction.South_q d@@26) ($Is d@@26 Tclass.UtilitiesLibrary.Direction))
 :pattern ( (UtilitiesLibrary.Direction.East_q d@@26) ($Is d@@26 Tclass.UtilitiesLibrary.Direction))
 :pattern ( (UtilitiesLibrary.Direction.North_q d@@26) ($Is d@@26 Tclass.UtilitiesLibrary.Direction))
)))
(assert (forall ((a@@125 T@U) (b@@68 T@U) ) (!  (=> (and (and (= (type a@@125) DatatypeTypeType) (= (type b@@68) DatatypeTypeType)) (and (UtilitiesLibrary.Direction.North_q a@@125) (UtilitiesLibrary.Direction.North_q b@@68))) (= (|UtilitiesLibrary.Direction#Equal| a@@125 b@@68) true))
 :qid |unknown.0:0|
 :skolemid |2520|
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@125 b@@68) (UtilitiesLibrary.Direction.North_q a@@125))
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@125 b@@68) (UtilitiesLibrary.Direction.North_q b@@68))
)))
(assert (forall ((a@@126 T@U) (b@@69 T@U) ) (!  (=> (and (and (= (type a@@126) DatatypeTypeType) (= (type b@@69) DatatypeTypeType)) (and (UtilitiesLibrary.Direction.East_q a@@126) (UtilitiesLibrary.Direction.East_q b@@69))) (= (|UtilitiesLibrary.Direction#Equal| a@@126 b@@69) true))
 :qid |unknown.0:0|
 :skolemid |2521|
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@126 b@@69) (UtilitiesLibrary.Direction.East_q a@@126))
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@126 b@@69) (UtilitiesLibrary.Direction.East_q b@@69))
)))
(assert (forall ((a@@127 T@U) (b@@70 T@U) ) (!  (=> (and (and (= (type a@@127) DatatypeTypeType) (= (type b@@70) DatatypeTypeType)) (and (UtilitiesLibrary.Direction.South_q a@@127) (UtilitiesLibrary.Direction.South_q b@@70))) (= (|UtilitiesLibrary.Direction#Equal| a@@127 b@@70) true))
 :qid |unknown.0:0|
 :skolemid |2522|
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@127 b@@70) (UtilitiesLibrary.Direction.South_q a@@127))
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@127 b@@70) (UtilitiesLibrary.Direction.South_q b@@70))
)))
(assert (forall ((a@@128 T@U) (b@@71 T@U) ) (!  (=> (and (and (= (type a@@128) DatatypeTypeType) (= (type b@@71) DatatypeTypeType)) (and (UtilitiesLibrary.Direction.West_q a@@128) (UtilitiesLibrary.Direction.West_q b@@71))) (= (|UtilitiesLibrary.Direction#Equal| a@@128 b@@71) true))
 :qid |unknown.0:0|
 :skolemid |2523|
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@128 b@@71) (UtilitiesLibrary.Direction.West_q a@@128))
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@128 b@@71) (UtilitiesLibrary.Direction.West_q b@@71))
)))
(assert (forall ((a@@129 T@U) (b@@72 T@U) ) (!  (=> (and (= (type a@@129) DatatypeTypeType) (= (type b@@72) DatatypeTypeType)) (= (|UtilitiesLibrary.Direction#Equal| a@@129 b@@72) (= a@@129 b@@72)))
 :qid |unknown.0:0|
 :skolemid |2524|
 :pattern ( (|UtilitiesLibrary.Direction#Equal| a@@129 b@@72))
)))
(assert (= (type |#UtilitiesLibrary.Meat.Salami|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Meat.Salami|) |##UtilitiesLibrary.Meat.Salami|))
(assert (forall ((d@@27 T@U) ) (!  (=> (= (type d@@27) DatatypeTypeType) (= (UtilitiesLibrary.Meat.Salami_q d@@27) (= (DatatypeCtorId d@@27) |##UtilitiesLibrary.Meat.Salami|)))
 :qid |unknown.0:0|
 :skolemid |2525|
 :pattern ( (UtilitiesLibrary.Meat.Salami_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (and (= (type d@@28) DatatypeTypeType) (UtilitiesLibrary.Meat.Salami_q d@@28)) (= d@@28 |#UtilitiesLibrary.Meat.Salami|))
 :qid |unknown.0:0|
 :skolemid |2526|
 :pattern ( (UtilitiesLibrary.Meat.Salami_q d@@28))
)))
(assert (= (type Tclass.UtilitiesLibrary.Meat) TyType))
(assert (= (Tag Tclass.UtilitiesLibrary.Meat) Tagclass.UtilitiesLibrary.Meat))
(assert (= (TagFamily Tclass.UtilitiesLibrary.Meat) tytagFamily$Meat))
(assert (forall ((bx@@91 T@U) ) (!  (=> (and (= (type bx@@91) BoxType) ($IsBox bx@@91 Tclass.UtilitiesLibrary.Meat)) (and (= ($Box ($Unbox DatatypeTypeType bx@@91)) bx@@91) ($Is ($Unbox DatatypeTypeType bx@@91) Tclass.UtilitiesLibrary.Meat)))
 :qid |unknown.0:0|
 :skolemid |2527|
 :pattern ( ($IsBox bx@@91 Tclass.UtilitiesLibrary.Meat))
)))
(assert ($Is |#UtilitiesLibrary.Meat.Salami| Tclass.UtilitiesLibrary.Meat))
(assert (forall (($h@@33 T@U) ) (!  (=> (and (= (type $h@@33) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@33)) ($IsAlloc |#UtilitiesLibrary.Meat.Salami| Tclass.UtilitiesLibrary.Meat $h@@33))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2528|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Meat.Salami| Tclass.UtilitiesLibrary.Meat $h@@33))
)))
(assert (= |#UtilitiesLibrary.Meat.Salami| (Lit |#UtilitiesLibrary.Meat.Salami|)))
(assert (= (type |#UtilitiesLibrary.Meat.Ham|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Meat.Ham|) |##UtilitiesLibrary.Meat.Ham|))
(assert (forall ((d@@29 T@U) ) (!  (=> (= (type d@@29) DatatypeTypeType) (= (UtilitiesLibrary.Meat.Ham_q d@@29) (= (DatatypeCtorId d@@29) |##UtilitiesLibrary.Meat.Ham|)))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( (UtilitiesLibrary.Meat.Ham_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (and (= (type d@@30) DatatypeTypeType) (UtilitiesLibrary.Meat.Ham_q d@@30)) (= d@@30 |#UtilitiesLibrary.Meat.Ham|))
 :qid |unknown.0:0|
 :skolemid |2530|
 :pattern ( (UtilitiesLibrary.Meat.Ham_q d@@30))
)))
(assert ($Is |#UtilitiesLibrary.Meat.Ham| Tclass.UtilitiesLibrary.Meat))
(assert (forall (($h@@34 T@U) ) (!  (=> (and (= (type $h@@34) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@34)) ($IsAlloc |#UtilitiesLibrary.Meat.Ham| Tclass.UtilitiesLibrary.Meat $h@@34))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2531|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Meat.Ham| Tclass.UtilitiesLibrary.Meat $h@@34))
)))
(assert (= |#UtilitiesLibrary.Meat.Ham| (Lit |#UtilitiesLibrary.Meat.Ham|)))
(assert (forall ((d@@31 T@U) ) (!  (=> (and (= (type d@@31) DatatypeTypeType) (|$IsA#UtilitiesLibrary.Meat| d@@31)) (or (UtilitiesLibrary.Meat.Salami_q d@@31) (UtilitiesLibrary.Meat.Ham_q d@@31)))
 :qid |unknown.0:0|
 :skolemid |2532|
 :pattern ( (|$IsA#UtilitiesLibrary.Meat| d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (and (= (type d@@32) DatatypeTypeType) ($Is d@@32 Tclass.UtilitiesLibrary.Meat)) (or (UtilitiesLibrary.Meat.Salami_q d@@32) (UtilitiesLibrary.Meat.Ham_q d@@32)))
 :qid |unknown.0:0|
 :skolemid |2533|
 :pattern ( (UtilitiesLibrary.Meat.Ham_q d@@32) ($Is d@@32 Tclass.UtilitiesLibrary.Meat))
 :pattern ( (UtilitiesLibrary.Meat.Salami_q d@@32) ($Is d@@32 Tclass.UtilitiesLibrary.Meat))
)))
(assert (forall ((a@@130 T@U) (b@@73 T@U) ) (!  (=> (and (and (= (type a@@130) DatatypeTypeType) (= (type b@@73) DatatypeTypeType)) (and (UtilitiesLibrary.Meat.Salami_q a@@130) (UtilitiesLibrary.Meat.Salami_q b@@73))) (= (|UtilitiesLibrary.Meat#Equal| a@@130 b@@73) true))
 :qid |unknown.0:0|
 :skolemid |2534|
 :pattern ( (|UtilitiesLibrary.Meat#Equal| a@@130 b@@73) (UtilitiesLibrary.Meat.Salami_q a@@130))
 :pattern ( (|UtilitiesLibrary.Meat#Equal| a@@130 b@@73) (UtilitiesLibrary.Meat.Salami_q b@@73))
)))
(assert (forall ((a@@131 T@U) (b@@74 T@U) ) (!  (=> (and (and (= (type a@@131) DatatypeTypeType) (= (type b@@74) DatatypeTypeType)) (and (UtilitiesLibrary.Meat.Ham_q a@@131) (UtilitiesLibrary.Meat.Ham_q b@@74))) (= (|UtilitiesLibrary.Meat#Equal| a@@131 b@@74) true))
 :qid |unknown.0:0|
 :skolemid |2535|
 :pattern ( (|UtilitiesLibrary.Meat#Equal| a@@131 b@@74) (UtilitiesLibrary.Meat.Ham_q a@@131))
 :pattern ( (|UtilitiesLibrary.Meat#Equal| a@@131 b@@74) (UtilitiesLibrary.Meat.Ham_q b@@74))
)))
(assert (forall ((a@@132 T@U) (b@@75 T@U) ) (!  (=> (and (= (type a@@132) DatatypeTypeType) (= (type b@@75) DatatypeTypeType)) (= (|UtilitiesLibrary.Meat#Equal| a@@132 b@@75) (= a@@132 b@@75)))
 :qid |unknown.0:0|
 :skolemid |2536|
 :pattern ( (|UtilitiesLibrary.Meat#Equal| a@@132 b@@75))
)))
(assert (= (type |#UtilitiesLibrary.Cheese.Provolone|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Cheese.Provolone|) |##UtilitiesLibrary.Cheese.Provolone|))
(assert (forall ((d@@33 T@U) ) (!  (=> (= (type d@@33) DatatypeTypeType) (= (UtilitiesLibrary.Cheese.Provolone_q d@@33) (= (DatatypeCtorId d@@33) |##UtilitiesLibrary.Cheese.Provolone|)))
 :qid |unknown.0:0|
 :skolemid |2537|
 :pattern ( (UtilitiesLibrary.Cheese.Provolone_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (and (= (type d@@34) DatatypeTypeType) (UtilitiesLibrary.Cheese.Provolone_q d@@34)) (= d@@34 |#UtilitiesLibrary.Cheese.Provolone|))
 :qid |unknown.0:0|
 :skolemid |2538|
 :pattern ( (UtilitiesLibrary.Cheese.Provolone_q d@@34))
)))
(assert (= (type Tclass.UtilitiesLibrary.Cheese) TyType))
(assert (= (Tag Tclass.UtilitiesLibrary.Cheese) Tagclass.UtilitiesLibrary.Cheese))
(assert (= (TagFamily Tclass.UtilitiesLibrary.Cheese) tytagFamily$Cheese))
(assert (forall ((bx@@92 T@U) ) (!  (=> (and (= (type bx@@92) BoxType) ($IsBox bx@@92 Tclass.UtilitiesLibrary.Cheese)) (and (= ($Box ($Unbox DatatypeTypeType bx@@92)) bx@@92) ($Is ($Unbox DatatypeTypeType bx@@92) Tclass.UtilitiesLibrary.Cheese)))
 :qid |unknown.0:0|
 :skolemid |2539|
 :pattern ( ($IsBox bx@@92 Tclass.UtilitiesLibrary.Cheese))
)))
(assert ($Is |#UtilitiesLibrary.Cheese.Provolone| Tclass.UtilitiesLibrary.Cheese))
(assert (forall (($h@@35 T@U) ) (!  (=> (and (= (type $h@@35) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@35)) ($IsAlloc |#UtilitiesLibrary.Cheese.Provolone| Tclass.UtilitiesLibrary.Cheese $h@@35))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2540|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Cheese.Provolone| Tclass.UtilitiesLibrary.Cheese $h@@35))
)))
(assert (= |#UtilitiesLibrary.Cheese.Provolone| (Lit |#UtilitiesLibrary.Cheese.Provolone|)))
(assert (= (type |#UtilitiesLibrary.Cheese.Swiss|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Cheese.Swiss|) |##UtilitiesLibrary.Cheese.Swiss|))
(assert (forall ((d@@35 T@U) ) (!  (=> (= (type d@@35) DatatypeTypeType) (= (UtilitiesLibrary.Cheese.Swiss_q d@@35) (= (DatatypeCtorId d@@35) |##UtilitiesLibrary.Cheese.Swiss|)))
 :qid |unknown.0:0|
 :skolemid |2541|
 :pattern ( (UtilitiesLibrary.Cheese.Swiss_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (and (= (type d@@36) DatatypeTypeType) (UtilitiesLibrary.Cheese.Swiss_q d@@36)) (= d@@36 |#UtilitiesLibrary.Cheese.Swiss|))
 :qid |unknown.0:0|
 :skolemid |2542|
 :pattern ( (UtilitiesLibrary.Cheese.Swiss_q d@@36))
)))
(assert ($Is |#UtilitiesLibrary.Cheese.Swiss| Tclass.UtilitiesLibrary.Cheese))
(assert (forall (($h@@36 T@U) ) (!  (=> (and (= (type $h@@36) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@36)) ($IsAlloc |#UtilitiesLibrary.Cheese.Swiss| Tclass.UtilitiesLibrary.Cheese $h@@36))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2543|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Cheese.Swiss| Tclass.UtilitiesLibrary.Cheese $h@@36))
)))
(assert (= |#UtilitiesLibrary.Cheese.Swiss| (Lit |#UtilitiesLibrary.Cheese.Swiss|)))
(assert (= (type |#UtilitiesLibrary.Cheese.Cheddar|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Cheese.Cheddar|) |##UtilitiesLibrary.Cheese.Cheddar|))
(assert (forall ((d@@37 T@U) ) (!  (=> (= (type d@@37) DatatypeTypeType) (= (UtilitiesLibrary.Cheese.Cheddar_q d@@37) (= (DatatypeCtorId d@@37) |##UtilitiesLibrary.Cheese.Cheddar|)))
 :qid |unknown.0:0|
 :skolemid |2544|
 :pattern ( (UtilitiesLibrary.Cheese.Cheddar_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (and (= (type d@@38) DatatypeTypeType) (UtilitiesLibrary.Cheese.Cheddar_q d@@38)) (= d@@38 |#UtilitiesLibrary.Cheese.Cheddar|))
 :qid |unknown.0:0|
 :skolemid |2545|
 :pattern ( (UtilitiesLibrary.Cheese.Cheddar_q d@@38))
)))
(assert ($Is |#UtilitiesLibrary.Cheese.Cheddar| Tclass.UtilitiesLibrary.Cheese))
(assert (forall (($h@@37 T@U) ) (!  (=> (and (= (type $h@@37) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@37)) ($IsAlloc |#UtilitiesLibrary.Cheese.Cheddar| Tclass.UtilitiesLibrary.Cheese $h@@37))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2546|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Cheese.Cheddar| Tclass.UtilitiesLibrary.Cheese $h@@37))
)))
(assert (= |#UtilitiesLibrary.Cheese.Cheddar| (Lit |#UtilitiesLibrary.Cheese.Cheddar|)))
(assert (= (type |#UtilitiesLibrary.Cheese.Jack|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Cheese.Jack|) |##UtilitiesLibrary.Cheese.Jack|))
(assert (forall ((d@@39 T@U) ) (!  (=> (= (type d@@39) DatatypeTypeType) (= (UtilitiesLibrary.Cheese.Jack_q d@@39) (= (DatatypeCtorId d@@39) |##UtilitiesLibrary.Cheese.Jack|)))
 :qid |unknown.0:0|
 :skolemid |2547|
 :pattern ( (UtilitiesLibrary.Cheese.Jack_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (and (= (type d@@40) DatatypeTypeType) (UtilitiesLibrary.Cheese.Jack_q d@@40)) (= d@@40 |#UtilitiesLibrary.Cheese.Jack|))
 :qid |unknown.0:0|
 :skolemid |2548|
 :pattern ( (UtilitiesLibrary.Cheese.Jack_q d@@40))
)))
(assert ($Is |#UtilitiesLibrary.Cheese.Jack| Tclass.UtilitiesLibrary.Cheese))
(assert (forall (($h@@38 T@U) ) (!  (=> (and (= (type $h@@38) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@38)) ($IsAlloc |#UtilitiesLibrary.Cheese.Jack| Tclass.UtilitiesLibrary.Cheese $h@@38))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2549|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Cheese.Jack| Tclass.UtilitiesLibrary.Cheese $h@@38))
)))
(assert (= |#UtilitiesLibrary.Cheese.Jack| (Lit |#UtilitiesLibrary.Cheese.Jack|)))
(assert (forall ((d@@41 T@U) ) (!  (=> (and (= (type d@@41) DatatypeTypeType) (|$IsA#UtilitiesLibrary.Cheese| d@@41)) (or (or (or (UtilitiesLibrary.Cheese.Provolone_q d@@41) (UtilitiesLibrary.Cheese.Swiss_q d@@41)) (UtilitiesLibrary.Cheese.Cheddar_q d@@41)) (UtilitiesLibrary.Cheese.Jack_q d@@41)))
 :qid |unknown.0:0|
 :skolemid |2550|
 :pattern ( (|$IsA#UtilitiesLibrary.Cheese| d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (and (= (type d@@42) DatatypeTypeType) ($Is d@@42 Tclass.UtilitiesLibrary.Cheese)) (or (or (or (UtilitiesLibrary.Cheese.Provolone_q d@@42) (UtilitiesLibrary.Cheese.Swiss_q d@@42)) (UtilitiesLibrary.Cheese.Cheddar_q d@@42)) (UtilitiesLibrary.Cheese.Jack_q d@@42)))
 :qid |unknown.0:0|
 :skolemid |2551|
 :pattern ( (UtilitiesLibrary.Cheese.Jack_q d@@42) ($Is d@@42 Tclass.UtilitiesLibrary.Cheese))
 :pattern ( (UtilitiesLibrary.Cheese.Cheddar_q d@@42) ($Is d@@42 Tclass.UtilitiesLibrary.Cheese))
 :pattern ( (UtilitiesLibrary.Cheese.Swiss_q d@@42) ($Is d@@42 Tclass.UtilitiesLibrary.Cheese))
 :pattern ( (UtilitiesLibrary.Cheese.Provolone_q d@@42) ($Is d@@42 Tclass.UtilitiesLibrary.Cheese))
)))
(assert (forall ((a@@133 T@U) (b@@76 T@U) ) (!  (=> (and (and (= (type a@@133) DatatypeTypeType) (= (type b@@76) DatatypeTypeType)) (and (UtilitiesLibrary.Cheese.Provolone_q a@@133) (UtilitiesLibrary.Cheese.Provolone_q b@@76))) (= (|UtilitiesLibrary.Cheese#Equal| a@@133 b@@76) true))
 :qid |unknown.0:0|
 :skolemid |2552|
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@133 b@@76) (UtilitiesLibrary.Cheese.Provolone_q a@@133))
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@133 b@@76) (UtilitiesLibrary.Cheese.Provolone_q b@@76))
)))
(assert (forall ((a@@134 T@U) (b@@77 T@U) ) (!  (=> (and (and (= (type a@@134) DatatypeTypeType) (= (type b@@77) DatatypeTypeType)) (and (UtilitiesLibrary.Cheese.Swiss_q a@@134) (UtilitiesLibrary.Cheese.Swiss_q b@@77))) (= (|UtilitiesLibrary.Cheese#Equal| a@@134 b@@77) true))
 :qid |unknown.0:0|
 :skolemid |2553|
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@134 b@@77) (UtilitiesLibrary.Cheese.Swiss_q a@@134))
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@134 b@@77) (UtilitiesLibrary.Cheese.Swiss_q b@@77))
)))
(assert (forall ((a@@135 T@U) (b@@78 T@U) ) (!  (=> (and (and (= (type a@@135) DatatypeTypeType) (= (type b@@78) DatatypeTypeType)) (and (UtilitiesLibrary.Cheese.Cheddar_q a@@135) (UtilitiesLibrary.Cheese.Cheddar_q b@@78))) (= (|UtilitiesLibrary.Cheese#Equal| a@@135 b@@78) true))
 :qid |unknown.0:0|
 :skolemid |2554|
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@135 b@@78) (UtilitiesLibrary.Cheese.Cheddar_q a@@135))
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@135 b@@78) (UtilitiesLibrary.Cheese.Cheddar_q b@@78))
)))
(assert (forall ((a@@136 T@U) (b@@79 T@U) ) (!  (=> (and (and (= (type a@@136) DatatypeTypeType) (= (type b@@79) DatatypeTypeType)) (and (UtilitiesLibrary.Cheese.Jack_q a@@136) (UtilitiesLibrary.Cheese.Jack_q b@@79))) (= (|UtilitiesLibrary.Cheese#Equal| a@@136 b@@79) true))
 :qid |unknown.0:0|
 :skolemid |2555|
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@136 b@@79) (UtilitiesLibrary.Cheese.Jack_q a@@136))
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@136 b@@79) (UtilitiesLibrary.Cheese.Jack_q b@@79))
)))
(assert (forall ((a@@137 T@U) (b@@80 T@U) ) (!  (=> (and (= (type a@@137) DatatypeTypeType) (= (type b@@80) DatatypeTypeType)) (= (|UtilitiesLibrary.Cheese#Equal| a@@137 b@@80) (= a@@137 b@@80)))
 :qid |unknown.0:0|
 :skolemid |2556|
 :pattern ( (|UtilitiesLibrary.Cheese#Equal| a@@137 b@@80))
)))
(assert (= (type |#UtilitiesLibrary.Veggie.Olive|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Veggie.Olive|) |##UtilitiesLibrary.Veggie.Olive|))
(assert (forall ((d@@43 T@U) ) (!  (=> (= (type d@@43) DatatypeTypeType) (= (UtilitiesLibrary.Veggie.Olive_q d@@43) (= (DatatypeCtorId d@@43) |##UtilitiesLibrary.Veggie.Olive|)))
 :qid |unknown.0:0|
 :skolemid |2557|
 :pattern ( (UtilitiesLibrary.Veggie.Olive_q d@@43))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> (and (= (type d@@44) DatatypeTypeType) (UtilitiesLibrary.Veggie.Olive_q d@@44)) (= d@@44 |#UtilitiesLibrary.Veggie.Olive|))
 :qid |unknown.0:0|
 :skolemid |2558|
 :pattern ( (UtilitiesLibrary.Veggie.Olive_q d@@44))
)))
(assert (= (type Tclass.UtilitiesLibrary.Veggie) TyType))
(assert (= (Tag Tclass.UtilitiesLibrary.Veggie) Tagclass.UtilitiesLibrary.Veggie))
(assert (= (TagFamily Tclass.UtilitiesLibrary.Veggie) tytagFamily$Veggie))
(assert (forall ((bx@@93 T@U) ) (!  (=> (and (= (type bx@@93) BoxType) ($IsBox bx@@93 Tclass.UtilitiesLibrary.Veggie)) (and (= ($Box ($Unbox DatatypeTypeType bx@@93)) bx@@93) ($Is ($Unbox DatatypeTypeType bx@@93) Tclass.UtilitiesLibrary.Veggie)))
 :qid |unknown.0:0|
 :skolemid |2559|
 :pattern ( ($IsBox bx@@93 Tclass.UtilitiesLibrary.Veggie))
)))
(assert ($Is |#UtilitiesLibrary.Veggie.Olive| Tclass.UtilitiesLibrary.Veggie))
(assert (forall (($h@@39 T@U) ) (!  (=> (and (= (type $h@@39) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@39)) ($IsAlloc |#UtilitiesLibrary.Veggie.Olive| Tclass.UtilitiesLibrary.Veggie $h@@39))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2560|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Veggie.Olive| Tclass.UtilitiesLibrary.Veggie $h@@39))
)))
(assert (= |#UtilitiesLibrary.Veggie.Olive| (Lit |#UtilitiesLibrary.Veggie.Olive|)))
(assert (= (type |#UtilitiesLibrary.Veggie.Onion|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Veggie.Onion|) |##UtilitiesLibrary.Veggie.Onion|))
(assert (forall ((d@@45 T@U) ) (!  (=> (= (type d@@45) DatatypeTypeType) (= (UtilitiesLibrary.Veggie.Onion_q d@@45) (= (DatatypeCtorId d@@45) |##UtilitiesLibrary.Veggie.Onion|)))
 :qid |unknown.0:0|
 :skolemid |2561|
 :pattern ( (UtilitiesLibrary.Veggie.Onion_q d@@45))
)))
(assert (forall ((d@@46 T@U) ) (!  (=> (and (= (type d@@46) DatatypeTypeType) (UtilitiesLibrary.Veggie.Onion_q d@@46)) (= d@@46 |#UtilitiesLibrary.Veggie.Onion|))
 :qid |unknown.0:0|
 :skolemid |2562|
 :pattern ( (UtilitiesLibrary.Veggie.Onion_q d@@46))
)))
(assert ($Is |#UtilitiesLibrary.Veggie.Onion| Tclass.UtilitiesLibrary.Veggie))
(assert (forall (($h@@40 T@U) ) (!  (=> (and (= (type $h@@40) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@40)) ($IsAlloc |#UtilitiesLibrary.Veggie.Onion| Tclass.UtilitiesLibrary.Veggie $h@@40))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2563|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Veggie.Onion| Tclass.UtilitiesLibrary.Veggie $h@@40))
)))
(assert (= |#UtilitiesLibrary.Veggie.Onion| (Lit |#UtilitiesLibrary.Veggie.Onion|)))
(assert (= (type |#UtilitiesLibrary.Veggie.Pepper|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#UtilitiesLibrary.Veggie.Pepper|) |##UtilitiesLibrary.Veggie.Pepper|))
(assert (forall ((d@@47 T@U) ) (!  (=> (= (type d@@47) DatatypeTypeType) (= (UtilitiesLibrary.Veggie.Pepper_q d@@47) (= (DatatypeCtorId d@@47) |##UtilitiesLibrary.Veggie.Pepper|)))
 :qid |unknown.0:0|
 :skolemid |2564|
 :pattern ( (UtilitiesLibrary.Veggie.Pepper_q d@@47))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> (and (= (type d@@48) DatatypeTypeType) (UtilitiesLibrary.Veggie.Pepper_q d@@48)) (= d@@48 |#UtilitiesLibrary.Veggie.Pepper|))
 :qid |unknown.0:0|
 :skolemid |2565|
 :pattern ( (UtilitiesLibrary.Veggie.Pepper_q d@@48))
)))
(assert ($Is |#UtilitiesLibrary.Veggie.Pepper| Tclass.UtilitiesLibrary.Veggie))
(assert (forall (($h@@41 T@U) ) (!  (=> (and (= (type $h@@41) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@41)) ($IsAlloc |#UtilitiesLibrary.Veggie.Pepper| Tclass.UtilitiesLibrary.Veggie $h@@41))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2566|
 :pattern ( ($IsAlloc |#UtilitiesLibrary.Veggie.Pepper| Tclass.UtilitiesLibrary.Veggie $h@@41))
)))
(assert (= |#UtilitiesLibrary.Veggie.Pepper| (Lit |#UtilitiesLibrary.Veggie.Pepper|)))
(assert (forall ((d@@49 T@U) ) (!  (=> (and (= (type d@@49) DatatypeTypeType) (|$IsA#UtilitiesLibrary.Veggie| d@@49)) (or (or (UtilitiesLibrary.Veggie.Olive_q d@@49) (UtilitiesLibrary.Veggie.Onion_q d@@49)) (UtilitiesLibrary.Veggie.Pepper_q d@@49)))
 :qid |unknown.0:0|
 :skolemid |2567|
 :pattern ( (|$IsA#UtilitiesLibrary.Veggie| d@@49))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> (and (= (type d@@50) DatatypeTypeType) ($Is d@@50 Tclass.UtilitiesLibrary.Veggie)) (or (or (UtilitiesLibrary.Veggie.Olive_q d@@50) (UtilitiesLibrary.Veggie.Onion_q d@@50)) (UtilitiesLibrary.Veggie.Pepper_q d@@50)))
 :qid |unknown.0:0|
 :skolemid |2568|
 :pattern ( (UtilitiesLibrary.Veggie.Pepper_q d@@50) ($Is d@@50 Tclass.UtilitiesLibrary.Veggie))
 :pattern ( (UtilitiesLibrary.Veggie.Onion_q d@@50) ($Is d@@50 Tclass.UtilitiesLibrary.Veggie))
 :pattern ( (UtilitiesLibrary.Veggie.Olive_q d@@50) ($Is d@@50 Tclass.UtilitiesLibrary.Veggie))
)))
(assert (forall ((a@@138 T@U) (b@@81 T@U) ) (!  (=> (and (and (= (type a@@138) DatatypeTypeType) (= (type b@@81) DatatypeTypeType)) (and (UtilitiesLibrary.Veggie.Olive_q a@@138) (UtilitiesLibrary.Veggie.Olive_q b@@81))) (= (|UtilitiesLibrary.Veggie#Equal| a@@138 b@@81) true))
 :qid |unknown.0:0|
 :skolemid |2569|
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@138 b@@81) (UtilitiesLibrary.Veggie.Olive_q a@@138))
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@138 b@@81) (UtilitiesLibrary.Veggie.Olive_q b@@81))
)))
(assert (forall ((a@@139 T@U) (b@@82 T@U) ) (!  (=> (and (and (= (type a@@139) DatatypeTypeType) (= (type b@@82) DatatypeTypeType)) (and (UtilitiesLibrary.Veggie.Onion_q a@@139) (UtilitiesLibrary.Veggie.Onion_q b@@82))) (= (|UtilitiesLibrary.Veggie#Equal| a@@139 b@@82) true))
 :qid |unknown.0:0|
 :skolemid |2570|
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@139 b@@82) (UtilitiesLibrary.Veggie.Onion_q a@@139))
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@139 b@@82) (UtilitiesLibrary.Veggie.Onion_q b@@82))
)))
(assert (forall ((a@@140 T@U) (b@@83 T@U) ) (!  (=> (and (and (= (type a@@140) DatatypeTypeType) (= (type b@@83) DatatypeTypeType)) (and (UtilitiesLibrary.Veggie.Pepper_q a@@140) (UtilitiesLibrary.Veggie.Pepper_q b@@83))) (= (|UtilitiesLibrary.Veggie#Equal| a@@140 b@@83) true))
 :qid |unknown.0:0|
 :skolemid |2571|
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@140 b@@83) (UtilitiesLibrary.Veggie.Pepper_q a@@140))
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@140 b@@83) (UtilitiesLibrary.Veggie.Pepper_q b@@83))
)))
(assert (forall ((a@@141 T@U) (b@@84 T@U) ) (!  (=> (and (= (type a@@141) DatatypeTypeType) (= (type b@@84) DatatypeTypeType)) (= (|UtilitiesLibrary.Veggie#Equal| a@@141 b@@84) (= a@@141 b@@84)))
 :qid |unknown.0:0|
 :skolemid |2572|
 :pattern ( (|UtilitiesLibrary.Veggie#Equal| a@@141 b@@84))
)))
(assert (forall ((arg0@@271 T@U) (arg1@@126 T@U) ) (! (= (type (|#UtilitiesLibrary.Order.Sandwich| arg0@@271 arg1@@126)) DatatypeTypeType)
 :qid |funType:#UtilitiesLibrary.Order.Sandwich|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| arg0@@271 arg1@@126))
)))
(assert (forall ((|a#77#0#0| T@U) (|a#77#1#0| T@U) ) (!  (=> (and (= (type |a#77#0#0|) DatatypeTypeType) (= (type |a#77#1#0|) DatatypeTypeType)) (= (DatatypeCtorId (|#UtilitiesLibrary.Order.Sandwich| |a#77#0#0| |a#77#1#0|)) |##UtilitiesLibrary.Order.Sandwich|))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2573|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| |a#77#0#0| |a#77#1#0|))
)))
(assert (forall ((d@@51 T@U) ) (!  (=> (= (type d@@51) DatatypeTypeType) (= (UtilitiesLibrary.Order.Sandwich_q d@@51) (= (DatatypeCtorId d@@51) |##UtilitiesLibrary.Order.Sandwich|)))
 :qid |unknown.0:0|
 :skolemid |2574|
 :pattern ( (UtilitiesLibrary.Order.Sandwich_q d@@51))
)))
(assert (forall ((d@@52 T@U) ) (!  (=> (and (= (type d@@52) DatatypeTypeType) (UtilitiesLibrary.Order.Sandwich_q d@@52)) (exists ((|a#78#0#0| T@U) (|a#78#1#0| T@U) ) (!  (and (and (= (type |a#78#0#0|) DatatypeTypeType) (= (type |a#78#1#0|) DatatypeTypeType)) (= d@@52 (|#UtilitiesLibrary.Order.Sandwich| |a#78#0#0| |a#78#1#0|)))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2575|
 :no-pattern (type |a#78#0#0|)
 :no-pattern (type |a#78#1#0|)
 :no-pattern (U_2_int |a#78#0#0|)
 :no-pattern (U_2_bool |a#78#0#0|)
 :no-pattern (U_2_int |a#78#1#0|)
 :no-pattern (U_2_bool |a#78#1#0|)
)))
 :qid |unknown.0:0|
 :skolemid |2576|
 :pattern ( (UtilitiesLibrary.Order.Sandwich_q d@@52))
)))
(assert (= (type Tclass.UtilitiesLibrary.Order) TyType))
(assert (= (Tag Tclass.UtilitiesLibrary.Order) Tagclass.UtilitiesLibrary.Order))
(assert (= (TagFamily Tclass.UtilitiesLibrary.Order) tytagFamily$Order))
(assert (forall ((bx@@94 T@U) ) (!  (=> (and (= (type bx@@94) BoxType) ($IsBox bx@@94 Tclass.UtilitiesLibrary.Order)) (and (= ($Box ($Unbox DatatypeTypeType bx@@94)) bx@@94) ($Is ($Unbox DatatypeTypeType bx@@94) Tclass.UtilitiesLibrary.Order)))
 :qid |unknown.0:0|
 :skolemid |2577|
 :pattern ( ($IsBox bx@@94 Tclass.UtilitiesLibrary.Order))
)))
(assert (forall ((|a#79#0#0| T@U) (|a#79#1#0| T@U) ) (!  (=> (and (= (type |a#79#0#0|) DatatypeTypeType) (= (type |a#79#1#0|) DatatypeTypeType)) (= ($Is (|#UtilitiesLibrary.Order.Sandwich| |a#79#0#0| |a#79#1#0|) Tclass.UtilitiesLibrary.Order)  (and ($Is |a#79#0#0| Tclass.UtilitiesLibrary.Meat) ($Is |a#79#1#0| Tclass.UtilitiesLibrary.Cheese))))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2578|
 :pattern ( ($Is (|#UtilitiesLibrary.Order.Sandwich| |a#79#0#0| |a#79#1#0|) Tclass.UtilitiesLibrary.Order))
)))
(assert (forall ((|a#80#0#0| T@U) (|a#80#1#0| T@U) ($h@@42 T@U) ) (!  (=> (and (and (and (= (type |a#80#0#0|) DatatypeTypeType) (= (type |a#80#1#0|) DatatypeTypeType)) (= (type $h@@42) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@42)) (= ($IsAlloc (|#UtilitiesLibrary.Order.Sandwich| |a#80#0#0| |a#80#1#0|) Tclass.UtilitiesLibrary.Order $h@@42)  (and ($IsAlloc |a#80#0#0| Tclass.UtilitiesLibrary.Meat $h@@42) ($IsAlloc |a#80#1#0| Tclass.UtilitiesLibrary.Cheese $h@@42))))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2579|
 :pattern ( ($IsAlloc (|#UtilitiesLibrary.Order.Sandwich| |a#80#0#0| |a#80#1#0|) Tclass.UtilitiesLibrary.Order $h@@42))
)))
(assert (forall ((arg0@@272 T@U) ) (! (= (type (UtilitiesLibrary.Order.meat arg0@@272)) DatatypeTypeType)
 :qid |funType:UtilitiesLibrary.Order.meat|
 :pattern ( (UtilitiesLibrary.Order.meat arg0@@272))
)))
(assert (forall ((d@@53 T@U) ($h@@43 T@U) ) (!  (=> (and (and (= (type d@@53) DatatypeTypeType) (= (type $h@@43) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@43) (and (UtilitiesLibrary.Order.Sandwich_q d@@53) ($IsAlloc d@@53 Tclass.UtilitiesLibrary.Order $h@@43)))) ($IsAlloc (UtilitiesLibrary.Order.meat d@@53) Tclass.UtilitiesLibrary.Meat $h@@43))
 :qid |unknown.0:0|
 :skolemid |2580|
 :pattern ( ($IsAlloc (UtilitiesLibrary.Order.meat d@@53) Tclass.UtilitiesLibrary.Meat $h@@43))
)))
(assert (forall ((arg0@@273 T@U) ) (! (= (type (UtilitiesLibrary.Order.cheese arg0@@273)) DatatypeTypeType)
 :qid |funType:UtilitiesLibrary.Order.cheese|
 :pattern ( (UtilitiesLibrary.Order.cheese arg0@@273))
)))
(assert (forall ((d@@54 T@U) ($h@@44 T@U) ) (!  (=> (and (and (= (type d@@54) DatatypeTypeType) (= (type $h@@44) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@44) (and (UtilitiesLibrary.Order.Sandwich_q d@@54) ($IsAlloc d@@54 Tclass.UtilitiesLibrary.Order $h@@44)))) ($IsAlloc (UtilitiesLibrary.Order.cheese d@@54) Tclass.UtilitiesLibrary.Cheese $h@@44))
 :qid |unknown.0:0|
 :skolemid |2581|
 :pattern ( ($IsAlloc (UtilitiesLibrary.Order.cheese d@@54) Tclass.UtilitiesLibrary.Cheese $h@@44))
)))
(assert (forall ((|a#81#0#0| T@U) (|a#81#1#0| T@U) ) (!  (=> (and (= (type |a#81#0#0|) DatatypeTypeType) (= (type |a#81#1#0|) DatatypeTypeType)) (= (|#UtilitiesLibrary.Order.Sandwich| (Lit |a#81#0#0|) (Lit |a#81#1#0|)) (Lit (|#UtilitiesLibrary.Order.Sandwich| |a#81#0#0| |a#81#1#0|))))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2582|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| (Lit |a#81#0#0|) (Lit |a#81#1#0|)))
)))
(assert (forall ((|a#82#0#0| T@U) (|a#82#1#0| T@U) ) (!  (=> (and (= (type |a#82#0#0|) DatatypeTypeType) (= (type |a#82#1#0|) DatatypeTypeType)) (= (UtilitiesLibrary.Order.meat (|#UtilitiesLibrary.Order.Sandwich| |a#82#0#0| |a#82#1#0|)) |a#82#0#0|))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2583|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| |a#82#0#0| |a#82#1#0|))
)))
(assert (forall ((|a#83#0#0| T@U) (|a#83#1#0| T@U) ) (!  (=> (and (= (type |a#83#0#0|) DatatypeTypeType) (= (type |a#83#1#0|) DatatypeTypeType)) (< (DtRank |a#83#0#0|) (DtRank (|#UtilitiesLibrary.Order.Sandwich| |a#83#0#0| |a#83#1#0|))))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2584|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| |a#83#0#0| |a#83#1#0|))
)))
(assert (forall ((|a#84#0#0| T@U) (|a#84#1#0| T@U) ) (!  (=> (and (= (type |a#84#0#0|) DatatypeTypeType) (= (type |a#84#1#0|) DatatypeTypeType)) (= (UtilitiesLibrary.Order.cheese (|#UtilitiesLibrary.Order.Sandwich| |a#84#0#0| |a#84#1#0|)) |a#84#1#0|))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2585|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| |a#84#0#0| |a#84#1#0|))
)))
(assert (forall ((|a#85#0#0| T@U) (|a#85#1#0| T@U) ) (!  (=> (and (= (type |a#85#0#0|) DatatypeTypeType) (= (type |a#85#1#0|) DatatypeTypeType)) (< (DtRank |a#85#1#0|) (DtRank (|#UtilitiesLibrary.Order.Sandwich| |a#85#0#0| |a#85#1#0|))))
 :qid |UtilitiesLibrarydfy.114:16|
 :skolemid |2586|
 :pattern ( (|#UtilitiesLibrary.Order.Sandwich| |a#85#0#0| |a#85#1#0|))
)))
(assert (forall ((arg0@@274 T@U) (arg1@@127 T@U) ) (! (= (type (|#UtilitiesLibrary.Order.Pizza| arg0@@274 arg1@@127)) DatatypeTypeType)
 :qid |funType:#UtilitiesLibrary.Order.Pizza|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| arg0@@274 arg1@@127))
)))
(assert (forall ((|a#86#0#0| T@U) (|a#86#1#0| T@U) ) (!  (=> (and (= (type |a#86#0#0|) DatatypeTypeType) (= (type |a#86#1#0|) DatatypeTypeType)) (= (DatatypeCtorId (|#UtilitiesLibrary.Order.Pizza| |a#86#0#0| |a#86#1#0|)) |##UtilitiesLibrary.Order.Pizza|))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2587|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| |a#86#0#0| |a#86#1#0|))
)))
(assert (forall ((d@@55 T@U) ) (!  (=> (= (type d@@55) DatatypeTypeType) (= (UtilitiesLibrary.Order.Pizza_q d@@55) (= (DatatypeCtorId d@@55) |##UtilitiesLibrary.Order.Pizza|)))
 :qid |unknown.0:0|
 :skolemid |2588|
 :pattern ( (UtilitiesLibrary.Order.Pizza_q d@@55))
)))
(assert (forall ((d@@56 T@U) ) (!  (=> (and (= (type d@@56) DatatypeTypeType) (UtilitiesLibrary.Order.Pizza_q d@@56)) (exists ((|a#87#0#0| T@U) (|a#87#1#0| T@U) ) (!  (and (and (= (type |a#87#0#0|) DatatypeTypeType) (= (type |a#87#1#0|) DatatypeTypeType)) (= d@@56 (|#UtilitiesLibrary.Order.Pizza| |a#87#0#0| |a#87#1#0|)))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2589|
 :no-pattern (type |a#87#0#0|)
 :no-pattern (type |a#87#1#0|)
 :no-pattern (U_2_int |a#87#0#0|)
 :no-pattern (U_2_bool |a#87#0#0|)
 :no-pattern (U_2_int |a#87#1#0|)
 :no-pattern (U_2_bool |a#87#1#0|)
)))
 :qid |unknown.0:0|
 :skolemid |2590|
 :pattern ( (UtilitiesLibrary.Order.Pizza_q d@@56))
)))
(assert (forall ((|a#88#0#0| T@U) (|a#88#1#0| T@U) ) (!  (=> (and (= (type |a#88#0#0|) DatatypeTypeType) (= (type |a#88#1#0|) DatatypeTypeType)) (= ($Is (|#UtilitiesLibrary.Order.Pizza| |a#88#0#0| |a#88#1#0|) Tclass.UtilitiesLibrary.Order)  (and ($Is |a#88#0#0| Tclass.UtilitiesLibrary.Meat) ($Is |a#88#1#0| Tclass.UtilitiesLibrary.Veggie))))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2591|
 :pattern ( ($Is (|#UtilitiesLibrary.Order.Pizza| |a#88#0#0| |a#88#1#0|) Tclass.UtilitiesLibrary.Order))
)))
(assert (forall ((|a#89#0#0| T@U) (|a#89#1#0| T@U) ($h@@45 T@U) ) (!  (=> (and (and (and (= (type |a#89#0#0|) DatatypeTypeType) (= (type |a#89#1#0|) DatatypeTypeType)) (= (type $h@@45) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@45)) (= ($IsAlloc (|#UtilitiesLibrary.Order.Pizza| |a#89#0#0| |a#89#1#0|) Tclass.UtilitiesLibrary.Order $h@@45)  (and ($IsAlloc |a#89#0#0| Tclass.UtilitiesLibrary.Meat $h@@45) ($IsAlloc |a#89#1#0| Tclass.UtilitiesLibrary.Veggie $h@@45))))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2592|
 :pattern ( ($IsAlloc (|#UtilitiesLibrary.Order.Pizza| |a#89#0#0| |a#89#1#0|) Tclass.UtilitiesLibrary.Order $h@@45))
)))
(assert (forall ((d@@57 T@U) ($h@@46 T@U) ) (!  (=> (and (and (= (type d@@57) DatatypeTypeType) (= (type $h@@46) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@46) (and (UtilitiesLibrary.Order.Pizza_q d@@57) ($IsAlloc d@@57 Tclass.UtilitiesLibrary.Order $h@@46)))) ($IsAlloc (UtilitiesLibrary.Order.meat d@@57) Tclass.UtilitiesLibrary.Meat $h@@46))
 :qid |unknown.0:0|
 :skolemid |2593|
 :pattern ( ($IsAlloc (UtilitiesLibrary.Order.meat d@@57) Tclass.UtilitiesLibrary.Meat $h@@46))
)))
(assert (forall ((arg0@@275 T@U) ) (! (= (type (UtilitiesLibrary.Order.veggie arg0@@275)) DatatypeTypeType)
 :qid |funType:UtilitiesLibrary.Order.veggie|
 :pattern ( (UtilitiesLibrary.Order.veggie arg0@@275))
)))
(assert (forall ((d@@58 T@U) ($h@@47 T@U) ) (!  (=> (and (and (= (type d@@58) DatatypeTypeType) (= (type $h@@47) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@47) (and (UtilitiesLibrary.Order.Pizza_q d@@58) ($IsAlloc d@@58 Tclass.UtilitiesLibrary.Order $h@@47)))) ($IsAlloc (UtilitiesLibrary.Order.veggie d@@58) Tclass.UtilitiesLibrary.Veggie $h@@47))
 :qid |unknown.0:0|
 :skolemid |2594|
 :pattern ( ($IsAlloc (UtilitiesLibrary.Order.veggie d@@58) Tclass.UtilitiesLibrary.Veggie $h@@47))
)))
(assert (forall ((|a#90#0#0| T@U) (|a#90#1#0| T@U) ) (!  (=> (and (= (type |a#90#0#0|) DatatypeTypeType) (= (type |a#90#1#0|) DatatypeTypeType)) (= (|#UtilitiesLibrary.Order.Pizza| (Lit |a#90#0#0|) (Lit |a#90#1#0|)) (Lit (|#UtilitiesLibrary.Order.Pizza| |a#90#0#0| |a#90#1#0|))))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2595|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| (Lit |a#90#0#0|) (Lit |a#90#1#0|)))
)))
(assert (forall ((|a#91#0#0| T@U) (|a#91#1#0| T@U) ) (!  (=> (and (= (type |a#91#0#0|) DatatypeTypeType) (= (type |a#91#1#0|) DatatypeTypeType)) (= (UtilitiesLibrary.Order.meat (|#UtilitiesLibrary.Order.Pizza| |a#91#0#0| |a#91#1#0|)) |a#91#0#0|))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2596|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| |a#91#0#0| |a#91#1#0|))
)))
(assert (forall ((|a#92#0#0| T@U) (|a#92#1#0| T@U) ) (!  (=> (and (= (type |a#92#0#0|) DatatypeTypeType) (= (type |a#92#1#0|) DatatypeTypeType)) (< (DtRank |a#92#0#0|) (DtRank (|#UtilitiesLibrary.Order.Pizza| |a#92#0#0| |a#92#1#0|))))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2597|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| |a#92#0#0| |a#92#1#0|))
)))
(assert (forall ((|a#93#0#0| T@U) (|a#93#1#0| T@U) ) (!  (=> (and (= (type |a#93#0#0|) DatatypeTypeType) (= (type |a#93#1#0|) DatatypeTypeType)) (= (UtilitiesLibrary.Order.veggie (|#UtilitiesLibrary.Order.Pizza| |a#93#0#0| |a#93#1#0|)) |a#93#1#0|))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2598|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| |a#93#0#0| |a#93#1#0|))
)))
(assert (forall ((|a#94#0#0| T@U) (|a#94#1#0| T@U) ) (!  (=> (and (= (type |a#94#0#0|) DatatypeTypeType) (= (type |a#94#1#0|) DatatypeTypeType)) (< (DtRank |a#94#1#0|) (DtRank (|#UtilitiesLibrary.Order.Pizza| |a#94#0#0| |a#94#1#0|))))
 :qid |UtilitiesLibrarydfy.115:13|
 :skolemid |2599|
 :pattern ( (|#UtilitiesLibrary.Order.Pizza| |a#94#0#0| |a#94#1#0|))
)))
(assert (forall ((arg0@@276 T@U) ) (! (= (type (|#UtilitiesLibrary.Order.Appetizer| arg0@@276)) DatatypeTypeType)
 :qid |funType:#UtilitiesLibrary.Order.Appetizer|
 :pattern ( (|#UtilitiesLibrary.Order.Appetizer| arg0@@276))
)))
(assert (forall ((|a#95#0#0| T@U) ) (!  (=> (= (type |a#95#0#0|) DatatypeTypeType) (= (DatatypeCtorId (|#UtilitiesLibrary.Order.Appetizer| |a#95#0#0|)) |##UtilitiesLibrary.Order.Appetizer|))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2600|
 :pattern ( (|#UtilitiesLibrary.Order.Appetizer| |a#95#0#0|))
)))
(assert (forall ((d@@59 T@U) ) (!  (=> (= (type d@@59) DatatypeTypeType) (= (UtilitiesLibrary.Order.Appetizer_q d@@59) (= (DatatypeCtorId d@@59) |##UtilitiesLibrary.Order.Appetizer|)))
 :qid |unknown.0:0|
 :skolemid |2601|
 :pattern ( (UtilitiesLibrary.Order.Appetizer_q d@@59))
)))
(assert (forall ((d@@60 T@U) ) (!  (=> (and (= (type d@@60) DatatypeTypeType) (UtilitiesLibrary.Order.Appetizer_q d@@60)) (exists ((|a#96#0#0| T@U) ) (!  (and (= (type |a#96#0#0|) DatatypeTypeType) (= d@@60 (|#UtilitiesLibrary.Order.Appetizer| |a#96#0#0|)))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2602|
 :no-pattern (type |a#96#0#0|)
 :no-pattern (U_2_int |a#96#0#0|)
 :no-pattern (U_2_bool |a#96#0#0|)
)))
 :qid |unknown.0:0|
 :skolemid |2603|
 :pattern ( (UtilitiesLibrary.Order.Appetizer_q d@@60))
)))
(assert (forall ((|a#97#0#0| T@U) ) (!  (=> (= (type |a#97#0#0|) DatatypeTypeType) (= ($Is (|#UtilitiesLibrary.Order.Appetizer| |a#97#0#0|) Tclass.UtilitiesLibrary.Order) ($Is |a#97#0#0| Tclass.UtilitiesLibrary.Cheese)))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2604|
 :pattern ( ($Is (|#UtilitiesLibrary.Order.Appetizer| |a#97#0#0|) Tclass.UtilitiesLibrary.Order))
)))
(assert (forall ((|a#98#0#0| T@U) ($h@@48 T@U) ) (!  (=> (and (and (= (type |a#98#0#0|) DatatypeTypeType) (= (type $h@@48) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@48)) (= ($IsAlloc (|#UtilitiesLibrary.Order.Appetizer| |a#98#0#0|) Tclass.UtilitiesLibrary.Order $h@@48) ($IsAlloc |a#98#0#0| Tclass.UtilitiesLibrary.Cheese $h@@48)))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2605|
 :pattern ( ($IsAlloc (|#UtilitiesLibrary.Order.Appetizer| |a#98#0#0|) Tclass.UtilitiesLibrary.Order $h@@48))
)))
(assert (forall ((d@@61 T@U) ($h@@49 T@U) ) (!  (=> (and (and (= (type d@@61) DatatypeTypeType) (= (type $h@@49) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@49) (and (UtilitiesLibrary.Order.Appetizer_q d@@61) ($IsAlloc d@@61 Tclass.UtilitiesLibrary.Order $h@@49)))) ($IsAlloc (UtilitiesLibrary.Order.cheese d@@61) Tclass.UtilitiesLibrary.Cheese $h@@49))
 :qid |unknown.0:0|
 :skolemid |2606|
 :pattern ( ($IsAlloc (UtilitiesLibrary.Order.cheese d@@61) Tclass.UtilitiesLibrary.Cheese $h@@49))
)))
(assert (forall ((|a#99#0#0| T@U) ) (!  (=> (= (type |a#99#0#0|) DatatypeTypeType) (= (|#UtilitiesLibrary.Order.Appetizer| (Lit |a#99#0#0|)) (Lit (|#UtilitiesLibrary.Order.Appetizer| |a#99#0#0|))))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2607|
 :pattern ( (|#UtilitiesLibrary.Order.Appetizer| (Lit |a#99#0#0|)))
)))
(assert (forall ((|a#100#0#0| T@U) ) (!  (=> (= (type |a#100#0#0|) DatatypeTypeType) (= (UtilitiesLibrary.Order.cheese (|#UtilitiesLibrary.Order.Appetizer| |a#100#0#0|)) |a#100#0#0|))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2608|
 :pattern ( (|#UtilitiesLibrary.Order.Appetizer| |a#100#0#0|))
)))
(assert (forall ((|a#101#0#0| T@U) ) (!  (=> (= (type |a#101#0#0|) DatatypeTypeType) (< (DtRank |a#101#0#0|) (DtRank (|#UtilitiesLibrary.Order.Appetizer| |a#101#0#0|))))
 :qid |UtilitiesLibrarydfy.116:17|
 :skolemid |2609|
 :pattern ( (|#UtilitiesLibrary.Order.Appetizer| |a#101#0#0|))
)))
(assert (forall ((d@@62 T@U) ) (!  (=> (and (= (type d@@62) DatatypeTypeType) (|$IsA#UtilitiesLibrary.Order| d@@62)) (or (or (UtilitiesLibrary.Order.Sandwich_q d@@62) (UtilitiesLibrary.Order.Pizza_q d@@62)) (UtilitiesLibrary.Order.Appetizer_q d@@62)))
 :qid |unknown.0:0|
 :skolemid |2610|
 :pattern ( (|$IsA#UtilitiesLibrary.Order| d@@62))
)))
(assert (forall ((d@@63 T@U) ) (!  (=> (and (= (type d@@63) DatatypeTypeType) ($Is d@@63 Tclass.UtilitiesLibrary.Order)) (or (or (UtilitiesLibrary.Order.Sandwich_q d@@63) (UtilitiesLibrary.Order.Pizza_q d@@63)) (UtilitiesLibrary.Order.Appetizer_q d@@63)))
 :qid |unknown.0:0|
 :skolemid |2611|
 :pattern ( (UtilitiesLibrary.Order.Appetizer_q d@@63) ($Is d@@63 Tclass.UtilitiesLibrary.Order))
 :pattern ( (UtilitiesLibrary.Order.Pizza_q d@@63) ($Is d@@63 Tclass.UtilitiesLibrary.Order))
 :pattern ( (UtilitiesLibrary.Order.Sandwich_q d@@63) ($Is d@@63 Tclass.UtilitiesLibrary.Order))
)))
(assert (forall ((a@@142 T@U) (b@@85 T@U) ) (!  (=> (and (and (= (type a@@142) DatatypeTypeType) (= (type b@@85) DatatypeTypeType)) (and (UtilitiesLibrary.Order.Sandwich_q a@@142) (UtilitiesLibrary.Order.Sandwich_q b@@85))) (= (|UtilitiesLibrary.Order#Equal| a@@142 b@@85)  (and (|UtilitiesLibrary.Meat#Equal| (UtilitiesLibrary.Order.meat a@@142) (UtilitiesLibrary.Order.meat b@@85)) (|UtilitiesLibrary.Cheese#Equal| (UtilitiesLibrary.Order.cheese a@@142) (UtilitiesLibrary.Order.cheese b@@85)))))
 :qid |unknown.0:0|
 :skolemid |2612|
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@142 b@@85) (UtilitiesLibrary.Order.Sandwich_q a@@142))
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@142 b@@85) (UtilitiesLibrary.Order.Sandwich_q b@@85))
)))
(assert (forall ((a@@143 T@U) (b@@86 T@U) ) (!  (=> (and (and (= (type a@@143) DatatypeTypeType) (= (type b@@86) DatatypeTypeType)) (and (UtilitiesLibrary.Order.Pizza_q a@@143) (UtilitiesLibrary.Order.Pizza_q b@@86))) (= (|UtilitiesLibrary.Order#Equal| a@@143 b@@86)  (and (|UtilitiesLibrary.Meat#Equal| (UtilitiesLibrary.Order.meat a@@143) (UtilitiesLibrary.Order.meat b@@86)) (|UtilitiesLibrary.Veggie#Equal| (UtilitiesLibrary.Order.veggie a@@143) (UtilitiesLibrary.Order.veggie b@@86)))))
 :qid |unknown.0:0|
 :skolemid |2613|
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@143 b@@86) (UtilitiesLibrary.Order.Pizza_q a@@143))
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@143 b@@86) (UtilitiesLibrary.Order.Pizza_q b@@86))
)))
(assert (forall ((a@@144 T@U) (b@@87 T@U) ) (!  (=> (and (and (= (type a@@144) DatatypeTypeType) (= (type b@@87) DatatypeTypeType)) (and (UtilitiesLibrary.Order.Appetizer_q a@@144) (UtilitiesLibrary.Order.Appetizer_q b@@87))) (= (|UtilitiesLibrary.Order#Equal| a@@144 b@@87) (|UtilitiesLibrary.Cheese#Equal| (UtilitiesLibrary.Order.cheese a@@144) (UtilitiesLibrary.Order.cheese b@@87))))
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@144 b@@87) (UtilitiesLibrary.Order.Appetizer_q a@@144))
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@144 b@@87) (UtilitiesLibrary.Order.Appetizer_q b@@87))
)))
(assert (forall ((a@@145 T@U) (b@@88 T@U) ) (!  (=> (and (= (type a@@145) DatatypeTypeType) (= (type b@@88) DatatypeTypeType)) (= (|UtilitiesLibrary.Order#Equal| a@@145 b@@88) (= a@@145 b@@88)))
 :qid |unknown.0:0|
 :skolemid |2615|
 :pattern ( (|UtilitiesLibrary.Order#Equal| a@@145 b@@88))
)))
(assert (= (type Tclass.UtilitiesLibrary.__default) TyType))
(assert (= (Tag Tclass.UtilitiesLibrary.__default) Tagclass.UtilitiesLibrary.__default))
(assert (= (TagFamily Tclass.UtilitiesLibrary.__default) tytagFamily$_default))
(assert (forall ((bx@@95 T@U) ) (!  (=> (and (= (type bx@@95) BoxType) ($IsBox bx@@95 Tclass.UtilitiesLibrary.__default)) (and (= ($Box ($Unbox refType bx@@95)) bx@@95) ($Is ($Unbox refType bx@@95) Tclass.UtilitiesLibrary.__default)))
 :qid |unknown.0:0|
 :skolemid |2616|
 :pattern ( ($IsBox bx@@95 Tclass.UtilitiesLibrary.__default))
)))
(assert (forall (($o@@13 T@U) ) (!  (=> (= (type $o@@13) refType) (= ($Is $o@@13 Tclass.UtilitiesLibrary.__default)  (or (= $o@@13 null) (= (dtype $o@@13) Tclass.UtilitiesLibrary.__default))))
 :qid |unknown.0:0|
 :skolemid |2617|
 :pattern ( ($Is $o@@13 Tclass.UtilitiesLibrary.__default))
)))
(assert (forall (($o@@14 T@U) ($h@@50 T@U) ) (!  (=> (and (= (type $o@@14) refType) (= (type $h@@50) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@14 Tclass.UtilitiesLibrary.__default $h@@50)  (or (= $o@@14 null) (U_2_bool (MapType1Select (MapType0Select $h@@50 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2618|
 :pattern ( ($IsAlloc $o@@14 Tclass.UtilitiesLibrary.__default $h@@50))
)))
(assert (forall ((arg0@@277 T@U) (arg1@@128 T@U) ) (! (= (type (UtilitiesLibrary.__default.DropLast arg0@@277 arg1@@128)) (SeqType BoxType))
 :qid |funType:UtilitiesLibrary.__default.DropLast|
 :pattern ( (UtilitiesLibrary.__default.DropLast arg0@@277 arg1@@128))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.DropLast$T T@U) (|theSeq#0| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.DropLast$T) TyType) (= (type |theSeq#0|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.DropLast#canCall| UtilitiesLibrary._default.DropLast$T |theSeq#0|) (and ($Is |theSeq#0| (TSeq UtilitiesLibrary._default.DropLast$T)) (< 0 (|Seq#Length| |theSeq#0|))))) ($Is (UtilitiesLibrary.__default.DropLast UtilitiesLibrary._default.DropLast$T |theSeq#0|) (TSeq UtilitiesLibrary._default.DropLast$T)))
 :qid |unknown.0:0|
 :skolemid |2619|
 :pattern ( (UtilitiesLibrary.__default.DropLast UtilitiesLibrary._default.DropLast$T |theSeq#0|))
))))
(assert (forall ((UtilitiesLibrary._default.DropLast$T@@0 T@U) (|theSeq#0@@0| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.DropLast$T@@0) TyType) (= (type |theSeq#0@@0|) (SeqType BoxType))) ($Is |theSeq#0@@0| (TSeq UtilitiesLibrary._default.DropLast$T@@0))) (= (|UtilitiesLibrary.__default.DropLast#requires| UtilitiesLibrary._default.DropLast$T@@0 |theSeq#0@@0|) (< 0 (|Seq#Length| |theSeq#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |2620|
 :pattern ( (|UtilitiesLibrary.__default.DropLast#requires| UtilitiesLibrary._default.DropLast$T@@0 |theSeq#0@@0|))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.DropLast$T@@1 T@U) (|theSeq#0@@1| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.DropLast$T@@1) TyType) (= (type |theSeq#0@@1|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.DropLast#canCall| UtilitiesLibrary._default.DropLast$T@@1 |theSeq#0@@1|) (and ($Is |theSeq#0@@1| (TSeq UtilitiesLibrary._default.DropLast$T@@1)) (< 0 (|Seq#Length| |theSeq#0@@1|))))) (= (UtilitiesLibrary.__default.DropLast UtilitiesLibrary._default.DropLast$T@@1 |theSeq#0@@1|) (|Seq#Take| |theSeq#0@@1| (- (|Seq#Length| |theSeq#0@@1|) 1))))
 :qid |unknown.0:0|
 :skolemid |2621|
 :pattern ( (UtilitiesLibrary.__default.DropLast UtilitiesLibrary._default.DropLast$T@@1 |theSeq#0@@1|))
))))
(assert  (=> true (forall ((UtilitiesLibrary._default.DropLast$T@@2 T@U) (|theSeq#0@@2| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.DropLast$T@@2) TyType) (= (type |theSeq#0@@2|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.DropLast#canCall| UtilitiesLibrary._default.DropLast$T@@2 (Lit |theSeq#0@@2|)) (and ($Is |theSeq#0@@2| (TSeq UtilitiesLibrary._default.DropLast$T@@2)) (< 0 (|Seq#Length| (Lit |theSeq#0@@2|)))))) (= (UtilitiesLibrary.__default.DropLast UtilitiesLibrary._default.DropLast$T@@2 (Lit |theSeq#0@@2|)) (|Seq#Take| (Lit |theSeq#0@@2|) (- (|Seq#Length| (Lit |theSeq#0@@2|)) 1))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2622|
 :pattern ( (UtilitiesLibrary.__default.DropLast UtilitiesLibrary._default.DropLast$T@@2 (Lit |theSeq#0@@2|)))
))))
(assert (forall ((arg0@@278 T@U) (arg1@@129 T@U) ) (! (= (type (UtilitiesLibrary.__default.Last arg0@@278 arg1@@129)) BoxType)
 :qid |funType:UtilitiesLibrary.__default.Last|
 :pattern ( (UtilitiesLibrary.__default.Last arg0@@278 arg1@@129))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.Last$T T@U) (|theSeq#0@@3| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.Last$T) TyType) (= (type |theSeq#0@@3|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.Last#canCall| UtilitiesLibrary._default.Last$T |theSeq#0@@3|) (and ($Is |theSeq#0@@3| (TSeq UtilitiesLibrary._default.Last$T)) (< 0 (|Seq#Length| |theSeq#0@@3|))))) ($IsBox (UtilitiesLibrary.__default.Last UtilitiesLibrary._default.Last$T |theSeq#0@@3|) UtilitiesLibrary._default.Last$T))
 :qid |unknown.0:0|
 :skolemid |2623|
 :pattern ( (UtilitiesLibrary.__default.Last UtilitiesLibrary._default.Last$T |theSeq#0@@3|))
))))
(assert (forall ((UtilitiesLibrary._default.Last$T@@0 T@U) (|theSeq#0@@4| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.Last$T@@0) TyType) (= (type |theSeq#0@@4|) (SeqType BoxType))) ($Is |theSeq#0@@4| (TSeq UtilitiesLibrary._default.Last$T@@0))) (= (|UtilitiesLibrary.__default.Last#requires| UtilitiesLibrary._default.Last$T@@0 |theSeq#0@@4|) (< 0 (|Seq#Length| |theSeq#0@@4|))))
 :qid |unknown.0:0|
 :skolemid |2624|
 :pattern ( (|UtilitiesLibrary.__default.Last#requires| UtilitiesLibrary._default.Last$T@@0 |theSeq#0@@4|))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.Last$T@@1 T@U) (|theSeq#0@@5| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.Last$T@@1) TyType) (= (type |theSeq#0@@5|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.Last#canCall| UtilitiesLibrary._default.Last$T@@1 |theSeq#0@@5|) (and ($Is |theSeq#0@@5| (TSeq UtilitiesLibrary._default.Last$T@@1)) (< 0 (|Seq#Length| |theSeq#0@@5|))))) (= (UtilitiesLibrary.__default.Last UtilitiesLibrary._default.Last$T@@1 |theSeq#0@@5|) (|Seq#Index| |theSeq#0@@5| (- (|Seq#Length| |theSeq#0@@5|) 1))))
 :qid |unknown.0:0|
 :skolemid |2625|
 :pattern ( (UtilitiesLibrary.__default.Last UtilitiesLibrary._default.Last$T@@1 |theSeq#0@@5|))
))))
(assert  (=> true (forall ((UtilitiesLibrary._default.Last$T@@2 T@U) (|theSeq#0@@6| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.Last$T@@2) TyType) (= (type |theSeq#0@@6|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.Last#canCall| UtilitiesLibrary._default.Last$T@@2 (Lit |theSeq#0@@6|)) (and ($Is |theSeq#0@@6| (TSeq UtilitiesLibrary._default.Last$T@@2)) (< 0 (|Seq#Length| (Lit |theSeq#0@@6|)))))) (= (UtilitiesLibrary.__default.Last UtilitiesLibrary._default.Last$T@@2 (Lit |theSeq#0@@6|)) (|Seq#Index| (Lit |theSeq#0@@6|) (- (|Seq#Length| (Lit |theSeq#0@@6|)) 1))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2626|
 :pattern ( (UtilitiesLibrary.__default.Last UtilitiesLibrary._default.Last$T@@2 (Lit |theSeq#0@@6|)))
))))
(assert (forall ((arg0@@279 T@U) (arg1@@130 T@U) (arg2@@78 T@U) ) (! (= (type (UtilitiesLibrary.__default.UnionSeqOfSets arg0@@279 arg1@@130 arg2@@78)) (MapType0Type BoxType boolType))
 :qid |funType:UtilitiesLibrary.__default.UnionSeqOfSets|
 :pattern ( (UtilitiesLibrary.__default.UnionSeqOfSets arg0@@279 arg1@@130 arg2@@78))
)))
(assert (forall ((UtilitiesLibrary._default.UnionSeqOfSets$T T@U) ($ly T@U) (|theSets#0| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.UnionSeqOfSets$T) TyType) (= (type $ly) LayerTypeType)) (= (type |theSets#0|) (SeqType BoxType))) (= (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T ($LS $ly) |theSets#0|) (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T $ly |theSets#0|)))
 :qid |unknown.0:0|
 :skolemid |2627|
 :pattern ( (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T ($LS $ly) |theSets#0|))
)))
(assert  (and (forall ((arg0@@280 T@U) ) (! (= (type (AsFuelBottom arg0@@280)) LayerTypeType)
 :qid |funType:AsFuelBottom|
 :pattern ( (AsFuelBottom arg0@@280))
)) (= (type $LZ) LayerTypeType)))
(assert (forall ((UtilitiesLibrary._default.UnionSeqOfSets$T@@0 T@U) ($ly@@0 T@U) (|theSets#0@@0| T@U) ) (!  (=> (and (and (= (type UtilitiesLibrary._default.UnionSeqOfSets$T@@0) TyType) (= (type $ly@@0) LayerTypeType)) (= (type |theSets#0@@0|) (SeqType BoxType))) (= (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@0 $ly@@0 |theSets#0@@0|) (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@0 $LZ |theSets#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2628|
 :pattern ( (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@0 (AsFuelBottom $ly@@0) |theSets#0@@0|))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.UnionSeqOfSets$T@@1 T@U) ($ly@@1 T@U) (|theSets#0@@1| T@U) ) (!  (=> (and (and (and (= (type UtilitiesLibrary._default.UnionSeqOfSets$T@@1) TyType) (= (type $ly@@1) LayerTypeType)) (= (type |theSets#0@@1|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.UnionSeqOfSets#canCall| UtilitiesLibrary._default.UnionSeqOfSets$T@@1 |theSets#0@@1|) ($Is |theSets#0@@1| (TSeq (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@1))))) ($Is (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@1 $ly@@1 |theSets#0@@1|) (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@1)))
 :qid |unknown.0:0|
 :skolemid |2629|
 :pattern ( (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@1 $ly@@1 |theSets#0@@1|))
))))
(assert (forall ((UtilitiesLibrary._default.UnionSeqOfSets$T@@2 T@U) ($ly@@2 T@U) (|theSets#0@@2| T@U) ) (!  (=> (and (and (and (= (type UtilitiesLibrary._default.UnionSeqOfSets$T@@2) TyType) (= (type $ly@@2) LayerTypeType)) (= (type |theSets#0@@2|) (SeqType BoxType))) ($Is |theSets#0@@2| (TSeq (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@2)))) (= (|UtilitiesLibrary.__default.UnionSeqOfSets#requires| UtilitiesLibrary._default.UnionSeqOfSets$T@@2 $ly@@2 |theSets#0@@2|) true))
 :qid |unknown.0:0|
 :skolemid |2630|
 :pattern ( (|UtilitiesLibrary.__default.UnionSeqOfSets#requires| UtilitiesLibrary._default.UnionSeqOfSets$T@@2 $ly@@2 |theSets#0@@2|))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.UnionSeqOfSets$T@@3 T@U) ($ly@@3 T@U) (|theSets#0@@3| T@U) ) (!  (=> (and (and (and (= (type UtilitiesLibrary._default.UnionSeqOfSets$T@@3) TyType) (= (type $ly@@3) LayerTypeType)) (= (type |theSets#0@@3|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.UnionSeqOfSets#canCall| UtilitiesLibrary._default.UnionSeqOfSets$T@@3 |theSets#0@@3|) ($Is |theSets#0@@3| (TSeq (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@3))))) (and (=> (not (= (|Seq#Length| |theSets#0@@3|) (LitInt 0))) (and (and (|UtilitiesLibrary.__default.DropLast#canCall| (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@3) |theSets#0@@3|) (|UtilitiesLibrary.__default.UnionSeqOfSets#canCall| UtilitiesLibrary._default.UnionSeqOfSets$T@@3 (UtilitiesLibrary.__default.DropLast (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@3) |theSets#0@@3|))) (|UtilitiesLibrary.__default.Last#canCall| (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@3) |theSets#0@@3|))) (= (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@3 ($LS $ly@@3) |theSets#0@@3|) (ite (= (|Seq#Length| |theSets#0@@3|) (LitInt 0)) (|Set#Empty| BoxType) (|Set#Union| (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@3 $ly@@3 (UtilitiesLibrary.__default.DropLast (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@3) |theSets#0@@3|)) ($Unbox (MapType0Type BoxType boolType) (UtilitiesLibrary.__default.Last (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@3) |theSets#0@@3|)))))))
 :qid |unknown.0:0|
 :skolemid |2631|
 :pattern ( (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@3 ($LS $ly@@3) |theSets#0@@3|))
))))
(assert  (=> true (forall ((UtilitiesLibrary._default.UnionSeqOfSets$T@@4 T@U) ($ly@@4 T@U) (|theSets#0@@4| T@U) ) (!  (=> (and (and (and (= (type UtilitiesLibrary._default.UnionSeqOfSets$T@@4) TyType) (= (type $ly@@4) LayerTypeType)) (= (type |theSets#0@@4|) (SeqType BoxType))) (or (|UtilitiesLibrary.__default.UnionSeqOfSets#canCall| UtilitiesLibrary._default.UnionSeqOfSets$T@@4 (Lit |theSets#0@@4|)) ($Is |theSets#0@@4| (TSeq (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@4))))) (and (=> (not (= (|Seq#Length| (Lit |theSets#0@@4|)) (LitInt 0))) (and (and (|UtilitiesLibrary.__default.DropLast#canCall| (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@4) (Lit |theSets#0@@4|)) (|UtilitiesLibrary.__default.UnionSeqOfSets#canCall| UtilitiesLibrary._default.UnionSeqOfSets$T@@4 (Lit (UtilitiesLibrary.__default.DropLast (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@4) (Lit |theSets#0@@4|))))) (|UtilitiesLibrary.__default.Last#canCall| (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@4) (Lit |theSets#0@@4|)))) (= (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@4 ($LS $ly@@4) (Lit |theSets#0@@4|)) (ite (= (|Seq#Length| (Lit |theSets#0@@4|)) (LitInt 0)) (|Set#Empty| BoxType) (|Set#Union| (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@4 ($LS $ly@@4) (Lit (UtilitiesLibrary.__default.DropLast (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@4) (Lit |theSets#0@@4|)))) ($Unbox (MapType0Type BoxType boolType) (UtilitiesLibrary.__default.Last (TSet UtilitiesLibrary._default.UnionSeqOfSets$T@@4) (Lit |theSets#0@@4|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2632|
 :pattern ( (UtilitiesLibrary.__default.UnionSeqOfSets UtilitiesLibrary._default.UnionSeqOfSets$T@@4 ($LS $ly@@4) (Lit |theSets#0@@4|)))
))))
(assert (forall ((arg0@@281 T@U) (arg1@@131 T@U) (arg2@@79 T@U) (arg3@@55 T@U) (arg4@@43 T@U) ) (! (= (type (UtilitiesLibrary.__default.MapRemoveOne arg0@@281 arg1@@131 arg2@@79 arg3@@55 arg4@@43)) (MapType BoxType BoxType))
 :qid |funType:UtilitiesLibrary.__default.MapRemoveOne|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne arg0@@281 arg1@@131 arg2@@79 arg3@@55 arg4@@43))
)))
(assert (forall ((UtilitiesLibrary._default.MapRemoveOne$K T@U) (UtilitiesLibrary._default.MapRemoveOne$V T@U) ($ly@@5 T@U) (|m#0| T@U) (|key#0| T@U) ) (!  (=> (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V) TyType)) (= (type $ly@@5) LayerTypeType)) (= (type |m#0|) (MapType BoxType BoxType))) (= (type |key#0|) BoxType)) (= (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K UtilitiesLibrary._default.MapRemoveOne$V ($LS $ly@@5) |m#0| |key#0|) (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K UtilitiesLibrary._default.MapRemoveOne$V $ly@@5 |m#0| |key#0|)))
 :qid |unknown.0:0|
 :skolemid |2633|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K UtilitiesLibrary._default.MapRemoveOne$V ($LS $ly@@5) |m#0| |key#0|))
)))
(assert (forall ((UtilitiesLibrary._default.MapRemoveOne$K@@0 T@U) (UtilitiesLibrary._default.MapRemoveOne$V@@0 T@U) ($ly@@6 T@U) (|m#0@@0| T@U) (|key#0@@0| T@U) ) (!  (=> (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K@@0) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V@@0) TyType)) (= (type $ly@@6) LayerTypeType)) (= (type |m#0@@0|) (MapType BoxType BoxType))) (= (type |key#0@@0|) BoxType)) (= (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@0 UtilitiesLibrary._default.MapRemoveOne$V@@0 $ly@@6 |m#0@@0| |key#0@@0|) (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@0 UtilitiesLibrary._default.MapRemoveOne$V@@0 $LZ |m#0@@0| |key#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2634|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@0 UtilitiesLibrary._default.MapRemoveOne$V@@0 (AsFuelBottom $ly@@6) |m#0@@0| |key#0@@0|))
)))
(assert  (=> true (forall ((UtilitiesLibrary._default.MapRemoveOne$K@@1 T@U) (UtilitiesLibrary._default.MapRemoveOne$V@@1 T@U) ($ly@@7 T@U) (|m#0@@1| T@U) (|key#0@@1| T@U) ) (!  (=> (and (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K@@1) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V@@1) TyType)) (= (type $ly@@7) LayerTypeType)) (= (type |m#0@@1|) (MapType BoxType BoxType))) (= (type |key#0@@1|) BoxType)) (or (|UtilitiesLibrary.__default.MapRemoveOne#canCall| UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 |m#0@@1| |key#0@@1|) (and ($Is |m#0@@1| (TMap UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1)) ($IsBox |key#0@@1| UtilitiesLibrary._default.MapRemoveOne$K@@1)))) (and (and (and (and (and (forall ((|k#2| T@U) ) (!  (=> (and (and (= (type |k#2|) BoxType) ($IsBox |k#2| UtilitiesLibrary._default.MapRemoveOne$K@@1)) (and (U_2_bool (MapType0Select (|Map#Domain| |m#0@@1|) |k#2|)) (not (= |k#2| |key#0@@1|)))) (U_2_bool (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |k#2|)))
 :qid |UtilitiesLibrarydfy.55:20|
 :skolemid |2635|
 :pattern ( (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |k#2|))
 :pattern ( (MapType0Select (|Map#Domain| |m#0@@1|) |k#2|))
)) (forall ((|k#3| T@U) ) (!  (=> (and (= (type |k#3|) BoxType) ($IsBox |k#3| UtilitiesLibrary._default.MapRemoveOne$K@@1)) (and (=> (U_2_bool (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |k#3|)) (U_2_bool (MapType0Select (|Map#Domain| |m#0@@1|) |k#3|))) (=> (U_2_bool (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |k#3|)) (not (= |k#3| |key#0@@1|)))))
 :qid |UtilitiesLibrarydfy.56:20|
 :skolemid |2636|
 :pattern ( (MapType0Select (|Map#Domain| |m#0@@1|) |k#3|))
 :pattern ( (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |k#3|))
))) (forall ((|j#2| T@U) ) (!  (=> (and (and (= (type |j#2|) BoxType) ($IsBox |j#2| UtilitiesLibrary._default.MapRemoveOne$K@@1)) (U_2_bool (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |j#2|))) (= (MapType0Select (|Map#Elements| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |j#2|) (MapType0Select (|Map#Elements| |m#0@@1|) |j#2|)))
 :qid |UtilitiesLibrarydfy.57:20|
 :skolemid |2637|
 :pattern ( (MapType0Select (|Map#Elements| |m#0@@1|) |j#2|))
 :pattern ( (MapType0Select (|Map#Elements| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |j#2|))
 :pattern ( (MapType0Select (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) |j#2|))
))) (<= (|Set#Card| (|Map#Domain| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|))) (|Set#Card| (|Map#Domain| |m#0@@1|)))) (<= (|Map#Card| (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|)) (|Map#Card| |m#0@@1|))) ($Is (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|) (TMap UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1))))
 :qid |unknown.0:0|
 :skolemid |2638|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@1 UtilitiesLibrary._default.MapRemoveOne$V@@1 $ly@@7 |m#0@@1| |key#0@@1|))
))))
(assert (forall ((UtilitiesLibrary._default.MapRemoveOne$K@@2 T@U) (UtilitiesLibrary._default.MapRemoveOne$V@@2 T@U) ($ly@@8 T@U) (|m#0@@2| T@U) (|key#0@@2| T@U) ) (!  (=> (and (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K@@2) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V@@2) TyType)) (= (type $ly@@8) LayerTypeType)) (= (type |m#0@@2|) (MapType BoxType BoxType))) (= (type |key#0@@2|) BoxType)) (and ($Is |m#0@@2| (TMap UtilitiesLibrary._default.MapRemoveOne$K@@2 UtilitiesLibrary._default.MapRemoveOne$V@@2)) ($IsBox |key#0@@2| UtilitiesLibrary._default.MapRemoveOne$K@@2))) (= (|UtilitiesLibrary.__default.MapRemoveOne#requires| UtilitiesLibrary._default.MapRemoveOne$K@@2 UtilitiesLibrary._default.MapRemoveOne$V@@2 $ly@@8 |m#0@@2| |key#0@@2|) true))
 :qid |unknown.0:0|
 :skolemid |2639|
 :pattern ( (|UtilitiesLibrary.__default.MapRemoveOne#requires| UtilitiesLibrary._default.MapRemoveOne$K@@2 UtilitiesLibrary._default.MapRemoveOne$V@@2 $ly@@8 |m#0@@2| |key#0@@2|))
)))
(assert  (and (forall ((arg0@@282 T@U) (arg1@@132 T@U) (arg2@@80 T@U) ) (! (= (type (|lambda#15| arg0@@282 arg1@@132 arg2@@80)) (MapType0Type BoxType boolType))
 :qid |funType:lambda#15|
 :pattern ( (|lambda#15| arg0@@282 arg1@@132 arg2@@80))
)) (forall ((arg0@@283 T@U) ) (! (= (type (|lambda#16| arg0@@283)) (MapType0Type BoxType BoxType))
 :qid |funType:lambda#16|
 :pattern ( (|lambda#16| arg0@@283))
))))
(assert  (=> true (forall ((UtilitiesLibrary._default.MapRemoveOne$K@@3 T@U) (UtilitiesLibrary._default.MapRemoveOne$V@@3 T@U) ($ly@@9 T@U) (|m#0@@3| T@U) (|key#0@@3| T@U) ) (!  (=> (and (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K@@3) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V@@3) TyType)) (= (type $ly@@9) LayerTypeType)) (= (type |m#0@@3|) (MapType BoxType BoxType))) (= (type |key#0@@3|) BoxType)) (or (|UtilitiesLibrary.__default.MapRemoveOne#canCall| UtilitiesLibrary._default.MapRemoveOne$K@@3 UtilitiesLibrary._default.MapRemoveOne$V@@3 |m#0@@3| |key#0@@3|) (and ($Is |m#0@@3| (TMap UtilitiesLibrary._default.MapRemoveOne$K@@3 UtilitiesLibrary._default.MapRemoveOne$V@@3)) ($IsBox |key#0@@3| UtilitiesLibrary._default.MapRemoveOne$K@@3)))) (= (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@3 UtilitiesLibrary._default.MapRemoveOne$V@@3 ($LS $ly@@9) |m#0@@3| |key#0@@3|) (let ((|m'#3| (|Map#Glue| (|lambda#15| UtilitiesLibrary._default.MapRemoveOne$K@@3 (|Map#Domain| |m#0@@3|) |key#0@@3|) (|lambda#16| (|Map#Elements| |m#0@@3|)) (TMap UtilitiesLibrary._default.MapRemoveOne$K@@3 UtilitiesLibrary._default.MapRemoveOne$V@@3))))
|m'#3|)))
 :qid |unknown.0:0|
 :skolemid |2640|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@3 UtilitiesLibrary._default.MapRemoveOne$V@@3 ($LS $ly@@9) |m#0@@3| |key#0@@3|))
))))
(assert  (=> true (forall ((UtilitiesLibrary._default.MapRemoveOne$K@@4 T@U) (UtilitiesLibrary._default.MapRemoveOne$V@@4 T@U) ($ly@@10 T@U) (|m#0@@4| T@U) (|key#0@@4| T@U) ) (!  (=> (and (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K@@4) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V@@4) TyType)) (= (type $ly@@10) LayerTypeType)) (= (type |m#0@@4|) (MapType BoxType BoxType))) (= (type |key#0@@4|) BoxType)) (or (|UtilitiesLibrary.__default.MapRemoveOne#canCall| UtilitiesLibrary._default.MapRemoveOne$K@@4 UtilitiesLibrary._default.MapRemoveOne$V@@4 (Lit |m#0@@4|) |key#0@@4|) (and ($Is |m#0@@4| (TMap UtilitiesLibrary._default.MapRemoveOne$K@@4 UtilitiesLibrary._default.MapRemoveOne$V@@4)) ($IsBox |key#0@@4| UtilitiesLibrary._default.MapRemoveOne$K@@4)))) (= (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@4 UtilitiesLibrary._default.MapRemoveOne$V@@4 ($LS $ly@@10) (Lit |m#0@@4|) |key#0@@4|) (let ((|m'#4| (|Map#Glue| (|lambda#15| UtilitiesLibrary._default.MapRemoveOne$K@@4 (|Map#Domain| |m#0@@4|) |key#0@@4|) (|lambda#16| (|Map#Elements| (Lit |m#0@@4|))) (TMap UtilitiesLibrary._default.MapRemoveOne$K@@4 UtilitiesLibrary._default.MapRemoveOne$V@@4))))
|m'#4|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2641|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@4 UtilitiesLibrary._default.MapRemoveOne$V@@4 ($LS $ly@@10) (Lit |m#0@@4|) |key#0@@4|))
))))
(assert  (=> true (forall ((UtilitiesLibrary._default.MapRemoveOne$K@@5 T@U) (UtilitiesLibrary._default.MapRemoveOne$V@@5 T@U) ($ly@@11 T@U) (|m#0@@5| T@U) (|key#0@@5| T@U) ) (!  (=> (and (and (and (and (and (= (type UtilitiesLibrary._default.MapRemoveOne$K@@5) TyType) (= (type UtilitiesLibrary._default.MapRemoveOne$V@@5) TyType)) (= (type $ly@@11) LayerTypeType)) (= (type |m#0@@5|) (MapType BoxType BoxType))) (= (type |key#0@@5|) BoxType)) (or (|UtilitiesLibrary.__default.MapRemoveOne#canCall| UtilitiesLibrary._default.MapRemoveOne$K@@5 UtilitiesLibrary._default.MapRemoveOne$V@@5 (Lit |m#0@@5|) (Lit |key#0@@5|)) (and ($Is |m#0@@5| (TMap UtilitiesLibrary._default.MapRemoveOne$K@@5 UtilitiesLibrary._default.MapRemoveOne$V@@5)) ($IsBox |key#0@@5| UtilitiesLibrary._default.MapRemoveOne$K@@5)))) (= (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@5 UtilitiesLibrary._default.MapRemoveOne$V@@5 ($LS $ly@@11) (Lit |m#0@@5|) (Lit |key#0@@5|)) (let ((|m'#5| (|Map#Glue| (|lambda#15| UtilitiesLibrary._default.MapRemoveOne$K@@5 (|Map#Domain| |m#0@@5|) |key#0@@5|) (|lambda#16| (|Map#Elements| (Lit |m#0@@5|))) (TMap UtilitiesLibrary._default.MapRemoveOne$K@@5 UtilitiesLibrary._default.MapRemoveOne$V@@5))))
|m'#5|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2642|
 :pattern ( (UtilitiesLibrary.__default.MapRemoveOne UtilitiesLibrary._default.MapRemoveOne$K@@5 UtilitiesLibrary._default.MapRemoveOne$V@@5 ($LS $ly@@11) (Lit |m#0@@5|) (Lit |key#0@@5|)))
))))
(assert (forall ((arg0@@284 T@U) ) (! (= (type (UtilitiesLibrary.__default.TurnRight arg0@@284)) DatatypeTypeType)
 :qid |funType:UtilitiesLibrary.__default.TurnRight|
 :pattern ( (UtilitiesLibrary.__default.TurnRight arg0@@284))
)))
(assert  (=> true (forall ((|direction#0| T@U) ) (!  (=> (and (= (type |direction#0|) DatatypeTypeType) (or (|UtilitiesLibrary.__default.TurnRight#canCall| |direction#0|) ($Is |direction#0| Tclass.UtilitiesLibrary.Direction))) ($Is (UtilitiesLibrary.__default.TurnRight |direction#0|) Tclass.UtilitiesLibrary.Direction))
 :qid |UtilitiesLibrarydfy.71:22|
 :skolemid |2643|
 :pattern ( (UtilitiesLibrary.__default.TurnRight |direction#0|))
))))
(assert (forall ((|direction#0@@0| T@U) ) (!  (=> (and (= (type |direction#0@@0|) DatatypeTypeType) ($Is |direction#0@@0| Tclass.UtilitiesLibrary.Direction)) (= (|UtilitiesLibrary.__default.TurnRight#requires| |direction#0@@0|) true))
 :qid |UtilitiesLibrarydfy.71:22|
 :skolemid |2644|
 :pattern ( (|UtilitiesLibrary.__default.TurnRight#requires| |direction#0@@0|))
)))
(assert  (=> true (forall ((|direction#0@@1| T@U) ) (!  (=> (and (= (type |direction#0@@1|) DatatypeTypeType) (or (|UtilitiesLibrary.__default.TurnRight#canCall| |direction#0@@1|) ($Is |direction#0@@1| Tclass.UtilitiesLibrary.Direction))) (= (UtilitiesLibrary.__default.TurnRight |direction#0@@1|) (ite (UtilitiesLibrary.Direction.North_q |direction#0@@1|) |#UtilitiesLibrary.Direction.East| (ite (UtilitiesLibrary.Direction.East_q |direction#0@@1|) |#UtilitiesLibrary.Direction.South| (ite (UtilitiesLibrary.Direction.South_q |direction#0@@1|) |#UtilitiesLibrary.Direction.West| |#UtilitiesLibrary.Direction.North|)))))
 :qid |UtilitiesLibrarydfy.71:22|
 :skolemid |2645|
 :pattern ( (UtilitiesLibrary.__default.TurnRight |direction#0@@1|))
))))
(assert  (=> true (forall ((|direction#0@@2| T@U) ) (!  (=> (and (= (type |direction#0@@2|) DatatypeTypeType) (or (|UtilitiesLibrary.__default.TurnRight#canCall| (Lit |direction#0@@2|)) ($Is |direction#0@@2| Tclass.UtilitiesLibrary.Direction))) (= (UtilitiesLibrary.__default.TurnRight (Lit |direction#0@@2|)) (ite (UtilitiesLibrary.Direction.North_q (Lit |direction#0@@2|)) |#UtilitiesLibrary.Direction.East| (ite (UtilitiesLibrary.Direction.East_q (Lit |direction#0@@2|)) |#UtilitiesLibrary.Direction.South| (ite (UtilitiesLibrary.Direction.South_q (Lit |direction#0@@2|)) |#UtilitiesLibrary.Direction.West| |#UtilitiesLibrary.Direction.North|)))))
 :qid |UtilitiesLibrarydfy.71:22|
 :weight 3
 :skolemid |2646|
 :pattern ( (UtilitiesLibrary.__default.TurnRight (Lit |direction#0@@2|)))
))))
(assert (forall ((arg0@@285 T@U) ) (! (= (type (UtilitiesLibrary.__default.TurnLeft arg0@@285)) DatatypeTypeType)
 :qid |funType:UtilitiesLibrary.__default.TurnLeft|
 :pattern ( (UtilitiesLibrary.__default.TurnLeft arg0@@285))
)))
(assert  (=> true (forall ((|direction#0@@3| T@U) ) (!  (=> (and (= (type |direction#0@@3|) DatatypeTypeType) (or (|UtilitiesLibrary.__default.TurnLeft#canCall| |direction#0@@3|) ($Is |direction#0@@3| Tclass.UtilitiesLibrary.Direction))) ($Is (UtilitiesLibrary.__default.TurnLeft |direction#0@@3|) Tclass.UtilitiesLibrary.Direction))
 :qid |UtilitiesLibrarydfy.92:21|
 :skolemid |2647|
 :pattern ( (UtilitiesLibrary.__default.TurnLeft |direction#0@@3|))
))))
(assert (forall ((|direction#0@@4| T@U) ) (!  (=> (and (= (type |direction#0@@4|) DatatypeTypeType) ($Is |direction#0@@4| Tclass.UtilitiesLibrary.Direction)) (= (|UtilitiesLibrary.__default.TurnLeft#requires| |direction#0@@4|) true))
 :qid |UtilitiesLibrarydfy.92:21|
 :skolemid |2648|
 :pattern ( (|UtilitiesLibrary.__default.TurnLeft#requires| |direction#0@@4|))
)))
(assert  (=> true (forall ((|direction#0@@5| T@U) ) (!  (=> (and (= (type |direction#0@@5|) DatatypeTypeType) (or (|UtilitiesLibrary.__default.TurnLeft#canCall| |direction#0@@5|) ($Is |direction#0@@5| Tclass.UtilitiesLibrary.Direction))) (= (UtilitiesLibrary.__default.TurnLeft |direction#0@@5|) (ite (UtilitiesLibrary.Direction.North_q |direction#0@@5|) |#UtilitiesLibrary.Direction.West| (ite (UtilitiesLibrary.Direction.East_q |direction#0@@5|) |#UtilitiesLibrary.Direction.North| (ite (UtilitiesLibrary.Direction.South_q |direction#0@@5|) |#UtilitiesLibrary.Direction.East| |#UtilitiesLibrary.Direction.South|)))))
 :qid |UtilitiesLibrarydfy.92:21|
 :skolemid |2649|
 :pattern ( (UtilitiesLibrary.__default.TurnLeft |direction#0@@5|))
))))
(assert  (=> true (forall ((|direction#0@@6| T@U) ) (!  (=> (and (= (type |direction#0@@6|) DatatypeTypeType) (or (|UtilitiesLibrary.__default.TurnLeft#canCall| (Lit |direction#0@@6|)) ($Is |direction#0@@6| Tclass.UtilitiesLibrary.Direction))) (= (UtilitiesLibrary.__default.TurnLeft (Lit |direction#0@@6|)) (ite (UtilitiesLibrary.Direction.North_q (Lit |direction#0@@6|)) |#UtilitiesLibrary.Direction.West| (ite (UtilitiesLibrary.Direction.East_q (Lit |direction#0@@6|)) |#UtilitiesLibrary.Direction.North| (ite (UtilitiesLibrary.Direction.South_q (Lit |direction#0@@6|)) |#UtilitiesLibrary.Direction.East| |#UtilitiesLibrary.Direction.South|)))))
 :qid |UtilitiesLibrarydfy.92:21|
 :weight 3
 :skolemid |2650|
 :pattern ( (UtilitiesLibrary.__default.TurnLeft (Lit |direction#0@@6|)))
))))
(assert (forall ((arg0@@286 T@U) (arg1@@133 T@U) ) (! (= (type (|#Network.MessageOps.MessageOps| arg0@@286 arg1@@133)) DatatypeTypeType)
 :qid |funType:#Network.MessageOps.MessageOps|
 :pattern ( (|#Network.MessageOps.MessageOps| arg0@@286 arg1@@133))
)))
(assert (forall ((|a#0#0#0@@1| T@U) (|a#0#1#0@@0| T@U) ) (!  (=> (and (= (type |a#0#0#0@@1|) DatatypeTypeType) (= (type |a#0#1#0@@0|) DatatypeTypeType)) (= (DatatypeCtorId (|#Network.MessageOps.MessageOps| |a#0#0#0@@1| |a#0#1#0@@0|)) |##Network.MessageOps.MessageOps|))
 :qid |networktdfy.33:45|
 :skolemid |2651|
 :pattern ( (|#Network.MessageOps.MessageOps| |a#0#0#0@@1| |a#0#1#0@@0|))
)))
(assert (forall ((d@@64 T@U) ) (!  (=> (= (type d@@64) DatatypeTypeType) (= (Network.MessageOps.MessageOps_q d@@64) (= (DatatypeCtorId d@@64) |##Network.MessageOps.MessageOps|)))
 :qid |unknown.0:0|
 :skolemid |2652|
 :pattern ( (Network.MessageOps.MessageOps_q d@@64))
)))
(assert (forall ((d@@65 T@U) ) (!  (=> (and (= (type d@@65) DatatypeTypeType) (Network.MessageOps.MessageOps_q d@@65)) (exists ((|a#1#0#0@@1| T@U) (|a#1#1#0@@0| T@U) ) (!  (and (and (= (type |a#1#0#0@@1|) DatatypeTypeType) (= (type |a#1#1#0@@0|) DatatypeTypeType)) (= d@@65 (|#Network.MessageOps.MessageOps| |a#1#0#0@@1| |a#1#1#0@@0|)))
 :qid |networktdfy.33:45|
 :skolemid |2653|
 :no-pattern (type |a#1#0#0@@1|)
 :no-pattern (type |a#1#1#0@@0|)
 :no-pattern (U_2_int |a#1#0#0@@1|)
 :no-pattern (U_2_bool |a#1#0#0@@1|)
 :no-pattern (U_2_int |a#1#1#0@@0|)
 :no-pattern (U_2_bool |a#1#1#0@@0|)
)))
 :qid |unknown.0:0|
 :skolemid |2654|
 :pattern ( (Network.MessageOps.MessageOps_q d@@65))
)))
(assert (forall ((Network.MessageOps$Message@@2 T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@0| T@U) ) (!  (=> (and (and (= (type Network.MessageOps$Message@@2) TyType) (= (type |a#2#0#0@@1|) DatatypeTypeType)) (= (type |a#2#1#0@@0|) DatatypeTypeType)) (= ($Is (|#Network.MessageOps.MessageOps| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass.Network.MessageOps Network.MessageOps$Message@@2))  (and ($Is |a#2#0#0@@1| (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@2)) ($Is |a#2#1#0@@0| (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@2)))))
 :qid |unknown.0:0|
 :skolemid |2655|
 :pattern ( ($Is (|#Network.MessageOps.MessageOps| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass.Network.MessageOps Network.MessageOps$Message@@2)))
)))
(assert (forall ((Network.MessageOps$Message@@3 T@U) (|a#3#0#0@@1| T@U) (|a#3#1#0@@0| T@U) ($h@@51 T@U) ) (!  (=> (and (and (and (and (= (type Network.MessageOps$Message@@3) TyType) (= (type |a#3#0#0@@1|) DatatypeTypeType)) (= (type |a#3#1#0@@0|) DatatypeTypeType)) (= (type $h@@51) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@51)) (= ($IsAlloc (|#Network.MessageOps.MessageOps| |a#3#0#0@@1| |a#3#1#0@@0|) (Tclass.Network.MessageOps Network.MessageOps$Message@@3) $h@@51)  (and ($IsAlloc |a#3#0#0@@1| (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@3) $h@@51) ($IsAlloc |a#3#1#0@@0| (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@3) $h@@51))))
 :qid |unknown.0:0|
 :skolemid |2656|
 :pattern ( ($IsAlloc (|#Network.MessageOps.MessageOps| |a#3#0#0@@1| |a#3#1#0@@0|) (Tclass.Network.MessageOps Network.MessageOps$Message@@3) $h@@51))
)))
(assert (forall ((arg0@@287 T@U) ) (! (= (type (Network.MessageOps.recv arg0@@287)) DatatypeTypeType)
 :qid |funType:Network.MessageOps.recv|
 :pattern ( (Network.MessageOps.recv arg0@@287))
)))
(assert (forall ((d@@66 T@U) (Network.MessageOps$Message@@4 T@U) ($h@@52 T@U) ) (!  (=> (and (and (and (= (type d@@66) DatatypeTypeType) (= (type Network.MessageOps$Message@@4) TyType)) (= (type $h@@52) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@52) (and (Network.MessageOps.MessageOps_q d@@66) ($IsAlloc d@@66 (Tclass.Network.MessageOps Network.MessageOps$Message@@4) $h@@52)))) ($IsAlloc (Network.MessageOps.recv d@@66) (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@4) $h@@52))
 :qid |unknown.0:0|
 :skolemid |2657|
 :pattern ( ($IsAlloc (Network.MessageOps.recv d@@66) (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@4) $h@@52))
)))
(assert (forall ((arg0@@288 T@U) ) (! (= (type (Network.MessageOps.send arg0@@288)) DatatypeTypeType)
 :qid |funType:Network.MessageOps.send|
 :pattern ( (Network.MessageOps.send arg0@@288))
)))
(assert (forall ((d@@67 T@U) (Network.MessageOps$Message@@5 T@U) ($h@@53 T@U) ) (!  (=> (and (and (and (= (type d@@67) DatatypeTypeType) (= (type Network.MessageOps$Message@@5) TyType)) (= (type $h@@53) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@53) (and (Network.MessageOps.MessageOps_q d@@67) ($IsAlloc d@@67 (Tclass.Network.MessageOps Network.MessageOps$Message@@5) $h@@53)))) ($IsAlloc (Network.MessageOps.send d@@67) (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@5) $h@@53))
 :qid |unknown.0:0|
 :skolemid |2658|
 :pattern ( ($IsAlloc (Network.MessageOps.send d@@67) (Tclass.UtilitiesLibrary.Option Network.MessageOps$Message@@5) $h@@53))
)))
(assert (forall ((|a#4#0#0@@1| T@U) (|a#4#1#0@@0| T@U) ) (!  (=> (and (= (type |a#4#0#0@@1|) DatatypeTypeType) (= (type |a#4#1#0@@0|) DatatypeTypeType)) (= (|#Network.MessageOps.MessageOps| (Lit |a#4#0#0@@1|) (Lit |a#4#1#0@@0|)) (Lit (|#Network.MessageOps.MessageOps| |a#4#0#0@@1| |a#4#1#0@@0|))))
 :qid |networktdfy.33:45|
 :skolemid |2659|
 :pattern ( (|#Network.MessageOps.MessageOps| (Lit |a#4#0#0@@1|) (Lit |a#4#1#0@@0|)))
)))
(assert (forall ((|a#5#0#0@@1| T@U) (|a#5#1#0@@0| T@U) ) (!  (=> (and (= (type |a#5#0#0@@1|) DatatypeTypeType) (= (type |a#5#1#0@@0|) DatatypeTypeType)) (= (Network.MessageOps.recv (|#Network.MessageOps.MessageOps| |a#5#0#0@@1| |a#5#1#0@@0|)) |a#5#0#0@@1|))
 :qid |networktdfy.33:45|
 :skolemid |2660|
 :pattern ( (|#Network.MessageOps.MessageOps| |a#5#0#0@@1| |a#5#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@1| T@U) (|a#6#1#0@@0| T@U) ) (!  (=> (and (= (type |a#6#0#0@@1|) DatatypeTypeType) (= (type |a#6#1#0@@0|) DatatypeTypeType)) (< (DtRank |a#6#0#0@@1|) (DtRank (|#Network.MessageOps.MessageOps| |a#6#0#0@@1| |a#6#1#0@@0|))))
 :qid |networktdfy.33:45|
 :skolemid |2661|
 :pattern ( (|#Network.MessageOps.MessageOps| |a#6#0#0@@1| |a#6#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (!  (=> (and (= (type |a#7#0#0@@0|) DatatypeTypeType) (= (type |a#7#1#0@@0|) DatatypeTypeType)) (= (Network.MessageOps.send (|#Network.MessageOps.MessageOps| |a#7#0#0@@0| |a#7#1#0@@0|)) |a#7#1#0@@0|))
 :qid |networktdfy.33:45|
 :skolemid |2662|
 :pattern ( (|#Network.MessageOps.MessageOps| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall ((|a#8#0#0@@0| T@U) (|a#8#1#0@@0| T@U) ) (!  (=> (and (= (type |a#8#0#0@@0|) DatatypeTypeType) (= (type |a#8#1#0@@0|) DatatypeTypeType)) (< (DtRank |a#8#1#0@@0|) (DtRank (|#Network.MessageOps.MessageOps| |a#8#0#0@@0| |a#8#1#0@@0|))))
 :qid |networktdfy.33:45|
 :skolemid |2663|
 :pattern ( (|#Network.MessageOps.MessageOps| |a#8#0#0@@0| |a#8#1#0@@0|))
)))
(assert (forall ((d@@68 T@U) ) (!  (=> (and (= (type d@@68) DatatypeTypeType) (|$IsA#Network.MessageOps| d@@68)) (Network.MessageOps.MessageOps_q d@@68))
 :qid |unknown.0:0|
 :skolemid |2664|
 :pattern ( (|$IsA#Network.MessageOps| d@@68))
)))
(assert (forall ((Network.MessageOps$Message@@6 T@U) (d@@69 T@U) ) (!  (=> (and (and (= (type Network.MessageOps$Message@@6) TyType) (= (type d@@69) DatatypeTypeType)) ($Is d@@69 (Tclass.Network.MessageOps Network.MessageOps$Message@@6))) (Network.MessageOps.MessageOps_q d@@69))
 :qid |unknown.0:0|
 :skolemid |2665|
 :pattern ( (Network.MessageOps.MessageOps_q d@@69) ($Is d@@69 (Tclass.Network.MessageOps Network.MessageOps$Message@@6)))
)))
(assert (forall ((a@@146 T@U) (b@@89 T@U) ) (!  (=> (and (and (= (type a@@146) DatatypeTypeType) (= (type b@@89) DatatypeTypeType)) true) (= (|Network.MessageOps#Equal| a@@146 b@@89)  (and (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.recv a@@146) (Network.MessageOps.recv b@@89)) (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send a@@146) (Network.MessageOps.send b@@89)))))
 :qid |unknown.0:0|
 :skolemid |2666|
 :pattern ( (|Network.MessageOps#Equal| a@@146 b@@89))
)))
(assert (forall ((a@@147 T@U) (b@@90 T@U) ) (!  (=> (and (= (type a@@147) DatatypeTypeType) (= (type b@@90) DatatypeTypeType)) (= (|Network.MessageOps#Equal| a@@147 b@@90) (= a@@147 b@@90)))
 :qid |unknown.0:0|
 :skolemid |2667|
 :pattern ( (|Network.MessageOps#Equal| a@@147 b@@90))
)))
(assert (forall ((arg0@@289 Int) ) (! (= (type (|#Network.Constants.Constants| arg0@@289)) DatatypeTypeType)
 :qid |funType:#Network.Constants.Constants|
 :pattern ( (|#Network.Constants.Constants| arg0@@289))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (DatatypeCtorId (|#Network.Constants.Constants| |a#9#0#0|)) |##Network.Constants.Constants|)
 :qid |networktdfy.35:34|
 :skolemid |2668|
 :pattern ( (|#Network.Constants.Constants| |a#9#0#0|))
)))
(assert (forall ((d@@70 T@U) ) (!  (=> (= (type d@@70) DatatypeTypeType) (= (Network.Constants.Constants_q d@@70) (= (DatatypeCtorId d@@70) |##Network.Constants.Constants|)))
 :qid |unknown.0:0|
 :skolemid |2669|
 :pattern ( (Network.Constants.Constants_q d@@70))
)))
(assert (forall ((d@@71 T@U) ) (!  (=> (and (= (type d@@71) DatatypeTypeType) (Network.Constants.Constants_q d@@71)) (exists ((|a#10#0#0| Int) ) (! (= d@@71 (|#Network.Constants.Constants| |a#10#0#0|))
 :qid |networktdfy.35:34|
 :skolemid |2670|
)))
 :qid |unknown.0:0|
 :skolemid |2671|
 :pattern ( (Network.Constants.Constants_q d@@71))
)))
(assert (= (type Tclass.Network.Constants) TyType))
(assert (= (Tag Tclass.Network.Constants) Tagclass.Network.Constants))
(assert (= (TagFamily Tclass.Network.Constants) tytagFamily$Constants))
(assert (forall ((bx@@96 T@U) ) (!  (=> (and (= (type bx@@96) BoxType) ($IsBox bx@@96 Tclass.Network.Constants)) (and (= ($Box ($Unbox DatatypeTypeType bx@@96)) bx@@96) ($Is ($Unbox DatatypeTypeType bx@@96) Tclass.Network.Constants)))
 :qid |unknown.0:0|
 :skolemid |2672|
 :pattern ( ($IsBox bx@@96 Tclass.Network.Constants))
)))
(assert (forall ((|a#11#0#0| Int) ) (! (= ($Is (|#Network.Constants.Constants| |a#11#0#0|) Tclass.Network.Constants) ($Is (int_2_U |a#11#0#0|) Tclass._System.nat))
 :qid |networktdfy.35:34|
 :skolemid |2673|
 :pattern ( ($Is (|#Network.Constants.Constants| |a#11#0#0|) Tclass.Network.Constants))
)))
(assert (forall ((|a#12#0#0| Int) ($h@@54 T@U) ) (!  (=> (and (= (type $h@@54) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@54)) (= ($IsAlloc (|#Network.Constants.Constants| |a#12#0#0|) Tclass.Network.Constants $h@@54) ($IsAlloc (int_2_U |a#12#0#0|) Tclass._System.nat $h@@54)))
 :qid |networktdfy.35:34|
 :skolemid |2674|
 :pattern ( ($IsAlloc (|#Network.Constants.Constants| |a#12#0#0|) Tclass.Network.Constants $h@@54))
)))
(assert (forall ((d@@72 T@U) ($h@@55 T@U) ) (!  (=> (and (and (= (type d@@72) DatatypeTypeType) (= (type $h@@55) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@55) (and (Network.Constants.Constants_q d@@72) ($IsAlloc d@@72 Tclass.Network.Constants $h@@55)))) ($IsAlloc (int_2_U (Network.Constants.numHosts d@@72)) Tclass._System.nat $h@@55))
 :qid |unknown.0:0|
 :skolemid |2675|
 :pattern ( ($IsAlloc (int_2_U (Network.Constants.numHosts d@@72)) Tclass._System.nat $h@@55))
)))
(assert (forall ((|a#13#0#0| Int) ) (! (= (|#Network.Constants.Constants| (LitInt |a#13#0#0|)) (Lit (|#Network.Constants.Constants| |a#13#0#0|)))
 :qid |networktdfy.35:34|
 :skolemid |2676|
 :pattern ( (|#Network.Constants.Constants| (LitInt |a#13#0#0|)))
)))
(assert (forall ((|a#14#0#0| Int) ) (! (= (Network.Constants.numHosts (|#Network.Constants.Constants| |a#14#0#0|)) |a#14#0#0|)
 :qid |networktdfy.35:34|
 :skolemid |2677|
 :pattern ( (|#Network.Constants.Constants| |a#14#0#0|))
)))
(assert (forall ((d@@73 T@U) ) (!  (=> (and (= (type d@@73) DatatypeTypeType) (|$IsA#Network.Constants| d@@73)) (Network.Constants.Constants_q d@@73))
 :qid |unknown.0:0|
 :skolemid |2678|
 :pattern ( (|$IsA#Network.Constants| d@@73))
)))
(assert (forall ((d@@74 T@U) ) (!  (=> (and (= (type d@@74) DatatypeTypeType) ($Is d@@74 Tclass.Network.Constants)) (Network.Constants.Constants_q d@@74))
 :qid |unknown.0:0|
 :skolemid |2679|
 :pattern ( (Network.Constants.Constants_q d@@74) ($Is d@@74 Tclass.Network.Constants))
)))
(assert (forall ((a@@148 T@U) (b@@91 T@U) ) (!  (=> (and (and (= (type a@@148) DatatypeTypeType) (= (type b@@91) DatatypeTypeType)) true) (= (|Network.Constants#Equal| a@@148 b@@91) (= (Network.Constants.numHosts a@@148) (Network.Constants.numHosts b@@91))))
 :qid |unknown.0:0|
 :skolemid |2680|
 :pattern ( (|Network.Constants#Equal| a@@148 b@@91))
)))
(assert (forall ((a@@149 T@U) (b@@92 T@U) ) (!  (=> (and (= (type a@@149) DatatypeTypeType) (= (type b@@92) DatatypeTypeType)) (= (|Network.Constants#Equal| a@@149 b@@92) (= a@@149 b@@92)))
 :qid |unknown.0:0|
 :skolemid |2681|
 :pattern ( (|Network.Constants#Equal| a@@149 b@@92))
)))
(assert  (=> true (forall ((this T@U) (|numHosts#0@@7| Int) ) (!  (=> (and (= (type this) DatatypeTypeType) (or (|Network.Constants.Configure#canCall| this |numHosts#0@@7|) (and ($Is this Tclass.Network.Constants) (<= (LitInt 0) |numHosts#0@@7|)))) true)
 :qid |networktdfy.37:15|
 :skolemid |2682|
 :pattern ( (Network.Constants.Configure this |numHosts#0@@7|))
))))
(assert (forall ((this@@0 T@U) (|numHosts#0@@8| Int) ) (!  (=> (= (type this@@0) DatatypeTypeType) (=> (and ($Is this@@0 Tclass.Network.Constants) (<= (LitInt 0) |numHosts#0@@8|)) (= (|Network.Constants.Configure#requires| this@@0 |numHosts#0@@8|) true)))
 :qid |networktdfy.37:15|
 :skolemid |2683|
 :pattern ( (|Network.Constants.Configure#requires| this@@0 |numHosts#0@@8|))
)))
(assert  (=> true (forall ((this@@1 T@U) (|numHosts#0@@9| Int) ) (!  (=> (and (= (type this@@1) DatatypeTypeType) (or (|Network.Constants.Configure#canCall| this@@1 |numHosts#0@@9|) (and ($Is this@@1 Tclass.Network.Constants) (<= (LitInt 0) |numHosts#0@@9|)))) (and (Network.Constants.Constants_q this@@1) (= (Network.Constants.Configure this@@1 |numHosts#0@@9|) (= (Network.Constants.numHosts this@@1) |numHosts#0@@9|))))
 :qid |networktdfy.37:15|
 :skolemid |2684|
 :pattern ( (Network.Constants.Configure this@@1 |numHosts#0@@9|))
))))
(assert  (=> true (forall ((this@@2 T@U) (|numHosts#0@@10| Int) ) (!  (=> (and (= (type this@@2) DatatypeTypeType) (or (|Network.Constants.Configure#canCall| (Lit this@@2) (LitInt |numHosts#0@@10|)) (and ($Is this@@2 Tclass.Network.Constants) (<= (LitInt 0) |numHosts#0@@10|)))) (and (Network.Constants.Constants_q (Lit this@@2)) (= (Network.Constants.Configure (Lit this@@2) (LitInt |numHosts#0@@10|)) (= (LitInt (Network.Constants.numHosts (Lit this@@2))) (LitInt |numHosts#0@@10|)))))
 :qid |networktdfy.37:15|
 :weight 3
 :skolemid |2685|
 :pattern ( (Network.Constants.Configure (Lit this@@2) (LitInt |numHosts#0@@10|)))
))))
(assert (forall ((arg0@@290 T@U) ) (! (= (type (|#Network.Variables.Variables| arg0@@290)) DatatypeTypeType)
 :qid |funType:#Network.Variables.Variables|
 :pattern ( (|#Network.Variables.Variables| arg0@@290))
)))
(assert (forall ((|a#0#0#0@@2| T@U) ) (!  (=> (= (type |a#0#0#0@@2|) (MapType0Type BoxType boolType)) (= (DatatypeCtorId (|#Network.Variables.Variables| |a#0#0#0@@2|)) |##Network.Variables.Variables|))
 :qid |networktdfy.46:43|
 :skolemid |2686|
 :pattern ( (|#Network.Variables.Variables| |a#0#0#0@@2|))
)))
(assert (forall ((d@@75 T@U) ) (!  (=> (= (type d@@75) DatatypeTypeType) (= (Network.Variables.Variables_q d@@75) (= (DatatypeCtorId d@@75) |##Network.Variables.Variables|)))
 :qid |unknown.0:0|
 :skolemid |2687|
 :pattern ( (Network.Variables.Variables_q d@@75))
)))
(assert (forall ((d@@76 T@U) ) (!  (=> (and (= (type d@@76) DatatypeTypeType) (Network.Variables.Variables_q d@@76)) (exists ((|a#1#0#0@@2| T@U) ) (!  (and (= (type |a#1#0#0@@2|) (MapType0Type BoxType boolType)) (= d@@76 (|#Network.Variables.Variables| |a#1#0#0@@2|)))
 :qid |networktdfy.46:43|
 :skolemid |2688|
 :no-pattern (type |a#1#0#0@@2|)
 :no-pattern (U_2_int |a#1#0#0@@2|)
 :no-pattern (U_2_bool |a#1#0#0@@2|)
)))
 :qid |unknown.0:0|
 :skolemid |2689|
 :pattern ( (Network.Variables.Variables_q d@@76))
)))
(assert (forall ((arg0@@291 T@U) ) (! (= (type (Tclass.Network.Variables arg0@@291)) TyType)
 :qid |funType:Tclass.Network.Variables|
 :pattern ( (Tclass.Network.Variables arg0@@291))
)))
(assert (forall ((Network.Variables$Message T@U) ) (!  (=> (= (type Network.Variables$Message) TyType) (and (= (Tag (Tclass.Network.Variables Network.Variables$Message)) Tagclass.Network.Variables) (= (TagFamily (Tclass.Network.Variables Network.Variables$Message)) tytagFamily$Variables)))
 :qid |unknown.0:0|
 :skolemid |2690|
 :pattern ( (Tclass.Network.Variables Network.Variables$Message))
)))
(assert (forall ((arg0@@292 T@U) ) (! (= (type (Tclass.Network.Variables_0 arg0@@292)) TyType)
 :qid |funType:Tclass.Network.Variables_0|
 :pattern ( (Tclass.Network.Variables_0 arg0@@292))
)))
(assert (forall ((Network.Variables$Message@@0 T@U) ) (!  (=> (= (type Network.Variables$Message@@0) TyType) (= (Tclass.Network.Variables_0 (Tclass.Network.Variables Network.Variables$Message@@0)) Network.Variables$Message@@0))
 :qid |unknown.0:0|
 :skolemid |2691|
 :pattern ( (Tclass.Network.Variables Network.Variables$Message@@0))
)))
(assert (forall ((Network.Variables$Message@@1 T@U) (bx@@97 T@U) ) (!  (=> (and (and (= (type Network.Variables$Message@@1) TyType) (= (type bx@@97) BoxType)) ($IsBox bx@@97 (Tclass.Network.Variables Network.Variables$Message@@1))) (and (= ($Box ($Unbox DatatypeTypeType bx@@97)) bx@@97) ($Is ($Unbox DatatypeTypeType bx@@97) (Tclass.Network.Variables Network.Variables$Message@@1))))
 :qid |unknown.0:0|
 :skolemid |2692|
 :pattern ( ($IsBox bx@@97 (Tclass.Network.Variables Network.Variables$Message@@1)))
)))
(assert (forall ((Network.Variables$Message@@2 T@U) (|a#2#0#0@@2| T@U) ) (!  (=> (and (= (type Network.Variables$Message@@2) TyType) (= (type |a#2#0#0@@2|) (MapType0Type BoxType boolType))) (= ($Is (|#Network.Variables.Variables| |a#2#0#0@@2|) (Tclass.Network.Variables Network.Variables$Message@@2)) ($Is |a#2#0#0@@2| (TSet Network.Variables$Message@@2))))
 :qid |unknown.0:0|
 :skolemid |2693|
 :pattern ( ($Is (|#Network.Variables.Variables| |a#2#0#0@@2|) (Tclass.Network.Variables Network.Variables$Message@@2)))
)))
(assert (forall ((Network.Variables$Message@@3 T@U) (|a#3#0#0@@2| T@U) ($h@@56 T@U) ) (!  (=> (and (and (and (= (type Network.Variables$Message@@3) TyType) (= (type |a#3#0#0@@2|) (MapType0Type BoxType boolType))) (= (type $h@@56) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@56)) (= ($IsAlloc (|#Network.Variables.Variables| |a#3#0#0@@2|) (Tclass.Network.Variables Network.Variables$Message@@3) $h@@56) ($IsAlloc |a#3#0#0@@2| (TSet Network.Variables$Message@@3) $h@@56)))
 :qid |unknown.0:0|
 :skolemid |2694|
 :pattern ( ($IsAlloc (|#Network.Variables.Variables| |a#3#0#0@@2|) (Tclass.Network.Variables Network.Variables$Message@@3) $h@@56))
)))
(assert (forall ((d@@77 T@U) (Network.Variables$Message@@4 T@U) ($h@@57 T@U) ) (!  (=> (and (and (and (= (type d@@77) DatatypeTypeType) (= (type Network.Variables$Message@@4) TyType)) (= (type $h@@57) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@57) (and (Network.Variables.Variables_q d@@77) ($IsAlloc d@@77 (Tclass.Network.Variables Network.Variables$Message@@4) $h@@57)))) ($IsAlloc (Network.Variables.sentMsgs d@@77) (TSet Network.Variables$Message@@4) $h@@57))
 :qid |unknown.0:0|
 :skolemid |2695|
 :pattern ( ($IsAlloc (Network.Variables.sentMsgs d@@77) (TSet Network.Variables$Message@@4) $h@@57))
)))
(assert (forall ((|a#4#0#0@@2| T@U) ) (!  (=> (= (type |a#4#0#0@@2|) (MapType0Type BoxType boolType)) (= (|#Network.Variables.Variables| (Lit |a#4#0#0@@2|)) (Lit (|#Network.Variables.Variables| |a#4#0#0@@2|))))
 :qid |networktdfy.46:43|
 :skolemid |2696|
 :pattern ( (|#Network.Variables.Variables| (Lit |a#4#0#0@@2|)))
)))
(assert (forall ((|a#5#0#0@@2| T@U) ) (!  (=> (= (type |a#5#0#0@@2|) (MapType0Type BoxType boolType)) (= (Network.Variables.sentMsgs (|#Network.Variables.Variables| |a#5#0#0@@2|)) |a#5#0#0@@2|))
 :qid |networktdfy.46:43|
 :skolemid |2697|
 :pattern ( (|#Network.Variables.Variables| |a#5#0#0@@2|))
)))
(assert (forall ((|a#6#0#0@@2| T@U) (d@@78 T@U) ) (!  (=> (and (and (= (type |a#6#0#0@@2|) (MapType0Type BoxType boolType)) (= (type d@@78) DatatypeTypeType)) (U_2_bool (MapType0Select |a#6#0#0@@2| ($Box d@@78)))) (< (DtRank d@@78) (DtRank (|#Network.Variables.Variables| |a#6#0#0@@2|))))
 :qid |networktdfy.46:43|
 :skolemid |2698|
 :pattern ( (MapType0Select |a#6#0#0@@2| ($Box d@@78)) (|#Network.Variables.Variables| |a#6#0#0@@2|))
)))
(assert (forall ((d@@79 T@U) ) (!  (=> (and (= (type d@@79) DatatypeTypeType) (|$IsA#Network.Variables| d@@79)) (Network.Variables.Variables_q d@@79))
 :qid |unknown.0:0|
 :skolemid |2699|
 :pattern ( (|$IsA#Network.Variables| d@@79))
)))
(assert (forall ((Network.Variables$Message@@5 T@U) (d@@80 T@U) ) (!  (=> (and (and (= (type Network.Variables$Message@@5) TyType) (= (type d@@80) DatatypeTypeType)) ($Is d@@80 (Tclass.Network.Variables Network.Variables$Message@@5))) (Network.Variables.Variables_q d@@80))
 :qid |unknown.0:0|
 :skolemid |2700|
 :pattern ( (Network.Variables.Variables_q d@@80) ($Is d@@80 (Tclass.Network.Variables Network.Variables$Message@@5)))
)))
(assert (forall ((a@@150 T@U) (b@@93 T@U) ) (!  (=> (and (and (= (type a@@150) DatatypeTypeType) (= (type b@@93) DatatypeTypeType)) true) (= (|Network.Variables#Equal| a@@150 b@@93) (|Set#Equal| (Network.Variables.sentMsgs a@@150) (Network.Variables.sentMsgs b@@93))))
 :qid |unknown.0:0|
 :skolemid |2701|
 :pattern ( (|Network.Variables#Equal| a@@150 b@@93))
)))
(assert (forall ((a@@151 T@U) (b@@94 T@U) ) (!  (=> (and (= (type a@@151) DatatypeTypeType) (= (type b@@94) DatatypeTypeType)) (= (|Network.Variables#Equal| a@@151 b@@94) (= a@@151 b@@94)))
 :qid |unknown.0:0|
 :skolemid |2702|
 :pattern ( (|Network.Variables#Equal| a@@151 b@@94))
)))
(assert (= (type Tclass.Network.__default) TyType))
(assert (= (Tag Tclass.Network.__default) Tagclass.Network.__default))
(assert (= (TagFamily Tclass.Network.__default) tytagFamily$_default))
(assert (forall ((bx@@98 T@U) ) (!  (=> (and (= (type bx@@98) BoxType) ($IsBox bx@@98 Tclass.Network.__default)) (and (= ($Box ($Unbox refType bx@@98)) bx@@98) ($Is ($Unbox refType bx@@98) Tclass.Network.__default)))
 :qid |unknown.0:0|
 :skolemid |2703|
 :pattern ( ($IsBox bx@@98 Tclass.Network.__default))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> (= (type $o@@15) refType) (= ($Is $o@@15 Tclass.Network.__default)  (or (= $o@@15 null) (= (dtype $o@@15) Tclass.Network.__default))))
 :qid |unknown.0:0|
 :skolemid |2704|
 :pattern ( ($Is $o@@15 Tclass.Network.__default))
)))
(assert (forall (($o@@16 T@U) ($h@@58 T@U) ) (!  (=> (and (= (type $o@@16) refType) (= (type $h@@58) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@16 Tclass.Network.__default $h@@58)  (or (= $o@@16 null) (U_2_bool (MapType1Select (MapType0Select $h@@58 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2705|
 :pattern ( ($IsAlloc $o@@16 Tclass.Network.__default $h@@58))
)))
(assert  (=> true (forall ((Network._default.Init$Message T@U) (|c#0@@27| T@U) (|v#0@@23| T@U) ) (!  (=> (and (and (and (= (type Network._default.Init$Message) TyType) (= (type |c#0@@27|) DatatypeTypeType)) (= (type |v#0@@23|) DatatypeTypeType)) (or (|Network.__default.Init#canCall| Network._default.Init$Message |c#0@@27| |v#0@@23|) (and ($Is |c#0@@27| Tclass.Network.Constants) ($Is |v#0@@23| (Tclass.Network.Variables Network._default.Init$Message))))) true)
 :qid |unknown.0:0|
 :skolemid |2706|
 :pattern ( (Network.__default.Init Network._default.Init$Message |c#0@@27| |v#0@@23|))
))))
(assert (forall ((Network._default.Init$Message@@0 T@U) (|c#0@@28| T@U) (|v#0@@24| T@U) ) (!  (=> (and (and (and (= (type Network._default.Init$Message@@0) TyType) (= (type |c#0@@28|) DatatypeTypeType)) (= (type |v#0@@24|) DatatypeTypeType)) (and ($Is |c#0@@28| Tclass.Network.Constants) ($Is |v#0@@24| (Tclass.Network.Variables Network._default.Init$Message@@0)))) (= (|Network.__default.Init#requires| Network._default.Init$Message@@0 |c#0@@28| |v#0@@24|) true))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( (|Network.__default.Init#requires| Network._default.Init$Message@@0 |c#0@@28| |v#0@@24|))
)))
(assert  (=> true (forall ((Network._default.Init$Message@@1 T@U) (|c#0@@29| T@U) (|v#0@@25| T@U) ) (!  (=> (and (and (and (= (type Network._default.Init$Message@@1) TyType) (= (type |c#0@@29|) DatatypeTypeType)) (= (type |v#0@@25|) DatatypeTypeType)) (or (|Network.__default.Init#canCall| Network._default.Init$Message@@1 |c#0@@29| |v#0@@25|) (and ($Is |c#0@@29| Tclass.Network.Constants) ($Is |v#0@@25| (Tclass.Network.Variables Network._default.Init$Message@@1))))) (and (=> (U_2_bool (Lit (bool_2_U true))) (Network.Variables.Variables_q |v#0@@25|)) (= (Network.__default.Init Network._default.Init$Message@@1 |c#0@@29| |v#0@@25|)  (and true (|Set#Equal| (Network.Variables.sentMsgs |v#0@@25|) (|Set#Empty| BoxType))))))
 :qid |unknown.0:0|
 :skolemid |2708|
 :pattern ( (Network.__default.Init Network._default.Init$Message@@1 |c#0@@29| |v#0@@25|))
))))
(assert  (=> true (forall ((Network._default.Init$Message@@2 T@U) (|c#0@@30| T@U) (|v#0@@26| T@U) ) (!  (=> (and (and (and (= (type Network._default.Init$Message@@2) TyType) (= (type |c#0@@30|) DatatypeTypeType)) (= (type |v#0@@26|) DatatypeTypeType)) (or (|Network.__default.Init#canCall| Network._default.Init$Message@@2 (Lit |c#0@@30|) (Lit |v#0@@26|)) (and ($Is |c#0@@30| Tclass.Network.Constants) ($Is |v#0@@26| (Tclass.Network.Variables Network._default.Init$Message@@2))))) (and (=> (U_2_bool (Lit (bool_2_U true))) (Network.Variables.Variables_q (Lit |v#0@@26|))) (= (Network.__default.Init Network._default.Init$Message@@2 (Lit |c#0@@30|) (Lit |v#0@@26|))  (and true (|Set#Equal| (Network.Variables.sentMsgs (Lit |v#0@@26|)) (|Set#Empty| BoxType))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2709|
 :pattern ( (Network.__default.Init Network._default.Init$Message@@2 (Lit |c#0@@30|) (Lit |v#0@@26|)))
))))
(assert  (=> true (forall ((Network._default.Next$Message T@U) (|c#0@@31| T@U) (|v#0@@27| T@U) (|v'#0| T@U) (|msgOps#0| T@U) ) (!  (=> (and (and (and (and (and (= (type Network._default.Next$Message) TyType) (= (type |c#0@@31|) DatatypeTypeType)) (= (type |v#0@@27|) DatatypeTypeType)) (= (type |v'#0|) DatatypeTypeType)) (= (type |msgOps#0|) DatatypeTypeType)) (or (|Network.__default.Next#canCall| Network._default.Next$Message |c#0@@31| |v#0@@27| |v'#0| |msgOps#0|) (and (and (and ($Is |c#0@@31| Tclass.Network.Constants) ($Is |v#0@@27| (Tclass.Network.Variables Network._default.Next$Message))) ($Is |v'#0| (Tclass.Network.Variables Network._default.Next$Message))) ($Is |msgOps#0| (Tclass.Network.MessageOps Network._default.Next$Message))))) true)
 :qid |unknown.0:0|
 :skolemid |2710|
 :pattern ( (Network.__default.Next Network._default.Next$Message |c#0@@31| |v#0@@27| |v'#0| |msgOps#0|))
))))
(assert (forall ((Network._default.Next$Message@@0 T@U) (|c#0@@32| T@U) (|v#0@@28| T@U) (|v'#0@@0| T@U) (|msgOps#0@@0| T@U) ) (!  (=> (and (and (and (and (and (= (type Network._default.Next$Message@@0) TyType) (= (type |c#0@@32|) DatatypeTypeType)) (= (type |v#0@@28|) DatatypeTypeType)) (= (type |v'#0@@0|) DatatypeTypeType)) (= (type |msgOps#0@@0|) DatatypeTypeType)) (and (and (and ($Is |c#0@@32| Tclass.Network.Constants) ($Is |v#0@@28| (Tclass.Network.Variables Network._default.Next$Message@@0))) ($Is |v'#0@@0| (Tclass.Network.Variables Network._default.Next$Message@@0))) ($Is |msgOps#0@@0| (Tclass.Network.MessageOps Network._default.Next$Message@@0)))) (= (|Network.__default.Next#requires| Network._default.Next$Message@@0 |c#0@@32| |v#0@@28| |v'#0@@0| |msgOps#0@@0|) true))
 :qid |unknown.0:0|
 :skolemid |2711|
 :pattern ( (|Network.__default.Next#requires| Network._default.Next$Message@@0 |c#0@@32| |v#0@@28| |v'#0@@0| |msgOps#0@@0|))
)))
(assert  (=> true (forall ((Network._default.Next$Message@@1 T@U) (|c#0@@33| T@U) (|v#0@@29| T@U) (|v'#0@@1| T@U) (|msgOps#0@@1| T@U) ) (!  (=> (and (and (and (and (and (= (type Network._default.Next$Message@@1) TyType) (= (type |c#0@@33|) DatatypeTypeType)) (= (type |v#0@@29|) DatatypeTypeType)) (= (type |v'#0@@1|) DatatypeTypeType)) (= (type |msgOps#0@@1|) DatatypeTypeType)) (or (|Network.__default.Next#canCall| Network._default.Next$Message@@1 |c#0@@33| |v#0@@29| |v'#0@@1| |msgOps#0@@1|) (and (and (and ($Is |c#0@@33| Tclass.Network.Constants) ($Is |v#0@@29| (Tclass.Network.Variables Network._default.Next$Message@@1))) ($Is |v'#0@@1| (Tclass.Network.Variables Network._default.Next$Message@@1))) ($Is |msgOps#0@@1| (Tclass.Network.MessageOps Network._default.Next$Message@@1))))) (and (and (and (Network.MessageOps.MessageOps_q |msgOps#0@@1|) (=> (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0@@1|)) (and (Network.MessageOps.MessageOps_q |msgOps#0@@1|) (Network.Variables.Variables_q |v#0@@29|)))) (=> (=> (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0@@1|)) (U_2_bool (MapType0Select (Network.Variables.sentMsgs |v#0@@29|) (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@1|))))) (and (Network.Variables.Variables_q |v'#0@@1|) (and (Network.Variables.Variables_q |v#0@@29|) (and (Network.MessageOps.MessageOps_q |msgOps#0@@1|) (=> (not (UtilitiesLibrary.Option.None_q (Network.MessageOps.send |msgOps#0@@1|))) (Network.MessageOps.MessageOps_q |msgOps#0@@1|))))))) (= (Network.__default.Next Network._default.Next$Message@@1 |c#0@@33| |v#0@@29| |v'#0@@1| |msgOps#0@@1|)  (and (=> (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0@@1|)) (U_2_bool (MapType0Select (Network.Variables.sentMsgs |v#0@@29|) (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@1|))))) (|Set#Equal| (Network.Variables.sentMsgs |v'#0@@1|) (|Set#Union| (Network.Variables.sentMsgs |v#0@@29|) (ite (UtilitiesLibrary.Option.None_q (Network.MessageOps.send |msgOps#0@@1|)) (|Set#Empty| BoxType) (|Set#UnionOne| (|Set#Empty| BoxType) (UtilitiesLibrary.Option.value (Network.MessageOps.send |msgOps#0@@1|))))))))))
 :qid |unknown.0:0|
 :skolemid |2712|
 :pattern ( (Network.__default.Next Network._default.Next$Message@@1 |c#0@@33| |v#0@@29| |v'#0@@1| |msgOps#0@@1|))
))))
(assert  (=> true (forall ((Network._default.Next$Message@@2 T@U) (|c#0@@34| T@U) (|v#0@@30| T@U) (|v'#0@@2| T@U) (|msgOps#0@@2| T@U) ) (!  (=> (and (and (and (and (and (= (type Network._default.Next$Message@@2) TyType) (= (type |c#0@@34|) DatatypeTypeType)) (= (type |v#0@@30|) DatatypeTypeType)) (= (type |v'#0@@2|) DatatypeTypeType)) (= (type |msgOps#0@@2|) DatatypeTypeType)) (or (|Network.__default.Next#canCall| Network._default.Next$Message@@2 (Lit |c#0@@34|) (Lit |v#0@@30|) (Lit |v'#0@@2|) (Lit |msgOps#0@@2|)) (and (and (and ($Is |c#0@@34| Tclass.Network.Constants) ($Is |v#0@@30| (Tclass.Network.Variables Network._default.Next$Message@@2))) ($Is |v'#0@@2| (Tclass.Network.Variables Network._default.Next$Message@@2))) ($Is |msgOps#0@@2| (Tclass.Network.MessageOps Network._default.Next$Message@@2))))) (and (and (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@2|)) (=> (U_2_bool (Lit (bool_2_U (UtilitiesLibrary.Option.Some_q (Lit (Network.MessageOps.recv (Lit |msgOps#0@@2|))))))) (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@2|)) (Network.Variables.Variables_q (Lit |v#0@@30|))))) (=> (=> (UtilitiesLibrary.Option.Some_q (Lit (Network.MessageOps.recv (Lit |msgOps#0@@2|)))) (U_2_bool (MapType0Select (Lit (Network.Variables.sentMsgs (Lit |v#0@@30|))) (Lit (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@2|)))))))) (and (Network.Variables.Variables_q (Lit |v'#0@@2|)) (and (Network.Variables.Variables_q (Lit |v#0@@30|)) (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@2|)) (=> (not (U_2_bool (Lit (bool_2_U (UtilitiesLibrary.Option.None_q (Lit (Network.MessageOps.send (Lit |msgOps#0@@2|)))))))) (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@2|)))))))) (= (Network.__default.Next Network._default.Next$Message@@2 (Lit |c#0@@34|) (Lit |v#0@@30|) (Lit |v'#0@@2|) (Lit |msgOps#0@@2|))  (and (=> (UtilitiesLibrary.Option.Some_q (Lit (Network.MessageOps.recv (Lit |msgOps#0@@2|)))) (U_2_bool (MapType0Select (Lit (Network.Variables.sentMsgs (Lit |v#0@@30|))) (Lit (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@2|)))))))) (|Set#Equal| (Network.Variables.sentMsgs (Lit |v'#0@@2|)) (|Set#Union| (Network.Variables.sentMsgs (Lit |v#0@@30|)) (ite (UtilitiesLibrary.Option.None_q (Lit (Network.MessageOps.send (Lit |msgOps#0@@2|)))) (|Set#Empty| BoxType) (|Set#UnionOne| (|Set#Empty| BoxType) (Lit (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.send (Lit |msgOps#0@@2|)))))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2713|
 :pattern ( (Network.__default.Next Network._default.Next$Message@@2 (Lit |c#0@@34|) (Lit |v#0@@30|) (Lit |v'#0@@2|) (Lit |msgOps#0@@2|)))
))))
(assert (forall ((arg0@@293 Int) (arg1@@134 Int) ) (! (= (type (|#Host.Message.GrantMsg| arg0@@293 arg1@@134)) DatatypeTypeType)
 :qid |funType:#Host.Message.GrantMsg|
 :pattern ( (|#Host.Message.GrantMsg| arg0@@293 arg1@@134))
)))
(assert (forall ((|a#0#0#0@@3| Int) (|a#0#1#0@@1| Int) ) (! (= (DatatypeCtorId (|#Host.Message.GrantMsg| |a#0#0#0@@3| |a#0#1#0@@1|)) |##Host.Message.GrantMsg|)
 :qid |hostvdfy.18:14|
 :skolemid |2714|
 :pattern ( (|#Host.Message.GrantMsg| |a#0#0#0@@3| |a#0#1#0@@1|))
)))
(assert (forall ((d@@81 T@U) ) (!  (=> (= (type d@@81) DatatypeTypeType) (= (Host.Message.GrantMsg_q d@@81) (= (DatatypeCtorId d@@81) |##Host.Message.GrantMsg|)))
 :qid |unknown.0:0|
 :skolemid |2715|
 :pattern ( (Host.Message.GrantMsg_q d@@81))
)))
(assert (forall ((d@@82 T@U) ) (!  (=> (and (= (type d@@82) DatatypeTypeType) (Host.Message.GrantMsg_q d@@82)) (exists ((|a#1#0#0@@3| Int) (|a#1#1#0@@1| Int) ) (! (= d@@82 (|#Host.Message.GrantMsg| |a#1#0#0@@3| |a#1#1#0@@1|))
 :qid |hostvdfy.18:14|
 :skolemid |2716|
)))
 :qid |unknown.0:0|
 :skolemid |2717|
 :pattern ( (Host.Message.GrantMsg_q d@@82))
)))
(assert (forall ((|a#2#0#0@@3| Int) (|a#2#1#0@@1| Int) ) (! (= ($Is (|#Host.Message.GrantMsg| |a#2#0#0@@3| |a#2#1#0@@1|) Tclass.Host.Message)  (and ($Is (int_2_U |a#2#0#0@@3|) TInt) ($Is (int_2_U |a#2#1#0@@1|) Tclass._System.nat)))
 :qid |hostvdfy.18:14|
 :skolemid |2718|
 :pattern ( ($Is (|#Host.Message.GrantMsg| |a#2#0#0@@3| |a#2#1#0@@1|) Tclass.Host.Message))
)))
(assert (forall ((|a#3#0#0@@3| Int) (|a#3#1#0@@1| Int) ($h@@59 T@U) ) (!  (=> (and (= (type $h@@59) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@59)) (= ($IsAlloc (|#Host.Message.GrantMsg| |a#3#0#0@@3| |a#3#1#0@@1|) Tclass.Host.Message $h@@59)  (and ($IsAlloc (int_2_U |a#3#0#0@@3|) TInt $h@@59) ($IsAlloc (int_2_U |a#3#1#0@@1|) Tclass._System.nat $h@@59))))
 :qid |hostvdfy.18:14|
 :skolemid |2719|
 :pattern ( ($IsAlloc (|#Host.Message.GrantMsg| |a#3#0#0@@3| |a#3#1#0@@1|) Tclass.Host.Message $h@@59))
)))
(assert (forall ((d@@83 T@U) ($h@@60 T@U) ) (!  (=> (and (and (= (type d@@83) DatatypeTypeType) (= (type $h@@60) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@60) (and (Host.Message.GrantMsg_q d@@83) ($IsAlloc d@@83 Tclass.Host.Message $h@@60)))) ($IsAlloc (int_2_U (Host.Message.dest d@@83)) TInt $h@@60))
 :qid |unknown.0:0|
 :skolemid |2720|
 :pattern ( ($IsAlloc (int_2_U (Host.Message.dest d@@83)) TInt $h@@60))
)))
(assert (forall ((d@@84 T@U) ($h@@61 T@U) ) (!  (=> (and (and (= (type d@@84) DatatypeTypeType) (= (type $h@@61) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@61) (and (Host.Message.GrantMsg_q d@@84) ($IsAlloc d@@84 Tclass.Host.Message $h@@61)))) ($IsAlloc (int_2_U (Host.Message.epoch d@@84)) Tclass._System.nat $h@@61))
 :qid |unknown.0:0|
 :skolemid |2721|
 :pattern ( ($IsAlloc (int_2_U (Host.Message.epoch d@@84)) Tclass._System.nat $h@@61))
)))
(assert (forall ((|a#4#0#0@@3| Int) (|a#4#1#0@@1| Int) ) (! (= (|#Host.Message.GrantMsg| (LitInt |a#4#0#0@@3|) (LitInt |a#4#1#0@@1|)) (Lit (|#Host.Message.GrantMsg| |a#4#0#0@@3| |a#4#1#0@@1|)))
 :qid |hostvdfy.18:14|
 :skolemid |2722|
 :pattern ( (|#Host.Message.GrantMsg| (LitInt |a#4#0#0@@3|) (LitInt |a#4#1#0@@1|)))
)))
(assert (forall ((|a#5#0#0@@3| Int) (|a#5#1#0@@1| Int) ) (! (= (Host.Message.dest (|#Host.Message.GrantMsg| |a#5#0#0@@3| |a#5#1#0@@1|)) |a#5#0#0@@3|)
 :qid |hostvdfy.18:14|
 :skolemid |2723|
 :pattern ( (|#Host.Message.GrantMsg| |a#5#0#0@@3| |a#5#1#0@@1|))
)))
(assert (forall ((|a#6#0#0@@3| Int) (|a#6#1#0@@1| Int) ) (! (= (Host.Message.epoch (|#Host.Message.GrantMsg| |a#6#0#0@@3| |a#6#1#0@@1|)) |a#6#1#0@@1|)
 :qid |hostvdfy.18:14|
 :skolemid |2724|
 :pattern ( (|#Host.Message.GrantMsg| |a#6#0#0@@3| |a#6#1#0@@1|))
)))
(assert (forall ((d@@85 T@U) ) (!  (=> (and (= (type d@@85) DatatypeTypeType) (|$IsA#Host.Message| d@@85)) (Host.Message.GrantMsg_q d@@85))
 :qid |unknown.0:0|
 :skolemid |2725|
 :pattern ( (|$IsA#Host.Message| d@@85))
)))
(assert (forall ((d@@86 T@U) ) (!  (=> (and (= (type d@@86) DatatypeTypeType) ($Is d@@86 Tclass.Host.Message)) (Host.Message.GrantMsg_q d@@86))
 :qid |unknown.0:0|
 :skolemid |2726|
 :pattern ( (Host.Message.GrantMsg_q d@@86) ($Is d@@86 Tclass.Host.Message))
)))
(assert (forall ((a@@152 T@U) (b@@95 T@U) ) (!  (=> (and (and (= (type a@@152) DatatypeTypeType) (= (type b@@95) DatatypeTypeType)) true) (= (|Host.Message#Equal| a@@152 b@@95)  (and (= (Host.Message.dest a@@152) (Host.Message.dest b@@95)) (= (Host.Message.epoch a@@152) (Host.Message.epoch b@@95)))))
 :qid |unknown.0:0|
 :skolemid |2727|
 :pattern ( (|Host.Message#Equal| a@@152 b@@95))
)))
(assert (forall ((a@@153 T@U) (b@@96 T@U) ) (!  (=> (and (= (type a@@153) DatatypeTypeType) (= (type b@@96) DatatypeTypeType)) (= (|Host.Message#Equal| a@@153 b@@96) (= a@@153 b@@96)))
 :qid |unknown.0:0|
 :skolemid |2728|
 :pattern ( (|Host.Message#Equal| a@@153 b@@96))
)))
(assert (forall ((arg0@@294 Int) (arg1@@135 Int) ) (! (= (type (|#Host.Constants.Constants| arg0@@294 arg1@@135)) DatatypeTypeType)
 :qid |funType:#Host.Constants.Constants|
 :pattern ( (|#Host.Constants.Constants| arg0@@294 arg1@@135))
)))
(assert (forall ((|a#7#0#0@@1| Int) (|a#7#1#0@@1| Int) ) (! (= (DatatypeCtorId (|#Host.Constants.Constants| |a#7#0#0@@1| |a#7#1#0@@1|)) |##Host.Constants.Constants|)
 :qid |hostvdfy.22:34|
 :skolemid |2729|
 :pattern ( (|#Host.Constants.Constants| |a#7#0#0@@1| |a#7#1#0@@1|))
)))
(assert (forall ((d@@87 T@U) ) (!  (=> (= (type d@@87) DatatypeTypeType) (= (Host.Constants.Constants_q d@@87) (= (DatatypeCtorId d@@87) |##Host.Constants.Constants|)))
 :qid |unknown.0:0|
 :skolemid |2730|
 :pattern ( (Host.Constants.Constants_q d@@87))
)))
(assert (forall ((d@@88 T@U) ) (!  (=> (and (= (type d@@88) DatatypeTypeType) (Host.Constants.Constants_q d@@88)) (exists ((|a#8#0#0@@1| Int) (|a#8#1#0@@1| Int) ) (! (= d@@88 (|#Host.Constants.Constants| |a#8#0#0@@1| |a#8#1#0@@1|))
 :qid |hostvdfy.22:34|
 :skolemid |2731|
)))
 :qid |unknown.0:0|
 :skolemid |2732|
 :pattern ( (Host.Constants.Constants_q d@@88))
)))
(assert (forall ((|a#9#0#0@@0| Int) (|a#9#1#0| Int) ) (! (= ($Is (|#Host.Constants.Constants| |a#9#0#0@@0| |a#9#1#0|) Tclass.Host.Constants)  (and ($Is (int_2_U |a#9#0#0@@0|) Tclass._System.nat) ($Is (int_2_U |a#9#1#0|) TInt)))
 :qid |hostvdfy.22:34|
 :skolemid |2733|
 :pattern ( ($Is (|#Host.Constants.Constants| |a#9#0#0@@0| |a#9#1#0|) Tclass.Host.Constants))
)))
(assert (forall ((|a#10#0#0@@0| Int) (|a#10#1#0| Int) ($h@@62 T@U) ) (!  (=> (and (= (type $h@@62) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@62)) (= ($IsAlloc (|#Host.Constants.Constants| |a#10#0#0@@0| |a#10#1#0|) Tclass.Host.Constants $h@@62)  (and ($IsAlloc (int_2_U |a#10#0#0@@0|) Tclass._System.nat $h@@62) ($IsAlloc (int_2_U |a#10#1#0|) TInt $h@@62))))
 :qid |hostvdfy.22:34|
 :skolemid |2734|
 :pattern ( ($IsAlloc (|#Host.Constants.Constants| |a#10#0#0@@0| |a#10#1#0|) Tclass.Host.Constants $h@@62))
)))
(assert (forall ((d@@89 T@U) ($h@@63 T@U) ) (!  (=> (and (and (= (type d@@89) DatatypeTypeType) (= (type $h@@63) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@63) (and (Host.Constants.Constants_q d@@89) ($IsAlloc d@@89 Tclass.Host.Constants $h@@63)))) ($IsAlloc (int_2_U (Host.Constants.numHosts d@@89)) Tclass._System.nat $h@@63))
 :qid |unknown.0:0|
 :skolemid |2735|
 :pattern ( ($IsAlloc (int_2_U (Host.Constants.numHosts d@@89)) Tclass._System.nat $h@@63))
)))
(assert (forall ((d@@90 T@U) ($h@@64 T@U) ) (!  (=> (and (and (= (type d@@90) DatatypeTypeType) (= (type $h@@64) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@64) (and (Host.Constants.Constants_q d@@90) ($IsAlloc d@@90 Tclass.Host.Constants $h@@64)))) ($IsAlloc (int_2_U (Host.Constants.myId d@@90)) TInt $h@@64))
 :qid |unknown.0:0|
 :skolemid |2736|
 :pattern ( ($IsAlloc (int_2_U (Host.Constants.myId d@@90)) TInt $h@@64))
)))
(assert (forall ((|a#11#0#0@@0| Int) (|a#11#1#0| Int) ) (! (= (|#Host.Constants.Constants| (LitInt |a#11#0#0@@0|) (LitInt |a#11#1#0|)) (Lit (|#Host.Constants.Constants| |a#11#0#0@@0| |a#11#1#0|)))
 :qid |hostvdfy.22:34|
 :skolemid |2737|
 :pattern ( (|#Host.Constants.Constants| (LitInt |a#11#0#0@@0|) (LitInt |a#11#1#0|)))
)))
(assert (forall ((|a#12#0#0@@0| Int) (|a#12#1#0| Int) ) (! (= (Host.Constants.numHosts (|#Host.Constants.Constants| |a#12#0#0@@0| |a#12#1#0|)) |a#12#0#0@@0|)
 :qid |hostvdfy.22:34|
 :skolemid |2738|
 :pattern ( (|#Host.Constants.Constants| |a#12#0#0@@0| |a#12#1#0|))
)))
(assert (forall ((|a#13#0#0@@0| Int) (|a#13#1#0| Int) ) (! (= (Host.Constants.myId (|#Host.Constants.Constants| |a#13#0#0@@0| |a#13#1#0|)) |a#13#1#0|)
 :qid |hostvdfy.22:34|
 :skolemid |2739|
 :pattern ( (|#Host.Constants.Constants| |a#13#0#0@@0| |a#13#1#0|))
)))
(assert (forall ((d@@91 T@U) ) (!  (=> (and (= (type d@@91) DatatypeTypeType) (|$IsA#Host.Constants| d@@91)) (Host.Constants.Constants_q d@@91))
 :qid |unknown.0:0|
 :skolemid |2740|
 :pattern ( (|$IsA#Host.Constants| d@@91))
)))
(assert (forall ((d@@92 T@U) ) (!  (=> (and (= (type d@@92) DatatypeTypeType) ($Is d@@92 Tclass.Host.Constants)) (Host.Constants.Constants_q d@@92))
 :qid |unknown.0:0|
 :skolemid |2741|
 :pattern ( (Host.Constants.Constants_q d@@92) ($Is d@@92 Tclass.Host.Constants))
)))
(assert (forall ((a@@154 T@U) (b@@97 T@U) ) (!  (=> (and (and (= (type a@@154) DatatypeTypeType) (= (type b@@97) DatatypeTypeType)) true) (= (|Host.Constants#Equal| a@@154 b@@97)  (and (= (Host.Constants.numHosts a@@154) (Host.Constants.numHosts b@@97)) (= (Host.Constants.myId a@@154) (Host.Constants.myId b@@97)))))
 :qid |unknown.0:0|
 :skolemid |2742|
 :pattern ( (|Host.Constants#Equal| a@@154 b@@97))
)))
(assert (forall ((a@@155 T@U) (b@@98 T@U) ) (!  (=> (and (= (type a@@155) DatatypeTypeType) (= (type b@@98) DatatypeTypeType)) (= (|Host.Constants#Equal| a@@155 b@@98) (= a@@155 b@@98)))
 :qid |unknown.0:0|
 :skolemid |2743|
 :pattern ( (|Host.Constants#Equal| a@@155 b@@98))
)))
(assert  (=> true (forall ((this@@3 T@U) (|numHosts#0@@11| Int) (|id#0| Int) ) (!  (=> (and (= (type this@@3) DatatypeTypeType) (or (|Host.Constants.Configure#canCall| this@@3 |numHosts#0@@11| |id#0|) (and ($Is this@@3 Tclass.Host.Constants) (<= (LitInt 0) |numHosts#0@@11|)))) true)
 :qid |hostvdfy.25:15|
 :skolemid |2744|
 :pattern ( (Host.Constants.Configure this@@3 |numHosts#0@@11| |id#0|))
))))
(assert (forall ((this@@4 T@U) (|numHosts#0@@12| Int) (|id#0@@0| Int) ) (!  (=> (= (type this@@4) DatatypeTypeType) (=> (and ($Is this@@4 Tclass.Host.Constants) (<= (LitInt 0) |numHosts#0@@12|)) (= (|Host.Constants.Configure#requires| this@@4 |numHosts#0@@12| |id#0@@0|) true)))
 :qid |hostvdfy.25:15|
 :skolemid |2745|
 :pattern ( (|Host.Constants.Configure#requires| this@@4 |numHosts#0@@12| |id#0@@0|))
)))
(assert  (=> true (forall ((this@@5 T@U) (|numHosts#0@@13| Int) (|id#0@@1| Int) ) (!  (=> (and (= (type this@@5) DatatypeTypeType) (or (|Host.Constants.Configure#canCall| this@@5 |numHosts#0@@13| |id#0@@1|) (and ($Is this@@5 Tclass.Host.Constants) (<= (LitInt 0) |numHosts#0@@13|)))) (and (and (Host.Constants.Constants_q this@@5) (=> (= (Host.Constants.numHosts this@@5) |numHosts#0@@13|) (Host.Constants.Constants_q this@@5))) (= (Host.Constants.Configure this@@5 |numHosts#0@@13| |id#0@@1|)  (and (= (Host.Constants.numHosts this@@5) |numHosts#0@@13|) (= (Host.Constants.myId this@@5) |id#0@@1|)))))
 :qid |hostvdfy.25:15|
 :skolemid |2746|
 :pattern ( (Host.Constants.Configure this@@5 |numHosts#0@@13| |id#0@@1|))
))))
(assert  (=> true (forall ((this@@6 T@U) (|numHosts#0@@14| Int) (|id#0@@2| Int) ) (!  (=> (and (= (type this@@6) DatatypeTypeType) (or (|Host.Constants.Configure#canCall| (Lit this@@6) (LitInt |numHosts#0@@14|) (LitInt |id#0@@2|)) (and ($Is this@@6 Tclass.Host.Constants) (<= (LitInt 0) |numHosts#0@@14|)))) (and (and (Host.Constants.Constants_q (Lit this@@6)) (=> (= (LitInt (Host.Constants.numHosts (Lit this@@6))) (LitInt |numHosts#0@@14|)) (Host.Constants.Constants_q (Lit this@@6)))) (= (Host.Constants.Configure (Lit this@@6) (LitInt |numHosts#0@@14|) (LitInt |id#0@@2|))  (and (= (LitInt (Host.Constants.numHosts (Lit this@@6))) (LitInt |numHosts#0@@14|)) (= (LitInt (Host.Constants.myId (Lit this@@6))) (LitInt |id#0@@2|))))))
 :qid |hostvdfy.25:15|
 :weight 3
 :skolemid |2747|
 :pattern ( (Host.Constants.Configure (Lit this@@6) (LitInt |numHosts#0@@14|) (LitInt |id#0@@2|)))
))))
(assert (forall ((arg0@@295 Bool) (arg1@@136 Int) ) (! (= (type (|#Host.Variables.Variables| arg0@@295 arg1@@136)) DatatypeTypeType)
 :qid |funType:#Host.Variables.Variables|
 :pattern ( (|#Host.Variables.Variables| arg0@@295 arg1@@136))
)))
(assert (forall ((|a#0#0#0@@4| Bool) (|a#0#1#0@@2| Int) ) (! (= (DatatypeCtorId (|#Host.Variables.Variables| |a#0#0#0@@4| |a#0#1#0@@2|)) |##Host.Variables.Variables|)
 :qid |hostvdfy.34:5|
 :skolemid |2748|
 :pattern ( (|#Host.Variables.Variables| |a#0#0#0@@4| |a#0#1#0@@2|))
)))
(assert (forall ((d@@93 T@U) ) (!  (=> (= (type d@@93) DatatypeTypeType) (= (Host.Variables.Variables_q d@@93) (= (DatatypeCtorId d@@93) |##Host.Variables.Variables|)))
 :qid |unknown.0:0|
 :skolemid |2749|
 :pattern ( (Host.Variables.Variables_q d@@93))
)))
(assert (forall ((d@@94 T@U) ) (!  (=> (and (= (type d@@94) DatatypeTypeType) (Host.Variables.Variables_q d@@94)) (exists ((|a#1#0#0@@4| Bool) (|a#1#1#0@@2| Int) ) (! (= d@@94 (|#Host.Variables.Variables| |a#1#0#0@@4| |a#1#1#0@@2|))
 :qid |hostvdfy.34:5|
 :skolemid |2750|
)))
 :qid |unknown.0:0|
 :skolemid |2751|
 :pattern ( (Host.Variables.Variables_q d@@94))
)))
(assert (forall ((|a#2#0#0@@4| Bool) (|a#2#1#0@@2| Int) ) (! (= ($Is (|#Host.Variables.Variables| |a#2#0#0@@4| |a#2#1#0@@2|) Tclass.Host.Variables)  (and ($Is (bool_2_U |a#2#0#0@@4|) TBool) ($Is (int_2_U |a#2#1#0@@2|) Tclass._System.nat)))
 :qid |hostvdfy.34:5|
 :skolemid |2752|
 :pattern ( ($Is (|#Host.Variables.Variables| |a#2#0#0@@4| |a#2#1#0@@2|) Tclass.Host.Variables))
)))
(assert (forall ((|a#3#0#0@@4| Bool) (|a#3#1#0@@2| Int) ($h@@65 T@U) ) (!  (=> (and (= (type $h@@65) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@65)) (= ($IsAlloc (|#Host.Variables.Variables| |a#3#0#0@@4| |a#3#1#0@@2|) Tclass.Host.Variables $h@@65)  (and ($IsAlloc (bool_2_U |a#3#0#0@@4|) TBool $h@@65) ($IsAlloc (int_2_U |a#3#1#0@@2|) Tclass._System.nat $h@@65))))
 :qid |hostvdfy.34:5|
 :skolemid |2753|
 :pattern ( ($IsAlloc (|#Host.Variables.Variables| |a#3#0#0@@4| |a#3#1#0@@2|) Tclass.Host.Variables $h@@65))
)))
(assert (forall ((d@@95 T@U) ($h@@66 T@U) ) (!  (=> (and (and (= (type d@@95) DatatypeTypeType) (= (type $h@@66) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@66) (and (Host.Variables.Variables_q d@@95) ($IsAlloc d@@95 Tclass.Host.Variables $h@@66)))) ($IsAlloc (bool_2_U (Host.Variables.holder d@@95)) TBool $h@@66))
 :qid |unknown.0:0|
 :skolemid |2754|
 :pattern ( ($IsAlloc (bool_2_U (Host.Variables.holder d@@95)) TBool $h@@66))
)))
(assert (forall ((d@@96 T@U) ($h@@67 T@U) ) (!  (=> (and (and (= (type d@@96) DatatypeTypeType) (= (type $h@@67) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@67) (and (Host.Variables.Variables_q d@@96) ($IsAlloc d@@96 Tclass.Host.Variables $h@@67)))) ($IsAlloc (int_2_U (Host.Variables.epoch d@@96)) Tclass._System.nat $h@@67))
 :qid |unknown.0:0|
 :skolemid |2755|
 :pattern ( ($IsAlloc (int_2_U (Host.Variables.epoch d@@96)) Tclass._System.nat $h@@67))
)))
(assert (forall ((|a#4#0#0@@4| T@U) (|a#4#1#0@@2| Int) ) (!  (=> (= (type |a#4#0#0@@4|) boolType) (= (|#Host.Variables.Variables| (U_2_bool (Lit |a#4#0#0@@4|)) (LitInt |a#4#1#0@@2|)) (Lit (|#Host.Variables.Variables| (U_2_bool |a#4#0#0@@4|) |a#4#1#0@@2|))))
 :qid |hostvdfy.34:5|
 :skolemid |2756|
 :pattern ( (|#Host.Variables.Variables| (U_2_bool (Lit |a#4#0#0@@4|)) (LitInt |a#4#1#0@@2|)))
)))
(assert (forall ((|a#5#0#0@@4| Bool) (|a#5#1#0@@2| Int) ) (! (= (Host.Variables.holder (|#Host.Variables.Variables| |a#5#0#0@@4| |a#5#1#0@@2|)) |a#5#0#0@@4|)
 :qid |hostvdfy.34:5|
 :skolemid |2757|
 :pattern ( (|#Host.Variables.Variables| |a#5#0#0@@4| |a#5#1#0@@2|))
)))
(assert (forall ((|a#6#0#0@@4| Bool) (|a#6#1#0@@2| Int) ) (! (= (Host.Variables.epoch (|#Host.Variables.Variables| |a#6#0#0@@4| |a#6#1#0@@2|)) |a#6#1#0@@2|)
 :qid |hostvdfy.34:5|
 :skolemid |2758|
 :pattern ( (|#Host.Variables.Variables| |a#6#0#0@@4| |a#6#1#0@@2|))
)))
(assert (forall ((d@@97 T@U) ) (!  (=> (and (= (type d@@97) DatatypeTypeType) (|$IsA#Host.Variables| d@@97)) (Host.Variables.Variables_q d@@97))
 :qid |unknown.0:0|
 :skolemid |2759|
 :pattern ( (|$IsA#Host.Variables| d@@97))
)))
(assert (forall ((d@@98 T@U) ) (!  (=> (and (= (type d@@98) DatatypeTypeType) ($Is d@@98 Tclass.Host.Variables)) (Host.Variables.Variables_q d@@98))
 :qid |unknown.0:0|
 :skolemid |2760|
 :pattern ( (Host.Variables.Variables_q d@@98) ($Is d@@98 Tclass.Host.Variables))
)))
(assert (forall ((a@@156 T@U) (b@@99 T@U) ) (!  (=> (and (and (= (type a@@156) DatatypeTypeType) (= (type b@@99) DatatypeTypeType)) true) (= (|Host.Variables#Equal| a@@156 b@@99)  (and (= (Host.Variables.holder a@@156) (Host.Variables.holder b@@99)) (= (Host.Variables.epoch a@@156) (Host.Variables.epoch b@@99)))))
 :qid |unknown.0:0|
 :skolemid |2761|
 :pattern ( (|Host.Variables#Equal| a@@156 b@@99))
)))
(assert (forall ((a@@157 T@U) (b@@100 T@U) ) (!  (=> (and (= (type a@@157) DatatypeTypeType) (= (type b@@100) DatatypeTypeType)) (= (|Host.Variables#Equal| a@@157 b@@100) (= a@@157 b@@100)))
 :qid |unknown.0:0|
 :skolemid |2762|
 :pattern ( (|Host.Variables#Equal| a@@157 b@@100))
)))
(assert (forall ((arg0@@296 Int) ) (! (= (type (|#Host.Step.SendGrantStep| arg0@@296)) DatatypeTypeType)
 :qid |funType:#Host.Step.SendGrantStep|
 :pattern ( (|#Host.Step.SendGrantStep| arg0@@296))
)))
(assert (forall ((|a#7#0#0@@2| Int) ) (! (= (DatatypeCtorId (|#Host.Step.SendGrantStep| |a#7#0#0@@2|)) |##Host.Step.SendGrantStep|)
 :qid |hostvdfy.82:21|
 :skolemid |2763|
 :pattern ( (|#Host.Step.SendGrantStep| |a#7#0#0@@2|))
)))
(assert (forall ((d@@99 T@U) ) (!  (=> (= (type d@@99) DatatypeTypeType) (= (Host.Step.SendGrantStep_q d@@99) (= (DatatypeCtorId d@@99) |##Host.Step.SendGrantStep|)))
 :qid |unknown.0:0|
 :skolemid |2764|
 :pattern ( (Host.Step.SendGrantStep_q d@@99))
)))
(assert (forall ((d@@100 T@U) ) (!  (=> (and (= (type d@@100) DatatypeTypeType) (Host.Step.SendGrantStep_q d@@100)) (exists ((|a#8#0#0@@2| Int) ) (! (= d@@100 (|#Host.Step.SendGrantStep| |a#8#0#0@@2|))
 :qid |hostvdfy.82:21|
 :skolemid |2765|
)))
 :qid |unknown.0:0|
 :skolemid |2766|
 :pattern ( (Host.Step.SendGrantStep_q d@@100))
)))
(assert (forall ((|a#9#0#0@@1| Int) ) (! (= ($Is (|#Host.Step.SendGrantStep| |a#9#0#0@@1|) Tclass.Host.Step) ($Is (int_2_U |a#9#0#0@@1|) TInt))
 :qid |hostvdfy.82:21|
 :skolemid |2767|
 :pattern ( ($Is (|#Host.Step.SendGrantStep| |a#9#0#0@@1|) Tclass.Host.Step))
)))
(assert (forall ((|a#10#0#0@@1| Int) ($h@@68 T@U) ) (!  (=> (and (= (type $h@@68) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@68)) (= ($IsAlloc (|#Host.Step.SendGrantStep| |a#10#0#0@@1|) Tclass.Host.Step $h@@68) ($IsAlloc (int_2_U |a#10#0#0@@1|) TInt $h@@68)))
 :qid |hostvdfy.82:21|
 :skolemid |2768|
 :pattern ( ($IsAlloc (|#Host.Step.SendGrantStep| |a#10#0#0@@1|) Tclass.Host.Step $h@@68))
)))
(assert (forall ((d@@101 T@U) ($h@@69 T@U) ) (!  (=> (and (and (= (type d@@101) DatatypeTypeType) (= (type $h@@69) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@69) (and (Host.Step.SendGrantStep_q d@@101) ($IsAlloc d@@101 Tclass.Host.Step $h@@69)))) ($IsAlloc (int_2_U (Host.Step.dest d@@101)) TInt $h@@69))
 :qid |unknown.0:0|
 :skolemid |2769|
 :pattern ( ($IsAlloc (int_2_U (Host.Step.dest d@@101)) TInt $h@@69))
)))
(assert (forall ((|a#11#0#0@@1| Int) ) (! (= (|#Host.Step.SendGrantStep| (LitInt |a#11#0#0@@1|)) (Lit (|#Host.Step.SendGrantStep| |a#11#0#0@@1|)))
 :qid |hostvdfy.82:21|
 :skolemid |2770|
 :pattern ( (|#Host.Step.SendGrantStep| (LitInt |a#11#0#0@@1|)))
)))
(assert (forall ((|a#12#0#0@@1| Int) ) (! (= (Host.Step.dest (|#Host.Step.SendGrantStep| |a#12#0#0@@1|)) |a#12#0#0@@1|)
 :qid |hostvdfy.82:21|
 :skolemid |2771|
 :pattern ( (|#Host.Step.SendGrantStep| |a#12#0#0@@1|))
)))
(assert (= (type |#Host.Step.RecvGrantStep|) DatatypeTypeType))
(assert (= (DatatypeCtorId |#Host.Step.RecvGrantStep|) |##Host.Step.RecvGrantStep|))
(assert (forall ((d@@102 T@U) ) (!  (=> (= (type d@@102) DatatypeTypeType) (= (Host.Step.RecvGrantStep_q d@@102) (= (DatatypeCtorId d@@102) |##Host.Step.RecvGrantStep|)))
 :qid |unknown.0:0|
 :skolemid |2772|
 :pattern ( (Host.Step.RecvGrantStep_q d@@102))
)))
(assert (forall ((d@@103 T@U) ) (!  (=> (and (= (type d@@103) DatatypeTypeType) (Host.Step.RecvGrantStep_q d@@103)) (= d@@103 |#Host.Step.RecvGrantStep|))
 :qid |unknown.0:0|
 :skolemid |2773|
 :pattern ( (Host.Step.RecvGrantStep_q d@@103))
)))
(assert ($Is |#Host.Step.RecvGrantStep| Tclass.Host.Step))
(assert (forall (($h@@70 T@U) ) (!  (=> (and (= (type $h@@70) (MapType0Type refType MapType1Type)) ($IsGoodHeap $h@@70)) ($IsAlloc |#Host.Step.RecvGrantStep| Tclass.Host.Step $h@@70))
 :qid |DafnyPreludebpl.545:12|
 :skolemid |2774|
 :pattern ( ($IsAlloc |#Host.Step.RecvGrantStep| Tclass.Host.Step $h@@70))
)))
(assert (= |#Host.Step.RecvGrantStep| (Lit |#Host.Step.RecvGrantStep|)))
(assert (forall ((d@@104 T@U) ) (!  (=> (and (= (type d@@104) DatatypeTypeType) (|$IsA#Host.Step| d@@104)) (or (Host.Step.SendGrantStep_q d@@104) (Host.Step.RecvGrantStep_q d@@104)))
 :qid |unknown.0:0|
 :skolemid |2775|
 :pattern ( (|$IsA#Host.Step| d@@104))
)))
(assert (forall ((d@@105 T@U) ) (!  (=> (and (= (type d@@105) DatatypeTypeType) ($Is d@@105 Tclass.Host.Step)) (or (Host.Step.SendGrantStep_q d@@105) (Host.Step.RecvGrantStep_q d@@105)))
 :qid |unknown.0:0|
 :skolemid |2776|
 :pattern ( (Host.Step.RecvGrantStep_q d@@105) ($Is d@@105 Tclass.Host.Step))
 :pattern ( (Host.Step.SendGrantStep_q d@@105) ($Is d@@105 Tclass.Host.Step))
)))
(assert (forall ((a@@158 T@U) (b@@101 T@U) ) (!  (=> (and (and (= (type a@@158) DatatypeTypeType) (= (type b@@101) DatatypeTypeType)) (and (Host.Step.SendGrantStep_q a@@158) (Host.Step.SendGrantStep_q b@@101))) (= (|Host.Step#Equal| a@@158 b@@101) (= (Host.Step.dest a@@158) (Host.Step.dest b@@101))))
 :qid |unknown.0:0|
 :skolemid |2777|
 :pattern ( (|Host.Step#Equal| a@@158 b@@101) (Host.Step.SendGrantStep_q a@@158))
 :pattern ( (|Host.Step#Equal| a@@158 b@@101) (Host.Step.SendGrantStep_q b@@101))
)))
(assert (forall ((a@@159 T@U) (b@@102 T@U) ) (!  (=> (and (and (= (type a@@159) DatatypeTypeType) (= (type b@@102) DatatypeTypeType)) (and (Host.Step.RecvGrantStep_q a@@159) (Host.Step.RecvGrantStep_q b@@102))) (= (|Host.Step#Equal| a@@159 b@@102) true))
 :qid |unknown.0:0|
 :skolemid |2778|
 :pattern ( (|Host.Step#Equal| a@@159 b@@102) (Host.Step.RecvGrantStep_q a@@159))
 :pattern ( (|Host.Step#Equal| a@@159 b@@102) (Host.Step.RecvGrantStep_q b@@102))
)))
(assert (forall ((a@@160 T@U) (b@@103 T@U) ) (!  (=> (and (= (type a@@160) DatatypeTypeType) (= (type b@@103) DatatypeTypeType)) (= (|Host.Step#Equal| a@@160 b@@103) (= a@@160 b@@103)))
 :qid |unknown.0:0|
 :skolemid |2779|
 :pattern ( (|Host.Step#Equal| a@@160 b@@103))
)))
(assert (= (type Tclass.Host.__default) TyType))
(assert (= (Tag Tclass.Host.__default) Tagclass.Host.__default))
(assert (= (TagFamily Tclass.Host.__default) tytagFamily$_default))
(assert (forall ((bx@@99 T@U) ) (!  (=> (and (= (type bx@@99) BoxType) ($IsBox bx@@99 Tclass.Host.__default)) (and (= ($Box ($Unbox refType bx@@99)) bx@@99) ($Is ($Unbox refType bx@@99) Tclass.Host.__default)))
 :qid |unknown.0:0|
 :skolemid |2780|
 :pattern ( ($IsBox bx@@99 Tclass.Host.__default))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> (= (type $o@@17) refType) (= ($Is $o@@17 Tclass.Host.__default)  (or (= $o@@17 null) (= (dtype $o@@17) Tclass.Host.__default))))
 :qid |unknown.0:0|
 :skolemid |2781|
 :pattern ( ($Is $o@@17 Tclass.Host.__default))
)))
(assert (forall (($o@@18 T@U) ($h@@71 T@U) ) (!  (=> (and (= (type $o@@18) refType) (= (type $h@@71) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@18 Tclass.Host.__default $h@@71)  (or (= $o@@18 null) (U_2_bool (MapType1Select (MapType0Select $h@@71 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2782|
 :pattern ( ($IsAlloc $o@@18 Tclass.Host.__default $h@@71))
)))
(assert  (=> true (forall ((|c#0@@35| T@U) (|v#0@@31| T@U) ) (!  (=> (and (and (= (type |c#0@@35|) DatatypeTypeType) (= (type |v#0@@31|) DatatypeTypeType)) (or (|Host.__default.Init#canCall| |c#0@@35| |v#0@@31|) (and ($Is |c#0@@35| Tclass.Host.Constants) ($Is |v#0@@31| Tclass.Host.Variables)))) true)
 :qid |hostvdfy.40:18|
 :skolemid |2783|
 :pattern ( (Host.__default.Init |c#0@@35| |v#0@@31|))
))))
(assert (forall ((|c#0@@36| T@U) (|v#0@@32| T@U) ) (!  (=> (and (and (= (type |c#0@@36|) DatatypeTypeType) (= (type |v#0@@32|) DatatypeTypeType)) (and ($Is |c#0@@36| Tclass.Host.Constants) ($Is |v#0@@32| Tclass.Host.Variables))) (= (|Host.__default.Init#requires| |c#0@@36| |v#0@@32|) true))
 :qid |hostvdfy.40:18|
 :skolemid |2784|
 :pattern ( (|Host.__default.Init#requires| |c#0@@36| |v#0@@32|))
)))
(assert  (=> true (forall ((|c#0@@37| T@U) (|v#0@@33| T@U) ) (!  (=> (and (and (= (type |c#0@@37|) DatatypeTypeType) (= (type |v#0@@33|) DatatypeTypeType)) (or (|Host.__default.Init#canCall| |c#0@@37| |v#0@@33|) (and ($Is |c#0@@37| Tclass.Host.Constants) ($Is |v#0@@33| Tclass.Host.Variables)))) (and (and (and (Host.Constants.Constants_q |c#0@@37|) (=> (= (Host.Constants.myId |c#0@@37|) (LitInt 0)) (and (Host.Variables.Variables_q |v#0@@33|) (=> (= (Host.Variables.holder |v#0@@33|) (U_2_bool (Lit (bool_2_U true)))) (Host.Variables.Variables_q |v#0@@33|))))) (=> (not (= (Host.Constants.myId |c#0@@37|) (LitInt 0))) (and (Host.Variables.Variables_q |v#0@@33|) (=> (= (Host.Variables.holder |v#0@@33|) (U_2_bool (Lit (bool_2_U false)))) (Host.Variables.Variables_q |v#0@@33|))))) (= (Host.__default.Init |c#0@@37| |v#0@@33|) (ite (= (Host.Constants.myId |c#0@@37|) (LitInt 0))  (and (= (Host.Variables.holder |v#0@@33|) (U_2_bool (Lit (bool_2_U true)))) (= (Host.Variables.epoch |v#0@@33|) (LitInt 1)))  (and (= (Host.Variables.holder |v#0@@33|) (U_2_bool (Lit (bool_2_U false)))) (= (Host.Variables.epoch |v#0@@33|) (LitInt 0)))))))
 :qid |hostvdfy.40:18|
 :skolemid |2785|
 :pattern ( (Host.__default.Init |c#0@@37| |v#0@@33|))
))))
(assert  (=> true (forall ((|c#0@@38| T@U) (|v#0@@34| T@U) ) (!  (=> (and (and (= (type |c#0@@38|) DatatypeTypeType) (= (type |v#0@@34|) DatatypeTypeType)) (or (|Host.__default.Init#canCall| (Lit |c#0@@38|) (Lit |v#0@@34|)) (and ($Is |c#0@@38| Tclass.Host.Constants) ($Is |v#0@@34| Tclass.Host.Variables)))) (and (and (and (Host.Constants.Constants_q (Lit |c#0@@38|)) (=> (= (LitInt (Host.Constants.myId (Lit |c#0@@38|))) (LitInt 0)) (and (Host.Variables.Variables_q (Lit |v#0@@34|)) (=> (= (U_2_bool (Lit (bool_2_U (Host.Variables.holder (Lit |v#0@@34|))))) (U_2_bool (Lit (bool_2_U true)))) (Host.Variables.Variables_q (Lit |v#0@@34|)))))) (=> (not (= (LitInt (Host.Constants.myId (Lit |c#0@@38|))) (LitInt 0))) (and (Host.Variables.Variables_q (Lit |v#0@@34|)) (=> (= (U_2_bool (Lit (bool_2_U (Host.Variables.holder (Lit |v#0@@34|))))) (U_2_bool (Lit (bool_2_U false)))) (Host.Variables.Variables_q (Lit |v#0@@34|)))))) (= (Host.__default.Init (Lit |c#0@@38|) (Lit |v#0@@34|)) (ite (= (LitInt (Host.Constants.myId (Lit |c#0@@38|))) (LitInt 0))  (and (= (U_2_bool (Lit (bool_2_U (Host.Variables.holder (Lit |v#0@@34|))))) (U_2_bool (Lit (bool_2_U true)))) (= (LitInt (Host.Variables.epoch (Lit |v#0@@34|))) (LitInt 1)))  (and (= (U_2_bool (Lit (bool_2_U (Host.Variables.holder (Lit |v#0@@34|))))) (U_2_bool (Lit (bool_2_U false)))) (= (LitInt (Host.Variables.epoch (Lit |v#0@@34|))) (LitInt 0)))))))
 :qid |hostvdfy.40:18|
 :weight 3
 :skolemid |2786|
 :pattern ( (Host.__default.Init (Lit |c#0@@38|) (Lit |v#0@@34|)))
))))
(assert  (=> true (forall ((|c#0@@39| T@U) (|v#0@@35| T@U) (|v'#0@@3| T@U) (|dest#0| Int) (|msgOps#0@@3| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@39|) DatatypeTypeType) (= (type |v#0@@35|) DatatypeTypeType)) (= (type |v'#0@@3|) DatatypeTypeType)) (= (type |msgOps#0@@3|) DatatypeTypeType)) (or (|Host.__default.SendGrant#canCall| |c#0@@39| |v#0@@35| |v'#0@@3| |dest#0| |msgOps#0@@3|) (and (and (and ($Is |c#0@@39| Tclass.Host.Constants) ($Is |v#0@@35| Tclass.Host.Variables)) ($Is |v'#0@@3| Tclass.Host.Variables)) ($Is |msgOps#0@@3| (Tclass.Network.MessageOps Tclass.Host.Message))))) true)
 :qid |hostvdfy.52:23|
 :skolemid |2787|
 :pattern ( (Host.__default.SendGrant |c#0@@39| |v#0@@35| |v'#0@@3| |dest#0| |msgOps#0@@3|))
))))
(assert (forall ((|c#0@@40| T@U) (|v#0@@36| T@U) (|v'#0@@4| T@U) (|dest#0@@0| Int) (|msgOps#0@@4| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@40|) DatatypeTypeType) (= (type |v#0@@36|) DatatypeTypeType)) (= (type |v'#0@@4|) DatatypeTypeType)) (= (type |msgOps#0@@4|) DatatypeTypeType)) (and (and (and ($Is |c#0@@40| Tclass.Host.Constants) ($Is |v#0@@36| Tclass.Host.Variables)) ($Is |v'#0@@4| Tclass.Host.Variables)) ($Is |msgOps#0@@4| (Tclass.Network.MessageOps Tclass.Host.Message)))) (= (|Host.__default.SendGrant#requires| |c#0@@40| |v#0@@36| |v'#0@@4| |dest#0@@0| |msgOps#0@@4|) true))
 :qid |hostvdfy.52:23|
 :skolemid |2788|
 :pattern ( (|Host.__default.SendGrant#requires| |c#0@@40| |v#0@@36| |v'#0@@4| |dest#0@@0| |msgOps#0@@4|))
)))
(assert  (=> true (forall ((|c#0@@41| T@U) (|v#0@@37| T@U) (|v'#0@@5| T@U) (|dest#0@@1| Int) (|msgOps#0@@5| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@41|) DatatypeTypeType) (= (type |v#0@@37|) DatatypeTypeType)) (= (type |v'#0@@5|) DatatypeTypeType)) (= (type |msgOps#0@@5|) DatatypeTypeType)) (or (|Host.__default.SendGrant#canCall| |c#0@@41| |v#0@@37| |v'#0@@5| |dest#0@@1| |msgOps#0@@5|) (and (and (and ($Is |c#0@@41| Tclass.Host.Constants) ($Is |v#0@@37| Tclass.Host.Variables)) ($Is |v'#0@@5| Tclass.Host.Variables)) ($Is |msgOps#0@@5| (Tclass.Network.MessageOps Tclass.Host.Message))))) (and (and (and (|$IsA#UtilitiesLibrary.Option| (Network.MessageOps.recv |msgOps#0@@5|)) (Network.MessageOps.MessageOps_q |msgOps#0@@5|)) (=> (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.recv |msgOps#0@@5|) |#UtilitiesLibrary.Option.None|) (and (Host.Variables.Variables_q |v#0@@37|) (=> (= (Host.Variables.holder |v#0@@37|) (U_2_bool (Lit (bool_2_U true)))) (and (and (|$IsA#UtilitiesLibrary.Option| (Network.MessageOps.send |msgOps#0@@5|)) (and (Network.MessageOps.MessageOps_q |msgOps#0@@5|) (Host.Variables.Variables_q |v#0@@37|))) (=> (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send |msgOps#0@@5|) (|#UtilitiesLibrary.Option.Some| ($Box (|#Host.Message.GrantMsg| |dest#0@@1| (+ (Host.Variables.epoch |v#0@@37|) 1))))) (and (and (|$IsA#Host.Variables| |v'#0@@5|) (|$IsA#Host.Variables| (let ((|dt_update_tmp#0#2| |v#0@@37|))
(let ((|dt_update#holder#0#2| (U_2_bool (Lit (bool_2_U false)))))
(|#Host.Variables.Variables| |dt_update#holder#0#2| (Host.Variables.epoch |dt_update_tmp#0#2|)))))) (let ((|dt_update_tmp#0#2@@0| |v#0@@37|))
(Host.Variables.Variables_q |dt_update_tmp#0#2@@0|))))))))) (= (Host.__default.SendGrant |c#0@@41| |v#0@@37| |v'#0@@5| |dest#0@@1| |msgOps#0@@5|)  (and (and (and (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.recv |msgOps#0@@5|) |#UtilitiesLibrary.Option.None|) (= (Host.Variables.holder |v#0@@37|) (U_2_bool (Lit (bool_2_U true))))) (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send |msgOps#0@@5|) (|#UtilitiesLibrary.Option.Some| ($Box (|#Host.Message.GrantMsg| |dest#0@@1| (+ (Host.Variables.epoch |v#0@@37|) 1)))))) (|Host.Variables#Equal| |v'#0@@5| (let ((|dt_update_tmp#0#2@@1| |v#0@@37|))
(let ((|dt_update#holder#0#2@@0| (U_2_bool (Lit (bool_2_U false)))))
(|#Host.Variables.Variables| |dt_update#holder#0#2@@0| (Host.Variables.epoch |dt_update_tmp#0#2@@1|)))))))))
 :qid |hostvdfy.52:23|
 :skolemid |2789|
 :pattern ( (Host.__default.SendGrant |c#0@@41| |v#0@@37| |v'#0@@5| |dest#0@@1| |msgOps#0@@5|))
))))
(assert  (=> true (forall ((|c#0@@42| T@U) (|v#0@@38| T@U) (|v'#0@@6| T@U) (|dest#0@@2| Int) (|msgOps#0@@6| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@42|) DatatypeTypeType) (= (type |v#0@@38|) DatatypeTypeType)) (= (type |v'#0@@6|) DatatypeTypeType)) (= (type |msgOps#0@@6|) DatatypeTypeType)) (or (|Host.__default.SendGrant#canCall| (Lit |c#0@@42|) (Lit |v#0@@38|) (Lit |v'#0@@6|) (LitInt |dest#0@@2|) (Lit |msgOps#0@@6|)) (and (and (and ($Is |c#0@@42| Tclass.Host.Constants) ($Is |v#0@@38| Tclass.Host.Variables)) ($Is |v'#0@@6| Tclass.Host.Variables)) ($Is |msgOps#0@@6| (Tclass.Network.MessageOps Tclass.Host.Message))))) (and (and (and (|$IsA#UtilitiesLibrary.Option| (Lit (Network.MessageOps.recv (Lit |msgOps#0@@6|)))) (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@6|))) (=> (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.recv (Lit |msgOps#0@@6|)) |#UtilitiesLibrary.Option.None|) (and (Host.Variables.Variables_q (Lit |v#0@@38|)) (=> (= (U_2_bool (Lit (bool_2_U (Host.Variables.holder (Lit |v#0@@38|))))) (U_2_bool (Lit (bool_2_U true)))) (and (and (|$IsA#UtilitiesLibrary.Option| (Lit (Network.MessageOps.send (Lit |msgOps#0@@6|)))) (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@6|)) (Host.Variables.Variables_q (Lit |v#0@@38|)))) (=> (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send (Lit |msgOps#0@@6|)) (|#UtilitiesLibrary.Option.Some| ($Box (Lit (|#Host.Message.GrantMsg| (LitInt |dest#0@@2|) (LitInt (+ (Host.Variables.epoch (Lit |v#0@@38|)) 1))))))) (and (and (|$IsA#Host.Variables| (Lit |v'#0@@6|)) (|$IsA#Host.Variables| (let ((|dt_update_tmp#0#3| (Lit |v#0@@38|)))
(let ((|dt_update#holder#0#3| (U_2_bool (Lit (bool_2_U false)))))
(Lit (|#Host.Variables.Variables| |dt_update#holder#0#3| (LitInt (Host.Variables.epoch |dt_update_tmp#0#3|)))))))) (let ((|dt_update_tmp#0#3@@0| (Lit |v#0@@38|)))
(Host.Variables.Variables_q |dt_update_tmp#0#3@@0|))))))))) (= (Host.__default.SendGrant (Lit |c#0@@42|) (Lit |v#0@@38|) (Lit |v'#0@@6|) (LitInt |dest#0@@2|) (Lit |msgOps#0@@6|))  (and (and (and (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.recv (Lit |msgOps#0@@6|)) |#UtilitiesLibrary.Option.None|) (= (U_2_bool (Lit (bool_2_U (Host.Variables.holder (Lit |v#0@@38|))))) (U_2_bool (Lit (bool_2_U true))))) (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send (Lit |msgOps#0@@6|)) (|#UtilitiesLibrary.Option.Some| ($Box (Lit (|#Host.Message.GrantMsg| (LitInt |dest#0@@2|) (LitInt (+ (Host.Variables.epoch (Lit |v#0@@38|)) 1)))))))) (|Host.Variables#Equal| |v'#0@@6| (let ((|dt_update_tmp#0#3@@1| (Lit |v#0@@38|)))
(let ((|dt_update#holder#0#3@@0| (U_2_bool (Lit (bool_2_U false)))))
(Lit (|#Host.Variables.Variables| |dt_update#holder#0#3@@0| (LitInt (Host.Variables.epoch |dt_update_tmp#0#3@@1|)))))))))))
 :qid |hostvdfy.52:23|
 :weight 3
 :skolemid |2790|
 :pattern ( (Host.__default.SendGrant (Lit |c#0@@42|) (Lit |v#0@@38|) (Lit |v'#0@@6|) (LitInt |dest#0@@2|) (Lit |msgOps#0@@6|)))
))))
(assert  (=> true (forall ((|c#0@@43| T@U) (|v#0@@39| T@U) (|v'#0@@7| T@U) (|msgOps#0@@7| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@43|) DatatypeTypeType) (= (type |v#0@@39|) DatatypeTypeType)) (= (type |v'#0@@7|) DatatypeTypeType)) (= (type |msgOps#0@@7|) DatatypeTypeType)) (or (|Host.__default.RecvGrant#canCall| |c#0@@43| |v#0@@39| |v'#0@@7| |msgOps#0@@7|) (and (and (and ($Is |c#0@@43| Tclass.Host.Constants) ($Is |v#0@@39| Tclass.Host.Variables)) ($Is |v'#0@@7| Tclass.Host.Variables)) ($Is |msgOps#0@@7| (Tclass.Network.MessageOps Tclass.Host.Message))))) true)
 :qid |hostvdfy.63:23|
 :skolemid |2791|
 :pattern ( (Host.__default.RecvGrant |c#0@@43| |v#0@@39| |v'#0@@7| |msgOps#0@@7|))
))))
(assert (forall ((|c#0@@44| T@U) (|v#0@@40| T@U) (|v'#0@@8| T@U) (|msgOps#0@@8| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@44|) DatatypeTypeType) (= (type |v#0@@40|) DatatypeTypeType)) (= (type |v'#0@@8|) DatatypeTypeType)) (= (type |msgOps#0@@8|) DatatypeTypeType)) (and (and (and ($Is |c#0@@44| Tclass.Host.Constants) ($Is |v#0@@40| Tclass.Host.Variables)) ($Is |v'#0@@8| Tclass.Host.Variables)) ($Is |msgOps#0@@8| (Tclass.Network.MessageOps Tclass.Host.Message)))) (= (|Host.__default.RecvGrant#requires| |c#0@@44| |v#0@@40| |v'#0@@8| |msgOps#0@@8|) true))
 :qid |hostvdfy.63:23|
 :skolemid |2792|
 :pattern ( (|Host.__default.RecvGrant#requires| |c#0@@44| |v#0@@40| |v'#0@@8| |msgOps#0@@8|))
)))
(assert  (=> true (forall ((|c#0@@45| T@U) (|v#0@@41| T@U) (|v'#0@@9| T@U) (|msgOps#0@@9| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@45|) DatatypeTypeType) (= (type |v#0@@41|) DatatypeTypeType)) (= (type |v'#0@@9|) DatatypeTypeType)) (= (type |msgOps#0@@9|) DatatypeTypeType)) (or (|Host.__default.RecvGrant#canCall| |c#0@@45| |v#0@@41| |v'#0@@9| |msgOps#0@@9|) (and (and (and ($Is |c#0@@45| Tclass.Host.Constants) ($Is |v#0@@41| Tclass.Host.Variables)) ($Is |v'#0@@9| Tclass.Host.Variables)) ($Is |msgOps#0@@9| (Tclass.Network.MessageOps Tclass.Host.Message))))) (and (and (Network.MessageOps.MessageOps_q |msgOps#0@@9|) (=> (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0@@9|)) (and (Network.MessageOps.MessageOps_q |msgOps#0@@9|) (=> (Host.Message.GrantMsg_q ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|)))) (and (and (Network.MessageOps.MessageOps_q |msgOps#0@@9|) (Host.Message.GrantMsg_q ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))) (let ((|dest#2| (Host.Message.dest ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))))
 (and (and (Network.MessageOps.MessageOps_q |msgOps#0@@9|) (Host.Message.GrantMsg_q ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))) (let ((|msgEpoch#2| (Host.Message.epoch ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))))
 (and (Host.Constants.Constants_q |c#0@@45|) (=> (= |dest#2| (Host.Constants.myId |c#0@@45|)) (and (Host.Variables.Variables_q |v#0@@41|) (=> (> |msgEpoch#2| (Host.Variables.epoch |v#0@@41|)) (and (and (and (|$IsA#Host.Variables| |v'#0@@9|) (|$IsA#Host.Variables| (let ((|dt_update_tmp#1#2| (let ((|dt_update_tmp#0#2@@2| |v#0@@41|))
(let ((|dt_update#holder#0#2@@1| (U_2_bool (Lit (bool_2_U true)))))
(|#Host.Variables.Variables| |dt_update#holder#0#2@@1| (Host.Variables.epoch |dt_update_tmp#0#2@@2|))))))
(let ((|dt_update#epoch#0#2| |msgEpoch#2|))
(|#Host.Variables.Variables| (Host.Variables.holder |dt_update_tmp#1#2|) |dt_update#epoch#0#2|))))) (and (let ((|dt_update_tmp#0#2@@3| |v#0@@41|))
(Host.Variables.Variables_q |dt_update_tmp#0#2@@3|)) (let ((|dt_update_tmp#1#2@@0| (let ((|dt_update_tmp#0#2@@4| |v#0@@41|))
(let ((|dt_update#holder#0#2@@2| (U_2_bool (Lit (bool_2_U true)))))
(|#Host.Variables.Variables| |dt_update#holder#0#2@@2| (Host.Variables.epoch |dt_update_tmp#0#2@@4|))))))
(Host.Variables.Variables_q |dt_update_tmp#1#2@@0|)))) (=> (|Host.Variables#Equal| |v'#0@@9| (let ((|dt_update_tmp#1#2@@1| (let ((|dt_update_tmp#0#2@@5| |v#0@@41|))
(let ((|dt_update#holder#0#2@@3| (U_2_bool (Lit (bool_2_U true)))))
(|#Host.Variables.Variables| |dt_update#holder#0#2@@3| (Host.Variables.epoch |dt_update_tmp#0#2@@5|))))))
(let ((|dt_update#epoch#0#2@@0| |msgEpoch#2|))
(|#Host.Variables.Variables| (Host.Variables.holder |dt_update_tmp#1#2@@1|) |dt_update#epoch#0#2@@0|)))) (and (|$IsA#UtilitiesLibrary.Option| (Network.MessageOps.send |msgOps#0@@9|)) (Network.MessageOps.MessageOps_q |msgOps#0@@9|)))))))))))))))) (= (Host.__default.RecvGrant |c#0@@45| |v#0@@41| |v'#0@@9| |msgOps#0@@9|)  (and (and (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0@@9|)) (Host.Message.GrantMsg_q ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))) (let ((|dest#2@@0| (Host.Message.dest ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))))
(let ((|msgEpoch#2@@0| (Host.Message.epoch ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0@@9|))))))
 (and (and (and (= |dest#2@@0| (Host.Constants.myId |c#0@@45|)) (> |msgEpoch#2@@0| (Host.Variables.epoch |v#0@@41|))) (|Host.Variables#Equal| |v'#0@@9| (let ((|dt_update_tmp#1#2@@2| (let ((|dt_update_tmp#0#2@@6| |v#0@@41|))
(let ((|dt_update#holder#0#2@@4| (U_2_bool (Lit (bool_2_U true)))))
(|#Host.Variables.Variables| |dt_update#holder#0#2@@4| (Host.Variables.epoch |dt_update_tmp#0#2@@6|))))))
(let ((|dt_update#epoch#0#2@@1| |msgEpoch#2@@0|))
(|#Host.Variables.Variables| (Host.Variables.holder |dt_update_tmp#1#2@@2|) |dt_update#epoch#0#2@@1|))))) (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send |msgOps#0@@9|) |#UtilitiesLibrary.Option.None|))))))))
 :qid |hostvdfy.63:23|
 :skolemid |2793|
 :pattern ( (Host.__default.RecvGrant |c#0@@45| |v#0@@41| |v'#0@@9| |msgOps#0@@9|))
))))
(assert  (=> true (forall ((|c#0@@46| T@U) (|v#0@@42| T@U) (|v'#0@@10| T@U) (|msgOps#0@@10| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@46|) DatatypeTypeType) (= (type |v#0@@42|) DatatypeTypeType)) (= (type |v'#0@@10|) DatatypeTypeType)) (= (type |msgOps#0@@10|) DatatypeTypeType)) (or (|Host.__default.RecvGrant#canCall| (Lit |c#0@@46|) (Lit |v#0@@42|) (Lit |v'#0@@10|) (Lit |msgOps#0@@10|)) (and (and (and ($Is |c#0@@46| Tclass.Host.Constants) ($Is |v#0@@42| Tclass.Host.Variables)) ($Is |v'#0@@10| Tclass.Host.Variables)) ($Is |msgOps#0@@10| (Tclass.Network.MessageOps Tclass.Host.Message))))) (and (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@10|)) (=> (U_2_bool (Lit (bool_2_U (UtilitiesLibrary.Option.Some_q (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|))))))) (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@10|)) (=> (U_2_bool (Lit (bool_2_U (Host.Message.GrantMsg_q (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|)))))))))) (and (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@10|)) (Host.Message.GrantMsg_q (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|)))))))) (let ((|dest#3| (LitInt (Host.Message.dest (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|))))))))))
 (and (and (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@10|)) (Host.Message.GrantMsg_q (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|)))))))) (let ((|msgEpoch#3| (LitInt (Host.Message.epoch (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|))))))))))
 (and (Host.Constants.Constants_q (Lit |c#0@@46|)) (=> (= |dest#3| (LitInt (Host.Constants.myId (Lit |c#0@@46|)))) (and (Host.Variables.Variables_q (Lit |v#0@@42|)) (=> (> |msgEpoch#3| (Host.Variables.epoch (Lit |v#0@@42|))) (and (and (and (|$IsA#Host.Variables| (Lit |v'#0@@10|)) (|$IsA#Host.Variables| (let ((|dt_update_tmp#1#3| (let ((|dt_update_tmp#0#3@@2| (Lit |v#0@@42|)))
(let ((|dt_update#holder#0#3@@1| (U_2_bool (Lit (bool_2_U true)))))
(Lit (|#Host.Variables.Variables| |dt_update#holder#0#3@@1| (LitInt (Host.Variables.epoch |dt_update_tmp#0#3@@2|))))))))
(let ((|dt_update#epoch#0#3| |msgEpoch#3|))
(|#Host.Variables.Variables| (Host.Variables.holder |dt_update_tmp#1#3|) |dt_update#epoch#0#3|))))) (and (let ((|dt_update_tmp#0#3@@3| (Lit |v#0@@42|)))
(Host.Variables.Variables_q |dt_update_tmp#0#3@@3|)) (let ((|dt_update_tmp#1#3@@0| (let ((|dt_update_tmp#0#3@@4| (Lit |v#0@@42|)))
(let ((|dt_update#holder#0#3@@2| (U_2_bool (Lit (bool_2_U true)))))
(Lit (|#Host.Variables.Variables| |dt_update#holder#0#3@@2| (LitInt (Host.Variables.epoch |dt_update_tmp#0#3@@4|))))))))
(Host.Variables.Variables_q |dt_update_tmp#1#3@@0|)))) (=> (|Host.Variables#Equal| |v'#0@@10| (let ((|dt_update_tmp#1#3@@1| (let ((|dt_update_tmp#0#3@@5| (Lit |v#0@@42|)))
(let ((|dt_update#holder#0#3@@3| (U_2_bool (Lit (bool_2_U true)))))
(Lit (|#Host.Variables.Variables| |dt_update#holder#0#3@@3| (LitInt (Host.Variables.epoch |dt_update_tmp#0#3@@5|))))))))
(let ((|dt_update#epoch#0#3@@0| |msgEpoch#3|))
(|#Host.Variables.Variables| (Host.Variables.holder |dt_update_tmp#1#3@@1|) |dt_update#epoch#0#3@@0|)))) (and (|$IsA#UtilitiesLibrary.Option| (Lit (Network.MessageOps.send (Lit |msgOps#0@@10|)))) (Network.MessageOps.MessageOps_q (Lit |msgOps#0@@10|))))))))))))))))) (= (Host.__default.RecvGrant (Lit |c#0@@46|) (Lit |v#0@@42|) (Lit |v'#0@@10|) (Lit |msgOps#0@@10|))  (and (and (UtilitiesLibrary.Option.Some_q (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|)))) (Host.Message.GrantMsg_q (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|)))))))) (let ((|dest#3@@0| (LitInt (Host.Message.dest (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|))))))))))
(let ((|msgEpoch#3@@0| (LitInt (Host.Message.epoch (Lit ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Lit (Network.MessageOps.recv (Lit |msgOps#0@@10|))))))))))
 (and (and (and (= |dest#3@@0| (LitInt (Host.Constants.myId (Lit |c#0@@46|)))) (> |msgEpoch#3@@0| (Host.Variables.epoch (Lit |v#0@@42|)))) (|Host.Variables#Equal| |v'#0@@10| (let ((|dt_update_tmp#1#3@@2| (let ((|dt_update_tmp#0#3@@6| (Lit |v#0@@42|)))
(let ((|dt_update#holder#0#3@@4| (U_2_bool (Lit (bool_2_U true)))))
(Lit (|#Host.Variables.Variables| |dt_update#holder#0#3@@4| (LitInt (Host.Variables.epoch |dt_update_tmp#0#3@@6|))))))))
(let ((|dt_update#epoch#0#3@@1| |msgEpoch#3@@0|))
(|#Host.Variables.Variables| (Host.Variables.holder |dt_update_tmp#1#3@@2|) |dt_update#epoch#0#3@@1|))))) (|UtilitiesLibrary.Option#Equal| (Network.MessageOps.send (Lit |msgOps#0@@10|)) |#UtilitiesLibrary.Option.None|))))))))
 :qid |hostvdfy.63:23|
 :weight 3
 :skolemid |2794|
 :pattern ( (Host.__default.RecvGrant (Lit |c#0@@46|) (Lit |v#0@@42|) (Lit |v'#0@@10|) (Lit |msgOps#0@@10|)))
))))
(assert  (=> true (forall ((|c#0@@47| T@U) (|v#0@@43| T@U) (|v'#0@@11| T@U) (|msgOps#0@@11| T@U) (|step#0| T@U) ) (!  (=> (and (and (and (and (and (= (type |c#0@@47|) DatatypeTypeType) (= (type |v#0@@43|) DatatypeTypeType)) (= (type |v'#0@@11|) DatatypeTypeType)) (= (type |msgOps#0@@11|) DatatypeTypeType)) (= (type |step#0|) DatatypeTypeType)) (or (|Host.__default.NextStep#canCall| |c#0@@47| |v#0@@43| |v'#0@@11| |msgOps#0@@11| |step#0|) (and (and (and (and ($Is |c#0@@47| Tclass.Host.Constants) ($Is |v#0@@43| Tclass.Host.Variables)) ($Is |v'#0@@11| Tclass.Host.Variables)) ($Is |msgOps#0@@11| (Tclass.Network.MessageOps Tclass.Host.Message))) ($Is |step#0| Tclass.Host.Step)))) true)
 :qid |hostvdfy.86:22|
 :skolemid |2795|
 :pattern ( (Host.__default.NextStep |c#0@@47| |v#0@@43| |v'#0@@11| |msgOps#0@@11| |step#0|))
))))
(assert (forall ((|c#0@@48| T@U) (|v#0@@44| T@U) (|v'#0@@12| T@U) (|msgOps#0@@12| T@U) (|step#0@@0| T@U) ) (!  (=> (and (and (and (and (and (= (type |c#0@@48|) DatatypeTypeType) (= (type |v#0@@44|) DatatypeTypeType)) (= (type |v'#0@@12|) DatatypeTypeType)) (= (type |msgOps#0@@12|) DatatypeTypeType)) (= (type |step#0@@0|) DatatypeTypeType)) (and (and (and (and ($Is |c#0@@48| Tclass.Host.Constants) ($Is |v#0@@44| Tclass.Host.Variables)) ($Is |v'#0@@12| Tclass.Host.Variables)) ($Is |msgOps#0@@12| (Tclass.Network.MessageOps Tclass.Host.Message))) ($Is |step#0@@0| Tclass.Host.Step))) (= (|Host.__default.NextStep#requires| |c#0@@48| |v#0@@44| |v'#0@@12| |msgOps#0@@12| |step#0@@0|) true))
 :qid |hostvdfy.86:22|
 :skolemid |2796|
 :pattern ( (|Host.__default.NextStep#requires| |c#0@@48| |v#0@@44| |v'#0@@12| |msgOps#0@@12| |step#0@@0|))
)))
(assert  (=> true (forall ((|c#0@@49| T@U) (|v#0@@45| T@U) (|v'#0@@13| T@U) (|msgOps#0@@13| T@U) (|step#0@@1| T@U) ) (!  (=> (and (and (and (and (and (= (type |c#0@@49|) DatatypeTypeType) (= (type |v#0@@45|) DatatypeTypeType)) (= (type |v'#0@@13|) DatatypeTypeType)) (= (type |msgOps#0@@13|) DatatypeTypeType)) (= (type |step#0@@1|) DatatypeTypeType)) (or (|Host.__default.NextStep#canCall| |c#0@@49| |v#0@@45| |v'#0@@13| |msgOps#0@@13| |step#0@@1|) (and (and (and (and ($Is |c#0@@49| Tclass.Host.Constants) ($Is |v#0@@45| Tclass.Host.Variables)) ($Is |v'#0@@13| Tclass.Host.Variables)) ($Is |msgOps#0@@13| (Tclass.Network.MessageOps Tclass.Host.Message))) ($Is |step#0@@1| Tclass.Host.Step)))) (and (and (=> (Host.Step.SendGrantStep_q |step#0@@1|) (let ((|dest#5| (Host.Step.dest |step#0@@1|)))
(|Host.__default.SendGrant#canCall| |c#0@@49| |v#0@@45| |v'#0@@13| |dest#5| |msgOps#0@@13|))) (=> (not (Host.Step.SendGrantStep_q |step#0@@1|)) (|Host.__default.RecvGrant#canCall| |c#0@@49| |v#0@@45| |v'#0@@13| |msgOps#0@@13|))) (= (Host.__default.NextStep |c#0@@49| |v#0@@45| |v'#0@@13| |msgOps#0@@13| |step#0@@1|) (ite (Host.Step.SendGrantStep_q |step#0@@1|) (let ((|dest#4| (Host.Step.dest |step#0@@1|)))
(Host.__default.SendGrant |c#0@@49| |v#0@@45| |v'#0@@13| |dest#4| |msgOps#0@@13|)) (Host.__default.RecvGrant |c#0@@49| |v#0@@45| |v'#0@@13| |msgOps#0@@13|)))))
 :qid |hostvdfy.86:22|
 :skolemid |2797|
 :pattern ( (Host.__default.NextStep |c#0@@49| |v#0@@45| |v'#0@@13| |msgOps#0@@13| |step#0@@1|))
))))
(assert  (=> true (forall ((|c#0@@50| T@U) (|v#0@@46| T@U) (|v'#0@@14| T@U) (|msgOps#0@@14| T@U) (|step#0@@2| T@U) ) (!  (=> (and (and (and (and (and (= (type |c#0@@50|) DatatypeTypeType) (= (type |v#0@@46|) DatatypeTypeType)) (= (type |v'#0@@14|) DatatypeTypeType)) (= (type |msgOps#0@@14|) DatatypeTypeType)) (= (type |step#0@@2|) DatatypeTypeType)) (or (|Host.__default.NextStep#canCall| (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) (Lit |msgOps#0@@14|) (Lit |step#0@@2|)) (and (and (and (and ($Is |c#0@@50| Tclass.Host.Constants) ($Is |v#0@@46| Tclass.Host.Variables)) ($Is |v'#0@@14| Tclass.Host.Variables)) ($Is |msgOps#0@@14| (Tclass.Network.MessageOps Tclass.Host.Message))) ($Is |step#0@@2| Tclass.Host.Step)))) (and (and (=> (U_2_bool (Lit (bool_2_U (Host.Step.SendGrantStep_q (Lit |step#0@@2|))))) (let ((|dest#7| (LitInt (Host.Step.dest (Lit |step#0@@2|)))))
(|Host.__default.SendGrant#canCall| (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) |dest#7| (Lit |msgOps#0@@14|)))) (=> (not (U_2_bool (Lit (bool_2_U (Host.Step.SendGrantStep_q (Lit |step#0@@2|)))))) (|Host.__default.RecvGrant#canCall| (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) (Lit |msgOps#0@@14|)))) (= (Host.__default.NextStep (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) (Lit |msgOps#0@@14|) (Lit |step#0@@2|)) (ite (Host.Step.SendGrantStep_q (Lit |step#0@@2|)) (U_2_bool (let ((|dest#6| (LitInt (Host.Step.dest (Lit |step#0@@2|)))))
(Lit (bool_2_U (Host.__default.SendGrant (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) |dest#6| (Lit |msgOps#0@@14|)))))) (Host.__default.RecvGrant (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) (Lit |msgOps#0@@14|))))))
 :qid |hostvdfy.86:22|
 :weight 3
 :skolemid |2798|
 :pattern ( (Host.__default.NextStep (Lit |c#0@@50|) (Lit |v#0@@46|) (Lit |v'#0@@14|) (Lit |msgOps#0@@14|) (Lit |step#0@@2|)))
))))
(assert  (=> true (forall ((|c#0@@51| T@U) (|v#0@@47| T@U) (|v'#0@@15| T@U) (|msgOps#0@@15| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@51|) DatatypeTypeType) (= (type |v#0@@47|) DatatypeTypeType)) (= (type |v'#0@@15|) DatatypeTypeType)) (= (type |msgOps#0@@15|) DatatypeTypeType)) (or (|Host.__default.Next#canCall| |c#0@@51| |v#0@@47| |v'#0@@15| |msgOps#0@@15|) (and (and (and ($Is |c#0@@51| Tclass.Host.Constants) ($Is |v#0@@47| Tclass.Host.Variables)) ($Is |v'#0@@15| Tclass.Host.Variables)) ($Is |msgOps#0@@15| (Tclass.Network.MessageOps Tclass.Host.Message))))) true)
 :qid |hostvdfy.94:18|
 :skolemid |2799|
 :pattern ( (Host.__default.Next |c#0@@51| |v#0@@47| |v'#0@@15| |msgOps#0@@15|))
))))
(assert (forall ((|c#0@@52| T@U) (|v#0@@48| T@U) (|v'#0@@16| T@U) (|msgOps#0@@16| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@52|) DatatypeTypeType) (= (type |v#0@@48|) DatatypeTypeType)) (= (type |v'#0@@16|) DatatypeTypeType)) (= (type |msgOps#0@@16|) DatatypeTypeType)) (and (and (and ($Is |c#0@@52| Tclass.Host.Constants) ($Is |v#0@@48| Tclass.Host.Variables)) ($Is |v'#0@@16| Tclass.Host.Variables)) ($Is |msgOps#0@@16| (Tclass.Network.MessageOps Tclass.Host.Message)))) (= (|Host.__default.Next#requires| |c#0@@52| |v#0@@48| |v'#0@@16| |msgOps#0@@16|) true))
 :qid |hostvdfy.94:18|
 :skolemid |2800|
 :pattern ( (|Host.__default.Next#requires| |c#0@@52| |v#0@@48| |v'#0@@16| |msgOps#0@@16|))
)))
(assert  (=> true (forall ((|c#0@@53| T@U) (|v#0@@49| T@U) (|v'#0@@17| T@U) (|msgOps#0@@17| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@53|) DatatypeTypeType) (= (type |v#0@@49|) DatatypeTypeType)) (= (type |v'#0@@17|) DatatypeTypeType)) (= (type |msgOps#0@@17|) DatatypeTypeType)) (or (|Host.__default.Next#canCall| |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17|) (and (and (and ($Is |c#0@@53| Tclass.Host.Constants) ($Is |v#0@@49| Tclass.Host.Variables)) ($Is |v'#0@@17| Tclass.Host.Variables)) ($Is |msgOps#0@@17| (Tclass.Network.MessageOps Tclass.Host.Message))))) (and (forall ((|step#2| T@U) ) (!  (=> (and (= (type |step#2|) DatatypeTypeType) ($Is |step#2| Tclass.Host.Step)) (|Host.__default.NextStep#canCall| |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17| |step#2|))
 :qid |hostvdfy.95:12|
 :skolemid |2802|
 :pattern ( (Host.__default.NextStep |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17| |step#2|))
)) (= (Host.__default.Next |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17|) (exists ((|step#2@@0| T@U) ) (!  (and (= (type |step#2@@0|) DatatypeTypeType) (and ($Is |step#2@@0| Tclass.Host.Step) (Host.__default.NextStep |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17| |step#2@@0|)))
 :qid |hostvdfy.95:12|
 :skolemid |2801|
 :pattern ( (Host.__default.NextStep |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17| |step#2@@0|))
)))))
 :qid |hostvdfy.94:18|
 :skolemid |2803|
 :pattern ( (Host.__default.Next |c#0@@53| |v#0@@49| |v'#0@@17| |msgOps#0@@17|))
))))
(assert  (=> true (forall ((|c#0@@54| T@U) (|v#0@@50| T@U) (|v'#0@@18| T@U) (|msgOps#0@@18| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@54|) DatatypeTypeType) (= (type |v#0@@50|) DatatypeTypeType)) (= (type |v'#0@@18|) DatatypeTypeType)) (= (type |msgOps#0@@18|) DatatypeTypeType)) (or (|Host.__default.Next#canCall| (Lit |c#0@@54|) (Lit |v#0@@50|) (Lit |v'#0@@18|) (Lit |msgOps#0@@18|)) (and (and (and ($Is |c#0@@54| Tclass.Host.Constants) ($Is |v#0@@50| Tclass.Host.Variables)) ($Is |v'#0@@18| Tclass.Host.Variables)) ($Is |msgOps#0@@18| (Tclass.Network.MessageOps Tclass.Host.Message))))) (and (forall ((|step#3| T@U) ) (!  (=> (and (= (type |step#3|) DatatypeTypeType) ($Is |step#3| Tclass.Host.Step)) (|Host.__default.NextStep#canCall| (Lit |c#0@@54|) (Lit |v#0@@50|) (Lit |v'#0@@18|) (Lit |msgOps#0@@18|) |step#3|))
 :qid |hostvdfy.95:12|
 :skolemid |2805|
 :pattern ( (Host.__default.NextStep |c#0@@54| |v#0@@50| |v'#0@@18| |msgOps#0@@18| |step#3|))
)) (= (Host.__default.Next (Lit |c#0@@54|) (Lit |v#0@@50|) (Lit |v'#0@@18|) (Lit |msgOps#0@@18|)) (exists ((|step#3@@0| T@U) ) (!  (and (= (type |step#3@@0|) DatatypeTypeType) (and ($Is |step#3@@0| Tclass.Host.Step) (Host.__default.NextStep (Lit |c#0@@54|) (Lit |v#0@@50|) (Lit |v'#0@@18|) (Lit |msgOps#0@@18|) |step#3@@0|)))
 :qid |hostvdfy.95:12|
 :skolemid |2804|
 :pattern ( (Host.__default.NextStep |c#0@@54| |v#0@@50| |v'#0@@18| |msgOps#0@@18| |step#3@@0|))
)))))
 :qid |hostvdfy.94:18|
 :weight 3
 :skolemid |2806|
 :pattern ( (Host.__default.Next (Lit |c#0@@54|) (Lit |v#0@@50|) (Lit |v'#0@@18|) (Lit |msgOps#0@@18|)))
))))
(assert (forall ((arg0@@297 T@U) (arg1@@137 T@U) ) (! (= (type (|#DistributedSystem.Constants.Constants| arg0@@297 arg1@@137)) DatatypeTypeType)
 :qid |funType:#DistributedSystem.Constants.Constants|
 :pattern ( (|#DistributedSystem.Constants.Constants| arg0@@297 arg1@@137))
)))
(assert (forall ((|a#0#0#0@@5| T@U) (|a#0#1#0@@3| T@U) ) (!  (=> (and (= (type |a#0#0#0@@5|) (SeqType BoxType)) (= (type |a#0#1#0@@3|) DatatypeTypeType)) (= (DatatypeCtorId (|#DistributedSystem.Constants.Constants| |a#0#0#0@@5| |a#0#1#0@@3|)) |##DistributedSystem.Constants.Constants|))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2807|
 :pattern ( (|#DistributedSystem.Constants.Constants| |a#0#0#0@@5| |a#0#1#0@@3|))
)))
(assert (forall ((d@@106 T@U) ) (!  (=> (= (type d@@106) DatatypeTypeType) (= (DistributedSystem.Constants.Constants_q d@@106) (= (DatatypeCtorId d@@106) |##DistributedSystem.Constants.Constants|)))
 :qid |unknown.0:0|
 :skolemid |2808|
 :pattern ( (DistributedSystem.Constants.Constants_q d@@106))
)))
(assert (forall ((d@@107 T@U) ) (!  (=> (and (= (type d@@107) DatatypeTypeType) (DistributedSystem.Constants.Constants_q d@@107)) (exists ((|a#1#0#0@@5| T@U) (|a#1#1#0@@3| T@U) ) (!  (and (and (= (type |a#1#0#0@@5|) (SeqType BoxType)) (= (type |a#1#1#0@@3|) DatatypeTypeType)) (= d@@107 (|#DistributedSystem.Constants.Constants| |a#1#0#0@@5| |a#1#1#0@@3|)))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2809|
 :no-pattern (type |a#1#0#0@@5|)
 :no-pattern (type |a#1#1#0@@3|)
 :no-pattern (U_2_int |a#1#0#0@@5|)
 :no-pattern (U_2_bool |a#1#0#0@@5|)
 :no-pattern (U_2_int |a#1#1#0@@3|)
 :no-pattern (U_2_bool |a#1#1#0@@3|)
)))
 :qid |unknown.0:0|
 :skolemid |2810|
 :pattern ( (DistributedSystem.Constants.Constants_q d@@107))
)))
(assert (forall ((|a#2#0#0@@5| T@U) (|a#2#1#0@@3| T@U) ) (!  (=> (and (= (type |a#2#0#0@@5|) (SeqType BoxType)) (= (type |a#2#1#0@@3|) DatatypeTypeType)) (= ($Is (|#DistributedSystem.Constants.Constants| |a#2#0#0@@5| |a#2#1#0@@3|) Tclass.DistributedSystem.Constants)  (and ($Is |a#2#0#0@@5| (TSeq Tclass.Host.Constants)) ($Is |a#2#1#0@@3| Tclass.Network.Constants))))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2811|
 :pattern ( ($Is (|#DistributedSystem.Constants.Constants| |a#2#0#0@@5| |a#2#1#0@@3|) Tclass.DistributedSystem.Constants))
)))
(assert (forall ((|a#3#0#0@@5| T@U) (|a#3#1#0@@3| T@U) ($h@@72 T@U) ) (!  (=> (and (and (and (= (type |a#3#0#0@@5|) (SeqType BoxType)) (= (type |a#3#1#0@@3|) DatatypeTypeType)) (= (type $h@@72) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@72)) (= ($IsAlloc (|#DistributedSystem.Constants.Constants| |a#3#0#0@@5| |a#3#1#0@@3|) Tclass.DistributedSystem.Constants $h@@72)  (and ($IsAlloc |a#3#0#0@@5| (TSeq Tclass.Host.Constants) $h@@72) ($IsAlloc |a#3#1#0@@3| Tclass.Network.Constants $h@@72))))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2812|
 :pattern ( ($IsAlloc (|#DistributedSystem.Constants.Constants| |a#3#0#0@@5| |a#3#1#0@@3|) Tclass.DistributedSystem.Constants $h@@72))
)))
(assert (forall ((arg0@@298 T@U) ) (! (= (type (DistributedSystem.Constants.hosts arg0@@298)) (SeqType BoxType))
 :qid |funType:DistributedSystem.Constants.hosts|
 :pattern ( (DistributedSystem.Constants.hosts arg0@@298))
)))
(assert (forall ((d@@108 T@U) ($h@@73 T@U) ) (!  (=> (and (and (= (type d@@108) DatatypeTypeType) (= (type $h@@73) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@73) (and (DistributedSystem.Constants.Constants_q d@@108) ($IsAlloc d@@108 Tclass.DistributedSystem.Constants $h@@73)))) ($IsAlloc (DistributedSystem.Constants.hosts d@@108) (TSeq Tclass.Host.Constants) $h@@73))
 :qid |unknown.0:0|
 :skolemid |2813|
 :pattern ( ($IsAlloc (DistributedSystem.Constants.hosts d@@108) (TSeq Tclass.Host.Constants) $h@@73))
)))
(assert (forall ((arg0@@299 T@U) ) (! (= (type (DistributedSystem.Constants.network arg0@@299)) DatatypeTypeType)
 :qid |funType:DistributedSystem.Constants.network|
 :pattern ( (DistributedSystem.Constants.network arg0@@299))
)))
(assert (forall ((d@@109 T@U) ($h@@74 T@U) ) (!  (=> (and (and (= (type d@@109) DatatypeTypeType) (= (type $h@@74) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@74) (and (DistributedSystem.Constants.Constants_q d@@109) ($IsAlloc d@@109 Tclass.DistributedSystem.Constants $h@@74)))) ($IsAlloc (DistributedSystem.Constants.network d@@109) Tclass.Network.Constants $h@@74))
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( ($IsAlloc (DistributedSystem.Constants.network d@@109) Tclass.Network.Constants $h@@74))
)))
(assert (forall ((|a#4#0#0@@5| T@U) (|a#4#1#0@@3| T@U) ) (!  (=> (and (= (type |a#4#0#0@@5|) (SeqType BoxType)) (= (type |a#4#1#0@@3|) DatatypeTypeType)) (= (|#DistributedSystem.Constants.Constants| (Lit |a#4#0#0@@5|) (Lit |a#4#1#0@@3|)) (Lit (|#DistributedSystem.Constants.Constants| |a#4#0#0@@5| |a#4#1#0@@3|))))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2815|
 :pattern ( (|#DistributedSystem.Constants.Constants| (Lit |a#4#0#0@@5|) (Lit |a#4#1#0@@3|)))
)))
(assert (forall ((|a#5#0#0@@5| T@U) (|a#5#1#0@@3| T@U) ) (!  (=> (and (= (type |a#5#0#0@@5|) (SeqType BoxType)) (= (type |a#5#1#0@@3|) DatatypeTypeType)) (= (DistributedSystem.Constants.hosts (|#DistributedSystem.Constants.Constants| |a#5#0#0@@5| |a#5#1#0@@3|)) |a#5#0#0@@5|))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2816|
 :pattern ( (|#DistributedSystem.Constants.Constants| |a#5#0#0@@5| |a#5#1#0@@3|))
)))
(assert (forall ((|a#6#0#0@@5| T@U) (|a#6#1#0@@3| T@U) (i@@25 Int) ) (!  (=> (and (and (= (type |a#6#0#0@@5|) (SeqType BoxType)) (= (type |a#6#1#0@@3|) DatatypeTypeType)) (and (<= 0 i@@25) (< i@@25 (|Seq#Length| |a#6#0#0@@5|)))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#6#0#0@@5| i@@25))) (DtRank (|#DistributedSystem.Constants.Constants| |a#6#0#0@@5| |a#6#1#0@@3|))))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2817|
 :pattern ( (|Seq#Index| |a#6#0#0@@5| i@@25) (|#DistributedSystem.Constants.Constants| |a#6#0#0@@5| |a#6#1#0@@3|))
)))
(assert (forall ((|a#7#0#0@@3| T@U) (|a#7#1#0@@2| T@U) ) (!  (=> (and (= (type |a#7#0#0@@3|) (SeqType BoxType)) (= (type |a#7#1#0@@2|) DatatypeTypeType)) (< (|Seq#Rank| |a#7#0#0@@3|) (DtRank (|#DistributedSystem.Constants.Constants| |a#7#0#0@@3| |a#7#1#0@@2|))))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2818|
 :pattern ( (|#DistributedSystem.Constants.Constants| |a#7#0#0@@3| |a#7#1#0@@2|))
)))
(assert (forall ((|a#8#0#0@@3| T@U) (|a#8#1#0@@2| T@U) ) (!  (=> (and (= (type |a#8#0#0@@3|) (SeqType BoxType)) (= (type |a#8#1#0@@2|) DatatypeTypeType)) (= (DistributedSystem.Constants.network (|#DistributedSystem.Constants.Constants| |a#8#0#0@@3| |a#8#1#0@@2|)) |a#8#1#0@@2|))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2819|
 :pattern ( (|#DistributedSystem.Constants.Constants| |a#8#0#0@@3| |a#8#1#0@@2|))
)))
(assert (forall ((|a#9#0#0@@2| T@U) (|a#9#1#0@@0| T@U) ) (!  (=> (and (= (type |a#9#0#0@@2|) (SeqType BoxType)) (= (type |a#9#1#0@@0|) DatatypeTypeType)) (< (DtRank |a#9#1#0@@0|) (DtRank (|#DistributedSystem.Constants.Constants| |a#9#0#0@@2| |a#9#1#0@@0|))))
 :qid |distributedsystemtdfy.17:5|
 :skolemid |2820|
 :pattern ( (|#DistributedSystem.Constants.Constants| |a#9#0#0@@2| |a#9#1#0@@0|))
)))
(assert (forall ((d@@110 T@U) ) (!  (=> (and (= (type d@@110) DatatypeTypeType) (|$IsA#DistributedSystem.Constants| d@@110)) (DistributedSystem.Constants.Constants_q d@@110))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( (|$IsA#DistributedSystem.Constants| d@@110))
)))
(assert (forall ((d@@111 T@U) ) (!  (=> (and (= (type d@@111) DatatypeTypeType) ($Is d@@111 Tclass.DistributedSystem.Constants)) (DistributedSystem.Constants.Constants_q d@@111))
 :qid |unknown.0:0|
 :skolemid |2822|
 :pattern ( (DistributedSystem.Constants.Constants_q d@@111) ($Is d@@111 Tclass.DistributedSystem.Constants))
)))
(assert (forall ((a@@161 T@U) (b@@104 T@U) ) (!  (=> (and (and (= (type a@@161) DatatypeTypeType) (= (type b@@104) DatatypeTypeType)) true) (= (|DistributedSystem.Constants#Equal| a@@161 b@@104)  (and (|Seq#Equal| (DistributedSystem.Constants.hosts a@@161) (DistributedSystem.Constants.hosts b@@104)) (|Network.Constants#Equal| (DistributedSystem.Constants.network a@@161) (DistributedSystem.Constants.network b@@104)))))
 :qid |unknown.0:0|
 :skolemid |2823|
 :pattern ( (|DistributedSystem.Constants#Equal| a@@161 b@@104))
)))
(assert (forall ((a@@162 T@U) (b@@105 T@U) ) (!  (=> (and (= (type a@@162) DatatypeTypeType) (= (type b@@105) DatatypeTypeType)) (= (|DistributedSystem.Constants#Equal| a@@162 b@@105) (= a@@162 b@@105)))
 :qid |unknown.0:0|
 :skolemid |2824|
 :pattern ( (|DistributedSystem.Constants#Equal| a@@162 b@@105))
)))
(assert  (=> true (forall ((this@@7 T@U) ) (!  (=> (and (= (type this@@7) DatatypeTypeType) (or (|DistributedSystem.Constants.WF#canCall| this@@7) ($Is this@@7 Tclass.DistributedSystem.Constants))) true)
 :qid |distributedsystemtdfy.19:15|
 :skolemid |2825|
 :pattern ( (DistributedSystem.Constants.WF this@@7))
))))
(assert (forall ((this@@8 T@U) ) (!  (=> (and (= (type this@@8) DatatypeTypeType) ($Is this@@8 Tclass.DistributedSystem.Constants)) (= (|DistributedSystem.Constants.WF#requires| this@@8) true))
 :qid |distributedsystemtdfy.19:15|
 :skolemid |2826|
 :pattern ( (|DistributedSystem.Constants.WF#requires| this@@8))
)))
(assert  (=> true (forall ((this@@9 T@U) ) (!  (=> (and (= (type this@@9) DatatypeTypeType) (or (|DistributedSystem.Constants.WF#canCall| this@@9) ($Is this@@9 Tclass.DistributedSystem.Constants))) (and (and (and (and (DistributedSystem.Constants.Constants_q this@@9) (DistributedSystem.Constants.Constants_q this@@9)) (|Network.Constants.Configure#canCall| (DistributedSystem.Constants.network this@@9) (|Seq#Length| (DistributedSystem.Constants.hosts this@@9)))) (=> (Network.Constants.Configure (DistributedSystem.Constants.network this@@9) (|Seq#Length| (DistributedSystem.Constants.hosts this@@9))) (forall ((|id#2| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| this@@9 |id#2|) (=> (DistributedSystem.Constants.ValidHostId this@@9 |id#2|) (and (and (DistributedSystem.Constants.Constants_q this@@9) (DistributedSystem.Constants.Constants_q this@@9)) (|Host.Constants.Configure#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts this@@9) |id#2|)) (|Seq#Length| (DistributedSystem.Constants.hosts this@@9)) |id#2|))))
 :qid |distributedsystemtdfy.23:18|
 :skolemid |2828|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts this@@9) |id#2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId this@@9 |id#2|))
)))) (= (DistributedSystem.Constants.WF this@@9)  (and (Network.Constants.Configure (DistributedSystem.Constants.network this@@9) (|Seq#Length| (DistributedSystem.Constants.hosts this@@9))) (forall ((|id#2@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId this@@9 |id#2@@0|) (Host.Constants.Configure ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts this@@9) |id#2@@0|)) (|Seq#Length| (DistributedSystem.Constants.hosts this@@9)) |id#2@@0|))
 :qid |distributedsystemtdfy.23:18|
 :skolemid |2827|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts this@@9) |id#2@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId this@@9 |id#2@@0|))
))))))
 :qid |distributedsystemtdfy.19:15|
 :skolemid |2829|
 :pattern ( (DistributedSystem.Constants.WF this@@9))
))))
(assert  (=> true (forall ((this@@10 T@U) ) (!  (=> (and (= (type this@@10) DatatypeTypeType) (or (|DistributedSystem.Constants.WF#canCall| (Lit this@@10)) ($Is this@@10 Tclass.DistributedSystem.Constants))) (and (and (and (and (DistributedSystem.Constants.Constants_q (Lit this@@10)) (DistributedSystem.Constants.Constants_q (Lit this@@10))) (|Network.Constants.Configure#canCall| (Lit (DistributedSystem.Constants.network (Lit this@@10))) (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@10)))))) (=> (Network.Constants.Configure (Lit (DistributedSystem.Constants.network (Lit this@@10))) (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@10))))) (forall ((|id#3| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit this@@10) |id#3|) (=> (DistributedSystem.Constants.ValidHostId (Lit this@@10) |id#3|) (and (and (DistributedSystem.Constants.Constants_q (Lit this@@10)) (DistributedSystem.Constants.Constants_q (Lit this@@10))) (|Host.Constants.Configure#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit this@@10))) |id#3|)) (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@10)))) |id#3|))))
 :qid |distributedsystemtdfy.23:18|
 :skolemid |2831|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts this@@10) |id#3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId this@@10 |id#3|))
)))) (= (DistributedSystem.Constants.WF (Lit this@@10))  (and (Network.Constants.Configure (Lit (DistributedSystem.Constants.network (Lit this@@10))) (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@10))))) (forall ((|id#3@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId (Lit this@@10) |id#3@@0|) (Host.Constants.Configure ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit this@@10))) |id#3@@0|)) (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@10)))) |id#3@@0|))
 :qid |distributedsystemtdfy.23:18|
 :skolemid |2830|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts this@@10) |id#3@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId this@@10 |id#3@@0|))
))))))
 :qid |distributedsystemtdfy.19:15|
 :weight 3
 :skolemid |2832|
 :pattern ( (DistributedSystem.Constants.WF (Lit this@@10)))
))))
(assert  (=> true (forall ((this@@11 T@U) (|hostid#0@@3| Int) ) (!  (=> (and (= (type this@@11) DatatypeTypeType) (or (|DistributedSystem.Constants.ValidHostId#canCall| this@@11 |hostid#0@@3|) ($Is this@@11 Tclass.DistributedSystem.Constants))) true)
 :qid |distributedsystemtdfy.26:15|
 :skolemid |2833|
 :pattern ( (DistributedSystem.Constants.ValidHostId this@@11 |hostid#0@@3|))
))))
(assert (forall ((this@@12 T@U) (|hostid#0@@4| Int) ) (!  (=> (and (= (type this@@12) DatatypeTypeType) ($Is this@@12 Tclass.DistributedSystem.Constants)) (= (|DistributedSystem.Constants.ValidHostId#requires| this@@12 |hostid#0@@4|) true))
 :qid |distributedsystemtdfy.26:15|
 :skolemid |2834|
 :pattern ( (|DistributedSystem.Constants.ValidHostId#requires| this@@12 |hostid#0@@4|))
)))
(assert  (=> true (forall ((this@@13 T@U) (|hostid#0@@5| Int) ) (!  (=> (and (= (type this@@13) DatatypeTypeType) (or (|DistributedSystem.Constants.ValidHostId#canCall| this@@13 |hostid#0@@5|) ($Is this@@13 Tclass.DistributedSystem.Constants))) (and (and (DistributedSystem.Constants.Constants_q this@@13) (|HostIdentifiers.__default.ValidHostId#canCall| (|Seq#Length| (DistributedSystem.Constants.hosts this@@13)) |hostid#0@@5|)) (= (DistributedSystem.Constants.ValidHostId this@@13 |hostid#0@@5|) (HostIdentifiers.__default.ValidHostId (|Seq#Length| (DistributedSystem.Constants.hosts this@@13)) |hostid#0@@5|))))
 :qid |distributedsystemtdfy.26:15|
 :skolemid |2835|
 :pattern ( (DistributedSystem.Constants.ValidHostId this@@13 |hostid#0@@5|))
))))
(assert  (=> true (forall ((this@@14 T@U) (|hostid#0@@6| Int) ) (!  (=> (and (= (type this@@14) DatatypeTypeType) (or (|DistributedSystem.Constants.ValidHostId#canCall| (Lit this@@14) (LitInt |hostid#0@@6|)) ($Is this@@14 Tclass.DistributedSystem.Constants))) (and (and (DistributedSystem.Constants.Constants_q (Lit this@@14)) (|HostIdentifiers.__default.ValidHostId#canCall| (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@14)))) (LitInt |hostid#0@@6|))) (= (DistributedSystem.Constants.ValidHostId (Lit this@@14) (LitInt |hostid#0@@6|)) (HostIdentifiers.__default.ValidHostId (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit this@@14)))) (LitInt |hostid#0@@6|)))))
 :qid |distributedsystemtdfy.26:15|
 :weight 3
 :skolemid |2836|
 :pattern ( (DistributedSystem.Constants.ValidHostId (Lit this@@14) (LitInt |hostid#0@@6|)))
))))
(assert (forall ((arg0@@300 T@U) (arg1@@138 T@U) ) (! (= (type (|#DistributedSystem.Variables.Variables| arg0@@300 arg1@@138)) DatatypeTypeType)
 :qid |funType:#DistributedSystem.Variables.Variables|
 :pattern ( (|#DistributedSystem.Variables.Variables| arg0@@300 arg1@@138))
)))
(assert (forall ((|a#0#0#0@@6| T@U) (|a#0#1#0@@4| T@U) ) (!  (=> (and (= (type |a#0#0#0@@6|) (SeqType BoxType)) (= (type |a#0#1#0@@4|) DatatypeTypeType)) (= (DatatypeCtorId (|#DistributedSystem.Variables.Variables| |a#0#0#0@@6| |a#0#1#0@@4|)) |##DistributedSystem.Variables.Variables|))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2837|
 :pattern ( (|#DistributedSystem.Variables.Variables| |a#0#0#0@@6| |a#0#1#0@@4|))
)))
(assert (forall ((d@@112 T@U) ) (!  (=> (= (type d@@112) DatatypeTypeType) (= (DistributedSystem.Variables.Variables_q d@@112) (= (DatatypeCtorId d@@112) |##DistributedSystem.Variables.Variables|)))
 :qid |unknown.0:0|
 :skolemid |2838|
 :pattern ( (DistributedSystem.Variables.Variables_q d@@112))
)))
(assert (forall ((d@@113 T@U) ) (!  (=> (and (= (type d@@113) DatatypeTypeType) (DistributedSystem.Variables.Variables_q d@@113)) (exists ((|a#1#0#0@@6| T@U) (|a#1#1#0@@4| T@U) ) (!  (and (and (= (type |a#1#0#0@@6|) (SeqType BoxType)) (= (type |a#1#1#0@@4|) DatatypeTypeType)) (= d@@113 (|#DistributedSystem.Variables.Variables| |a#1#0#0@@6| |a#1#1#0@@4|)))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2839|
 :no-pattern (type |a#1#0#0@@6|)
 :no-pattern (type |a#1#1#0@@4|)
 :no-pattern (U_2_int |a#1#0#0@@6|)
 :no-pattern (U_2_bool |a#1#0#0@@6|)
 :no-pattern (U_2_int |a#1#1#0@@4|)
 :no-pattern (U_2_bool |a#1#1#0@@4|)
)))
 :qid |unknown.0:0|
 :skolemid |2840|
 :pattern ( (DistributedSystem.Variables.Variables_q d@@113))
)))
(assert (forall ((|a#2#0#0@@6| T@U) (|a#2#1#0@@4| T@U) ) (!  (=> (and (= (type |a#2#0#0@@6|) (SeqType BoxType)) (= (type |a#2#1#0@@4|) DatatypeTypeType)) (= ($Is (|#DistributedSystem.Variables.Variables| |a#2#0#0@@6| |a#2#1#0@@4|) Tclass.DistributedSystem.Variables)  (and ($Is |a#2#0#0@@6| (TSeq Tclass.Host.Variables)) ($Is |a#2#1#0@@4| (Tclass.Network.Variables Tclass.Host.Message)))))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2841|
 :pattern ( ($Is (|#DistributedSystem.Variables.Variables| |a#2#0#0@@6| |a#2#1#0@@4|) Tclass.DistributedSystem.Variables))
)))
(assert (forall ((|a#3#0#0@@6| T@U) (|a#3#1#0@@4| T@U) ($h@@75 T@U) ) (!  (=> (and (and (and (= (type |a#3#0#0@@6|) (SeqType BoxType)) (= (type |a#3#1#0@@4|) DatatypeTypeType)) (= (type $h@@75) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@75)) (= ($IsAlloc (|#DistributedSystem.Variables.Variables| |a#3#0#0@@6| |a#3#1#0@@4|) Tclass.DistributedSystem.Variables $h@@75)  (and ($IsAlloc |a#3#0#0@@6| (TSeq Tclass.Host.Variables) $h@@75) ($IsAlloc |a#3#1#0@@4| (Tclass.Network.Variables Tclass.Host.Message) $h@@75))))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2842|
 :pattern ( ($IsAlloc (|#DistributedSystem.Variables.Variables| |a#3#0#0@@6| |a#3#1#0@@4|) Tclass.DistributedSystem.Variables $h@@75))
)))
(assert (forall ((d@@114 T@U) ($h@@76 T@U) ) (!  (=> (and (and (= (type d@@114) DatatypeTypeType) (= (type $h@@76) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@76) (and (DistributedSystem.Variables.Variables_q d@@114) ($IsAlloc d@@114 Tclass.DistributedSystem.Variables $h@@76)))) ($IsAlloc (DistributedSystem.Variables.hosts d@@114) (TSeq Tclass.Host.Variables) $h@@76))
 :qid |unknown.0:0|
 :skolemid |2843|
 :pattern ( ($IsAlloc (DistributedSystem.Variables.hosts d@@114) (TSeq Tclass.Host.Variables) $h@@76))
)))
(assert (forall ((d@@115 T@U) ($h@@77 T@U) ) (!  (=> (and (and (= (type d@@115) DatatypeTypeType) (= (type $h@@77) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@77) (and (DistributedSystem.Variables.Variables_q d@@115) ($IsAlloc d@@115 Tclass.DistributedSystem.Variables $h@@77)))) ($IsAlloc (DistributedSystem.Variables.network d@@115) (Tclass.Network.Variables Tclass.Host.Message) $h@@77))
 :qid |unknown.0:0|
 :skolemid |2844|
 :pattern ( ($IsAlloc (DistributedSystem.Variables.network d@@115) (Tclass.Network.Variables Tclass.Host.Message) $h@@77))
)))
(assert (forall ((|a#4#0#0@@6| T@U) (|a#4#1#0@@4| T@U) ) (!  (=> (and (= (type |a#4#0#0@@6|) (SeqType BoxType)) (= (type |a#4#1#0@@4|) DatatypeTypeType)) (= (|#DistributedSystem.Variables.Variables| (Lit |a#4#0#0@@6|) (Lit |a#4#1#0@@4|)) (Lit (|#DistributedSystem.Variables.Variables| |a#4#0#0@@6| |a#4#1#0@@4|))))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2845|
 :pattern ( (|#DistributedSystem.Variables.Variables| (Lit |a#4#0#0@@6|) (Lit |a#4#1#0@@4|)))
)))
(assert (forall ((|a#5#0#0@@6| T@U) (|a#5#1#0@@4| T@U) ) (!  (=> (and (= (type |a#5#0#0@@6|) (SeqType BoxType)) (= (type |a#5#1#0@@4|) DatatypeTypeType)) (= (DistributedSystem.Variables.hosts (|#DistributedSystem.Variables.Variables| |a#5#0#0@@6| |a#5#1#0@@4|)) |a#5#0#0@@6|))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2846|
 :pattern ( (|#DistributedSystem.Variables.Variables| |a#5#0#0@@6| |a#5#1#0@@4|))
)))
(assert (forall ((|a#6#0#0@@6| T@U) (|a#6#1#0@@4| T@U) (i@@26 Int) ) (!  (=> (and (and (= (type |a#6#0#0@@6|) (SeqType BoxType)) (= (type |a#6#1#0@@4|) DatatypeTypeType)) (and (<= 0 i@@26) (< i@@26 (|Seq#Length| |a#6#0#0@@6|)))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#6#0#0@@6| i@@26))) (DtRank (|#DistributedSystem.Variables.Variables| |a#6#0#0@@6| |a#6#1#0@@4|))))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2847|
 :pattern ( (|Seq#Index| |a#6#0#0@@6| i@@26) (|#DistributedSystem.Variables.Variables| |a#6#0#0@@6| |a#6#1#0@@4|))
)))
(assert (forall ((|a#7#0#0@@4| T@U) (|a#7#1#0@@3| T@U) ) (!  (=> (and (= (type |a#7#0#0@@4|) (SeqType BoxType)) (= (type |a#7#1#0@@3|) DatatypeTypeType)) (< (|Seq#Rank| |a#7#0#0@@4|) (DtRank (|#DistributedSystem.Variables.Variables| |a#7#0#0@@4| |a#7#1#0@@3|))))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2848|
 :pattern ( (|#DistributedSystem.Variables.Variables| |a#7#0#0@@4| |a#7#1#0@@3|))
)))
(assert (forall ((|a#8#0#0@@4| T@U) (|a#8#1#0@@3| T@U) ) (!  (=> (and (= (type |a#8#0#0@@4|) (SeqType BoxType)) (= (type |a#8#1#0@@3|) DatatypeTypeType)) (= (DistributedSystem.Variables.network (|#DistributedSystem.Variables.Variables| |a#8#0#0@@4| |a#8#1#0@@3|)) |a#8#1#0@@3|))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2849|
 :pattern ( (|#DistributedSystem.Variables.Variables| |a#8#0#0@@4| |a#8#1#0@@3|))
)))
(assert (forall ((|a#9#0#0@@3| T@U) (|a#9#1#0@@1| T@U) ) (!  (=> (and (= (type |a#9#0#0@@3|) (SeqType BoxType)) (= (type |a#9#1#0@@1|) DatatypeTypeType)) (< (DtRank |a#9#1#0@@1|) (DtRank (|#DistributedSystem.Variables.Variables| |a#9#0#0@@3| |a#9#1#0@@1|))))
 :qid |distributedsystemtdfy.32:5|
 :skolemid |2850|
 :pattern ( (|#DistributedSystem.Variables.Variables| |a#9#0#0@@3| |a#9#1#0@@1|))
)))
(assert (forall ((d@@116 T@U) ) (!  (=> (and (= (type d@@116) DatatypeTypeType) (|$IsA#DistributedSystem.Variables| d@@116)) (DistributedSystem.Variables.Variables_q d@@116))
 :qid |unknown.0:0|
 :skolemid |2851|
 :pattern ( (|$IsA#DistributedSystem.Variables| d@@116))
)))
(assert (forall ((d@@117 T@U) ) (!  (=> (and (= (type d@@117) DatatypeTypeType) ($Is d@@117 Tclass.DistributedSystem.Variables)) (DistributedSystem.Variables.Variables_q d@@117))
 :qid |unknown.0:0|
 :skolemid |2852|
 :pattern ( (DistributedSystem.Variables.Variables_q d@@117) ($Is d@@117 Tclass.DistributedSystem.Variables))
)))
(assert (forall ((a@@163 T@U) (b@@106 T@U) ) (!  (=> (and (and (= (type a@@163) DatatypeTypeType) (= (type b@@106) DatatypeTypeType)) true) (= (|DistributedSystem.Variables#Equal| a@@163 b@@106)  (and (|Seq#Equal| (DistributedSystem.Variables.hosts a@@163) (DistributedSystem.Variables.hosts b@@106)) (|Network.Variables#Equal| (DistributedSystem.Variables.network a@@163) (DistributedSystem.Variables.network b@@106)))))
 :qid |unknown.0:0|
 :skolemid |2853|
 :pattern ( (|DistributedSystem.Variables#Equal| a@@163 b@@106))
)))
(assert (forall ((a@@164 T@U) (b@@107 T@U) ) (!  (=> (and (= (type a@@164) DatatypeTypeType) (= (type b@@107) DatatypeTypeType)) (= (|DistributedSystem.Variables#Equal| a@@164 b@@107) (= a@@164 b@@107)))
 :qid |unknown.0:0|
 :skolemid |2854|
 :pattern ( (|DistributedSystem.Variables#Equal| a@@164 b@@107))
)))
(assert  (=> true (forall ((this@@15 T@U) (|c#0@@55| T@U) ) (!  (=> (and (and (= (type this@@15) DatatypeTypeType) (= (type |c#0@@55|) DatatypeTypeType)) (or (|DistributedSystem.Variables.WF#canCall| this@@15 |c#0@@55|) (and ($Is this@@15 Tclass.DistributedSystem.Variables) ($Is |c#0@@55| Tclass.DistributedSystem.Constants)))) true)
 :qid |distributedsystemtdfy.34:15|
 :skolemid |2855|
 :pattern ( (DistributedSystem.Variables.WF this@@15 |c#0@@55|))
))))
(assert (forall ((this@@16 T@U) (|c#0@@56| T@U) ) (!  (=> (and (and (= (type this@@16) DatatypeTypeType) (= (type |c#0@@56|) DatatypeTypeType)) (and ($Is this@@16 Tclass.DistributedSystem.Variables) ($Is |c#0@@56| Tclass.DistributedSystem.Constants))) (= (|DistributedSystem.Variables.WF#requires| this@@16 |c#0@@56|) true))
 :qid |distributedsystemtdfy.34:15|
 :skolemid |2856|
 :pattern ( (|DistributedSystem.Variables.WF#requires| this@@16 |c#0@@56|))
)))
(assert  (=> true (forall ((this@@17 T@U) (|c#0@@57| T@U) ) (!  (=> (and (and (= (type this@@17) DatatypeTypeType) (= (type |c#0@@57|) DatatypeTypeType)) (or (|DistributedSystem.Variables.WF#canCall| this@@17 |c#0@@57|) (and ($Is this@@17 Tclass.DistributedSystem.Variables) ($Is |c#0@@57| Tclass.DistributedSystem.Constants)))) (and (and (|DistributedSystem.Constants.WF#canCall| |c#0@@57|) (=> (DistributedSystem.Constants.WF |c#0@@57|) (and (DistributedSystem.Variables.Variables_q this@@17) (DistributedSystem.Constants.Constants_q |c#0@@57|)))) (= (DistributedSystem.Variables.WF this@@17 |c#0@@57|)  (and (DistributedSystem.Constants.WF |c#0@@57|) (= (|Seq#Length| (DistributedSystem.Variables.hosts this@@17)) (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@57|)))))))
 :qid |distributedsystemtdfy.34:15|
 :skolemid |2857|
 :pattern ( (DistributedSystem.Variables.WF this@@17 |c#0@@57|))
))))
(assert  (=> true (forall ((this@@18 T@U) (|c#0@@58| T@U) ) (!  (=> (and (and (= (type this@@18) DatatypeTypeType) (= (type |c#0@@58|) DatatypeTypeType)) (or (|DistributedSystem.Variables.WF#canCall| (Lit this@@18) (Lit |c#0@@58|)) (and ($Is this@@18 Tclass.DistributedSystem.Variables) ($Is |c#0@@58| Tclass.DistributedSystem.Constants)))) (and (and (|DistributedSystem.Constants.WF#canCall| (Lit |c#0@@58|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Constants.WF (Lit |c#0@@58|))))) (and (DistributedSystem.Variables.Variables_q (Lit this@@18)) (DistributedSystem.Constants.Constants_q (Lit |c#0@@58|))))) (= (DistributedSystem.Variables.WF (Lit this@@18) (Lit |c#0@@58|))  (and (DistributedSystem.Constants.WF (Lit |c#0@@58|)) (= (|Seq#Length| (Lit (DistributedSystem.Variables.hosts (Lit this@@18)))) (|Seq#Length| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@58|)))))))))
 :qid |distributedsystemtdfy.34:15|
 :weight 3
 :skolemid |2858|
 :pattern ( (DistributedSystem.Variables.WF (Lit this@@18) (Lit |c#0@@58|)))
))))
(assert (forall ((arg0@@301 Int) (arg1@@139 T@U) ) (! (= (type (|#DistributedSystem.Step.Step| arg0@@301 arg1@@139)) DatatypeTypeType)
 :qid |funType:#DistributedSystem.Step.Step|
 :pattern ( (|#DistributedSystem.Step.Step| arg0@@301 arg1@@139))
)))
(assert (forall ((|a#0#0#0@@7| Int) (|a#0#1#0@@5| T@U) ) (!  (=> (= (type |a#0#1#0@@5|) DatatypeTypeType) (= (DatatypeCtorId (|#DistributedSystem.Step.Step| |a#0#0#0@@7| |a#0#1#0@@5|)) |##DistributedSystem.Step.Step|))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2859|
 :pattern ( (|#DistributedSystem.Step.Step| |a#0#0#0@@7| |a#0#1#0@@5|))
)))
(assert (forall ((d@@118 T@U) ) (!  (=> (= (type d@@118) DatatypeTypeType) (= (DistributedSystem.Step.Step_q d@@118) (= (DatatypeCtorId d@@118) |##DistributedSystem.Step.Step|)))
 :qid |unknown.0:0|
 :skolemid |2860|
 :pattern ( (DistributedSystem.Step.Step_q d@@118))
)))
(assert (forall ((d@@119 T@U) ) (!  (=> (and (= (type d@@119) DatatypeTypeType) (DistributedSystem.Step.Step_q d@@119)) (exists ((|a#1#0#0@@7| Int) (|a#1#1#0@@5| T@U) ) (!  (and (= (type |a#1#1#0@@5|) DatatypeTypeType) (= d@@119 (|#DistributedSystem.Step.Step| |a#1#0#0@@7| |a#1#1#0@@5|)))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2861|
 :no-pattern (type |a#1#1#0@@5|)
 :no-pattern (U_2_int |a#1#1#0@@5|)
 :no-pattern (U_2_bool |a#1#1#0@@5|)
)))
 :qid |unknown.0:0|
 :skolemid |2862|
 :pattern ( (DistributedSystem.Step.Step_q d@@119))
)))
(assert (forall ((|a#2#0#0@@7| Int) (|a#2#1#0@@5| T@U) ) (!  (=> (= (type |a#2#1#0@@5|) DatatypeTypeType) (= ($Is (|#DistributedSystem.Step.Step| |a#2#0#0@@7| |a#2#1#0@@5|) Tclass.DistributedSystem.Step)  (and ($Is (int_2_U |a#2#0#0@@7|) TInt) ($Is |a#2#1#0@@5| (Tclass.Network.MessageOps Tclass.Host.Message)))))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2863|
 :pattern ( ($Is (|#DistributedSystem.Step.Step| |a#2#0#0@@7| |a#2#1#0@@5|) Tclass.DistributedSystem.Step))
)))
(assert (forall ((|a#3#0#0@@7| Int) (|a#3#1#0@@5| T@U) ($h@@78 T@U) ) (!  (=> (and (and (= (type |a#3#1#0@@5|) DatatypeTypeType) (= (type $h@@78) (MapType0Type refType MapType1Type))) ($IsGoodHeap $h@@78)) (= ($IsAlloc (|#DistributedSystem.Step.Step| |a#3#0#0@@7| |a#3#1#0@@5|) Tclass.DistributedSystem.Step $h@@78)  (and ($IsAlloc (int_2_U |a#3#0#0@@7|) TInt $h@@78) ($IsAlloc |a#3#1#0@@5| (Tclass.Network.MessageOps Tclass.Host.Message) $h@@78))))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2864|
 :pattern ( ($IsAlloc (|#DistributedSystem.Step.Step| |a#3#0#0@@7| |a#3#1#0@@5|) Tclass.DistributedSystem.Step $h@@78))
)))
(assert (forall ((d@@120 T@U) ($h@@79 T@U) ) (!  (=> (and (and (= (type d@@120) DatatypeTypeType) (= (type $h@@79) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@79) (and (DistributedSystem.Step.Step_q d@@120) ($IsAlloc d@@120 Tclass.DistributedSystem.Step $h@@79)))) ($IsAlloc (int_2_U (DistributedSystem.Step.id d@@120)) TInt $h@@79))
 :qid |unknown.0:0|
 :skolemid |2865|
 :pattern ( ($IsAlloc (int_2_U (DistributedSystem.Step.id d@@120)) TInt $h@@79))
)))
(assert (forall ((arg0@@302 T@U) ) (! (= (type (DistributedSystem.Step.msgOps arg0@@302)) DatatypeTypeType)
 :qid |funType:DistributedSystem.Step.msgOps|
 :pattern ( (DistributedSystem.Step.msgOps arg0@@302))
)))
(assert (forall ((d@@121 T@U) ($h@@80 T@U) ) (!  (=> (and (and (= (type d@@121) DatatypeTypeType) (= (type $h@@80) (MapType0Type refType MapType1Type))) (and ($IsGoodHeap $h@@80) (and (DistributedSystem.Step.Step_q d@@121) ($IsAlloc d@@121 Tclass.DistributedSystem.Step $h@@80)))) ($IsAlloc (DistributedSystem.Step.msgOps d@@121) (Tclass.Network.MessageOps Tclass.Host.Message) $h@@80))
 :qid |unknown.0:0|
 :skolemid |2866|
 :pattern ( ($IsAlloc (DistributedSystem.Step.msgOps d@@121) (Tclass.Network.MessageOps Tclass.Host.Message) $h@@80))
)))
(assert (forall ((|a#4#0#0@@7| Int) (|a#4#1#0@@5| T@U) ) (!  (=> (= (type |a#4#1#0@@5|) DatatypeTypeType) (= (|#DistributedSystem.Step.Step| (LitInt |a#4#0#0@@7|) (Lit |a#4#1#0@@5|)) (Lit (|#DistributedSystem.Step.Step| |a#4#0#0@@7| |a#4#1#0@@5|))))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2867|
 :pattern ( (|#DistributedSystem.Step.Step| (LitInt |a#4#0#0@@7|) (Lit |a#4#1#0@@5|)))
)))
(assert (forall ((|a#5#0#0@@7| Int) (|a#5#1#0@@5| T@U) ) (!  (=> (= (type |a#5#1#0@@5|) DatatypeTypeType) (= (DistributedSystem.Step.id (|#DistributedSystem.Step.Step| |a#5#0#0@@7| |a#5#1#0@@5|)) |a#5#0#0@@7|))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2868|
 :pattern ( (|#DistributedSystem.Step.Step| |a#5#0#0@@7| |a#5#1#0@@5|))
)))
(assert (forall ((|a#6#0#0@@7| Int) (|a#6#1#0@@5| T@U) ) (!  (=> (= (type |a#6#1#0@@5|) DatatypeTypeType) (= (DistributedSystem.Step.msgOps (|#DistributedSystem.Step.Step| |a#6#0#0@@7| |a#6#1#0@@5|)) |a#6#1#0@@5|))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2869|
 :pattern ( (|#DistributedSystem.Step.Step| |a#6#0#0@@7| |a#6#1#0@@5|))
)))
(assert (forall ((|a#7#0#0@@5| Int) (|a#7#1#0@@4| T@U) ) (!  (=> (= (type |a#7#1#0@@4|) DatatypeTypeType) (< (DtRank |a#7#1#0@@4|) (DtRank (|#DistributedSystem.Step.Step| |a#7#0#0@@5| |a#7#1#0@@4|))))
 :qid |distributedsystemtdfy.47:24|
 :skolemid |2870|
 :pattern ( (|#DistributedSystem.Step.Step| |a#7#0#0@@5| |a#7#1#0@@4|))
)))
(assert (forall ((d@@122 T@U) ) (!  (=> (and (= (type d@@122) DatatypeTypeType) (|$IsA#DistributedSystem.Step| d@@122)) (DistributedSystem.Step.Step_q d@@122))
 :qid |unknown.0:0|
 :skolemid |2871|
 :pattern ( (|$IsA#DistributedSystem.Step| d@@122))
)))
(assert (forall ((d@@123 T@U) ) (!  (=> (and (= (type d@@123) DatatypeTypeType) ($Is d@@123 Tclass.DistributedSystem.Step)) (DistributedSystem.Step.Step_q d@@123))
 :qid |unknown.0:0|
 :skolemid |2872|
 :pattern ( (DistributedSystem.Step.Step_q d@@123) ($Is d@@123 Tclass.DistributedSystem.Step))
)))
(assert (forall ((a@@165 T@U) (b@@108 T@U) ) (!  (=> (and (and (= (type a@@165) DatatypeTypeType) (= (type b@@108) DatatypeTypeType)) true) (= (|DistributedSystem.Step#Equal| a@@165 b@@108)  (and (= (DistributedSystem.Step.id a@@165) (DistributedSystem.Step.id b@@108)) (|Network.MessageOps#Equal| (DistributedSystem.Step.msgOps a@@165) (DistributedSystem.Step.msgOps b@@108)))))
 :qid |unknown.0:0|
 :skolemid |2873|
 :pattern ( (|DistributedSystem.Step#Equal| a@@165 b@@108))
)))
(assert (forall ((a@@166 T@U) (b@@109 T@U) ) (!  (=> (and (= (type a@@166) DatatypeTypeType) (= (type b@@109) DatatypeTypeType)) (= (|DistributedSystem.Step#Equal| a@@166 b@@109) (= a@@166 b@@109)))
 :qid |unknown.0:0|
 :skolemid |2874|
 :pattern ( (|DistributedSystem.Step#Equal| a@@166 b@@109))
)))
(assert (= (type Tclass.DistributedSystem.__default) TyType))
(assert (= (Tag Tclass.DistributedSystem.__default) Tagclass.DistributedSystem.__default))
(assert (= (TagFamily Tclass.DistributedSystem.__default) tytagFamily$_default))
(assert (forall ((bx@@100 T@U) ) (!  (=> (and (= (type bx@@100) BoxType) ($IsBox bx@@100 Tclass.DistributedSystem.__default)) (and (= ($Box ($Unbox refType bx@@100)) bx@@100) ($Is ($Unbox refType bx@@100) Tclass.DistributedSystem.__default)))
 :qid |unknown.0:0|
 :skolemid |2875|
 :pattern ( ($IsBox bx@@100 Tclass.DistributedSystem.__default))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> (= (type $o@@19) refType) (= ($Is $o@@19 Tclass.DistributedSystem.__default)  (or (= $o@@19 null) (= (dtype $o@@19) Tclass.DistributedSystem.__default))))
 :qid |unknown.0:0|
 :skolemid |2876|
 :pattern ( ($Is $o@@19 Tclass.DistributedSystem.__default))
)))
(assert (forall (($o@@20 T@U) ($h@@81 T@U) ) (!  (=> (and (= (type $o@@20) refType) (= (type $h@@81) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@20 Tclass.DistributedSystem.__default $h@@81)  (or (= $o@@20 null) (U_2_bool (MapType1Select (MapType0Select $h@@81 $o@@20) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2877|
 :pattern ( ($IsAlloc $o@@20 Tclass.DistributedSystem.__default $h@@81))
)))
(assert  (=> true (forall ((|c#0@@59| T@U) (|v#0@@51| T@U) ) (!  (=> (and (and (= (type |c#0@@59|) DatatypeTypeType) (= (type |v#0@@51|) DatatypeTypeType)) (or (|DistributedSystem.__default.Init#canCall| |c#0@@59| |v#0@@51|) (and ($Is |c#0@@59| Tclass.DistributedSystem.Constants) ($Is |v#0@@51| Tclass.DistributedSystem.Variables)))) true)
 :qid |distributedsystemtdfy.40:18|
 :skolemid |2878|
 :pattern ( (DistributedSystem.__default.Init |c#0@@59| |v#0@@51|))
))))
(assert (forall ((|c#0@@60| T@U) (|v#0@@52| T@U) ) (!  (=> (and (and (= (type |c#0@@60|) DatatypeTypeType) (= (type |v#0@@52|) DatatypeTypeType)) (and ($Is |c#0@@60| Tclass.DistributedSystem.Constants) ($Is |v#0@@52| Tclass.DistributedSystem.Variables))) (= (|DistributedSystem.__default.Init#requires| |c#0@@60| |v#0@@52|) true))
 :qid |distributedsystemtdfy.40:18|
 :skolemid |2879|
 :pattern ( (|DistributedSystem.__default.Init#requires| |c#0@@60| |v#0@@52|))
)))
(assert  (=> true (forall ((|c#0@@61| T@U) (|v#0@@53| T@U) ) (!  (=> (and (and (= (type |c#0@@61|) DatatypeTypeType) (= (type |v#0@@53|) DatatypeTypeType)) (or (|DistributedSystem.__default.Init#canCall| |c#0@@61| |v#0@@53|) (and ($Is |c#0@@61| Tclass.DistributedSystem.Constants) ($Is |v#0@@53| Tclass.DistributedSystem.Variables)))) (and (and (|DistributedSystem.Variables.WF#canCall| |v#0@@53| |c#0@@61|) (=> (DistributedSystem.Variables.WF |v#0@@53| |c#0@@61|) (and (forall ((|id#2@@1| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@61| |id#2@@1|) (=> (DistributedSystem.Constants.ValidHostId |c#0@@61| |id#2@@1|) (and (and (DistributedSystem.Constants.Constants_q |c#0@@61|) (DistributedSystem.Variables.Variables_q |v#0@@53|)) (|Host.__default.Init#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@61|) |id#2@@1|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@53|) |id#2@@1|))))))
 :qid |distributedsystemtdfy.42:16|
 :skolemid |2881|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@53|) |id#2@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@61|) |id#2@@1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@61| |id#2@@1|))
)) (=> (forall ((|id#2@@2| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@61| |id#2@@2|) (Host.__default.Init ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@61|) |id#2@@2|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@53|) |id#2@@2|))))
 :qid |distributedsystemtdfy.42:16|
 :skolemid |2882|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@53|) |id#2@@2|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@61|) |id#2@@2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@61| |id#2@@2|))
)) (and (and (DistributedSystem.Constants.Constants_q |c#0@@61|) (DistributedSystem.Variables.Variables_q |v#0@@53|)) (|Network.__default.Init#canCall| Tclass.Host.Message (DistributedSystem.Constants.network |c#0@@61|) (DistributedSystem.Variables.network |v#0@@53|))))))) (= (DistributedSystem.__default.Init |c#0@@61| |v#0@@53|)  (and (and (DistributedSystem.Variables.WF |v#0@@53| |c#0@@61|) (forall ((|id#2@@3| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@61| |id#2@@3|) (Host.__default.Init ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@61|) |id#2@@3|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@53|) |id#2@@3|))))
 :qid |distributedsystemtdfy.42:16|
 :skolemid |2880|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@53|) |id#2@@3|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@61|) |id#2@@3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@61| |id#2@@3|))
))) (Network.__default.Init Tclass.Host.Message (DistributedSystem.Constants.network |c#0@@61|) (DistributedSystem.Variables.network |v#0@@53|))))))
 :qid |distributedsystemtdfy.40:18|
 :skolemid |2883|
 :pattern ( (DistributedSystem.__default.Init |c#0@@61| |v#0@@53|))
))))
(assert  (=> true (forall ((|c#0@@62| T@U) (|v#0@@54| T@U) ) (!  (=> (and (and (= (type |c#0@@62|) DatatypeTypeType) (= (type |v#0@@54|) DatatypeTypeType)) (or (|DistributedSystem.__default.Init#canCall| (Lit |c#0@@62|) (Lit |v#0@@54|)) (and ($Is |c#0@@62| Tclass.DistributedSystem.Constants) ($Is |v#0@@54| Tclass.DistributedSystem.Variables)))) (and (and (|DistributedSystem.Variables.WF#canCall| (Lit |v#0@@54|) (Lit |c#0@@62|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@54|) (Lit |c#0@@62|))))) (and (forall ((|id#3@@1| Int) ) (!  (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@62|) |id#3@@1|) (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@62|) |id#3@@1|) (and (and (DistributedSystem.Constants.Constants_q (Lit |c#0@@62|)) (DistributedSystem.Variables.Variables_q (Lit |v#0@@54|))) (|Host.__default.Init#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@62|))) |id#3@@1|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@54|))) |id#3@@1|))))))
 :qid |distributedsystemtdfy.42:16|
 :skolemid |2885|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@54|) |id#3@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@62|) |id#3@@1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@62| |id#3@@1|))
)) (=> (forall ((|id#3@@2| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@62|) |id#3@@2|) (Host.__default.Init ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@62|))) |id#3@@2|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@54|))) |id#3@@2|))))
 :qid |distributedsystemtdfy.42:16|
 :skolemid |2886|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@54|) |id#3@@2|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@62|) |id#3@@2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@62| |id#3@@2|))
)) (and (and (DistributedSystem.Constants.Constants_q (Lit |c#0@@62|)) (DistributedSystem.Variables.Variables_q (Lit |v#0@@54|))) (|Network.__default.Init#canCall| Tclass.Host.Message (Lit (DistributedSystem.Constants.network (Lit |c#0@@62|))) (Lit (DistributedSystem.Variables.network (Lit |v#0@@54|))))))))) (= (DistributedSystem.__default.Init (Lit |c#0@@62|) (Lit |v#0@@54|))  (and (and (DistributedSystem.Variables.WF (Lit |v#0@@54|) (Lit |c#0@@62|)) (forall ((|id#3@@3| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@62|) |id#3@@3|) (Host.__default.Init ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@62|))) |id#3@@3|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@54|))) |id#3@@3|))))
 :qid |distributedsystemtdfy.42:16|
 :skolemid |2884|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@54|) |id#3@@3|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@62|) |id#3@@3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@62| |id#3@@3|))
))) (Network.__default.Init Tclass.Host.Message (Lit (DistributedSystem.Constants.network (Lit |c#0@@62|))) (Lit (DistributedSystem.Variables.network (Lit |v#0@@54|))))))))
 :qid |distributedsystemtdfy.40:18|
 :weight 3
 :skolemid |2887|
 :pattern ( (DistributedSystem.__default.Init (Lit |c#0@@62|) (Lit |v#0@@54|)))
))))
(assert  (=> true (forall ((|c#0@@63| T@U) (|v#0@@55| T@U) (|v'#0@@19| T@U) (|step#0@@3| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@63|) DatatypeTypeType) (= (type |v#0@@55|) DatatypeTypeType)) (= (type |v'#0@@19|) DatatypeTypeType)) (= (type |step#0@@3|) DatatypeTypeType)) (or (|DistributedSystem.__default.NextStep#canCall| |c#0@@63| |v#0@@55| |v'#0@@19| |step#0@@3|) (and (and (and ($Is |c#0@@63| Tclass.DistributedSystem.Constants) ($Is |v#0@@55| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@19| Tclass.DistributedSystem.Variables)) ($Is |step#0@@3| Tclass.DistributedSystem.Step)))) true)
 :qid |distributedsystemtdfy.49:22|
 :skolemid |2888|
 :pattern ( (DistributedSystem.__default.NextStep |c#0@@63| |v#0@@55| |v'#0@@19| |step#0@@3|))
))))
(assert (forall ((|c#0@@64| T@U) (|v#0@@56| T@U) (|v'#0@@20| T@U) (|step#0@@4| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@64|) DatatypeTypeType) (= (type |v#0@@56|) DatatypeTypeType)) (= (type |v'#0@@20|) DatatypeTypeType)) (= (type |step#0@@4|) DatatypeTypeType)) (and (and (and ($Is |c#0@@64| Tclass.DistributedSystem.Constants) ($Is |v#0@@56| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@20| Tclass.DistributedSystem.Variables)) ($Is |step#0@@4| Tclass.DistributedSystem.Step))) (= (|DistributedSystem.__default.NextStep#requires| |c#0@@64| |v#0@@56| |v'#0@@20| |step#0@@4|) true))
 :qid |distributedsystemtdfy.49:22|
 :skolemid |2889|
 :pattern ( (|DistributedSystem.__default.NextStep#requires| |c#0@@64| |v#0@@56| |v'#0@@20| |step#0@@4|))
)))
(assert  (=> true (forall ((|c#0@@65| T@U) (|v#0@@57| T@U) (|v'#0@@21| T@U) (|step#0@@5| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@65|) DatatypeTypeType) (= (type |v#0@@57|) DatatypeTypeType)) (= (type |v'#0@@21|) DatatypeTypeType)) (= (type |step#0@@5|) DatatypeTypeType)) (or (|DistributedSystem.__default.NextStep#canCall| |c#0@@65| |v#0@@57| |v'#0@@21| |step#0@@5|) (and (and (and ($Is |c#0@@65| Tclass.DistributedSystem.Constants) ($Is |v#0@@57| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@21| Tclass.DistributedSystem.Variables)) ($Is |step#0@@5| Tclass.DistributedSystem.Step)))) (and (and (|DistributedSystem.Variables.WF#canCall| |v#0@@57| |c#0@@65|) (=> (DistributedSystem.Variables.WF |v#0@@57| |c#0@@65|) (and (|DistributedSystem.Variables.WF#canCall| |v'#0@@21| |c#0@@65|) (=> (DistributedSystem.Variables.WF |v'#0@@21| |c#0@@65|) (and (and (DistributedSystem.Step.Step_q |step#0@@5|) (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@65| (DistributedSystem.Step.id |step#0@@5|))) (=> (DistributedSystem.Constants.ValidHostId |c#0@@65| (DistributedSystem.Step.id |step#0@@5|)) (and (and (and (and (and (and (DistributedSystem.Constants.Constants_q |c#0@@65|) (DistributedSystem.Step.Step_q |step#0@@5|)) (and (DistributedSystem.Variables.Variables_q |v#0@@57|) (DistributedSystem.Step.Step_q |step#0@@5|))) (and (DistributedSystem.Variables.Variables_q |v'#0@@21|) (DistributedSystem.Step.Step_q |step#0@@5|))) (DistributedSystem.Step.Step_q |step#0@@5|)) (|Host.__default.Next#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@65|) (DistributedSystem.Step.id |step#0@@5|))) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) (DistributedSystem.Step.id |step#0@@5|))) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) (DistributedSystem.Step.id |step#0@@5|))) (DistributedSystem.Step.msgOps |step#0@@5|))) (=> (Host.__default.Next ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@65|) (DistributedSystem.Step.id |step#0@@5|))) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) (DistributedSystem.Step.id |step#0@@5|))) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) (DistributedSystem.Step.id |step#0@@5|))) (DistributedSystem.Step.msgOps |step#0@@5|)) (and (forall ((|other#2| Int) ) (!  (and (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@65| |other#2|) (=> (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2|) (DistributedSystem.Step.Step_q |step#0@@5|))) (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2|) (not (= |other#2| (DistributedSystem.Step.id |step#0@@5|)))) (and (and (|$IsA#Host.Variables| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) |other#2|))) (|$IsA#Host.Variables| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) |other#2|)))) (and (DistributedSystem.Variables.Variables_q |v'#0@@21|) (DistributedSystem.Variables.Variables_q |v#0@@57|)))))
 :qid |distributedsystemtdfy.54:16|
 :skolemid |2891|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) |other#2|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) |other#2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2|))
)) (=> (forall ((|other#2@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2@@0|) (not (= |other#2@@0| (DistributedSystem.Step.id |step#0@@5|)))) (|Host.Variables#Equal| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) |other#2@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) |other#2@@0|))))
 :qid |distributedsystemtdfy.54:16|
 :skolemid |2892|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) |other#2@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) |other#2@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2@@0|))
)) (and (and (and (and (DistributedSystem.Constants.Constants_q |c#0@@65|) (DistributedSystem.Variables.Variables_q |v#0@@57|)) (DistributedSystem.Variables.Variables_q |v'#0@@21|)) (DistributedSystem.Step.Step_q |step#0@@5|)) (|Network.__default.Next#canCall| Tclass.Host.Message (DistributedSystem.Constants.network |c#0@@65|) (DistributedSystem.Variables.network |v#0@@57|) (DistributedSystem.Variables.network |v'#0@@21|) (DistributedSystem.Step.msgOps |step#0@@5|))))))))))))) (= (DistributedSystem.__default.NextStep |c#0@@65| |v#0@@57| |v'#0@@21| |step#0@@5|)  (and (and (and (and (and (DistributedSystem.Variables.WF |v#0@@57| |c#0@@65|) (DistributedSystem.Variables.WF |v'#0@@21| |c#0@@65|)) (DistributedSystem.Constants.ValidHostId |c#0@@65| (DistributedSystem.Step.id |step#0@@5|))) (Host.__default.Next ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@65|) (DistributedSystem.Step.id |step#0@@5|))) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) (DistributedSystem.Step.id |step#0@@5|))) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) (DistributedSystem.Step.id |step#0@@5|))) (DistributedSystem.Step.msgOps |step#0@@5|))) (forall ((|other#2@@1| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2@@1|) (not (= |other#2@@1| (DistributedSystem.Step.id |step#0@@5|)))) (|Host.Variables#Equal| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) |other#2@@1|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) |other#2@@1|))))
 :qid |distributedsystemtdfy.54:16|
 :skolemid |2890|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@57|) |other#2@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@21|) |other#2@@1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@65| |other#2@@1|))
))) (Network.__default.Next Tclass.Host.Message (DistributedSystem.Constants.network |c#0@@65|) (DistributedSystem.Variables.network |v#0@@57|) (DistributedSystem.Variables.network |v'#0@@21|) (DistributedSystem.Step.msgOps |step#0@@5|))))))
 :qid |distributedsystemtdfy.49:22|
 :skolemid |2893|
 :pattern ( (DistributedSystem.__default.NextStep |c#0@@65| |v#0@@57| |v'#0@@21| |step#0@@5|))
))))
(assert  (=> true (forall ((|c#0@@66| T@U) (|v#0@@58| T@U) (|v'#0@@22| T@U) (|step#0@@6| T@U) ) (!  (=> (and (and (and (and (= (type |c#0@@66|) DatatypeTypeType) (= (type |v#0@@58|) DatatypeTypeType)) (= (type |v'#0@@22|) DatatypeTypeType)) (= (type |step#0@@6|) DatatypeTypeType)) (or (|DistributedSystem.__default.NextStep#canCall| (Lit |c#0@@66|) (Lit |v#0@@58|) (Lit |v'#0@@22|) (Lit |step#0@@6|)) (and (and (and ($Is |c#0@@66| Tclass.DistributedSystem.Constants) ($Is |v#0@@58| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@22| Tclass.DistributedSystem.Variables)) ($Is |step#0@@6| Tclass.DistributedSystem.Step)))) (and (and (|DistributedSystem.Variables.WF#canCall| (Lit |v#0@@58|) (Lit |c#0@@66|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@58|) (Lit |c#0@@66|))))) (and (|DistributedSystem.Variables.WF#canCall| (Lit |v'#0@@22|) (Lit |c#0@@66|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v'#0@@22|) (Lit |c#0@@66|))))) (and (and (DistributedSystem.Step.Step_q (Lit |step#0@@6|)) (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@66|) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Constants.ValidHostId (Lit |c#0@@66|) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))))) (and (and (and (and (and (and (DistributedSystem.Constants.Constants_q (Lit |c#0@@66|)) (DistributedSystem.Step.Step_q (Lit |step#0@@6|))) (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@58|)) (DistributedSystem.Step.Step_q (Lit |step#0@@6|)))) (and (DistributedSystem.Variables.Variables_q (Lit |v'#0@@22|)) (DistributedSystem.Step.Step_q (Lit |step#0@@6|)))) (DistributedSystem.Step.Step_q (Lit |step#0@@6|))) (|Host.__default.Next#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@66|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@58|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v'#0@@22|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) (Lit (DistributedSystem.Step.msgOps (Lit |step#0@@6|))))) (=> (Host.__default.Next ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@66|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@58|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v'#0@@22|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) (Lit (DistributedSystem.Step.msgOps (Lit |step#0@@6|)))) (and (forall ((|other#3| Int) ) (!  (and (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@66|) |other#3|) (=> (DistributedSystem.Constants.ValidHostId (Lit |c#0@@66|) |other#3|) (DistributedSystem.Step.Step_q (Lit |step#0@@6|)))) (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@66|) |other#3|) (not (= |other#3| (DistributedSystem.Step.id (Lit |step#0@@6|))))) (and (and (|$IsA#Host.Variables| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v'#0@@22|))) |other#3|))) (|$IsA#Host.Variables| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@58|))) |other#3|)))) (and (DistributedSystem.Variables.Variables_q (Lit |v'#0@@22|)) (DistributedSystem.Variables.Variables_q (Lit |v#0@@58|))))))
 :qid |distributedsystemtdfy.54:16|
 :skolemid |2895|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@58|) |other#3|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@22|) |other#3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@66| |other#3|))
)) (=> (forall ((|other#3@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@66|) |other#3@@0|) (not (= |other#3@@0| (DistributedSystem.Step.id (Lit |step#0@@6|))))) (|Host.Variables#Equal| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v'#0@@22|))) |other#3@@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@58|))) |other#3@@0|))))
 :qid |distributedsystemtdfy.54:16|
 :skolemid |2896|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@58|) |other#3@@0|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@22|) |other#3@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@66| |other#3@@0|))
)) (and (and (and (and (DistributedSystem.Constants.Constants_q (Lit |c#0@@66|)) (DistributedSystem.Variables.Variables_q (Lit |v#0@@58|))) (DistributedSystem.Variables.Variables_q (Lit |v'#0@@22|))) (DistributedSystem.Step.Step_q (Lit |step#0@@6|))) (|Network.__default.Next#canCall| Tclass.Host.Message (Lit (DistributedSystem.Constants.network (Lit |c#0@@66|))) (Lit (DistributedSystem.Variables.network (Lit |v#0@@58|))) (Lit (DistributedSystem.Variables.network (Lit |v'#0@@22|))) (Lit (DistributedSystem.Step.msgOps (Lit |step#0@@6|))))))))))))))) (= (DistributedSystem.__default.NextStep (Lit |c#0@@66|) (Lit |v#0@@58|) (Lit |v'#0@@22|) (Lit |step#0@@6|))  (and (and (and (and (and (DistributedSystem.Variables.WF (Lit |v#0@@58|) (Lit |c#0@@66|)) (DistributedSystem.Variables.WF (Lit |v'#0@@22|) (Lit |c#0@@66|))) (DistributedSystem.Constants.ValidHostId (Lit |c#0@@66|) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) (Host.__default.Next ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Constants.hosts (Lit |c#0@@66|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@58|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v'#0@@22|))) (LitInt (DistributedSystem.Step.id (Lit |step#0@@6|))))) (Lit (DistributedSystem.Step.msgOps (Lit |step#0@@6|))))) (forall ((|other#3@@1| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId (Lit |c#0@@66|) |other#3@@1|) (not (= |other#3@@1| (DistributedSystem.Step.id (Lit |step#0@@6|))))) (|Host.Variables#Equal| ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v'#0@@22|))) |other#3@@1|)) ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@58|))) |other#3@@1|))))
 :qid |distributedsystemtdfy.54:16|
 :skolemid |2894|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@58|) |other#3@@1|)))
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@22|) |other#3@@1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@66| |other#3@@1|))
))) (Network.__default.Next Tclass.Host.Message (Lit (DistributedSystem.Constants.network (Lit |c#0@@66|))) (Lit (DistributedSystem.Variables.network (Lit |v#0@@58|))) (Lit (DistributedSystem.Variables.network (Lit |v'#0@@22|))) (Lit (DistributedSystem.Step.msgOps (Lit |step#0@@6|))))))))
 :qid |distributedsystemtdfy.49:22|
 :weight 3
 :skolemid |2897|
 :pattern ( (DistributedSystem.__default.NextStep (Lit |c#0@@66|) (Lit |v#0@@58|) (Lit |v'#0@@22|) (Lit |step#0@@6|)))
))))
(assert  (=> true (forall ((|c#0@@67| T@U) (|v#0@@59| T@U) (|v'#0@@23| T@U) ) (!  (=> (and (and (and (= (type |c#0@@67|) DatatypeTypeType) (= (type |v#0@@59|) DatatypeTypeType)) (= (type |v'#0@@23|) DatatypeTypeType)) (or (|DistributedSystem.__default.Next#canCall| |c#0@@67| |v#0@@59| |v'#0@@23|) (and (and ($Is |c#0@@67| Tclass.DistributedSystem.Constants) ($Is |v#0@@59| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@23| Tclass.DistributedSystem.Variables)))) true)
 :qid |distributedsystemtdfy.58:18|
 :skolemid |2898|
 :pattern ( (DistributedSystem.__default.Next |c#0@@67| |v#0@@59| |v'#0@@23|))
))))
(assert (forall ((|c#0@@68| T@U) (|v#0@@60| T@U) (|v'#0@@24| T@U) ) (!  (=> (and (and (and (= (type |c#0@@68|) DatatypeTypeType) (= (type |v#0@@60|) DatatypeTypeType)) (= (type |v'#0@@24|) DatatypeTypeType)) (and (and ($Is |c#0@@68| Tclass.DistributedSystem.Constants) ($Is |v#0@@60| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@24| Tclass.DistributedSystem.Variables))) (= (|DistributedSystem.__default.Next#requires| |c#0@@68| |v#0@@60| |v'#0@@24|) true))
 :qid |distributedsystemtdfy.58:18|
 :skolemid |2899|
 :pattern ( (|DistributedSystem.__default.Next#requires| |c#0@@68| |v#0@@60| |v'#0@@24|))
)))
(assert  (=> true (forall ((|c#0@@69| T@U) (|v#0@@61| T@U) (|v'#0@@25| T@U) ) (!  (=> (and (and (and (= (type |c#0@@69|) DatatypeTypeType) (= (type |v#0@@61|) DatatypeTypeType)) (= (type |v'#0@@25|) DatatypeTypeType)) (or (|DistributedSystem.__default.Next#canCall| |c#0@@69| |v#0@@61| |v'#0@@25|) (and (and ($Is |c#0@@69| Tclass.DistributedSystem.Constants) ($Is |v#0@@61| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@25| Tclass.DistributedSystem.Variables)))) (and (forall ((|step#2@@1| T@U) ) (!  (=> (and (= (type |step#2@@1|) DatatypeTypeType) ($Is |step#2@@1| Tclass.DistributedSystem.Step)) (|DistributedSystem.__default.NextStep#canCall| |c#0@@69| |v#0@@61| |v'#0@@25| |step#2@@1|))
 :qid |distributedsystemtdfy.59:12|
 :skolemid |2901|
 :pattern ( (DistributedSystem.__default.NextStep |c#0@@69| |v#0@@61| |v'#0@@25| |step#2@@1|))
)) (= (DistributedSystem.__default.Next |c#0@@69| |v#0@@61| |v'#0@@25|) (exists ((|step#2@@2| T@U) ) (!  (and (= (type |step#2@@2|) DatatypeTypeType) (and ($Is |step#2@@2| Tclass.DistributedSystem.Step) (DistributedSystem.__default.NextStep |c#0@@69| |v#0@@61| |v'#0@@25| |step#2@@2|)))
 :qid |distributedsystemtdfy.59:12|
 :skolemid |2900|
 :pattern ( (DistributedSystem.__default.NextStep |c#0@@69| |v#0@@61| |v'#0@@25| |step#2@@2|))
)))))
 :qid |distributedsystemtdfy.58:18|
 :skolemid |2902|
 :pattern ( (DistributedSystem.__default.Next |c#0@@69| |v#0@@61| |v'#0@@25|))
))))
(assert  (=> true (forall ((|c#0@@70| T@U) (|v#0@@62| T@U) (|v'#0@@26| T@U) ) (!  (=> (and (and (and (= (type |c#0@@70|) DatatypeTypeType) (= (type |v#0@@62|) DatatypeTypeType)) (= (type |v'#0@@26|) DatatypeTypeType)) (or (|DistributedSystem.__default.Next#canCall| (Lit |c#0@@70|) (Lit |v#0@@62|) (Lit |v'#0@@26|)) (and (and ($Is |c#0@@70| Tclass.DistributedSystem.Constants) ($Is |v#0@@62| Tclass.DistributedSystem.Variables)) ($Is |v'#0@@26| Tclass.DistributedSystem.Variables)))) (and (forall ((|step#3@@1| T@U) ) (!  (=> (and (= (type |step#3@@1|) DatatypeTypeType) ($Is |step#3@@1| Tclass.DistributedSystem.Step)) (|DistributedSystem.__default.NextStep#canCall| (Lit |c#0@@70|) (Lit |v#0@@62|) (Lit |v'#0@@26|) |step#3@@1|))
 :qid |distributedsystemtdfy.59:12|
 :skolemid |2904|
 :pattern ( (DistributedSystem.__default.NextStep |c#0@@70| |v#0@@62| |v'#0@@26| |step#3@@1|))
)) (= (DistributedSystem.__default.Next (Lit |c#0@@70|) (Lit |v#0@@62|) (Lit |v'#0@@26|)) (exists ((|step#3@@2| T@U) ) (!  (and (= (type |step#3@@2|) DatatypeTypeType) (and ($Is |step#3@@2| Tclass.DistributedSystem.Step) (DistributedSystem.__default.NextStep (Lit |c#0@@70|) (Lit |v#0@@62|) (Lit |v'#0@@26|) |step#3@@2|)))
 :qid |distributedsystemtdfy.59:12|
 :skolemid |2903|
 :pattern ( (DistributedSystem.__default.NextStep |c#0@@70| |v#0@@62| |v'#0@@26| |step#3@@2|))
)))))
 :qid |distributedsystemtdfy.58:18|
 :weight 3
 :skolemid |2905|
 :pattern ( (DistributedSystem.__default.Next (Lit |c#0@@70|) (Lit |v#0@@62|) (Lit |v'#0@@26|)))
))))
(assert (= (type Tclass.SafetySpec.__default) TyType))
(assert (= (Tag Tclass.SafetySpec.__default) Tagclass.SafetySpec.__default))
(assert (= (TagFamily Tclass.SafetySpec.__default) tytagFamily$_default))
(assert (forall ((bx@@101 T@U) ) (!  (=> (and (= (type bx@@101) BoxType) ($IsBox bx@@101 Tclass.SafetySpec.__default)) (and (= ($Box ($Unbox refType bx@@101)) bx@@101) ($Is ($Unbox refType bx@@101) Tclass.SafetySpec.__default)))
 :qid |unknown.0:0|
 :skolemid |2906|
 :pattern ( ($IsBox bx@@101 Tclass.SafetySpec.__default))
)))
(assert (forall (($o@@21 T@U) ) (!  (=> (= (type $o@@21) refType) (= ($Is $o@@21 Tclass.SafetySpec.__default)  (or (= $o@@21 null) (= (dtype $o@@21) Tclass.SafetySpec.__default))))
 :qid |unknown.0:0|
 :skolemid |2907|
 :pattern ( ($Is $o@@21 Tclass.SafetySpec.__default))
)))
(assert (forall (($o@@22 T@U) ($h@@82 T@U) ) (!  (=> (and (= (type $o@@22) refType) (= (type $h@@82) (MapType0Type refType MapType1Type))) (= ($IsAlloc $o@@22 Tclass.SafetySpec.__default $h@@82)  (or (= $o@@22 null) (U_2_bool (MapType1Select (MapType0Select $h@@82 $o@@22) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2908|
 :pattern ( ($IsAlloc $o@@22 Tclass.SafetySpec.__default $h@@82))
)))
(assert  (=> true (forall ((|c#0@@71| T@U) (|v#0@@63| T@U) (|idx#0@@5| Int) ) (!  (=> (and (and (= (type |c#0@@71|) DatatypeTypeType) (= (type |v#0@@63|) DatatypeTypeType)) (or (|SafetySpec.__default.HostHoldsLock#canCall| |c#0@@71| |v#0@@63| |idx#0@@5|) (and ($Is |c#0@@71| Tclass.DistributedSystem.Constants) ($Is |v#0@@63| Tclass.DistributedSystem.Variables)))) true)
 :qid |exercise01dfy.34:27|
 :skolemid |2909|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@71| |v#0@@63| |idx#0@@5|))
))))
(assert (forall ((|c#0@@72| T@U) (|v#0@@64| T@U) (|idx#0@@6| Int) ) (!  (=> (and (and (= (type |c#0@@72|) DatatypeTypeType) (= (type |v#0@@64|) DatatypeTypeType)) (and ($Is |c#0@@72| Tclass.DistributedSystem.Constants) ($Is |v#0@@64| Tclass.DistributedSystem.Variables))) (= (|SafetySpec.__default.HostHoldsLock#requires| |c#0@@72| |v#0@@64| |idx#0@@6|) true))
 :qid |exercise01dfy.34:27|
 :skolemid |2910|
 :pattern ( (|SafetySpec.__default.HostHoldsLock#requires| |c#0@@72| |v#0@@64| |idx#0@@6|))
)))
(assert  (=> true (forall ((|c#0@@73| T@U) (|v#0@@65| T@U) (|idx#0@@7| Int) ) (!  (=> (and (and (= (type |c#0@@73|) DatatypeTypeType) (= (type |v#0@@65|) DatatypeTypeType)) (or (|SafetySpec.__default.HostHoldsLock#canCall| |c#0@@73| |v#0@@65| |idx#0@@7|) (and ($Is |c#0@@73| Tclass.DistributedSystem.Constants) ($Is |v#0@@65| Tclass.DistributedSystem.Variables)))) (and (and (|DistributedSystem.Variables.WF#canCall| |v#0@@65| |c#0@@73|) (=> (DistributedSystem.Variables.WF |v#0@@65| |c#0@@73|) (and (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@73| |idx#0@@7|) (=> (DistributedSystem.Constants.ValidHostId |c#0@@73| |idx#0@@7|) (and (DistributedSystem.Variables.Variables_q |v#0@@65|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@65|) |idx#0@@7|)))))))) (= (SafetySpec.__default.HostHoldsLock |c#0@@73| |v#0@@65| |idx#0@@7|)  (and (and (DistributedSystem.Variables.WF |v#0@@65| |c#0@@73|) (DistributedSystem.Constants.ValidHostId |c#0@@73| |idx#0@@7|)) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@65|) |idx#0@@7|)))))))
 :qid |exercise01dfy.34:27|
 :skolemid |2911|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@73| |v#0@@65| |idx#0@@7|))
))))
(assert  (=> true (forall ((|c#0@@74| T@U) (|v#0@@66| T@U) (|idx#0@@8| Int) ) (!  (=> (and (and (= (type |c#0@@74|) DatatypeTypeType) (= (type |v#0@@66|) DatatypeTypeType)) (or (|SafetySpec.__default.HostHoldsLock#canCall| (Lit |c#0@@74|) (Lit |v#0@@66|) (LitInt |idx#0@@8|)) (and ($Is |c#0@@74| Tclass.DistributedSystem.Constants) ($Is |v#0@@66| Tclass.DistributedSystem.Variables)))) (and (and (|DistributedSystem.Variables.WF#canCall| (Lit |v#0@@66|) (Lit |c#0@@74|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Variables.WF (Lit |v#0@@66|) (Lit |c#0@@74|))))) (and (|DistributedSystem.Constants.ValidHostId#canCall| (Lit |c#0@@74|) (LitInt |idx#0@@8|)) (=> (U_2_bool (Lit (bool_2_U (DistributedSystem.Constants.ValidHostId (Lit |c#0@@74|) (LitInt |idx#0@@8|))))) (and (DistributedSystem.Variables.Variables_q (Lit |v#0@@66|)) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@66|))) (LitInt |idx#0@@8|))))))))) (= (SafetySpec.__default.HostHoldsLock (Lit |c#0@@74|) (Lit |v#0@@66|) (LitInt |idx#0@@8|))  (and (and (DistributedSystem.Variables.WF (Lit |v#0@@66|) (Lit |c#0@@74|)) (DistributedSystem.Constants.ValidHostId (Lit |c#0@@74|) (LitInt |idx#0@@8|))) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (Lit (DistributedSystem.Variables.hosts (Lit |v#0@@66|))) (LitInt |idx#0@@8|))))))))
 :qid |exercise01dfy.34:27|
 :weight 3
 :skolemid |2912|
 :pattern ( (SafetySpec.__default.HostHoldsLock (Lit |c#0@@74|) (Lit |v#0@@66|) (LitInt |idx#0@@8|)))
))))
(assert  (=> true (forall ((|c#0@@75| T@U) (|v#0@@67| T@U) ) (!  (=> (and (and (= (type |c#0@@75|) DatatypeTypeType) (= (type |v#0@@67|) DatatypeTypeType)) (or (|SafetySpec.__default.Safety#canCall| |c#0@@75| |v#0@@67|) (and ($Is |c#0@@75| Tclass.DistributedSystem.Constants) ($Is |v#0@@67| Tclass.DistributedSystem.Variables)))) true)
 :qid |exercise01dfy.43:20|
 :skolemid |2913|
 :pattern ( (SafetySpec.__default.Safety |c#0@@75| |v#0@@67|))
))))
(assert (forall ((|c#0@@76| T@U) (|v#0@@68| T@U) ) (!  (=> (and (and (= (type |c#0@@76|) DatatypeTypeType) (= (type |v#0@@68|) DatatypeTypeType)) (and ($Is |c#0@@76| Tclass.DistributedSystem.Constants) ($Is |v#0@@68| Tclass.DistributedSystem.Variables))) (= (|SafetySpec.__default.Safety#requires| |c#0@@76| |v#0@@68|) true))
 :qid |exercise01dfy.43:20|
 :skolemid |2914|
 :pattern ( (|SafetySpec.__default.Safety#requires| |c#0@@76| |v#0@@68|))
)))
(assert  (=> true (forall ((|c#0@@77| T@U) (|v#0@@69| T@U) ) (!  (=> (and (and (= (type |c#0@@77|) DatatypeTypeType) (= (type |v#0@@69|) DatatypeTypeType)) (or (|SafetySpec.__default.Safety#canCall| |c#0@@77| |v#0@@69|) (and ($Is |c#0@@77| Tclass.DistributedSystem.Constants) ($Is |v#0@@69| Tclass.DistributedSystem.Variables)))) (and (forall ((|idx1#4| Int) (|idx2#4| Int) ) (!  (and (|SafetySpec.__default.HostHoldsLock#canCall| |c#0@@77| |v#0@@69| |idx1#4|) (=> (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx1#4|) (|SafetySpec.__default.HostHoldsLock#canCall| |c#0@@77| |v#0@@69| |idx2#4|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2916|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx2#4|) (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx1#4|))
)) (= (SafetySpec.__default.Safety |c#0@@77| |v#0@@69|) (forall ((|idx1#4@@0| Int) (|idx2#4@@0| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx1#4@@0|) (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx2#4@@0|)) (= |idx1#4@@0| |idx2#4@@0|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2915|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx2#4@@0|) (SafetySpec.__default.HostHoldsLock |c#0@@77| |v#0@@69| |idx1#4@@0|))
)))))
 :qid |exercise01dfy.43:20|
 :skolemid |2917|
 :pattern ( (SafetySpec.__default.Safety |c#0@@77| |v#0@@69|))
))))
(assert  (=> true (forall ((|c#0@@78| T@U) (|v#0@@70| T@U) ) (!  (=> (and (and (= (type |c#0@@78|) DatatypeTypeType) (= (type |v#0@@70|) DatatypeTypeType)) (or (|SafetySpec.__default.Safety#canCall| (Lit |c#0@@78|) (Lit |v#0@@70|)) (and ($Is |c#0@@78| Tclass.DistributedSystem.Constants) ($Is |v#0@@70| Tclass.DistributedSystem.Variables)))) (and (forall ((|idx1#5| Int) (|idx2#5| Int) ) (!  (and (|SafetySpec.__default.HostHoldsLock#canCall| (Lit |c#0@@78|) (Lit |v#0@@70|) |idx1#5|) (=> (SafetySpec.__default.HostHoldsLock (Lit |c#0@@78|) (Lit |v#0@@70|) |idx1#5|) (|SafetySpec.__default.HostHoldsLock#canCall| (Lit |c#0@@78|) (Lit |v#0@@70|) |idx2#5|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2919|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@78| |v#0@@70| |idx2#5|) (SafetySpec.__default.HostHoldsLock |c#0@@78| |v#0@@70| |idx1#5|))
)) (= (SafetySpec.__default.Safety (Lit |c#0@@78|) (Lit |v#0@@70|)) (forall ((|idx1#5@@0| Int) (|idx2#5@@0| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock (Lit |c#0@@78|) (Lit |v#0@@70|) |idx1#5@@0|) (SafetySpec.__default.HostHoldsLock (Lit |c#0@@78|) (Lit |v#0@@70|) |idx2#5@@0|)) (= |idx1#5@@0| |idx2#5@@0|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2918|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@78| |v#0@@70| |idx2#5@@0|) (SafetySpec.__default.HostHoldsLock |c#0@@78| |v#0@@70| |idx1#5@@0|))
)))))
 :qid |exercise01dfy.43:20|
 :weight 3
 :skolemid |2920|
 :pattern ( (SafetySpec.__default.Safety (Lit |c#0@@78|) (Lit |v#0@@70|)))
))))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@303 T@T) (arg1@@140 T@T) ) (! (= (Ctor (MapType7Type arg0@@303 arg1@@140)) 29)
 :qid |ctor:MapType7Type|
)) (forall ((arg0@@304 T@T) (arg1@@141 T@T) ) (! (= (MapType7TypeInv0 (MapType7Type arg0@@304 arg1@@141)) arg0@@304)
 :qid |typeInv:MapType7TypeInv0|
 :pattern ( (MapType7Type arg0@@304 arg1@@141))
))) (forall ((arg0@@305 T@T) (arg1@@142 T@T) ) (! (= (MapType7TypeInv1 (MapType7Type arg0@@305 arg1@@142)) arg1@@142)
 :qid |typeInv:MapType7TypeInv1|
 :pattern ( (MapType7Type arg0@@305 arg1@@142))
))) (forall ((arg0@@306 T@U) (arg1@@143 T@U) (arg2@@81 T@U) ) (! (let ((aVar1@@7 (MapType7TypeInv1 (type arg0@@306))))
(= (type (MapType7Select arg0@@306 arg1@@143 arg2@@81)) aVar1@@7))
 :qid |funType:MapType7Select|
 :pattern ( (MapType7Select arg0@@306 arg1@@143 arg2@@81))
))) (forall ((arg0@@307 T@U) (arg1@@144 T@U) (arg2@@82 T@U) (arg3@@56 T@U) ) (! (let ((aVar1@@8 (type arg3@@56)))
(let ((aVar0@@5 (type arg1@@144)))
(= (type (MapType7Store arg0@@307 arg1@@144 arg2@@82 arg3@@56)) (MapType7Type aVar0@@5 aVar1@@8))))
 :qid |funType:MapType7Store|
 :pattern ( (MapType7Store arg0@@307 arg1@@144 arg2@@82 arg3@@56))
))) (forall ((m@@75 T@U) (x0@@35 T@U) (x1@@29 T@U) (val@@36 T@U) ) (! (let ((aVar1@@9 (MapType7TypeInv1 (type m@@75))))
 (=> (= (type val@@36) aVar1@@9) (= (MapType7Select (MapType7Store m@@75 x0@@35 x1@@29 val@@36) x0@@35 x1@@29) val@@36)))
 :qid |mapAx0:MapType7Select|
 :weight 0
))) (and (and (forall ((val@@37 T@U) (m@@76 T@U) (x0@@36 T@U) (x1@@30 T@U) (y0@@28 T@U) (y1@@24 T@U) ) (!  (or (= x0@@36 y0@@28) (= (MapType7Select (MapType7Store m@@76 x0@@36 x1@@30 val@@37) y0@@28 y1@@24) (MapType7Select m@@76 y0@@28 y1@@24)))
 :qid |mapAx1:MapType7Select:0|
 :weight 0
)) (forall ((val@@38 T@U) (m@@77 T@U) (x0@@37 T@U) (x1@@31 T@U) (y0@@29 T@U) (y1@@25 T@U) ) (!  (or (= x1@@31 y1@@25) (= (MapType7Select (MapType7Store m@@77 x0@@37 x1@@31 val@@38) y0@@29 y1@@25) (MapType7Select m@@77 y0@@29 y1@@25)))
 :qid |mapAx1:MapType7Select:1|
 :weight 0
))) (forall ((val@@39 T@U) (m@@78 T@U) (x0@@38 T@U) (x1@@32 T@U) (y0@@30 T@U) (y1@@26 T@U) ) (!  (or true (= (MapType7Select (MapType7Store m@@78 x0@@38 x1@@32 val@@39) y0@@30 y1@@26) (MapType7Select m@@78 y0@@30 y1@@26)))
 :qid |mapAx2:MapType7Select|
 :weight 0
)))) (forall ((arg0@@308 T@U) (arg1@@145 T@U) (arg2@@83 T@U) (arg3@@57 Bool) ) (! (= (type (|lambda#0| arg0@@308 arg1@@145 arg2@@83 arg3@@57)) (MapType7Type refType boolType))
 :qid |funType:lambda#0|
 :pattern ( (|lambda#0| arg0@@308 arg1@@145 arg2@@83 arg3@@57))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@23 T@U) ($f T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type $f))))
 (=> (and (and (and (and (= (type |l#0|) refType) (= (type |l#1|) (MapType0Type refType MapType1Type))) (= (type |l#2|) (FieldType boolType))) (= (type $o@@23) refType)) (= (type $f) (FieldType alpha@@6))) (= (U_2_bool (MapType7Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@23 $f))  (=> (and (not (= $o@@23 |l#0|)) (U_2_bool (MapType1Select (MapType0Select |l#1| $o@@23) |l#2|))) |l#3|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2921|
 :pattern ( (MapType7Select (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@23 $f))
)))
(assert (forall ((arg0@@309 T@U) (arg1@@146 T@U) (arg2@@84 T@U) (arg3@@58 Bool) ) (! (= (type (|lambda#1| arg0@@309 arg1@@146 arg2@@84 arg3@@58)) (MapType7Type refType boolType))
 :qid |funType:lambda#1|
 :pattern ( (|lambda#1| arg0@@309 arg1@@146 arg2@@84 arg3@@58))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@24 T@U) ($f@@0 T@U) ) (! (let ((alpha@@7 (FieldTypeInv0 (type $f@@0))))
 (=> (and (and (and (and (= (type |l#0@@0|) refType) (= (type |l#1@@0|) (MapType0Type refType MapType1Type))) (= (type |l#2@@0|) (FieldType boolType))) (= (type $o@@24) refType)) (= (type $f@@0) (FieldType alpha@@7))) (= (U_2_bool (MapType7Select (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@24 $f@@0))  (=> (and (not (= $o@@24 |l#0@@0|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@0| $o@@24) |l#2@@0|))) |l#3@@0|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2922|
 :pattern ( (MapType7Select (|lambda#1| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@24 $f@@0))
)))
(assert (forall ((arg0@@310 T@U) (arg1@@147 T@U) (arg2@@85 T@U) (arg3@@59 Bool) ) (! (= (type (|lambda#2| arg0@@310 arg1@@147 arg2@@85 arg3@@59)) (MapType7Type refType boolType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@310 arg1@@147 arg2@@85 arg3@@59))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| Bool) ($o@@25 T@U) ($f@@1 T@U) ) (! (let ((alpha@@8 (FieldTypeInv0 (type $f@@1))))
 (=> (and (and (and (and (= (type |l#0@@1|) refType) (= (type |l#1@@1|) (MapType0Type refType MapType1Type))) (= (type |l#2@@1|) (FieldType boolType))) (= (type $o@@25) refType)) (= (type $f@@1) (FieldType alpha@@8))) (= (U_2_bool (MapType7Select (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o@@25 $f@@1))  (=> (and (not (= $o@@25 |l#0@@1|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@1| $o@@25) |l#2@@1|))) |l#3@@1|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2923|
 :pattern ( (MapType7Select (|lambda#2| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o@@25 $f@@1))
)))
(assert (forall ((arg0@@311 T@U) (arg1@@148 T@U) (arg2@@86 T@U) (arg3@@60 Bool) ) (! (= (type (|lambda#3| arg0@@311 arg1@@148 arg2@@86 arg3@@60)) (MapType7Type refType boolType))
 :qid |funType:lambda#3|
 :pattern ( (|lambda#3| arg0@@311 arg1@@148 arg2@@86 arg3@@60))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2@@2| T@U) (|l#3@@2| Bool) ($o@@26 T@U) ($f@@2 T@U) ) (! (let ((alpha@@9 (FieldTypeInv0 (type $f@@2))))
 (=> (and (and (and (and (= (type |l#0@@2|) refType) (= (type |l#1@@2|) (MapType0Type refType MapType1Type))) (= (type |l#2@@2|) (FieldType boolType))) (= (type $o@@26) refType)) (= (type $f@@2) (FieldType alpha@@9))) (= (U_2_bool (MapType7Select (|lambda#3| |l#0@@2| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@26 $f@@2))  (=> (and (not (= $o@@26 |l#0@@2|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@2| $o@@26) |l#2@@2|))) |l#3@@2|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2924|
 :pattern ( (MapType7Select (|lambda#3| |l#0@@2| |l#1@@2| |l#2@@2| |l#3@@2|) $o@@26 $f@@2))
)))
(assert (forall ((arg0@@312 T@U) (arg1@@149 T@U) (arg2@@87 T@U) (arg3@@61 Bool) ) (! (= (type (|lambda#4| arg0@@312 arg1@@149 arg2@@87 arg3@@61)) (MapType7Type refType boolType))
 :qid |funType:lambda#4|
 :pattern ( (|lambda#4| arg0@@312 arg1@@149 arg2@@87 arg3@@61))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| T@U) (|l#2@@3| T@U) (|l#3@@3| Bool) ($o@@27 T@U) ($f@@3 T@U) ) (! (let ((alpha@@10 (FieldTypeInv0 (type $f@@3))))
 (=> (and (and (and (and (= (type |l#0@@3|) refType) (= (type |l#1@@3|) (MapType0Type refType MapType1Type))) (= (type |l#2@@3|) (FieldType boolType))) (= (type $o@@27) refType)) (= (type $f@@3) (FieldType alpha@@10))) (= (U_2_bool (MapType7Select (|lambda#4| |l#0@@3| |l#1@@3| |l#2@@3| |l#3@@3|) $o@@27 $f@@3))  (=> (and (not (= $o@@27 |l#0@@3|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@3| $o@@27) |l#2@@3|))) |l#3@@3|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2925|
 :pattern ( (MapType7Select (|lambda#4| |l#0@@3| |l#1@@3| |l#2@@3| |l#3@@3|) $o@@27 $f@@3))
)))
(assert (forall ((arg0@@313 T@U) (arg1@@150 T@U) (arg2@@88 T@U) (arg3@@62 Bool) ) (! (= (type (|lambda#5| arg0@@313 arg1@@150 arg2@@88 arg3@@62)) (MapType7Type refType boolType))
 :qid |funType:lambda#5|
 :pattern ( (|lambda#5| arg0@@313 arg1@@150 arg2@@88 arg3@@62))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@4| T@U) (|l#2@@4| T@U) (|l#3@@4| Bool) ($o@@28 T@U) ($f@@4 T@U) ) (! (let ((alpha@@11 (FieldTypeInv0 (type $f@@4))))
 (=> (and (and (and (and (= (type |l#0@@4|) refType) (= (type |l#1@@4|) (MapType0Type refType MapType1Type))) (= (type |l#2@@4|) (FieldType boolType))) (= (type $o@@28) refType)) (= (type $f@@4) (FieldType alpha@@11))) (= (U_2_bool (MapType7Select (|lambda#5| |l#0@@4| |l#1@@4| |l#2@@4| |l#3@@4|) $o@@28 $f@@4))  (=> (and (not (= $o@@28 |l#0@@4|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@4| $o@@28) |l#2@@4|))) |l#3@@4|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2926|
 :pattern ( (MapType7Select (|lambda#5| |l#0@@4| |l#1@@4| |l#2@@4| |l#3@@4|) $o@@28 $f@@4))
)))
(assert (forall ((arg0@@314 T@U) (arg1@@151 T@U) (arg2@@89 T@U) (arg3@@63 Bool) ) (! (= (type (|lambda#6| arg0@@314 arg1@@151 arg2@@89 arg3@@63)) (MapType7Type refType boolType))
 :qid |funType:lambda#6|
 :pattern ( (|lambda#6| arg0@@314 arg1@@151 arg2@@89 arg3@@63))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@5| T@U) (|l#2@@5| T@U) (|l#3@@5| Bool) ($o@@29 T@U) ($f@@5 T@U) ) (! (let ((alpha@@12 (FieldTypeInv0 (type $f@@5))))
 (=> (and (and (and (and (= (type |l#0@@5|) refType) (= (type |l#1@@5|) (MapType0Type refType MapType1Type))) (= (type |l#2@@5|) (FieldType boolType))) (= (type $o@@29) refType)) (= (type $f@@5) (FieldType alpha@@12))) (= (U_2_bool (MapType7Select (|lambda#6| |l#0@@5| |l#1@@5| |l#2@@5| |l#3@@5|) $o@@29 $f@@5))  (=> (and (not (= $o@@29 |l#0@@5|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@5| $o@@29) |l#2@@5|))) |l#3@@5|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2927|
 :pattern ( (MapType7Select (|lambda#6| |l#0@@5| |l#1@@5| |l#2@@5| |l#3@@5|) $o@@29 $f@@5))
)))
(assert (forall ((arg0@@315 T@U) (arg1@@152 T@U) (arg2@@90 T@U) (arg3@@64 Bool) ) (! (= (type (|lambda#7| arg0@@315 arg1@@152 arg2@@90 arg3@@64)) (MapType7Type refType boolType))
 :qid |funType:lambda#7|
 :pattern ( (|lambda#7| arg0@@315 arg1@@152 arg2@@90 arg3@@64))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@6| T@U) (|l#2@@6| T@U) (|l#3@@6| Bool) ($o@@30 T@U) ($f@@6 T@U) ) (! (let ((alpha@@13 (FieldTypeInv0 (type $f@@6))))
 (=> (and (and (and (and (= (type |l#0@@6|) refType) (= (type |l#1@@6|) (MapType0Type refType MapType1Type))) (= (type |l#2@@6|) (FieldType boolType))) (= (type $o@@30) refType)) (= (type $f@@6) (FieldType alpha@@13))) (= (U_2_bool (MapType7Select (|lambda#7| |l#0@@6| |l#1@@6| |l#2@@6| |l#3@@6|) $o@@30 $f@@6))  (=> (and (not (= $o@@30 |l#0@@6|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@6| $o@@30) |l#2@@6|))) |l#3@@6|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2928|
 :pattern ( (MapType7Select (|lambda#7| |l#0@@6| |l#1@@6| |l#2@@6| |l#3@@6|) $o@@30 $f@@6))
)))
(assert (forall ((arg0@@316 T@U) (arg1@@153 T@U) (arg2@@91 T@U) (arg3@@65 Bool) ) (! (= (type (|lambda#8| arg0@@316 arg1@@153 arg2@@91 arg3@@65)) (MapType7Type refType boolType))
 :qid |funType:lambda#8|
 :pattern ( (|lambda#8| arg0@@316 arg1@@153 arg2@@91 arg3@@65))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@7| T@U) (|l#2@@7| T@U) (|l#3@@7| Bool) ($o@@31 T@U) ($f@@7 T@U) ) (! (let ((alpha@@14 (FieldTypeInv0 (type $f@@7))))
 (=> (and (and (and (and (= (type |l#0@@7|) refType) (= (type |l#1@@7|) (MapType0Type refType MapType1Type))) (= (type |l#2@@7|) (FieldType boolType))) (= (type $o@@31) refType)) (= (type $f@@7) (FieldType alpha@@14))) (= (U_2_bool (MapType7Select (|lambda#8| |l#0@@7| |l#1@@7| |l#2@@7| |l#3@@7|) $o@@31 $f@@7))  (=> (and (not (= $o@@31 |l#0@@7|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@7| $o@@31) |l#2@@7|))) |l#3@@7|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2929|
 :pattern ( (MapType7Select (|lambda#8| |l#0@@7| |l#1@@7| |l#2@@7| |l#3@@7|) $o@@31 $f@@7))
)))
(assert (forall ((arg0@@317 T@U) (arg1@@154 T@U) (arg2@@92 T@U) (arg3@@66 Bool) ) (! (= (type (|lambda#9| arg0@@317 arg1@@154 arg2@@92 arg3@@66)) (MapType7Type refType boolType))
 :qid |funType:lambda#9|
 :pattern ( (|lambda#9| arg0@@317 arg1@@154 arg2@@92 arg3@@66))
)))
(assert (forall ((|l#0@@8| T@U) (|l#1@@8| T@U) (|l#2@@8| T@U) (|l#3@@8| Bool) ($o@@32 T@U) ($f@@8 T@U) ) (! (let ((alpha@@15 (FieldTypeInv0 (type $f@@8))))
 (=> (and (and (and (and (= (type |l#0@@8|) refType) (= (type |l#1@@8|) (MapType0Type refType MapType1Type))) (= (type |l#2@@8|) (FieldType boolType))) (= (type $o@@32) refType)) (= (type $f@@8) (FieldType alpha@@15))) (= (U_2_bool (MapType7Select (|lambda#9| |l#0@@8| |l#1@@8| |l#2@@8| |l#3@@8|) $o@@32 $f@@8))  (=> (and (not (= $o@@32 |l#0@@8|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@8| $o@@32) |l#2@@8|))) |l#3@@8|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2930|
 :pattern ( (MapType7Select (|lambda#9| |l#0@@8| |l#1@@8| |l#2@@8| |l#3@@8|) $o@@32 $f@@8))
)))
(assert (forall ((arg0@@318 T@U) (arg1@@155 T@U) (arg2@@93 T@U) (arg3@@67 Bool) ) (! (= (type (|lambda#10| arg0@@318 arg1@@155 arg2@@93 arg3@@67)) (MapType7Type refType boolType))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@318 arg1@@155 arg2@@93 arg3@@67))
)))
(assert (forall ((|l#0@@9| T@U) (|l#1@@9| T@U) (|l#2@@9| T@U) (|l#3@@9| Bool) ($o@@33 T@U) ($f@@9 T@U) ) (! (let ((alpha@@16 (FieldTypeInv0 (type $f@@9))))
 (=> (and (and (and (and (= (type |l#0@@9|) refType) (= (type |l#1@@9|) (MapType0Type refType MapType1Type))) (= (type |l#2@@9|) (FieldType boolType))) (= (type $o@@33) refType)) (= (type $f@@9) (FieldType alpha@@16))) (= (U_2_bool (MapType7Select (|lambda#10| |l#0@@9| |l#1@@9| |l#2@@9| |l#3@@9|) $o@@33 $f@@9))  (=> (and (not (= $o@@33 |l#0@@9|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@9| $o@@33) |l#2@@9|))) |l#3@@9|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2931|
 :pattern ( (MapType7Select (|lambda#10| |l#0@@9| |l#1@@9| |l#2@@9| |l#3@@9|) $o@@33 $f@@9))
)))
(assert (forall ((arg0@@319 T@U) (arg1@@156 T@U) (arg2@@94 T@U) (arg3@@68 Bool) ) (! (= (type (|lambda#11| arg0@@319 arg1@@156 arg2@@94 arg3@@68)) (MapType7Type refType boolType))
 :qid |funType:lambda#11|
 :pattern ( (|lambda#11| arg0@@319 arg1@@156 arg2@@94 arg3@@68))
)))
(assert (forall ((|l#0@@10| T@U) (|l#1@@10| T@U) (|l#2@@10| T@U) (|l#3@@10| Bool) ($o@@34 T@U) ($f@@10 T@U) ) (! (let ((alpha@@17 (FieldTypeInv0 (type $f@@10))))
 (=> (and (and (and (and (= (type |l#0@@10|) refType) (= (type |l#1@@10|) (MapType0Type refType MapType1Type))) (= (type |l#2@@10|) (FieldType boolType))) (= (type $o@@34) refType)) (= (type $f@@10) (FieldType alpha@@17))) (= (U_2_bool (MapType7Select (|lambda#11| |l#0@@10| |l#1@@10| |l#2@@10| |l#3@@10|) $o@@34 $f@@10))  (=> (and (not (= $o@@34 |l#0@@10|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@10| $o@@34) |l#2@@10|))) |l#3@@10|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2932|
 :pattern ( (MapType7Select (|lambda#11| |l#0@@10| |l#1@@10| |l#2@@10| |l#3@@10|) $o@@34 $f@@10))
)))
(assert (forall ((arg0@@320 T@U) (arg1@@157 T@U) (arg2@@95 T@U) (arg3@@69 Bool) ) (! (= (type (|lambda#12| arg0@@320 arg1@@157 arg2@@95 arg3@@69)) (MapType7Type refType boolType))
 :qid |funType:lambda#12|
 :pattern ( (|lambda#12| arg0@@320 arg1@@157 arg2@@95 arg3@@69))
)))
(assert (forall ((|l#0@@11| T@U) (|l#1@@11| T@U) (|l#2@@11| T@U) (|l#3@@11| Bool) ($o@@35 T@U) ($f@@11 T@U) ) (! (let ((alpha@@18 (FieldTypeInv0 (type $f@@11))))
 (=> (and (and (and (and (= (type |l#0@@11|) refType) (= (type |l#1@@11|) (MapType0Type refType MapType1Type))) (= (type |l#2@@11|) (FieldType boolType))) (= (type $o@@35) refType)) (= (type $f@@11) (FieldType alpha@@18))) (= (U_2_bool (MapType7Select (|lambda#12| |l#0@@11| |l#1@@11| |l#2@@11| |l#3@@11|) $o@@35 $f@@11))  (=> (and (not (= $o@@35 |l#0@@11|)) (U_2_bool (MapType1Select (MapType0Select |l#1@@11| $o@@35) |l#2@@11|))) |l#3@@11|))))
 :qid |DafnyPreludebpl.129:1|
 :skolemid |2933|
 :pattern ( (MapType7Select (|lambda#12| |l#0@@11| |l#1@@11| |l#2@@11| |l#3@@11|) $o@@35 $f@@11))
)))
(assert (forall ((|l#0@@12| T@U) (|l#1@@12| Int) (|l#2@@12| Int) (|l#3@@12| Int) (|$y#2| T@U) ) (!  (=> (and (= (type |l#0@@12|) TyType) (= (type |$y#2|) BoxType)) (= (U_2_bool (MapType0Select (|lambda#13| |l#0@@12| |l#1@@12| |l#2@@12| |l#3@@12|) |$y#2|))  (and ($IsBox |$y#2| |l#0@@12|) (and (and (<= |l#1@@12| (U_2_int ($Unbox intType |$y#2|))) (< (U_2_int ($Unbox intType |$y#2|)) |l#2@@12|)) (HostIdentifiers.__default.ValidHostId |l#3@@12| (U_2_int ($Unbox intType |$y#2|)))))))
 :qid |DafnyPreludebpl.22:1|
 :skolemid |2934|
 :pattern ( (MapType0Select (|lambda#13| |l#0@@12| |l#1@@12| |l#2@@12| |l#3@@12|) |$y#2|))
)))
(assert (forall ((|l#0@@13| T@U) (|l#1@@13| T@U) (|l#2@@13| T@U) (|$w#6| T@U) ) (!  (=> (and (and (and (= (type |l#0@@13|) TyType) (= (type |l#1@@13|) (MapType0Type BoxType boolType))) (= (type |l#2@@13|) BoxType)) (= (type |$w#6|) BoxType)) (= (U_2_bool (MapType0Select (|lambda#15| |l#0@@13| |l#1@@13| |l#2@@13|) |$w#6|))  (and ($IsBox |$w#6| |l#0@@13|) (and (U_2_bool (MapType0Select |l#1@@13| |$w#6|)) (not (= |$w#6| |l#2@@13|))))))
 :qid |unknown.0:0|
 :skolemid |2935|
 :pattern ( (MapType0Select (|lambda#15| |l#0@@13| |l#1@@13| |l#2@@13|) |$w#6|))
)))
(assert (forall ((|l#0@@14| T@U) (|$w#6@@0| T@U) ) (!  (=> (and (= (type |l#0@@14|) (MapType0Type BoxType BoxType)) (= (type |$w#6@@0|) BoxType)) (= (MapType0Select (|lambda#16| |l#0@@14|) |$w#6@@0|) (MapType0Select |l#0@@14| |$w#6@@0|)))
 :qid |UtilitiesLibrarydfy.61:45|
 :skolemid |2936|
 :pattern ( (MapType0Select (|lambda#16| |l#0@@14|) |$w#6@@0|))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@@79| () T@U)
(declare-fun |v#0@@71| () T@U)
(declare-fun |v'#0@@27| () T@U)
(declare-fun |msg#0_1_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |step#0_0@0| () T@U)
(declare-fun |_mcc#0#0_1_0@0| () Int)
(declare-fun |let#0_1_0#0#0| () Int)
(declare-fun |dest#0_1_0@0| () Int)
(declare-fun |msgOps#0_0@0| () T@U)
(declare-fun |##hostid#0_1_0@0| () Int)
(declare-fun |msg'#0_0_0@0| () T@U)
(declare-fun |msg#0_0_0@0| () T@U)
(declare-fun |id#0_1@0| () Int)
(declare-fun |step#0_1@0| () T@U)
(declare-fun |##c#0_2@0| () T@U)
(declare-fun |##v#0_1@0| () T@U)
(declare-fun |##v'#0_1@0| () T@U)
(declare-fun |msgOps#0_1@0| () T@U)
(declare-fun |##step#0_0@0| () T@U)
(declare-fun |id#0_2@0| () Int)
(declare-fun StartFuel_UtilitiesLibrary._default.MapRemoveOne () T@U)
(declare-fun StartFuelAssert_UtilitiesLibrary._default.MapRemoveOne () T@U)
(declare-fun $_Frame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |msgOps#0_0| () T@U)
(declare-fun |step#0_0| () T@U)
(declare-fun |msg#0_0_0| () T@U)
(declare-fun |msg#0_1_0| () T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type |c#0@@79|) DatatypeTypeType) (= (type |v#0@@71|) DatatypeTypeType)) (= (type |v'#0@@27|) DatatypeTypeType)) (= (type $Heap) (MapType0Type refType MapType1Type))) (= (type |msg'#0_0_0@0|) DatatypeTypeType)) (= (type |step#0_0@0|) DatatypeTypeType)) (= (type |msgOps#0_0@0|) DatatypeTypeType)) (= (type |msg#0_0_0@0|) DatatypeTypeType)) (= (type |msg#0_1_0@0|) DatatypeTypeType)) (= (type |step#0_1@0|) DatatypeTypeType)) (= (type |##c#0_2@0|) DatatypeTypeType)) (= (type |##v#0_1@0|) DatatypeTypeType)) (= (type |##v'#0_1@0|) DatatypeTypeType)) (= (type |msgOps#0_1@0|) DatatypeTypeType)) (= (type |##step#0_0@0|) DatatypeTypeType)) (= (type StartFuel_UtilitiesLibrary._default.MapRemoveOne) LayerTypeType)) (= (type StartFuelAssert_UtilitiesLibrary._default.MapRemoveOne) LayerTypeType)) (= (type $_Frame@0) (MapType7Type refType boolType))) (= (type |msgOps#0_0|) DatatypeTypeType)) (= (type |step#0_0|) DatatypeTypeType)) (= (type |msg#0_0_0|) DatatypeTypeType)) (= (type |msg#0_1_0|) DatatypeTypeType)))
(push 1)
(set-info :boogie-vc-id Impl$$Proof.__default.SafetyProof)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 183807) (let ((anon29_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 183739) (- 0 189263)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.Variables.WF |v#0@@71| |c#0@@79|))))) (=> (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.Variables.WF |v#0@@71| |c#0@@79|)))) (and (=> (= (ControlFlow 0 183739) (- 0 189293)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v#0@@71|) (forall ((|message#2| T@U) ) (!  (=> (and (and (= (type |message#2|) DatatypeTypeType) ($Is |message#2| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |message#2|)) (forall ((|idx#6| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#6|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#6|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2371|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#6|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#6|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2372|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |message#2|))
)))))))) (=> (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v#0@@71|) (forall ((|message#2@@0| T@U) ) (!  (=> (and (and (= (type |message#2@@0|) DatatypeTypeType) ($Is |message#2@@0| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |message#2@@0|)) (forall ((|idx#6@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#6@@0|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#6@@0|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2371|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#6@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#6@@0|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2372|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |message#2@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 189411)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v#0@@71|) (forall ((|idx#7| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#7|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#7|)))) (forall ((|idx'#2| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#2|) (not (= |idx'#2| |idx#7|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#7|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx'#2|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2375|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx'#2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#2|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2376|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#7|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#7|))
)))))))) (=> (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v#0@@71|) (forall ((|idx#7@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#7@@0|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#7@@0|)))) (forall ((|idx'#2@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#2@@0|) (not (= |idx'#2@@0| |idx#7@@0|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#7@@0|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx'#2@@0|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2375|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx'#2@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#2@@0|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2376|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#7@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#7@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 189569)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v#0@@71|) (forall ((|msg#2| T@U) ) (!  (=> (= (type |msg#2|) DatatypeTypeType) (=> (and ($Is |msg#2| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#2|)) (forall ((|idx#8| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#8|) (> (Host.Message.epoch |msg#2|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#8|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2379|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#8|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#8|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2380|
 :pattern ( (Host.Message.epoch |msg#2|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#2|))
)))))))) (=> (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v#0@@71|) (forall ((|msg#2@@0| T@U) ) (!  (=> (= (type |msg#2@@0|) DatatypeTypeType) (=> (and ($Is |msg#2@@0| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#2@@0|)) (forall ((|idx#8@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#8@@0|) (> (Host.Message.epoch |msg#2@@0|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#8@@0|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2379|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#8@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#8@@0|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2380|
 :pattern ( (Host.Message.epoch |msg#2@@0|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#2@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 189697)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v#0@@71|) (forall ((|msg1#2| T@U) (|msg2#2| T@U) ) (!  (=> (and (= (type |msg1#2|) DatatypeTypeType) (= (type |msg2#2|) DatatypeTypeType)) (=> (and (and ($Is |msg1#2| Tclass.Host.Message) ($Is |msg2#2| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg1#2|) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg2#2|))) (|Host.Message#Equal| |msg1#2| |msg2#2|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2383|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg2#2|) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg1#2|))
)))))))) (=> (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v#0@@71|) (forall ((|msg1#2@@0| T@U) (|msg2#2@@0| T@U) ) (!  (=> (and (= (type |msg1#2@@0|) DatatypeTypeType) (= (type |msg2#2@@0|) DatatypeTypeType)) (=> (and (and ($Is |msg1#2@@0| Tclass.Host.Message) ($Is |msg2#2@@0| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg1#2@@0|) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg2#2@@0|))) (|Host.Message#Equal| |msg1#2@@0| |msg2#2@@0|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2383|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg2#2@@0|) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg1#2@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 189799)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|) (or (SafetySpec.__default.Safety |c#0@@79| |v#0@@71|) (forall ((|idx1#3| Int) (|idx2#3| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#3|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#3|)) (= |idx1#3| |idx2#3|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2385|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#3|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#3|))
)))))))) (=> (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|) (or (SafetySpec.__default.Safety |c#0@@79| |v#0@@71|) (forall ((|idx1#3@@0| Int) (|idx2#3@@0| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#3@@0|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#3@@0|)) (= |idx1#3@@0| |idx2#3@@0|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2385|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#3@@0|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#3@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 189889)) (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|))))) (=> (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|)))) (and (=> (= (ControlFlow 0 183739) (- 0 189929)) (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v'#0@@27|) (forall ((|message#3| T@U) ) (!  (=> (and (and (= (type |message#3|) DatatypeTypeType) ($Is |message#3| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#3|)) (forall ((|idx#9| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#9|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#9|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2387|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#9|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#9|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2388|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#3|))
)))))))) (=> (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v'#0@@27|) (forall ((|message#3@@0| T@U) ) (!  (=> (and (and (= (type |message#3@@0|) DatatypeTypeType) ($Is |message#3@@0| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#3@@0|)) (forall ((|idx#9@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#9@@0|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#9@@0|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2387|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#9@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#9@@0|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2388|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#3@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 190057)) (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|idx#10| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#10|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#10|)))) (forall ((|idx'#3| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#3|) (not (= |idx'#3| |idx#10|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#10|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#3|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2391|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#3|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#3|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2392|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#10|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#10|))
)))))))) (=> (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|idx#10@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#10@@0|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#10@@0|)))) (forall ((|idx'#3@@0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#3@@0|) (not (= |idx'#3@@0| |idx#10@@0|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#10@@0|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#3@@0|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2391|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#3@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#3@@0|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2392|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#10@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#10@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 190225)) (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|msg#3| T@U) ) (!  (=> (= (type |msg#3|) DatatypeTypeType) (=> (and ($Is |msg#3| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#3|)) (forall ((|idx#11| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#11|) (> (Host.Message.epoch |msg#3|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#11|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2395|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#11|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#11|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2396|
 :pattern ( (Host.Message.epoch |msg#3|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#3|))
)))))))) (=> (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|msg#3@@0| T@U) ) (!  (=> (= (type |msg#3@@0|) DatatypeTypeType) (=> (and ($Is |msg#3@@0| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#3@@0|)) (forall ((|idx#11@@0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#11@@0|) (> (Host.Message.epoch |msg#3@@0|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#11@@0|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2395|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#11@@0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#11@@0|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2396|
 :pattern ( (Host.Message.epoch |msg#3@@0|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#3@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 190363)) (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v'#0@@27|) (forall ((|msg1#3| T@U) (|msg2#3| T@U) ) (!  (=> (and (= (type |msg1#3|) DatatypeTypeType) (= (type |msg2#3|) DatatypeTypeType)) (=> (and (and ($Is |msg1#3| Tclass.Host.Message) ($Is |msg2#3| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#3|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#3|))) (|Host.Message#Equal| |msg1#3| |msg2#3|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2399|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#3|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#3|))
)))))))) (=> (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v'#0@@27|) (forall ((|msg1#3@@0| T@U) (|msg2#3@@0| T@U) ) (!  (=> (and (= (type |msg1#3@@0|) DatatypeTypeType) (= (type |msg2#3@@0|) DatatypeTypeType)) (=> (and (and ($Is |msg1#3@@0| Tclass.Host.Message) ($Is |msg2#3@@0| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#3@@0|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#3@@0|))) (|Host.Message#Equal| |msg1#3@@0| |msg2#3@@0|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2399|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#3@@0|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#3@@0|))
))))))) (and (=> (= (ControlFlow 0 183739) (- 0 190475)) (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v'#0@@27|) (or (SafetySpec.__default.Safety |c#0@@79| |v'#0@@27|) (forall ((|idx1#4@@1| Int) (|idx2#4@@1| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#4@@1|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#4@@1|)) (= |idx1#4@@1| |idx2#4@@1|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2401|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#4@@1|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#4@@1|))
)))))))) (=> (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v'#0@@27|) (or (SafetySpec.__default.Safety |c#0@@79| |v'#0@@27|) (forall ((|idx1#4@@2| Int) (|idx2#4@@2| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#4@@2|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#4@@2|)) (= |idx1#4@@2| |idx2#4@@2|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2401|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#4@@2|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#4@@2|))
))))))) (=> (= (ControlFlow 0 183739) (- 0 190575)) (=> (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|) (or (SafetySpec.__default.Safety |c#0@@79| |v#0@@71|) (forall ((|idx1#5@@1| Int) (|idx2#5@@1| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#5@@1|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#5@@1|)) (= |idx1#5@@1| |idx2#5@@1|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2403|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#5@@1|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#5@@1|))
))))))))))))))))))))))))))))))))
(let ((anon14_correct  (=> (and (and (Host.Message.GrantMsg_q |msg#0_1_0@0|) (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@79| (Host.Message.dest |msg#0_1_0@0|))) (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg#0_1_0@0|))) (and (=> (= (ControlFlow 0 129629) (- 0 188479)) (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|))))) (and (=> (= (ControlFlow 0 129629) (- 0 188512)) (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (U_2_bool (MapType0Select (Network.Variables.sentMsgs (DistributedSystem.Variables.network |v'#0@@27|)) ($Box |msg#0_1_0@0|))))))) (and (=> (= (ControlFlow 0 129629) (- 0 188550)) (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)))))) (and (=> (= (ControlFlow 0 129629) (- 0 188584)) (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (> (Host.Message.epoch |msg#0_1_0@0|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) (Host.Message.dest |msg#0_1_0@0|))))))))) (=> (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_0@0|)) (=> (and (and ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap) ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap)) (and (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|))) (and (=> (= (ControlFlow 0 129629) (- 0 188679)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|)))) (and (=> (= (ControlFlow 0 129629) (- 0 188701)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v'#0@@27|) (forall ((|message#0_1_0| T@U) ) (!  (=> (and (and (= (type |message#0_1_0|) DatatypeTypeType) ($Is |message#0_1_0| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#0_1_0|)) (forall ((|idx#0_1_0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_1_0|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_0|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2454|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_1_0|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2455|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#0_1_0|))
))))))) (and (=> (= (ControlFlow 0 129629) (- 0 188811)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|idx#0_1_1| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_1_1|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_1|)))) (forall ((|idx'#0_1_0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#0_1_0|) (not (= |idx'#0_1_0| |idx#0_1_1|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_1|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#0_1_0|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2458|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#0_1_0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#0_1_0|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2459|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_1_1|))
))))))) (and (=> (= (ControlFlow 0 129629) (- 0 188961)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|msg#0_1_1| T@U) ) (!  (=> (= (type |msg#0_1_1|) DatatypeTypeType) (=> (and ($Is |msg#0_1_1| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_1|)) (forall ((|idx#0_1_2| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_1_2|) (> (Host.Message.epoch |msg#0_1_1|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_2|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2462|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_1_2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_1_2|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2463|
 :pattern ( (Host.Message.epoch |msg#0_1_1|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_1_1|))
))))))) (and (=> (= (ControlFlow 0 129629) (- 0 189081)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v'#0@@27|) (forall ((|msg1#0_1_0| T@U) (|msg2#0_1_0| T@U) ) (!  (=> (and (= (type |msg1#0_1_0|) DatatypeTypeType) (= (type |msg2#0_1_0|) DatatypeTypeType)) (=> (and (and ($Is |msg1#0_1_0| Tclass.Host.Message) ($Is |msg2#0_1_0| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#0_1_0|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#0_1_0|))) (|Host.Message#Equal| |msg1#0_1_0| |msg2#0_1_0|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2466|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#0_1_0|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#0_1_0|))
))))))) (and (=> (= (ControlFlow 0 129629) (- 0 189175)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v'#0@@27|) (or (SafetySpec.__default.Safety |c#0@@79| |v'#0@@27|) (forall ((|idx1#0_1_0| Int) (|idx2#0_1_0| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#0_1_0|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#0_1_0|)) (= |idx1#0_1_0| |idx2#0_1_0|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2468|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#0_1_0|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#0_1_0|))
))))))) (=> (and (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (= (ControlFlow 0 129629) 183739)) GeneratedUnifiedExit_correct))))))))))))))))
(let ((anon28_Else_correct  (=> (and (not (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|))) (= (ControlFlow 0 129627) 129629)) anon14_correct)))
(let ((anon28_Then_correct  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (=> (and (and ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap) ($IsAlloc |msg#0_1_0@0| Tclass.Host.Message $Heap)) (and (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg#0_1_0@0|) (= (ControlFlow 0 129625) 129629))) anon14_correct))))
(let ((anon27_Then_correct  (=> (= |step#0_0@0| (|#Host.Step.SendGrantStep| |_mcc#0#0_1_0@0|)) (=> (and (and (= |let#0_1_0#0#0| |_mcc#0#0_1_0@0|) ($Is (int_2_U |let#0_1_0#0#0|) TInt)) (and (= |dest#0_1_0@0| |let#0_1_0#0#0|) (Network.MessageOps.MessageOps_q |msgOps#0_0@0|))) (and (=> (= (ControlFlow 0 129623) (- 0 187208)) (UtilitiesLibrary.Option.Some_q (Network.MessageOps.send |msgOps#0_0@0|))) (=> (UtilitiesLibrary.Option.Some_q (Network.MessageOps.send |msgOps#0_0@0|)) (=> (Network.MessageOps.MessageOps_q |msgOps#0_0@0|) (=> (and (= |msg#0_1_0@0| ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.send |msgOps#0_0@0|)))) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (=> (and (and (Host.Message.GrantMsg_q |msg#0_1_0@0|) (= |##hostid#0_1_0@0| (Host.Message.dest |msg#0_1_0@0|))) (and ($IsAlloc (int_2_U |##hostid#0_1_0@0|) TInt $Heap) (|DistributedSystem.Constants.ValidHostId#canCall| |c#0@@79| (Host.Message.dest |msg#0_1_0@0|)))) (and (=> (= (ControlFlow 0 129623) 129625) anon28_Then_correct) (=> (= (ControlFlow 0 129623) 129627) anon28_Else_correct)))))))))))
(let ((anon18_correct  (=> (forall ((|msg'#0_0_1| T@U) ) (!  (=> (and (= (type |msg'#0_0_1|) DatatypeTypeType) ($Is |msg'#0_0_1| Tclass.Host.Message)) (and (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg'#0_0_1|) (=> (not (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_1|)) (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg'#0_0_1|))))
 :qid |exercise01dfy.142:25|
 :skolemid |2435|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg'#0_0_1|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_1|))
)) (and (=> (= (ControlFlow 0 129660) (- 0 187729)) (forall ((|msg'#0_0_1@@0| T@U) ) (!  (=> (and (and (= (type |msg'#0_0_1@@0|) DatatypeTypeType) ($Is |msg'#0_0_1@@0| Tclass.Host.Message)) (not (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_1@@0|))) (not (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg'#0_0_1@@0|)))
 :qid |exercise01dfy.142:25|
 :skolemid |2437|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg'#0_0_1@@0|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_1@@0|))
))) (=> (forall ((|msg'#0_0_1@@1| T@U) ) (!  (=> (and (and (= (type |msg'#0_0_1@@1|) DatatypeTypeType) ($Is |msg'#0_0_1@@1| Tclass.Host.Message)) (not (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_1@@1|))) (not (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg'#0_0_1@@1|)))
 :qid |exercise01dfy.142:25|
 :skolemid |2437|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg'#0_0_1@@1|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_1@@1|))
)) (=> (and (and ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap) ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap)) (and (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|))) (and (=> (= (ControlFlow 0 129660) (- 0 187813)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|)))) (and (=> (= (ControlFlow 0 129660) (- 0 187835)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v'#0@@27|) (forall ((|message#0_0_0| T@U) ) (!  (=> (and (and (= (type |message#0_0_0|) DatatypeTypeType) ($Is |message#0_0_0| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#0_0_0|)) (forall ((|idx#0_0_0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_0_0|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_0|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2438|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_0_0|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2439|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |message#0_0_0|))
))))))) (and (=> (= (ControlFlow 0 129660) (- 0 187945)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|idx#0_0_1| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_0_1|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_1|)))) (forall ((|idx'#0_0_0| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#0_0_0|) (not (= |idx'#0_0_0| |idx#0_0_1|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_1|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#0_0_0|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2442|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx'#0_0_0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#0_0_0|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2443|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_1|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_0_1|))
))))))) (and (=> (= (ControlFlow 0 129660) (- 0 188095)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v'#0@@27|) (forall ((|msg#0_0_1| T@U) ) (!  (=> (= (type |msg#0_0_1|) DatatypeTypeType) (=> (and ($Is |msg#0_0_1| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_0_1|)) (forall ((|idx#0_0_2| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_0_2|) (> (Host.Message.epoch |msg#0_0_1|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_2|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2446|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |idx#0_0_2|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#0_0_2|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2447|
 :pattern ( (Host.Message.epoch |msg#0_0_1|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg#0_0_1|))
))))))) (and (=> (= (ControlFlow 0 129660) (- 0 188215)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v'#0@@27|) (forall ((|msg1#0_0_0| T@U) (|msg2#0_0_0| T@U) ) (!  (=> (and (= (type |msg1#0_0_0|) DatatypeTypeType) (= (type |msg2#0_0_0|) DatatypeTypeType)) (=> (and (and ($Is |msg1#0_0_0| Tclass.Host.Message) ($Is |msg2#0_0_0| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#0_0_0|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#0_0_0|))) (|Host.Message#Equal| |msg1#0_0_0| |msg2#0_0_0|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2450|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg2#0_0_0|) (Proof.__default.InFlight |c#0@@79| |v'#0@@27| |msg1#0_0_0|))
))))))) (and (=> (= (ControlFlow 0 129660) (- 0 188309)) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v'#0@@27|) (or (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v'#0@@27|) (or (SafetySpec.__default.Safety |c#0@@79| |v'#0@@27|) (forall ((|idx1#0_0_0| Int) (|idx2#0_0_0| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#0_0_0|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#0_0_0|)) (= |idx1#0_0_0| |idx2#0_0_0|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2452|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx2#0_0_0|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v'#0@@27| |idx1#0_0_0|))
))))))) (=> (and (Proof.__default.Inv |c#0@@79| |v'#0@@27|) (= (ControlFlow 0 129660) 183739)) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon31_Else_correct  (=> (and (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_0@0|) (= (ControlFlow 0 129656) 129660)) anon18_correct)))
(let ((anon31_Then_correct  (=> (and (not (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg'#0_0_0@0|)) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (=> (and (and ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap) ($IsAlloc |msg'#0_0_0@0| Tclass.Host.Message $Heap)) (and (|Proof.__default.InFlight#canCall| |c#0@@79| |v'#0@@27| |msg'#0_0_0@0|) (= (ControlFlow 0 129654) 129660))) anon18_correct))))
(let ((anon30_Then_correct  (=> (and ($Is |msg'#0_0_0@0| Tclass.Host.Message) ($IsAlloc |msg'#0_0_0@0| Tclass.Host.Message $Heap)) (=> (and (and ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap) ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap)) (and ($IsAlloc |msg'#0_0_0@0| Tclass.Host.Message $Heap) (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg'#0_0_0@0|))) (and (=> (= (ControlFlow 0 129652) 129654) anon31_Then_correct) (=> (= (ControlFlow 0 129652) 129656) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (not (and ($Is |msg'#0_0_0@0| Tclass.Host.Message) ($IsAlloc |msg'#0_0_0@0| Tclass.Host.Message $Heap))) (= (ControlFlow 0 129658) 129660)) anon18_correct)))
(let ((anon29_Then_correct  (=> (and (= |step#0_0@0| |#Host.Step.RecvGrantStep|) (Network.MessageOps.MessageOps_q |msgOps#0_0@0|)) (and (=> (= (ControlFlow 0 129646) (- 0 187283)) (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0_0@0|))) (=> (UtilitiesLibrary.Option.Some_q (Network.MessageOps.recv |msgOps#0_0@0|)) (=> (Network.MessageOps.MessageOps_q |msgOps#0_0@0|) (=> (and (= |msg#0_0_0@0| ($Unbox DatatypeTypeType (UtilitiesLibrary.Option.value (Network.MessageOps.recv |msgOps#0_0@0|)))) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (=> (and (and ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap) ($IsAlloc |msg#0_0_0@0| Tclass.Host.Message $Heap)) (and (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg#0_0_0@0|))) (and (=> (= (ControlFlow 0 129646) (- 0 187351)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (DistributedSystem.Variables.WF |v#0@@71| |c#0@@79|)))) (and (=> (= (ControlFlow 0 129646) (- 0 187375)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (U_2_bool (MapType0Select (Network.Variables.sentMsgs (DistributedSystem.Variables.network |v#0@@71|)) ($Box |msg#0_0_0@0|)))))) (and (=> (= (ControlFlow 0 129646) (- 0 187404)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (DistributedSystem.Constants.ValidHostId |c#0@@79| (Host.Message.dest |msg#0_0_0@0|))))) (and (=> (= (ControlFlow 0 129646) (- 0 187429)) (=> (|Proof.__default.InFlight#canCall| |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (or (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (> (Host.Message.epoch |msg#0_0_0@0|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) (Host.Message.dest |msg#0_0_0@0|)))))))) (=> (and (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#0_0_0@0|) (DistributedSystem.Variables.Variables_q |v#0@@71|)) (and (=> (= (ControlFlow 0 129646) (- 0 187478)) (and (<= 0 |id#0_1@0|) (< |id#0_1@0| (|Seq#Length| (DistributedSystem.Variables.hosts |v#0@@71|))))) (=> (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|))) (=> (and (DistributedSystem.Variables.Variables_q |v#0@@71|) (Host.Variables.Variables_q ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)))) (and (=> (= (ControlFlow 0 129646) (- 0 187526)) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|))))) (=> (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)))) (and (=> (= (ControlFlow 0 129646) 129652) anon30_Then_correct) (=> (= (ControlFlow 0 129646) 129658) anon30_Else_correct))))))))))))))))))))
(let ((anon27_Else_correct  (=> (not (= |step#0_0@0| (|#Host.Step.SendGrantStep| |_mcc#0#0_1_0@0|))) (and (=> (= (ControlFlow 0 129639) 129646) anon29_Then_correct) (=> (= (ControlFlow 0 129639) 129662) anon29_Else_correct)))))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 129616) (- 0 187014)) (or (and ($Is (Lit |#Host.Step.RecvGrantStep|) Tclass.Host.Step) (Host.__default.NextStep ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| (Lit |#Host.Step.RecvGrantStep|))) (exists ((|$as#step0_0#0_0| T@U) ) (!  (and (= (type |$as#step0_0#0_0|) DatatypeTypeType) (and ($Is |$as#step0_0#0_0| Tclass.Host.Step) (Host.__default.NextStep ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| |$as#step0_0#0_0|)))
 :qid |exercise01dfy.129:11|
 :skolemid |2434|
 :no-pattern (type |$as#step0_0#0_0|)
 :no-pattern (U_2_int |$as#step0_0#0_0|)
 :no-pattern (U_2_bool |$as#step0_0#0_0|)
)))) (=> (or (and ($Is (Lit |#Host.Step.RecvGrantStep|) Tclass.Host.Step) (Host.__default.NextStep ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| (Lit |#Host.Step.RecvGrantStep|))) (exists ((|$as#step0_0#0_0@@0| T@U) ) (!  (and (= (type |$as#step0_0#0_0@@0|) DatatypeTypeType) (and ($Is |$as#step0_0#0_0@@0| Tclass.Host.Step) (Host.__default.NextStep ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| |$as#step0_0#0_0@@0|)))
 :qid |exercise01dfy.129:11|
 :skolemid |2434|
 :no-pattern (type |$as#step0_0#0_0@@0|)
 :no-pattern (U_2_int |$as#step0_0#0_0@@0|)
 :no-pattern (U_2_bool |$as#step0_0#0_0@@0|)
))) (=> (and (and ($Is |step#0_0@0| Tclass.Host.Step) ($IsAlloc |step#0_0@0| Tclass.Host.Step $Heap)) (Host.__default.NextStep ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| |step#0_0@0|)) (and (=> (= (ControlFlow 0 129616) 129623) anon27_Then_correct) (=> (= (ControlFlow 0 129616) 129639) anon27_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (not (and ($Is |step#0_1@0| Tclass.Host.Step) ($IsAlloc |step#0_1@0| Tclass.Host.Step $Heap))) (= (ControlFlow 0 129609) 129616)) anon11_correct)))
(let ((anon26_Then_correct  (=> (and (and ($Is |step#0_1@0| Tclass.Host.Step) ($IsAlloc |step#0_1@0| Tclass.Host.Step $Heap)) (DistributedSystem.Constants.Constants_q |c#0@@79|)) (and (=> (= (ControlFlow 0 129607) (- 0 186758)) (and (<= 0 |id#0_1@0|) (< |id#0_1@0| (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@79|))))) (=> (DistributedSystem.Variables.Variables_q |v#0@@71|) (and (=> (= (ControlFlow 0 129607) (- 0 186778)) (and (<= 0 |id#0_1@0|) (< |id#0_1@0| (|Seq#Length| (DistributedSystem.Variables.hosts |v#0@@71|))))) (=> (DistributedSystem.Variables.Variables_q |v'#0@@27|) (and (=> (= (ControlFlow 0 129607) (- 0 186798)) (and (<= 0 |id#0_1@0|) (< |id#0_1@0| (|Seq#Length| (DistributedSystem.Variables.hosts |v'#0@@27|))))) (=> (= |##c#0_2@0| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|))) (=> (and (and (and ($IsAlloc |##c#0_2@0| Tclass.Host.Constants $Heap) (= |##v#0_1@0| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)))) (and ($IsAlloc |##v#0_1@0| Tclass.Host.Variables $Heap) (= |##v'#0_1@0| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|))))) (and (and ($IsAlloc |##v'#0_1@0| Tclass.Host.Variables $Heap) ($IsAlloc |msgOps#0_0@0| (Tclass.Network.MessageOps Tclass.Host.Message) $Heap)) (and ($IsAlloc |step#0_1@0| Tclass.Host.Step $Heap) (|Host.__default.NextStep#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| |step#0_1@0|)))) (=> (and (and (and (and (DistributedSystem.Constants.Constants_q |c#0@@79|) (DistributedSystem.Variables.Variables_q |v#0@@71|)) (DistributedSystem.Variables.Variables_q |v'#0@@27|)) (|Host.__default.NextStep#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |id#0_1@0|)) ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v'#0@@27|) |id#0_1@0|)) |msgOps#0_0@0| |step#0_1@0|)) (= (ControlFlow 0 129607) 129616)) anon11_correct)))))))))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 129605) (- 0 186631)) (or (exists ((|$as#msgOps0_0#0_0| T@U) ) (!  (and (= (type |$as#msgOps0_0#0_0|) DatatypeTypeType) (and ($Is |$as#msgOps0_0#0_0| (Tclass.Network.MessageOps Tclass.Host.Message)) (and ($Is (int_2_U (LitInt 0)) TInt) (DistributedSystem.__default.NextStep |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| (LitInt 0) |$as#msgOps0_0#0_0|)))))
 :qid |exercise01dfy.127:24|
 :skolemid |2430|
 :no-pattern (type |$as#msgOps0_0#0_0|)
 :no-pattern (U_2_int |$as#msgOps0_0#0_0|)
 :no-pattern (U_2_bool |$as#msgOps0_0#0_0|)
)) (exists ((|$as#id0_0#0_0| Int) (|$as#msgOps0_0#0_0@@0| T@U) ) (!  (and (= (type |$as#msgOps0_0#0_0@@0|) DatatypeTypeType) (and ($Is |$as#msgOps0_0#0_0@@0| (Tclass.Network.MessageOps Tclass.Host.Message)) (DistributedSystem.__default.NextStep |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| |$as#id0_0#0_0| |$as#msgOps0_0#0_0@@0|))))
 :qid |exercise01dfy.127:11|
 :skolemid |2429|
 :no-pattern (type |$as#msgOps0_0#0_0@@0|)
 :no-pattern (U_2_int |$as#msgOps0_0#0_0@@0|)
 :no-pattern (U_2_bool |$as#msgOps0_0#0_0@@0|)
)))) (=> (or (exists ((|$as#msgOps0_0#0_0@@1| T@U) ) (!  (and (= (type |$as#msgOps0_0#0_0@@1|) DatatypeTypeType) (and ($Is |$as#msgOps0_0#0_0@@1| (Tclass.Network.MessageOps Tclass.Host.Message)) (and ($Is (int_2_U (LitInt 0)) TInt) (DistributedSystem.__default.NextStep |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| (LitInt 0) |$as#msgOps0_0#0_0@@1|)))))
 :qid |exercise01dfy.127:24|
 :skolemid |2430|
 :no-pattern (type |$as#msgOps0_0#0_0@@1|)
 :no-pattern (U_2_int |$as#msgOps0_0#0_0@@1|)
 :no-pattern (U_2_bool |$as#msgOps0_0#0_0@@1|)
)) (exists ((|$as#id0_0#0_0@@0| Int) (|$as#msgOps0_0#0_0@@2| T@U) ) (!  (and (= (type |$as#msgOps0_0#0_0@@2|) DatatypeTypeType) (and ($Is |$as#msgOps0_0#0_0@@2| (Tclass.Network.MessageOps Tclass.Host.Message)) (DistributedSystem.__default.NextStep |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| |$as#id0_0#0_0@@0| |$as#msgOps0_0#0_0@@2|))))
 :qid |exercise01dfy.127:11|
 :skolemid |2429|
 :no-pattern (type |$as#msgOps0_0#0_0@@2|)
 :no-pattern (U_2_int |$as#msgOps0_0#0_0@@2|)
 :no-pattern (U_2_bool |$as#msgOps0_0#0_0@@2|)
))) (=> (and (and ($Is |msgOps#0_0@0| (Tclass.Network.MessageOps Tclass.Host.Message)) ($IsAlloc |msgOps#0_0@0| (Tclass.Network.MessageOps Tclass.Host.Message) $Heap)) (DistributedSystem.__default.NextStep |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| |id#0_1@0| |msgOps#0_0@0|))) (and (=> (= (ControlFlow 0 129605) 129607) anon26_Then_correct) (=> (= (ControlFlow 0 129605) 129609) anon26_Else_correct)))))))
(let ((anon25_Else_correct  (=> (and (not (and ($Is |msgOps#0_1@0| (Tclass.Network.MessageOps Tclass.Host.Message)) ($IsAlloc |msgOps#0_1@0| (Tclass.Network.MessageOps Tclass.Host.Message) $Heap))) (= (ControlFlow 0 129598) 129605)) anon9_correct)))
(let ((anon25_Then_correct  (=> (and ($Is |msgOps#0_1@0| (Tclass.Network.MessageOps Tclass.Host.Message)) ($IsAlloc |msgOps#0_1@0| (Tclass.Network.MessageOps Tclass.Host.Message) $Heap)) (=> (and (and (and ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap) ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap)) (and ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap) (= |##step#0_0@0| (|#DistributedSystem.Step.Step| |id#0_2@0| |msgOps#0_1@0|)))) (and (and ($IsAlloc |##step#0_0@0| Tclass.DistributedSystem.Step $Heap) (|DistributedSystem.__default.NextStep#canCall| |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| |id#0_2@0| |msgOps#0_1@0|))) (and (|DistributedSystem.__default.NextStep#canCall| |c#0@@79| |v#0@@71| |v'#0@@27| (|#DistributedSystem.Step.Step| |id#0_2@0| |msgOps#0_1@0|)) (= (ControlFlow 0 129596) 129605)))) anon9_correct))))
(let ((anon24_Then_correct  (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|)) (=> (and (and ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (and (|DistributedSystem.Variables.WF#canCall| |v'#0@@27| |c#0@@79|) (|DistributedSystem.Variables.WF#canCall| |v'#0@@27| |c#0@@79|))) (and (=> (= (ControlFlow 0 129594) (- 0 186310)) (=> (|DistributedSystem.Variables.WF#canCall| |v'#0@@27| |c#0@@79|) (or (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|) (=> (|DistributedSystem.Constants.WF#canCall| |c#0@@79|) (or (DistributedSystem.Constants.WF |c#0@@79|) (=> (|Network.Constants.Configure#canCall| (DistributedSystem.Constants.network |c#0@@79|) (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@79|))) (or (Network.Constants.Configure (DistributedSystem.Constants.network |c#0@@79|) (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@79|))) (= (Network.Constants.numHosts (DistributedSystem.Constants.network |c#0@@79|)) (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@79|)))))))))) (and (=> (= (ControlFlow 0 129594) (- 0 186380)) (=> (|DistributedSystem.Variables.WF#canCall| |v'#0@@27| |c#0@@79|) (or (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|) (=> (|DistributedSystem.Constants.WF#canCall| |c#0@@79|) (or (DistributedSystem.Constants.WF |c#0@@79|) (forall ((|id#0_0| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |id#0_0|) (Host.Constants.Configure ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_0|)) (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@79|)) |id#0_0|))
 :qid |distributedsystemtdfy.23:18|
 :skolemid |2423|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Constants.hosts |c#0@@79|) |id#0_0|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |id#0_0|))
))))))) (and (=> (= (ControlFlow 0 129594) (- 0 186462)) (=> (|DistributedSystem.Variables.WF#canCall| |v'#0@@27| |c#0@@79|) (or (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|) (= (|Seq#Length| (DistributedSystem.Variables.hosts |v'#0@@27|)) (|Seq#Length| (DistributedSystem.Constants.hosts |c#0@@79|)))))) (=> (DistributedSystem.Variables.WF |v'#0@@27| |c#0@@79|) (and (=> (= (ControlFlow 0 129594) 129596) anon25_Then_correct) (=> (= (ControlFlow 0 129594) 129598) anon25_Else_correct))))))))))
(let ((anon24_Else_correct  (=> (and (not (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.__default.Next |c#0@@79| |v#0@@71| |v'#0@@27|))) (= (ControlFlow 0 129664) 183739)) GeneratedUnifiedExit_correct)))
(let ((anon6_correct  (=> (and (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (=> (Proof.__default.Inv |c#0@@79| |v#0@@71|) (|DistributedSystem.__default.Next#canCall| |c#0@@79| |v#0@@71| |v'#0@@27|))) (and (=> (= (ControlFlow 0 129587) 129594) anon24_Then_correct) (=> (= (ControlFlow 0 129587) 129664) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (not (Proof.__default.Inv |c#0@@79| |v#0@@71|)) (= (ControlFlow 0 129580) 129587)) anon6_correct)))
(let ((anon23_Then_correct  (=> (and (Proof.__default.Inv |c#0@@79| |v#0@@71|) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (=> (and (and ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap) ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap)) (and (|DistributedSystem.__default.Next#canCall| |c#0@@79| |v#0@@71| |v'#0@@27|) (= (ControlFlow 0 129578) 129587))) anon6_correct))))
(let ((anon4_correct  (=> (and (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (=> (Proof.__default.Inv |c#0@@79| |v#0@@71|) (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|))) (and (=> (= (ControlFlow 0 129576) (- 0 186074)) (=> (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|) (or (SafetySpec.__default.Safety |c#0@@79| |v#0@@71|) (forall ((|idx1#7| Int) (|idx2#7| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#7|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#7|)) (= |idx1#7| |idx2#7|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2421|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#7|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#7|))
)))))) (=> (and (and (=> (Proof.__default.Inv |c#0@@79| |v#0@@71|) (SafetySpec.__default.Safety |c#0@@79| |v#0@@71|)) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (and ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap) (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|))) (and (=> (= (ControlFlow 0 129576) 129578) anon23_Then_correct) (=> (= (ControlFlow 0 129576) 129580) anon23_Else_correct)))))))
(let ((anon22_Else_correct  (=> (and (not (Proof.__default.Inv |c#0@@79| |v#0@@71|)) (= (ControlFlow 0 129569) 129576)) anon4_correct)))
(let ((anon22_Then_correct  (=> (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (and (and ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap) ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap)) (and (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|) (= (ControlFlow 0 129567) 129576))) anon4_correct))))
(let ((anon2_correct  (=> (and (|DistributedSystem.__default.Init#canCall| |c#0@@79| |v#0@@71|) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|))) (and (=> (= (ControlFlow 0 129565) (- 0 185346)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (DistributedSystem.Variables.WF |v#0@@71| |c#0@@79|))))) (and (=> (= (ControlFlow 0 129565) (- 0 185376)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.InFlightGrantImpliesNoLockHolder#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.InFlightGrantImpliesNoLockHolder |c#0@@79| |v#0@@71|) (forall ((|message#4| T@U) ) (!  (=> (and (and (= (type |message#4|) DatatypeTypeType) ($Is |message#4| Tclass.Host.Message)) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |message#4|)) (forall ((|idx#12| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#12|) (not (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#12|)))))
 :qid |exercise01dfy.74:12|
 :skolemid |2405|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#12|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#12|))
)))
 :qid |exercise01dfy.72:12|
 :skolemid |2406|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |message#4|))
)))))))) (and (=> (= (ControlFlow 0 129565) (- 0 185494)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.LockHolderHasHighestEpoch#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.LockHolderHasHighestEpoch |c#0@@79| |v#0@@71|) (forall ((|idx#13| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#13|) (Host.Variables.holder ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#13|)))) (forall ((|idx'#4| Int) ) (!  (=> (and (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#4|) (not (= |idx'#4| |idx#13|))) (> (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#13|))) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx'#4|)))))
 :qid |exercise01dfy.83:12|
 :skolemid |2409|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx'#4|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx'#4|))
)))
 :qid |exercise01dfy.82:12|
 :skolemid |2410|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#13|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#13|))
)))))))) (and (=> (= (ControlFlow 0 129565) (- 0 185652)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.InFlightGrantHasHighestEpoch#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.InFlightGrantHasHighestEpoch |c#0@@79| |v#0@@71|) (forall ((|msg#4| T@U) ) (!  (=> (= (type |msg#4|) DatatypeTypeType) (=> (and ($Is |msg#4| Tclass.Host.Message) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#4|)) (forall ((|idx#14| Int) ) (!  (=> (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#14|) (> (Host.Message.epoch |msg#4|) (Host.Variables.epoch ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#14|)))))
 :qid |exercise01dfy.92:12|
 :skolemid |2413|
 :pattern ( ($Unbox DatatypeTypeType (|Seq#Index| (DistributedSystem.Variables.hosts |v#0@@71|) |idx#14|)))
 :pattern ( (DistributedSystem.Constants.ValidHostId |c#0@@79| |idx#14|))
))))
 :qid |exercise01dfy.91:12|
 :skolemid |2414|
 :pattern ( (Host.Message.epoch |msg#4|))
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg#4|))
)))))))) (and (=> (= (ControlFlow 0 129565) (- 0 185780)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|Proof.__default.NoTwoInFlightGrants#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.NoTwoInFlightGrants |c#0@@79| |v#0@@71|) (forall ((|msg1#4| T@U) (|msg2#4| T@U) ) (!  (=> (and (= (type |msg1#4|) DatatypeTypeType) (= (type |msg2#4|) DatatypeTypeType)) (=> (and (and ($Is |msg1#4| Tclass.Host.Message) ($Is |msg2#4| Tclass.Host.Message)) (and (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg1#4|) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg2#4|))) (|Host.Message#Equal| |msg1#4| |msg2#4|)))
 :qid |exercise01dfy.99:12|
 :skolemid |2417|
 :pattern ( (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg2#4|) (Proof.__default.InFlight |c#0@@79| |v#0@@71| |msg1#4|))
)))))))) (and (=> (= (ControlFlow 0 129565) (- 0 185882)) (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (or (Proof.__default.Inv |c#0@@79| |v#0@@71|) (=> (|SafetySpec.__default.Safety#canCall| |c#0@@79| |v#0@@71|) (or (SafetySpec.__default.Safety |c#0@@79| |v#0@@71|) (forall ((|idx1#6| Int) (|idx2#6| Int) ) (!  (=> true (=> (and (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#6|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#6|)) (= |idx1#6| |idx2#6|)))
 :qid |exercise01dfy.45:12|
 :skolemid |2419|
 :pattern ( (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx2#6|) (SafetySpec.__default.HostHoldsLock |c#0@@79| |v#0@@71| |idx1#6|))
)))))))) (=> (and (and (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (Proof.__default.Inv |c#0@@79| |v#0@@71|)) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (and ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap) (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|))) (and (=> (= (ControlFlow 0 129565) 129567) anon22_Then_correct) (=> (= (ControlFlow 0 129565) 129569) anon22_Else_correct))))))))))))
(let ((anon21_Else_correct  (=> (and (not (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|)) (= (ControlFlow 0 129558) 129565)) anon2_correct)))
(let ((anon21_Then_correct  (=> (DistributedSystem.__default.Init |c#0@@79| |v#0@@71|) (=> (and (and ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap) ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap)) (and (|Proof.__default.Inv#canCall| |c#0@@79| |v#0@@71|) (= (ControlFlow 0 129556) 129565))) anon2_correct))))
(let ((anon0_correct  (=> (and (= (AsFuelBottom StartFuel_UtilitiesLibrary._default.MapRemoveOne) StartFuel_UtilitiesLibrary._default.MapRemoveOne) (= (AsFuelBottom StartFuelAssert_UtilitiesLibrary._default.MapRemoveOne) StartFuelAssert_UtilitiesLibrary._default.MapRemoveOne)) (=> (and (and (= $_Frame@0 (|lambda#12| null $Heap alloc false)) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (and ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap) (|DistributedSystem.__default.Init#canCall| |c#0@@79| |v#0@@71|))) (and (=> (= (ControlFlow 0 129554) 129556) anon21_Then_correct) (=> (= (ControlFlow 0 129554) 129558) anon21_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is |c#0@@79| Tclass.DistributedSystem.Constants) ($IsAlloc |c#0@@79| Tclass.DistributedSystem.Constants $Heap)) (|$IsA#DistributedSystem.Constants| |c#0@@79|)) (and (and ($Is |v#0@@71| Tclass.DistributedSystem.Variables) ($IsAlloc |v#0@@71| Tclass.DistributedSystem.Variables $Heap)) (|$IsA#DistributedSystem.Variables| |v#0@@71|))) (=> (and (and (and (and ($Is |v'#0@@27| Tclass.DistributedSystem.Variables) ($IsAlloc |v'#0@@27| Tclass.DistributedSystem.Variables $Heap)) (|$IsA#DistributedSystem.Variables| |v'#0@@27|)) (and ($Is |msgOps#0_0| (Tclass.Network.MessageOps Tclass.Host.Message)) ($IsAlloc |msgOps#0_0| (Tclass.Network.MessageOps Tclass.Host.Message) $Heap))) (and (and (and ($Is |step#0_0| Tclass.Host.Step) ($IsAlloc |step#0_0| Tclass.Host.Step $Heap)) (and ($Is |msg#0_0_0| Tclass.Host.Message) ($IsAlloc |msg#0_0_0| Tclass.Host.Message $Heap))) (and (and ($Is |msg#0_1_0| Tclass.Host.Message) ($IsAlloc |msg#0_1_0| Tclass.Host.Message $Heap)) (and (= 11 $FunctionContextHeight) (= (ControlFlow 0 183807) 129554))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
