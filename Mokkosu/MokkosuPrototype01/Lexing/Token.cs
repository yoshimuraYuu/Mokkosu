﻿namespace Mokkosu.Lexing
{
    enum TokenType
    {
        // 意味値を持つトークン
        INT, DBL, STR, CHAR, ID,
        // 記号
        COM, COL, BAR, SC, ARROW, 
        AT, BS, UB, QUE,
        LT, GT, EQ,
        LP, RP, PLS, MNS, AST, SLS,
        LBK, RBK, COLCOL,
        // キーワード
        TYPE, AND, DO, IF, ELSE, PAT,
        TRUE, FALSE, LET, FUN, INCLUDE,
        AS,
        // 制御記号
        EOF
    }

    class Token
    {
        public TokenType Type { get; private set; }
        public int IntVal { get; private set; }
        public char CharVal { get; private set; }
        public double DoubleVal { get; private set; }
        public string StrVal { get; private set; }

        public Token(TokenType type)
        {
            Type = type;
        }

        public Token(TokenType type, int int_val)
            : this(type)
        {
            IntVal = int_val;
        }

        public Token(TokenType type, char char_val)
            : this(type)
        {
            CharVal = char_val;
        }

        public Token(TokenType type, double double_val)
            : this(type)
        {
            DoubleVal = double_val;
        }

        public Token(TokenType type, string str_val)
            : this(type)
        {
            StrVal = str_val;
        }
    }
}
