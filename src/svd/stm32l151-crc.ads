pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDR_Independent_data_register_Field is STM32L151.UInt7;

   --  Independent data register
   type IDR_Register is record
      --  Independent data register
      Independent_data_register : IDR_Independent_data_register_Field :=
                                   16#0#;
      --  unspecified
      Reserved_7_31             : STM32L151.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      Independent_data_register at 0 range 0 .. 6;
      Reserved_7_31             at 0 range 7 .. 31;
   end record;

   subtype CR_RESET_Field is STM32L151.Bit;

   --  Control register
   type CR_Register is record
      --  Write-only. RESET
      RESET         : CR_RESET_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : STM32L151.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      RESET         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRC calculation unit
   type CRC_Peripheral is record
      --  Data register
      DR  : aliased STM32L151.UInt32;
      --  Independent data register
      IDR : aliased IDR_Register;
      --  Control register
      CR  : aliased CR_Register;
   end record
     with Volatile;

   for CRC_Peripheral use record
      DR  at 16#0# range 0 .. 31;
      IDR at 16#4# range 0 .. 31;
      CR  at 16#8# range 0 .. 31;
   end record;

   --  CRC calculation unit
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end STM32L151.CRC;
