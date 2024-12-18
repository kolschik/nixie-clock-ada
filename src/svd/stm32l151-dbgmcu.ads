pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.DBGMCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDCODE_DEV_ID_Field is STM32L151.UInt12;
   subtype IDCODE_REV_ID_Field is STM32L151.UInt16;

   --  DBGMCU_IDCODE
   type IDCODE_Register is record
      --  Read-only. Device identifier
      DEV_ID         : IDCODE_DEV_ID_Field;
      --  unspecified
      Reserved_12_15 : STM32L151.UInt4;
      --  Read-only. Revision identifie
      REV_ID         : IDCODE_REV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDCODE_Register use record
      DEV_ID         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      REV_ID         at 0 range 16 .. 31;
   end record;

   subtype CR_DBG_SLEEP_Field is STM32L151.Bit;
   subtype CR_DBG_STOP_Field is STM32L151.Bit;
   subtype CR_DBG_STANDBY_Field is STM32L151.Bit;
   subtype CR_TRACE_IOEN_Field is STM32L151.Bit;
   subtype CR_TRACE_MODE_Field is STM32L151.UInt2;

   --  Debug MCU configuration register
   type CR_Register is record
      --  Debug Sleep mode
      DBG_SLEEP     : CR_DBG_SLEEP_Field := 16#0#;
      --  Debug Stop mode
      DBG_STOP      : CR_DBG_STOP_Field := 16#0#;
      --  Debug Standby mode
      DBG_STANDBY   : CR_DBG_STANDBY_Field := 16#0#;
      --  unspecified
      Reserved_3_4  : STM32L151.UInt2 := 16#0#;
      --  Trace pin assignment control
      TRACE_IOEN    : CR_TRACE_IOEN_Field := 16#0#;
      --  Trace pin assignment control
      TRACE_MODE    : CR_TRACE_MODE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32L151.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      DBG_SLEEP     at 0 range 0 .. 0;
      DBG_STOP      at 0 range 1 .. 1;
      DBG_STANDBY   at 0 range 2 .. 2;
      Reserved_3_4  at 0 range 3 .. 4;
      TRACE_IOEN    at 0 range 5 .. 5;
      TRACE_MODE    at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype APB1_FZ_DBG_TIM2_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_TIM3_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_TIM4_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_TIM5_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_TIM6_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_TIM7_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_RTC_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_WWDG_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_IWDG_STOP_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_I2C1_SMBUS_TIMEOUT_Field is STM32L151.Bit;
   subtype APB1_FZ_DBG_I2C2_SMBUS_TIMEOUT_Field is STM32L151.Bit;

   --  Debug MCU APB1 freeze register1
   type APB1_FZ_Register is record
      --  TIM2 counter stopped when core is halted
      DBG_TIM2_STOP          : APB1_FZ_DBG_TIM2_STOP_Field := 16#0#;
      --  TIM3 counter stopped when core is halted
      DBG_TIM3_STOP          : APB1_FZ_DBG_TIM3_STOP_Field := 16#0#;
      --  TIM4 counter stopped when core is halted
      DBG_TIM4_STOP          : APB1_FZ_DBG_TIM4_STOP_Field := 16#0#;
      --  TIM5 counter stopped when core is halted
      DBG_TIM5_STOP          : APB1_FZ_DBG_TIM5_STOP_Field := 16#0#;
      --  TIM6 counter stopped when core is halted
      DBG_TIM6_STOP          : APB1_FZ_DBG_TIM6_STOP_Field := 16#0#;
      --  TIM7 counter stopped when core is halted
      DBG_TIM7_STOP          : APB1_FZ_DBG_TIM7_STOP_Field := 16#0#;
      --  unspecified
      Reserved_6_9           : STM32L151.UInt4 := 16#0#;
      --  Debug RTC stopped when core is halted
      DBG_RTC_STOP           : APB1_FZ_DBG_RTC_STOP_Field := 16#0#;
      --  Debug window watchdog stopped when core is halted
      DBG_WWDG_STOP          : APB1_FZ_DBG_WWDG_STOP_Field := 16#0#;
      --  Debug independent watchdog stopped when core is halted
      DBG_IWDG_STOP          : APB1_FZ_DBG_IWDG_STOP_Field := 16#0#;
      --  unspecified
      Reserved_13_20         : STM32L151.UInt8 := 16#0#;
      --  SMBUS timeout mode stopped when core is halted
      DBG_I2C1_SMBUS_TIMEOUT : APB1_FZ_DBG_I2C1_SMBUS_TIMEOUT_Field := 16#0#;
      --  SMBUS timeout mode stopped when core is halted
      DBG_I2C2_SMBUS_TIMEOUT : APB1_FZ_DBG_I2C2_SMBUS_TIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_23_31         : STM32L151.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1_FZ_Register use record
      DBG_TIM2_STOP          at 0 range 0 .. 0;
      DBG_TIM3_STOP          at 0 range 1 .. 1;
      DBG_TIM4_STOP          at 0 range 2 .. 2;
      DBG_TIM5_STOP          at 0 range 3 .. 3;
      DBG_TIM6_STOP          at 0 range 4 .. 4;
      DBG_TIM7_STOP          at 0 range 5 .. 5;
      Reserved_6_9           at 0 range 6 .. 9;
      DBG_RTC_STOP           at 0 range 10 .. 10;
      DBG_WWDG_STOP          at 0 range 11 .. 11;
      DBG_IWDG_STOP          at 0 range 12 .. 12;
      Reserved_13_20         at 0 range 13 .. 20;
      DBG_I2C1_SMBUS_TIMEOUT at 0 range 21 .. 21;
      DBG_I2C2_SMBUS_TIMEOUT at 0 range 22 .. 22;
      Reserved_23_31         at 0 range 23 .. 31;
   end record;

   subtype APB2_FZ_DBG_TIM9_STOP_Field is STM32L151.Bit;
   subtype APB2_FZ_DBG_TIM10_STOP_Field is STM32L151.Bit;
   subtype APB2_FZ_DBG_TIM11_STOP_Field is STM32L151.Bit;

   --  Debug MCU APB1 freeze register 2
   type APB2_FZ_Register is record
      --  unspecified
      Reserved_0_1   : STM32L151.UInt2 := 16#0#;
      --  TIM counter stopped when core is halted
      DBG_TIM9_STOP  : APB2_FZ_DBG_TIM9_STOP_Field := 16#0#;
      --  TIM counter stopped when core is halted
      DBG_TIM10_STOP : APB2_FZ_DBG_TIM10_STOP_Field := 16#0#;
      --  TIM counter stopped when core is halted
      DBG_TIM11_STOP : APB2_FZ_DBG_TIM11_STOP_Field := 16#0#;
      --  unspecified
      Reserved_5_31  : STM32L151.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2_FZ_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      DBG_TIM9_STOP  at 0 range 2 .. 2;
      DBG_TIM10_STOP at 0 range 3 .. 3;
      DBG_TIM11_STOP at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  debug support
   type DBGMCU_Peripheral is record
      --  DBGMCU_IDCODE
      IDCODE  : aliased IDCODE_Register;
      --  Debug MCU configuration register
      CR      : aliased CR_Register;
      --  Debug MCU APB1 freeze register1
      APB1_FZ : aliased APB1_FZ_Register;
      --  Debug MCU APB1 freeze register 2
      APB2_FZ : aliased APB2_FZ_Register;
   end record
     with Volatile;

   for DBGMCU_Peripheral use record
      IDCODE  at 16#0# range 0 .. 31;
      CR      at 16#4# range 0 .. 31;
      APB1_FZ at 16#8# range 0 .. 31;
      APB2_FZ at 16#C# range 0 .. 31;
   end record;

   --  debug support
   DBGMCU_Periph : aliased DBGMCU_Peripheral
     with Import, Address => DBGMCU_Base;

end STM32L151.DBGMCU;
