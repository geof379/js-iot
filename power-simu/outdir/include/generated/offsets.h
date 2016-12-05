/* include/generated/offsets.h.tmp - structure member offsets definition header */

/*
 * Copyright (c) 2010-2014 Wind River Systems, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* THIS FILE IS AUTO GENERATED.  PLEASE DO NOT EDIT */

/*
 * This header file provides macros for the offsets of various structure
 * members.  These offset macros are primarily intended to be used in
 * assembly code.
 */

/*
 * Auto-generated header guard.
 */
#ifndef _HGUARD_7c98846b
#define _HGUARD_7c98846b
 
#ifdef __cplusplus
extern "C" {
#endif

/* defines */

#define	__tNANO_fiber_OFFSET	0x0
#define	__tNANO_task_OFFSET	0x4
#define	__tNANO_current_OFFSET	0x8
#define	__tNANO_SIZEOF	0x14
#define	__tTCS_link_OFFSET	0x0
#define	__tTCS_prio_OFFSET	0xC
#define	__tTCS_flags_OFFSET	0x4
#define	__tTCS_coopReg_OFFSET	0x8
#define	__tTCS_preempReg_OFFSET	0xC
#define	__tTCS_errno_var_OFFSET	0x10
#define	__tTCS_SIZEOF	0x14
#define	__tNANO_nested_OFFSET	0xC
#define	__tNANO_common_isp_OFFSET	0x10
#define	__tTCS_coopFloatReg_OFFSET	0x14
#define	__tTCS_preempFloatReg_OFFSET	0x14
#define	__tTCS_NOFLOAT_SIZEOF	0x14
#define	__tCoopReg_esp_OFFSET	0x0
#define	__tSwapStk_eax_OFFSET	0x0
#define	__tSwapStk_ebp_OFFSET	0x4
#define	__tSwapStk_ebx_OFFSET	0x8
#define	__tSwapStk_esi_OFFSET	0xC
#define	__tSwapStk_edi_OFFSET	0x10
#define	__tSwapStk_retAddr_OFFSET	0x14
#define	__tSwapStk_param_OFFSET	0x18
#define	__tSwapStk_SIZEOF	0x1C
#define	__NANO_ESF_esp_OFFSET	0x0
#define	__NANO_ESF_ebp_OFFSET	0x4
#define	__NANO_ESF_ebx_OFFSET	0x8
#define	__NANO_ESF_esi_OFFSET	0xC
#define	__NANO_ESF_edi_OFFSET	0x10
#define	__NANO_ESF_edx_OFFSET	0x14
#define	__NANO_ESF_ecx_OFFSET	0x1C
#define	__NANO_ESF_eax_OFFSET	0x18
#define	__NANO_ESF_errorCode_OFFSET	0x20
#define	__NANO_ESF_eip_OFFSET	0x24
#define	__NANO_ESF_cs_OFFSET	0x28
#define	__NANO_ESF_eflags_OFFSET	0x2C
#define	__ISR_LIST_SIZEOF	0x14

#ifdef __cplusplus
}
#endif

#endif /* _HGUARD_ */
