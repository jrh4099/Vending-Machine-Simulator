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
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


char *work_p_0205875555_sub_851030953_2789628542(char *t1, char *t2, char *t3)
{
    char t4[368];
    char t5[24];
    char t6[16];
    char t13[8];
    char t16[16];
    char t22[24];
    char t27[16];
    char t49[16];
    char t50[16];
    char t61[16];
    char t62[16];
    char t64[16];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned char t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned char t59;
    unsigned char t60;
    int t63;
    int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 11;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 11);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t4 + 4U);
    t11 = ((STD_STANDARD) + 384);
    t12 = (t8 + 88U);
    *((char **)t12) = t11;
    t14 = (t8 + 56U);
    *((char **)t14) = t13;
    *((int *)t13) = 0;
    t15 = (t8 + 80U);
    *((unsigned int *)t15) = 4U;
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 23;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 23);
    t10 = (t19 * -1);
    t10 = (t10 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t10;
    t18 = (t4 + 124U);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t18 + 88U);
    *((char **)t21) = t20;
    t23 = (t18 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, t16);
    t24 = (t18 + 64U);
    *((char **)t24) = t16;
    t25 = (t18 + 80U);
    *((unsigned int *)t25) = 24U;
    t26 = (t6 + 12U);
    t10 = *((unsigned int *)t26);
    t10 = (t10 * 1U);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 11;
    t29 = (t28 + 4U);
    *((int *)t29) = 0;
    t29 = (t28 + 8U);
    *((int *)t29) = -1;
    t30 = (0 - 11);
    t31 = (t30 * -1);
    t31 = (t31 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t31;
    t29 = (t4 + 244U);
    t32 = ((IEEE_P_2592010699) + 4024);
    t33 = (t29 + 88U);
    *((char **)t33) = t32;
    t34 = (char *)alloca(t10);
    t35 = (t29 + 56U);
    *((char **)t35) = t34;
    memcpy(t34, t3, t10);
    t36 = (t29 + 64U);
    *((char **)t36) = t27;
    t37 = (t29 + 80U);
    *((unsigned int *)t37) = t10;
    t38 = (t5 + 4U);
    t39 = (t3 != 0);
    if (t39 == 1)
        goto LAB3;

LAB2:    t40 = (t5 + 12U);
    *((char **)t40) = t6;
    t41 = (t16 + 12U);
    t31 = *((unsigned int *)t41);
    t31 = (t31 * 1U);
    t42 = xsi_get_transient_memory(t31);
    memset(t42, 0, t31);
    t43 = t42;
    memset(t43, (unsigned char)2, t31);
    t44 = (t18 + 56U);
    t45 = *((char **)t44);
    t44 = (t45 + 0);
    t46 = (t16 + 12U);
    t47 = *((unsigned int *)t46);
    t47 = (t47 * 1U);
    memcpy(t44, t42, t47);
    t7 = (t29 + 56U);
    t11 = *((char **)t7);
    t7 = (t18 + 56U);
    t12 = *((char **)t7);
    t7 = (t16 + 0U);
    t9 = *((int *)t7);
    t10 = (t9 - 11);
    t31 = (t10 * 1U);
    t47 = (0 + t31);
    t14 = (t12 + t47);
    t15 = (t27 + 12U);
    t48 = *((unsigned int *)t15);
    t48 = (t48 * 1U);
    memcpy(t14, t11, t48);
    t9 = 0;
    t19 = 11;

LAB4:    if (t9 <= t19)
        goto LAB5;

LAB7:    t7 = (t18 + 56U);
    t11 = *((char **)t7);
    t7 = (t16 + 0U);
    t9 = *((int *)t7);
    t10 = (t9 - 23);
    t31 = (t10 * 1U);
    t47 = (0 + t31);
    t12 = (t11 + t47);
    t19 = (12 - 23);
    t48 = (t19 * -1);
    t48 = (t48 + 1);
    t53 = (1U * t48);
    t0 = xsi_get_transient_memory(t53);
    memcpy(t0, t12, t53);
    t14 = (t2 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 23;
    t15 = (t14 + 4U);
    *((int *)t15) = 12;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t30 = (12 - 23);
    t54 = (t30 * -1);
    t54 = (t54 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t54;

LAB1:    return t0;
LAB3:    *((char **)t38) = t3;
    goto LAB2;

LAB5:    t7 = (t18 + 56U);
    t11 = *((char **)t7);
    t7 = (t16 + 0U);
    t30 = *((int *)t7);
    t10 = (t30 - 22);
    t31 = (t10 * 1U);
    t47 = (0 + t31);
    t12 = (t11 + t47);
    t15 = ((IEEE_P_2592010699) + 4024);
    t17 = (t50 + 0U);
    t20 = (t17 + 0U);
    *((int *)t20) = 22;
    t20 = (t17 + 4U);
    *((int *)t20) = 0;
    t20 = (t17 + 8U);
    *((int *)t20) = -1;
    t51 = (0 - 22);
    t48 = (t51 * -1);
    t48 = (t48 + 1);
    t20 = (t17 + 12U);
    *((unsigned int *)t20) = t48;
    t14 = xsi_base_array_concat(t14, t49, t15, (char)97, t12, t50, (char)99, (unsigned char)2, (char)101);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    t20 = (t16 + 0U);
    t52 = *((int *)t20);
    t48 = (t52 - 23);
    t53 = (t48 * 1U);
    t54 = (0 + t53);
    t23 = (t21 + t54);
    t55 = (0 - 22);
    t56 = (t55 * -1);
    t56 = (t56 + 1);
    t57 = (1U * t56);
    t58 = (t57 + 1U);
    memcpy(t23, t14, t58);
    t59 = (t9 < 11);
    if (t59 == 1)
        goto LAB11;

LAB12:    t39 = (unsigned char)0;

LAB13:    if (t39 != 0)
        goto LAB8;

LAB10:
LAB9:    t59 = (t9 < 11);
    if (t59 == 1)
        goto LAB17;

LAB18:    t39 = (unsigned char)0;

LAB19:    if (t39 != 0)
        goto LAB14;

LAB16:
LAB15:    t59 = (t9 < 11);
    if (t59 == 1)
        goto LAB23;

LAB24:    t39 = (unsigned char)0;

LAB25:    if (t39 != 0)
        goto LAB20;

LAB22:
LAB21:
LAB6:    if (t9 == t19)
        goto LAB7;

LAB26:    t30 = (t9 + 1);
    t9 = t30;
    goto LAB4;

LAB8:    t21 = (t18 + 56U);
    t23 = *((char **)t21);
    t21 = (t16 + 0U);
    t55 = *((int *)t21);
    t48 = (t55 - 15);
    t53 = (t48 * 1U);
    t54 = (0 + t53);
    t24 = (t23 + t54);
    t25 = (t62 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 15;
    t26 = (t25 + 4U);
    *((int *)t26) = 12;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t63 = (12 - 15);
    t56 = (t63 * -1);
    t56 = (t56 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t56;
    t26 = (t1 + 3496);
    t32 = (t64 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 0;
    t33 = (t32 + 4U);
    *((int *)t33) = 3;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t65 = (3 - 0);
    t56 = (t65 * 1);
    t56 = (t56 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t56;
    t33 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t61, t24, t62, t26, t64);
    t35 = (t18 + 56U);
    t36 = *((char **)t35);
    t35 = (t16 + 0U);
    t66 = *((int *)t35);
    t56 = (t66 - 15);
    t57 = (t56 * 1U);
    t58 = (0 + t57);
    t37 = (t36 + t58);
    t41 = (t61 + 12U);
    t67 = *((unsigned int *)t41);
    t68 = (1U * t67);
    memcpy(t37, t33, t68);
    goto LAB9;

LAB11:    t7 = (t18 + 56U);
    t11 = *((char **)t7);
    t7 = (t16 + 0U);
    t30 = *((int *)t7);
    t10 = (t30 - 15);
    t31 = (t10 * 1U);
    t47 = (0 + t31);
    t12 = (t11 + t47);
    t14 = (t49 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 15;
    t15 = (t14 + 4U);
    *((int *)t15) = 12;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t51 = (12 - 15);
    t48 = (t51 * -1);
    t48 = (t48 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t48;
    t15 = (t1 + 3492);
    t20 = (t50 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 3;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t52 = (3 - 0);
    t48 = (t52 * 1);
    t48 = (t48 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t48;
    t60 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t12, t49, t15, t50);
    t39 = t60;
    goto LAB13;

LAB14:    t21 = (t18 + 56U);
    t23 = *((char **)t21);
    t21 = (t16 + 0U);
    t55 = *((int *)t21);
    t48 = (t55 - 19);
    t53 = (t48 * 1U);
    t54 = (0 + t53);
    t24 = (t23 + t54);
    t25 = (t62 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 19;
    t26 = (t25 + 4U);
    *((int *)t26) = 16;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t63 = (16 - 19);
    t56 = (t63 * -1);
    t56 = (t56 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t56;
    t26 = (t1 + 3504);
    t32 = (t64 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 0;
    t33 = (t32 + 4U);
    *((int *)t33) = 3;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t65 = (3 - 0);
    t56 = (t65 * 1);
    t56 = (t56 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t56;
    t33 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t61, t24, t62, t26, t64);
    t35 = (t18 + 56U);
    t36 = *((char **)t35);
    t35 = (t16 + 0U);
    t66 = *((int *)t35);
    t56 = (t66 - 19);
    t57 = (t56 * 1U);
    t58 = (0 + t57);
    t37 = (t36 + t58);
    t41 = (t61 + 12U);
    t67 = *((unsigned int *)t41);
    t68 = (1U * t67);
    memcpy(t37, t33, t68);
    goto LAB15;

LAB17:    t7 = (t18 + 56U);
    t11 = *((char **)t7);
    t7 = (t16 + 0U);
    t30 = *((int *)t7);
    t10 = (t30 - 19);
    t31 = (t10 * 1U);
    t47 = (0 + t31);
    t12 = (t11 + t47);
    t14 = (t49 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 19;
    t15 = (t14 + 4U);
    *((int *)t15) = 16;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t51 = (16 - 19);
    t48 = (t51 * -1);
    t48 = (t48 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t48;
    t15 = (t1 + 3500);
    t20 = (t50 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 3;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t52 = (3 - 0);
    t48 = (t52 * 1);
    t48 = (t48 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t48;
    t60 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t12, t49, t15, t50);
    t39 = t60;
    goto LAB19;

LAB20:    t21 = (t18 + 56U);
    t23 = *((char **)t21);
    t21 = (t16 + 0U);
    t55 = *((int *)t21);
    t48 = (t55 - 23);
    t53 = (t48 * 1U);
    t54 = (0 + t53);
    t24 = (t23 + t54);
    t25 = (t62 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 23;
    t26 = (t25 + 4U);
    *((int *)t26) = 20;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t63 = (20 - 23);
    t56 = (t63 * -1);
    t56 = (t56 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t56;
    t26 = (t1 + 3512);
    t32 = (t64 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 0;
    t33 = (t32 + 4U);
    *((int *)t33) = 3;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t65 = (3 - 0);
    t56 = (t65 * 1);
    t56 = (t56 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t56;
    t33 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t61, t24, t62, t26, t64);
    t35 = (t18 + 56U);
    t36 = *((char **)t35);
    t35 = (t16 + 0U);
    t66 = *((int *)t35);
    t56 = (t66 - 23);
    t57 = (t56 * 1U);
    t58 = (0 + t57);
    t37 = (t36 + t58);
    t41 = (t61 + 12U);
    t67 = *((unsigned int *)t41);
    t68 = (1U * t67);
    memcpy(t37, t33, t68);
    goto LAB21;

LAB23:    t7 = (t18 + 56U);
    t11 = *((char **)t7);
    t7 = (t16 + 0U);
    t30 = *((int *)t7);
    t10 = (t30 - 23);
    t31 = (t10 * 1U);
    t47 = (0 + t31);
    t12 = (t11 + t47);
    t14 = (t49 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 23;
    t15 = (t14 + 4U);
    *((int *)t15) = 20;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t51 = (20 - 23);
    t48 = (t51 * -1);
    t48 = (t48 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t48;
    t15 = (t1 + 3508);
    t20 = (t50 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 3;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t52 = (3 - 0);
    t48 = (t52 * 1);
    t48 = (t48 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t48;
    t60 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t12, t49, t15, t50);
    t39 = t60;
    goto LAB25;

LAB27:;
}


extern void work_p_0205875555_init()
{
	static char *se[] = {(void *)work_p_0205875555_sub_851030953_2789628542};
	xsi_register_didat("work_p_0205875555", "isim/vending_machine_controller_tb_isim_beh.exe.sim/work/p_0205875555.didat");
	xsi_register_subprogram_executes(se);
}
