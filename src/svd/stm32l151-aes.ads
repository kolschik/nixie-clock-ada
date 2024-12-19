pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.AES is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_EN_Field is STM32L151.Bit;
   subtype CR_DATATYPE_Field is STM32L151.UInt2;
   subtype CR_MODE_Field is STM32L151.UInt2;
   subtype CR_CHMOD_Field is STM32L151.UInt2;
   subtype CR_CCFC_Field is STM32L151.Bit;
   subtype CR_ERRC_Field is STM32L151.Bit;
   subtype CR_CCFIE_Field is STM32L151.Bit;
   subtype CR_ERRIE_Field is STM32L151.Bit;
   subtype CR_DMAINEN_Field is STM32L151.Bit;
   subtype CR_DMAOUTEN_Field is STM32L151.Bit;

   --  control register
   type CR_Register is record
      --  AES enable
      EN             : CR_EN_Field := 16#0#;
      --  Data type selection
      DATATYPE       : CR_DATATYPE_Field := 16#0#;
      --  AES operating mode
      MODE           : CR_MODE_Field := 16#0#;
      --  AES chaining mode
      CHMOD          : CR_CHMOD_Field := 16#0#;
      --  Computation Complete Flag Clear
      CCFC           : CR_CCFC_Field := 16#0#;
      --  Error clear
      ERRC           : CR_ERRC_Field := 16#0#;
      --  CCF flag interrupt enable
      CCFIE          : CR_CCFIE_Field := 16#0#;
      --  Error interrupt enable
      ERRIE          : CR_ERRIE_Field := 16#0#;
      --  Enable DMA management of data input phase
      DMAINEN        : CR_DMAINEN_Field := 16#0#;
      --  Enable DMA management of data output phase
      DMAOUTEN       : CR_DMAOUTEN_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32L151.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN             at 0 range 0 .. 0;
      DATATYPE       at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 4;
      CHMOD          at 0 range 5 .. 6;
      CCFC           at 0 range 7 .. 7;
      ERRC           at 0 range 8 .. 8;
      CCFIE          at 0 range 9 .. 9;
      ERRIE          at 0 range 10 .. 10;
      DMAINEN        at 0 range 11 .. 11;
      DMAOUTEN       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype SR_CCF_Field is STM32L151.Bit;
   subtype SR_RDERR_Field is STM32L151.Bit;
   subtype SR_WRERR_Field is STM32L151.Bit;

   --  Status register
   type SR_Register is record
      --  Read-only. Computation complete flag
      CCF           : SR_CCF_Field;
      --  Read-only. Read error flag
      RDERR         : SR_RDERR_Field;
      --  Read-only. Write error flag
      WRERR         : SR_WRERR_Field;
      --  unspecified
      Reserved_3_31 : STM32L151.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      CCF           at 0 range 0 .. 0;
      RDERR         at 0 range 1 .. 1;
      WRERR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Advanced encrytion standard hardware accelerator
   type AES_Peripheral is record
      --  control register
      CR    : aliased CR_Register;
      --  Status register
      SR    : aliased SR_Register;
      --  Data input register
      DINR  : aliased STM32L151.UInt32;
      --  Data output register
      DOUTR : aliased STM32L151.UInt32;
      --  AES Key register 0
      KEYR0 : aliased STM32L151.UInt32;
      --  AES Key register 1
      KEYR1 : aliased STM32L151.UInt32;
      --  AES Key register 2
      KEYR2 : aliased STM32L151.UInt32;
      --  AES Key register 3
      KEYR3 : aliased STM32L151.UInt32;
      --  Initialization Vector Register 0
      IVR0  : aliased STM32L151.UInt32;
      --  Initialization Vector Register 1
      IVR1  : aliased STM32L151.UInt32;
      --  Initialization Vector Register 2
      IVR2  : aliased STM32L151.UInt32;
      --  Initialization Vector Register 3
      IVR3  : aliased STM32L151.UInt32;
   end record
     with Volatile;

   for AES_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      SR    at 16#4# range 0 .. 31;
      DINR  at 16#8# range 0 .. 31;
      DOUTR at 16#C# range 0 .. 31;
      KEYR0 at 16#10# range 0 .. 31;
      KEYR1 at 16#14# range 0 .. 31;
      KEYR2 at 16#18# range 0 .. 31;
      KEYR3 at 16#1C# range 0 .. 31;
      IVR0  at 16#20# range 0 .. 31;
      IVR1  at 16#24# range 0 .. 31;
      IVR2  at 16#28# range 0 .. 31;
      IVR3  at 16#2C# range 0 .. 31;
   end record;

   --  Advanced encrytion standard hardware accelerator
   AES_Periph : aliased AES_Peripheral
     with Import, Address => AES_Base;

end STM32L151.AES;
