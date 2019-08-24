// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import java.io.PrintStream;
import java.util.concurrent.ThreadLocalRandom;

public class JavaIsEZ
{

    public static void main(String args[])
    {
_L6:
        "noob";
        return;
        JVM INSTR pop ;
_L7:
        "You got it right :P";
        return;
_L11:
        char ac[];
        int j1;
        ac = s.toCharArray();
        i = ac.length;
        Object obj = new Object();
        k = 0;
        ai = new int[8];
        97;
        71;
        94;
        89;
        90;
        121;
        72;
          goto _L1
        local1;
        j = 0;
_L2:
        if(j - i != 0)
            break MISSING_BLOCK_LABEL_95;
        JVM INSTR ret 1;
        j++;
        ac;
        JVM INSTR monitorenter ;
          goto _L2
        JVM INSTR pop ;
        System.out;
        JVM INSTR swap ;
        println();
        return;
_L4:
        (redpwnCTF_says_stop_using_ur_decompiler)null;
        Class.forName("java.utils.ArrayList");
        a = ThreadLocalRandom.current().nextInt(1, 65535);
        JVM INSTR pop2 ;
        null;
        j1 = a;
        i = 0;
        flag = false;
        JVM INSTR ifnull 113;
           goto _L3 _L4
_L3:
        j1;
        JVM INSTR lookupswitch 3: default 200
    //                   -555: 3
    //                   1: 10
    //                   4882: 0;
           goto _L5 _L6 _L7 _L4
_L5:
        if(args.length - 1 >= 0) goto _L9; else goto _L8
_L8:
        "You need to specify the flag...";
_L9:
        s = args[0];
        if(s.length() - 42 == 0) goto _L11; else goto _L10
_L10:
        "noob";
        return;
_L1:
        boolean flag1;
        StringBuilder stringbuilder;
        int k;
        int ai[];
        ai[k] = 53;
        k++;
        flag1 = false;
        stringbuilder = new StringBuilder();
        null;
        if(!flag1) goto _L13; else goto _L12
_L12:
        JVM INSTR pop ;
        if(stringbuilder.toString().equals("\007+?>!\023|CU\030o*\005M;j\ts,=\005M;\030\017s*h,J\027F0s?8\022#{Z\007:")) goto _L13; else goto _L6
_L13:
        JVM INSTR pop ;
        int i1;
        int l = ThreadLocalRandom.current().nextInt(1, 65535);
        i1 = 0;
_L14:
        ac;
        JVM INSTR monitorexit ;
        stringbuilder.append((char)(ac[i1] ^ ai[i1 % ai.length]));
        i1++;
        boolean flag2 = false;
        if(j1 != 0) goto _L4; else goto _L14
    }

    private static int a;
}
