pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.COMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CSR_PU10K_Field is STM32L151.Bit;
   subtype CSR_PU400K_Field is STM32L151.Bit;
   subtype CSR_PD10K_Field is STM32L151.Bit;
   subtype CSR_PD400K_Field is STM32L151.Bit;
   subtype CSR_CMP1EN_Field is STM32L151.Bit;
   subtype CSR_SW1_Field is STM32L151.Bit;
   subtype CSR_CMP1OUT_Field is STM32L151.Bit;
   subtype CSR_SPEED_Field is STM32L151.Bit;
   subtype CSR_CMP2OUT_Field is STM32L151.Bit;
   subtype CSR_VREFOUTEN_Field is STM32L151.Bit;
   subtype CSR_WNDWE_Field is STM32L151.Bit;
   subtype CSR_INSEL_Field is STM32L151.UInt3;
   subtype CSR_OUTSEL_Field is STM32L151.UInt3;
   --  CSR_FCH array element
   subtype CSR_FCH_Element is STM32L151.Bit;

   --  CSR_FCH array
   type CSR_FCH_Field_Array is array (3 .. 4) of CSR_FCH_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CSR_FCH
   type CSR_FCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FCH as a value
            Val : STM32L151.UInt2;
         when True =>
            --  FCH as an array
            Arr : CSR_FCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CSR_FCH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CSR_RCH13_Field is STM32L151.Bit;
   subtype CSR_CAIE_Field is STM32L151.Bit;
   subtype CSR_CAIF_Field is STM32L151.Bit;
   subtype CSR_TSUSP_Field is STM32L151.Bit;

   --  comparator control and status register
   type CSR_Register is record
      --  10 kO pull-up resistor
      PU10K          : CSR_PU10K_Field := 16#0#;
      --  400 kO pull-up resistor
      PU400K         : CSR_PU400K_Field := 16#0#;
      --  10 kO pull-down resistor
      PD10K          : CSR_PD10K_Field := 16#0#;
      --  400 kO pull-down resistor
      PD400K         : CSR_PD400K_Field := 16#0#;
      --  Comparator 1 enable
      CMP1EN         : CSR_CMP1EN_Field := 16#0#;
      --  SW1 analog switch enable
      SW1            : CSR_SW1_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : STM32L151.Bit := 16#0#;
      --  Read-only. Comparator 1 output
      CMP1OUT        : CSR_CMP1OUT_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32L151.UInt4 := 16#0#;
      --  Comparator 2 speed mode
      SPEED          : CSR_SPEED_Field := 16#0#;
      --  Read-only. Comparator 2 output
      CMP2OUT        : CSR_CMP2OUT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32L151.UInt2 := 16#0#;
      --  VREFINT output enable
      VREFOUTEN      : CSR_VREFOUTEN_Field := 16#0#;
      --  Window mode enable
      WNDWE          : CSR_WNDWE_Field := 16#0#;
      --  Inverted input selection
      INSEL          : CSR_INSEL_Field := 16#0#;
      --  Comparator 2 output selection
      OUTSEL         : CSR_OUTSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_25 : STM32L151.UInt2 := 16#0#;
      --  Select GPIO port PA3 as fast ADC input channel CH3.
      FCH            : CSR_FCH_Field := (As_Array => False, Val => 16#0#);
      --  Select GPIO port PC3 as re-routed ADC input channel CH13.
      RCH13          : CSR_RCH13_Field := 16#0#;
      --  Channel Acquisition Interrupt Enable / Clear
      CAIE           : CSR_CAIE_Field := 16#0#;
      --  Read-only. Channel acquisition interrupt flag
      CAIF           : CSR_CAIF_Field := 16#0#;
      --  Suspend Timer Mode
      TSUSP          : CSR_TSUSP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      PU10K          at 0 range 0 .. 0;
      PU400K         at 0 range 1 .. 1;
      PD10K          at 0 range 2 .. 2;
      PD400K         at 0 range 3 .. 3;
      CMP1EN         at 0 range 4 .. 4;
      SW1            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CMP1OUT        at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SPEED          at 0 range 12 .. 12;
      CMP2OUT        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      VREFOUTEN      at 0 range 16 .. 16;
      WNDWE          at 0 range 17 .. 17;
      INSEL          at 0 range 18 .. 20;
      OUTSEL         at 0 range 21 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      FCH            at 0 range 26 .. 27;
      RCH13          at 0 range 28 .. 28;
      CAIE           at 0 range 29 .. 29;
      CAIF           at 0 range 30 .. 30;
      TSUSP          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Comparators
   type COMP_Peripheral is record
      --  comparator control and status register
      CSR : aliased CSR_Register;
   end record
     with Volatile;

   for COMP_Peripheral use record
      CSR at 0 range 0 .. 31;
   end record;

   --  Comparators
   COMP_Periph : aliased COMP_Peripheral
     with Import, Address => COMP_Base;

end STM32L151.COMP;
