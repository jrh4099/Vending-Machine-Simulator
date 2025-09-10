/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Jonathan Hubbard/DSD2/Lab4/Code/coin_controller.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0152072503_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5728);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 5728);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_0152072503_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 5792);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB6:    goto LAB3;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 5792);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB10:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

}

static void work_a_0152072503_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB10, &&LAB9};

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5616);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 5856);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB6:    goto LAB3;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 5856);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB10:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

}

static void work_a_0152072503_3212880686_p_3(char *t0)
{
    char t13[16];
    char t14[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    static char *nl0[] = {&&LAB13, &&LAB13, &&LAB9, &&LAB10, &&LAB11, &&LAB13, &&LAB12, &&LAB13, &&LAB13, &&LAB13};

LAB0:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(82, ng0);
    t3 = xsi_get_transient_memory(12U);
    memset(t3, 0, 12U);
    t7 = t3;
    memset(t7, (unsigned char)2, 12U);
    t8 = (t0 + 5920);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 12U);
    xsi_driver_first_trans_fast(t8);

LAB6:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 5984);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 2952U);
    t7 = *((char **)t4);
    t4 = (t0 + 9204U);
    t8 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, 25, 12);
    t9 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t13, t7, t4, t8, t14);
    t10 = (t0 + 5920);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 12U);
    xsi_driver_first_trans_fast(t10);
    goto LAB8;

LAB10:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 9204U);
    t4 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, 10, 12);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t13, t3, t1, t4, t14);
    t8 = (t0 + 5920);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB8;

LAB11:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 9204U);
    t4 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t14, 5, 12);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t13, t3, t1, t4, t14);
    t8 = (t0 + 5920);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 12U);
    xsi_driver_first_trans_fast(t8);
    goto LAB8;

LAB12:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 9204U);
    t4 = (t0 + 3112U);
    t7 = *((char **)t4);
    t4 = (t0 + 9220U);
    t8 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t13, t3, t1, t7, t4);
    t9 = (t0 + 5920);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t8, 12U);
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB13:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 5920);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

}

static void work_a_0152072503_3212880686_p_4(char *t0)
{
    char t30[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned char t37;
    unsigned char t38;
    unsigned char t39;
    unsigned char t40;
    unsigned char t41;
    unsigned char t42;
    unsigned char t43;
    unsigned char t44;
    unsigned char t45;
    unsigned char t46;
    static char *nl0[] = {&&LAB24, &&LAB25, &&LAB26, &&LAB27, &&LAB28, &&LAB29, &&LAB32, &&LAB33, &&LAB30, &&LAB31};

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 9280);
    t8 = xsi_mem_cmp(t1, t2, 4U);
    if (t8 == 1)
        goto LAB3;

LAB13:    t5 = (t0 + 9284);
    t9 = xsi_mem_cmp(t5, t2, 4U);
    if (t9 == 1)
        goto LAB4;

LAB14:    t7 = (t0 + 9288);
    t11 = xsi_mem_cmp(t7, t2, 4U);
    if (t11 == 1)
        goto LAB5;

LAB15:    t12 = (t0 + 9292);
    t14 = xsi_mem_cmp(t12, t2, 4U);
    if (t14 == 1)
        goto LAB6;

LAB16:    t15 = (t0 + 9296);
    t17 = xsi_mem_cmp(t15, t2, 4U);
    if (t17 == 1)
        goto LAB7;

LAB17:    t18 = (t0 + 9300);
    t20 = xsi_mem_cmp(t18, t2, 4U);
    if (t20 == 1)
        goto LAB8;

LAB18:    t21 = (t0 + 9304);
    t23 = xsi_mem_cmp(t21, t2, 4U);
    if (t23 == 1)
        goto LAB9;

LAB19:    t24 = (t0 + 9308);
    t26 = xsi_mem_cmp(t24, t2, 4U);
    if (t26 == 1)
        goto LAB10;

LAB20:    t27 = (t0 + 9312);
    t29 = xsi_mem_cmp(t27, t2, 4U);
    if (t29 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(110, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 0, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);

LAB2:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB3:    xsi_set_current_line(101, ng0);
    t31 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 55, 12);
    t32 = (t0 + 6112);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t31, 12U);
    xsi_driver_first_trans_fast(t32);
    goto LAB2;

LAB4:    xsi_set_current_line(102, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 85, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    xsi_set_current_line(103, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 95, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB6:    xsi_set_current_line(104, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 125, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB7:    xsi_set_current_line(105, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 135, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB8:    xsi_set_current_line(106, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 150, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB9:    xsi_set_current_line(107, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 225, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB10:    xsi_set_current_line(108, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 250, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB11:    xsi_set_current_line(109, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t30, 300, 12);
    t2 = (t0 + 6112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB22:;
LAB23:    t1 = (t0 + 5648);
    *((int *)t1) = 1;

LAB1:    return;
LAB24:    xsi_set_current_line(116, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t37 = *((unsigned char *)t5);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB34;

LAB36:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t37 = (t3 == (unsigned char)3);
    if (t37 != 0)
        goto LAB37;

LAB38:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t37 = (t3 == (unsigned char)3);
    if (t37 != 0)
        goto LAB39;

LAB40:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t37 = (t3 == (unsigned char)3);
    if (t37 != 0)
        goto LAB41;

LAB42:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB35:    goto LAB23;

LAB25:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t39 = *((unsigned char *)t2);
    t40 = (t39 == (unsigned char)2);
    if (t40 == 1)
        goto LAB52;

LAB53:    t38 = (unsigned char)0;

LAB54:    if (t38 == 1)
        goto LAB49;

LAB50:    t37 = (unsigned char)0;

LAB51:    if (t37 == 1)
        goto LAB46;

LAB47:    t3 = (unsigned char)0;

LAB48:    if (t3 != 0)
        goto LAB43;

LAB45:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB44:    goto LAB23;

LAB26:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB27:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB28:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB29:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_vhdl_lessthan(t1, t2, 12U, t4, 12U);
    if (t3 != 0)
        goto LAB55;

LAB57:    xsi_set_current_line(161, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);

LAB56:    goto LAB23;

LAB30:    xsi_set_current_line(165, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t37 = (t3 == (unsigned char)3);
    if (t37 != 0)
        goto LAB58;

LAB60:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB59:    goto LAB23;

LAB31:    xsi_set_current_line(172, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t37 = (t3 == (unsigned char)3);
    if (t37 != 0)
        goto LAB61;

LAB63:    xsi_set_current_line(175, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB62:    goto LAB23;

LAB32:    xsi_set_current_line(180, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB33:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)9;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB34:    xsi_set_current_line(117, ng0);
    t4 = (t0 + 6048);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    goto LAB35;

LAB37:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

LAB39:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

LAB41:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB35;

LAB43:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 6048);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB44;

LAB46:    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t45 = *((unsigned char *)t6);
    t46 = (t45 == (unsigned char)2);
    t3 = t46;
    goto LAB48;

LAB49:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t43 = *((unsigned char *)t5);
    t44 = (t43 == (unsigned char)2);
    t37 = t44;
    goto LAB51;

LAB52:    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t41 = *((unsigned char *)t4);
    t42 = (t41 == (unsigned char)2);
    t38 = t42;
    goto LAB54;

LAB55:    xsi_set_current_line(159, ng0);
    t5 = (t0 + 6048);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)7;
    xsi_driver_first_trans_fast(t5);
    goto LAB56;

LAB58:    xsi_set_current_line(166, ng0);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)8;
    xsi_driver_first_trans_fast(t1);
    goto LAB59;

LAB61:    xsi_set_current_line(173, ng0);
    t1 = (t0 + 6048);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)9;
    xsi_driver_first_trans_fast(t1);
    goto LAB62;

}


extern void work_a_0152072503_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0152072503_3212880686_p_0,(void *)work_a_0152072503_3212880686_p_1,(void *)work_a_0152072503_3212880686_p_2,(void *)work_a_0152072503_3212880686_p_3,(void *)work_a_0152072503_3212880686_p_4};
	xsi_register_didat("work_a_0152072503_3212880686", "isim/Usr_interaction_tb_isim_beh.exe.sim/work/a_0152072503_3212880686.didat");
	xsi_register_executes(pe);
}
