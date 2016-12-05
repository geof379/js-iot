MEMORY
    {
    ROM (rx) : ORIGIN = 0x40030000, LENGTH = 144*1K
    RAM (wx) : ORIGIN = 0xA8006400, LENGTH = 55*1K
    IDT_LIST : ORIGIN = 2K, LENGTH = 2K
    }
OUTPUT_FORMAT("elf32-iamcu")
OUTPUT_ARCH(iamcu:intel)
SECTIONS
 {

 _image_rom_start = 0x40030000;
 _image_text_start = 0x40030000;
 text () :
 {
 *(.text_start)
 *(".text_start.*")
 *(.text)
 *(".text.*")
 *(.gnu.linkonce.t.*)
 *(.eh_frame)
 *(.init)
 *(.fini)
 *(.eini)

 } > ROM
 _image_text_end = .;
 devconfig () :
 {
  __devconfig_start = .;
  *(".devconfig.*")
  KEEP(*(SORT(".devconfig*")))
  __devconfig_end = .;
 } > ROM
 rodata () :
 {
 *(.rodata)
 *(".rodata.*")
 *(.gnu.linkonce.r.*)
 . = ALIGN(8); _idt_base_address = .; KEEP(*(staticIdt))
 . = ALIGN(4); _irq_to_interrupt_vector = .; KEEP(*(irq_int_vector_map))

 } > ROM
 _image_rom_end = .;
 __data_rom_start = ALIGN(4);


 datas () : AT(__data_rom_start)
 {

 _image_ram_start = .;
 __data_ram_start = .;
 *(.data)
 *(".data.*")
 . = ALIGN(4);
 } > RAM
 initlevel () :
 {
  __device_init_start = .; __device_PRIMARY_start = .; KEEP(*(SORT(.init_PRIMARY[0-9]))); KEEP(*(SORT(.init_PRIMARY[1-9][0-9]))); __device_SECONDARY_start = .; KEEP(*(SORT(.init_SECONDARY[0-9]))); KEEP(*(SORT(.init_SECONDARY[1-9][0-9]))); __device_NANOKERNEL_start = .; KEEP(*(SORT(.init_NANOKERNEL[0-9]))); KEEP(*(SORT(.init_NANOKERNEL[1-9][0-9]))); __device_MICROKERNEL_start = .; KEEP(*(SORT(.init_MICROKERNEL[0-9]))); KEEP(*(SORT(.init_MICROKERNEL[1-9][0-9]))); __device_APPLICATION_start = .; KEEP(*(SORT(.init_APPLICATION[0-9]))); KEEP(*(SORT(.init_APPLICATION[1-9][0-9]))); __device_init_end = .;
 
 } > RAM
 _k_task_list ALIGN(4) : ALIGN(4)
 {
  _k_task_list_start = .;
   *(._k_task_list.public.*)
   *(._k_task_list.private.*)
  _k_task_list_idle_start = .;
   *(._k_task_list.idle.*)
  KEEP(*(SORT("._k_task_list*")))
  _k_task_list_end = .;
 } > RAM
 _k_task_ptr () :
 {
  _k_task_ptr_start = .;
   *(._k_task_ptr.public.*)
   *(._k_task_ptr.private.*)
   *(._k_task_ptr.idle.*)
  KEEP(*(SORT("._k_task_ptr*")))
  _k_task_ptr_end = .;
 } > RAM
 _k_pipe_ptr () :
 {
  _k_pipe_ptr_start = .;
   *(._k_pipe_ptr.public.*)
   *(._k_pipe_ptr.private.*)
  KEEP(*(SORT("._k_pipe_ptr*")))
  _k_pipe_ptr_end = .;
 } > RAM
 _k_mem_map_ptr () :
 {
  _k_mem_map_ptr_start = .;
   *(._k_mem_map_ptr.public.*)
   *(._k_mem_map_ptr.private.*)
  KEEP(*(SORT("._k_mem_map_ptr*")))
  _k_mem_map_ptr_end = .;
 } > RAM
 _k_event_list () :
 {
  _k_event_list_start = .;
   *(._k_event_list.event.*)
  KEEP(*(SORT("._k_event_list*")))
  _k_event_list_end = .;
 } > RAM
 __data_ram_end = .;
 bss (NOLOAD ) :
 {
 . = ALIGN(4);
 __bss_start = .;
 *(.bss)
 *(".bss.*")
 *(COMMON)
 . = ALIGN(4);
 __bss_end = .;

 } > RAM
   AT > RAM
 noinit (NOLOAD ) :
 {
 *(.noinit)
 *(".noinit.*")
 KEEP(*(.intStubSect))
 } > RAM
 _image_ram_end = .;
 _end = .;
 . = ALIGN(((4) << 10));
 __bss_num_words = (__bss_end - __bss_start) >> 2;

 intList () :
 {
 KEEP(*(.spurIsr))
 KEEP(*(.spurNoErrIsr))
 __INT_LIST_START__ = .;
 LONG((__INT_LIST_END__ - __INT_LIST_START__) / 0x14)
 KEEP(*(.intList))
 __INT_LIST_END__ = .;
 } > IDT_LIST
 initlevel_error () :
 {
  KEEP(*(SORT(.init_[_A-Z0-9]*)))
 }
 ASSERT(SIZEOF(initlevel_error) == 0, "Undefined initialization levels used.")
 }
__data_size = (__data_ram_end - __data_ram_start);
__data_num_words = (__data_size + 3) >> 2;
SECTIONS
 {
 .shstrtab 0 (): { *(.shstrtab) }
 .symtab 0 (): { *(.symtab) }
 .strtab 0 (): { *(.strtab) }
 .iplt 0 (): { *(.iplt) }
 .igot.plt 0 (): { *(.igot.plt) }
 .rel.plt 0 (): { *(.rel.plt) }
 .rela.plt 0 (): { *(.rela.plt) }
 .rel.dyn 0 (): { *(".rel.*") }
 .rela.dyn 0 (): { *(".rela.*") }
 .comment 0 (): { *(.comment) }
 .debug 0 (): { *(.debug) }
 .line 0 (): { *(.line) }
 .debug_srcinfo 0 : { *(.debug_srcinfo) }
 .debug_sfnames 0 : { *(.debug_sfnames) }
 .debug_aranges 0 (): { *(.debug_aranges) }
 .debug_pubnames 0 (): { *(.debug_pubnames) }
 .debug_pubtypes 0 (): { *(.debug_pubtypes) }
 .debug_line 0 (): { *(.debug_line) }
 .debug_info 0 (): { *(.debug_info) }
 .debug_macinfo 0 (): { *(.debug_macinfo) }
 .debug_abbrev 0 (): { *(.debug_abbrev) }
 .debug_loc 0 (): { *(.debug_loc) }
 .debug_ranges 0 (): { *(.debug_ranges) }
 .debug_str 0 (): { *(.debug_str) }
 .debug_frame 0 (): { *(.debug_frame) }
 .debug_macro 0 (): { *(.debug_macro) }
 .trashcan :
  {
 *(.*)
  }
 }
ASSERT(SIZEOF(.trashcan) == 0, "Section(s) undefined in the linker script used.")
