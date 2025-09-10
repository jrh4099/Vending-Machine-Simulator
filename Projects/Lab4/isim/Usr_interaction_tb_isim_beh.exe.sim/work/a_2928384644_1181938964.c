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
static const char *ng0 = "D:/Jonathan Hubbard/DSD2/Lab4/Code/vending_machine_controller.vhd";
extern char *WORK_P_0205875555;

char *work_p_0205875555_sub_851030953_2789628542(char *, char *, char *);


static void work_a_2928384644_1181938964_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t2 = work_p_0205875555_sub_851030953_2789628542(WORK_P_0205875555, t1, t3);
    t4 = (t1 + 12U);
    t5 = *((unsigned int *)t4);
    t5 = (t5 * 1U);
    t6 = (12U != t5);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 4672);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 12U);
    xsi_driver_first_trans_fast(t7);

LAB2:    t12 = (t0 + 4592);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(12U, t5, 0);
    goto LAB6;

}


extern void work_a_2928384644_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2928384644_1181938964_p_0};
	xsi_register_didat("work_a_2928384644_1181938964", "isim/Usr_interaction_tb_isim_beh.exe.sim/work/a_2928384644_1181938964.didat");
	xsi_register_executes(pe);
}
