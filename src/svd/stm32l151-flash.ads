pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.Flash is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ACR_LATENCY_Field is STM32L151.Bit;
   subtype ACR_PRFTEN_Field is STM32L151.Bit;
   subtype ACR_ACC64_Field is STM32L151.Bit;
   subtype ACR_SLEEP_PD_Field is STM32L151.Bit;
   subtype ACR_RUN_PD_Field is STM32L151.Bit;

   --  Access control register
   type ACR_Register is record
      --  Latency
      LATENCY       : ACR_LATENCY_Field := 16#0#;
      --  Prefetch enable
      PRFTEN        : ACR_PRFTEN_Field := 16#0#;
      --  64-bit access
      ACC64         : ACR_ACC64_Field := 16#0#;
      --  Flash mode during Sleep
      SLEEP_PD      : ACR_SLEEP_PD_Field := 16#0#;
      --  Flash mode during Run
      RUN_PD        : ACR_RUN_PD_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : STM32L151.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACR_Register use record
      LATENCY       at 0 range 0 .. 0;
      PRFTEN        at 0 range 1 .. 1;
      ACC64         at 0 range 2 .. 2;
      SLEEP_PD      at 0 range 3 .. 3;
      RUN_PD        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PECR_PELOCK_Field is STM32L151.Bit;
   subtype PECR_PRGLOCK_Field is STM32L151.Bit;
   subtype PECR_OPTLOCK_Field is STM32L151.Bit;
   subtype PECR_PROG_Field is STM32L151.Bit;
   subtype PECR_DATA_Field is STM32L151.Bit;
   subtype PECR_FTDW_Field is STM32L151.Bit;
   subtype PECR_ERASE_Field is STM32L151.Bit;
   subtype PECR_FPRG_Field is STM32L151.Bit;
   subtype PECR_PARALLELBANK_Field is STM32L151.Bit;
   subtype PECR_EOPIE_Field is STM32L151.Bit;
   subtype PECR_ERRIE_Field is STM32L151.Bit;
   subtype PECR_OBL_LAUNCH_Field is STM32L151.Bit;

   --  Program/erase control register
   type PECR_Register is record
      --  FLASH_PECR and data EEPROM lock
      PELOCK         : PECR_PELOCK_Field := 16#1#;
      --  Program memory lock
      PRGLOCK        : PECR_PRGLOCK_Field := 16#1#;
      --  Option bytes block lock
      OPTLOCK        : PECR_OPTLOCK_Field := 16#1#;
      --  Program memory selection
      PROG           : PECR_PROG_Field := 16#0#;
      --  Data EEPROM selection
      DATA           : PECR_DATA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : STM32L151.UInt3 := 16#0#;
      --  Fixed time data write for Byte, Half Word and Word programming
      FTDW           : PECR_FTDW_Field := 16#0#;
      --  Page or Double Word erase mode
      ERASE          : PECR_ERASE_Field := 16#0#;
      --  Half Page/Double Word programming mode
      FPRG           : PECR_FPRG_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : STM32L151.UInt4 := 16#0#;
      --  Parallel bank mode
      PARALLELBANK   : PECR_PARALLELBANK_Field := 16#0#;
      --  End of programming interrupt enable
      EOPIE          : PECR_EOPIE_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : PECR_ERRIE_Field := 16#0#;
      --  Launch the option byte loading
      OBL_LAUNCH     : PECR_OBL_LAUNCH_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : STM32L151.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PELOCK         at 0 range 0 .. 0;
      PRGLOCK        at 0 range 1 .. 1;
      OPTLOCK        at 0 range 2 .. 2;
      PROG           at 0 range 3 .. 3;
      DATA           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FTDW           at 0 range 8 .. 8;
      ERASE          at 0 range 9 .. 9;
      FPRG           at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      PARALLELBANK   at 0 range 15 .. 15;
      EOPIE          at 0 range 16 .. 16;
      ERRIE          at 0 range 17 .. 17;
      OBL_LAUNCH     at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SR_BSY_Field is STM32L151.Bit;
   subtype SR_EOP_Field is STM32L151.Bit;
   subtype SR_ENDHV_Field is STM32L151.Bit;
   subtype SR_READY_Field is STM32L151.Bit;
   subtype SR_WRPERR_Field is STM32L151.Bit;
   subtype SR_PGAERR_Field is STM32L151.Bit;
   subtype SR_SIZERR_Field is STM32L151.Bit;
   subtype SR_OPTVERR_Field is STM32L151.Bit;
   subtype SR_OPTVERRUSR_Field is STM32L151.Bit;

   --  Status register
   type SR_Register is record
      --  Read-only. Write/erase operations in progress
      BSY            : SR_BSY_Field := 16#0#;
      --  Read-only. End of operation
      EOP            : SR_EOP_Field := 16#0#;
      --  Read-only. End of high voltage
      ENDHV          : SR_ENDHV_Field := 16#1#;
      --  Read-only. Flash memory module ready after low power mode
      READY          : SR_READY_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : STM32L151.UInt4 := 16#0#;
      --  Write protected error
      WRPERR         : SR_WRPERR_Field := 16#0#;
      --  Programming alignment error
      PGAERR         : SR_PGAERR_Field := 16#0#;
      --  Size error
      SIZERR         : SR_SIZERR_Field := 16#0#;
      --  Option validity error
      OPTVERR        : SR_OPTVERR_Field := 16#0#;
      --  Option UserValidity Error
      OPTVERRUSR     : SR_OPTVERRUSR_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32L151.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      BSY            at 0 range 0 .. 0;
      EOP            at 0 range 1 .. 1;
      ENDHV          at 0 range 2 .. 2;
      READY          at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      WRPERR         at 0 range 8 .. 8;
      PGAERR         at 0 range 9 .. 9;
      SIZERR         at 0 range 10 .. 10;
      OPTVERR        at 0 range 11 .. 11;
      OPTVERRUSR     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OBR_RDPRT_Field is STM32L151.UInt8;
   subtype OBR_BOR_LEV_Field is STM32L151.UInt4;
   subtype OBR_IWDG_SW_Field is STM32L151.Bit;
   subtype OBR_nRTS_STOP_Field is STM32L151.Bit;
   subtype OBR_nRST_STDBY_Field is STM32L151.Bit;
   subtype OBR_BFB2_Field is STM32L151.Bit;

   --  Option byte register
   type OBR_Register is record
      --  Read-only. Read protection
      RDPRT          : OBR_RDPRT_Field;
      --  unspecified
      Reserved_8_15  : STM32L151.UInt8;
      --  Read-only. BOR_LEV
      BOR_LEV        : OBR_BOR_LEV_Field;
      --  Read-only. IWDG_SW
      IWDG_SW        : OBR_IWDG_SW_Field;
      --  Read-only. nRTS_STOP
      nRTS_STOP      : OBR_nRTS_STOP_Field;
      --  Read-only. nRST_STDBY
      nRST_STDBY     : OBR_nRST_STDBY_Field;
      --  Read-only. Boot From Bank 2
      BFB2           : OBR_BFB2_Field;
      --  unspecified
      Reserved_24_31 : STM32L151.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OBR_Register use record
      RDPRT          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BOR_LEV        at 0 range 16 .. 19;
      IWDG_SW        at 0 range 20 .. 20;
      nRTS_STOP      at 0 range 21 .. 21;
      nRST_STDBY     at 0 range 22 .. 22;
      BFB2           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash
   type Flash_Peripheral is record
      --  Access control register
      ACR     : aliased ACR_Register;
      --  Program/erase control register
      PECR    : aliased PECR_Register;
      --  Power down key register
      PDKEYR  : aliased STM32L151.UInt32;
      --  Program/erase key register
      PEKEYR  : aliased STM32L151.UInt32;
      --  Program memory key register
      PRGKEYR : aliased STM32L151.UInt32;
      --  Option byte key register
      OPTKEYR : aliased STM32L151.UInt32;
      --  Status register
      SR      : aliased SR_Register;
      --  Option byte register
      OBR     : aliased OBR_Register;
      --  Write protection register
      WRPR1   : aliased STM32L151.UInt32;
      --  Write protection register
      WRPR2   : aliased STM32L151.UInt32;
      --  Write protection register
      WRPR3   : aliased STM32L151.UInt32;
   end record
     with Volatile;

   for Flash_Peripheral use record
      ACR     at 16#0# range 0 .. 31;
      PECR    at 16#4# range 0 .. 31;
      PDKEYR  at 16#8# range 0 .. 31;
      PEKEYR  at 16#C# range 0 .. 31;
      PRGKEYR at 16#10# range 0 .. 31;
      OPTKEYR at 16#14# range 0 .. 31;
      SR      at 16#18# range 0 .. 31;
      OBR     at 16#1C# range 0 .. 31;
      WRPR1   at 16#20# range 0 .. 31;
      WRPR2   at 16#80# range 0 .. 31;
      WRPR3   at 16#84# range 0 .. 31;
   end record;

   --  Flash
   Flash_Periph : aliased Flash_Peripheral
     with Import, Address => Flash_Base;

end STM32L151.Flash;
