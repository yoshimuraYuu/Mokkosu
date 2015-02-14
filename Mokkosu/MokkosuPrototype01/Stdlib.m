﻿#============================================================
# Mokkosu 標準ライブラリ
#============================================================

# __define "HIDE_TYPE";

import "mscorlib.dll";
import "System.dll";
import "System.Core.dll";

#------------------------------------------------------------
# システム関数
#------------------------------------------------------------
let println x = __prim "println" (x);
let print x = __prim "print" (x);
let error x = __prim "error" (x);

#------------------------------------------------------------
# 比較演算
#------------------------------------------------------------
let __operator_eqeq x y = __prim "eq" (x, y);
let __operator_ltgt x y = __prim "ne" (x, y);
let __operator_lt x y = __prim "lt" (x, y);
let __operator_gt x y = __prim "gt" (x, y);
let __operator_le x y = __prim "le" (x, y);
let __operator_ge x y = __prim "ge" (x, y);

#------------------------------------------------------------
# 整数演算
#------------------------------------------------------------
let __operator_pls x y = __prim "add" (x, y);
let __operator_mns x y = __prim "sub" (x, y);
let __operator_ast x y = __prim "mul" (x, y);
let __operator_sls x y = __prim "div" (x, y);
let __operator_per x y = __prim "mod" (x, y);

fun __operator_astast x y =
  if y == 0 -> 1
  else x * x ** (y - 1);

#------------------------------------------------------------
# ビット演算
#------------------------------------------------------------
let band x y = __prim "band" (x, y);
let bor x y = __prim "bor" (x, y);
let bxor x y = __prim "bxor" (x, y);
let bnot x = __prim "bnot" (x);
let bshr x y = __prim "bshr" (x, y);
let bshl x y = __prim "bshl" (x, y);
let bshrun x y = __prim "bshrun" (x, y);

#------------------------------------------------------------
# 浮動小数点数演算
#------------------------------------------------------------
let __operator_plsdot x y = __prim "fadd" (x, y);
let __operator_mnsdot x y = __prim "fsub" (x, y);
let __operator_astdot x y = __prim "fmul" (x, y);
let __operator_slsdot x y = __prim "fdiv" (x, y);

#------------------------------------------------------------
# 文字列演算
#------------------------------------------------------------
let __operator_hat x y = __prim "concat" (x, y);
let tostring x = __prim "tostring" (x);

#------------------------------------------------------------
# リファレンスセル
#------------------------------------------------------------
let ref x = __prim "ref" (x);
let __operator_bang x = __prim "deref" (x);
let __operator_coleq x y = __prim "assign" (x, y);

#------------------------------------------------------------
# 関数
#------------------------------------------------------------
let __operator_ltbar f x = f x;
let __operator_bargt x f = f x;
let __operator_ltlt f g x = f (g x);
let __operator_gtgt f g x = g (f x);

__undefine "HIDE_TYPE";
