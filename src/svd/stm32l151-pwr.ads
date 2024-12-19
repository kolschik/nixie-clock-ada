pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_LPSDSR_Field is STM32L151.Bit;
   subtype CR_PDDS_Field is STM32L151.Bit;
   subtype CR_CWUF_Field is STM32L151.Bit;
   subtype CR_CSBF_Field is STM32L151.Bit;
   subtype CR_PVDE_Field is STM32L151.Bit;
   subtype CR_PLS_Field is STM32L151.UInt3;
   subtype CR_DBP_Field is STM32L151.Bit;
   subtype CR_ULP_Field is STM32L151.Bit;
   subtype CR_FWU_Field is STM32L151.Bit;
   subtype CR_VOS_Field is STM32L151.UInt2;
   subtype CR_LPRUN_Field is STM32L151.Bit;

   --  power control register
   type CR_Register is record
      --  Low-power deep sleep
      LPSDSR         : CR_LPSDSR_Field := 16#0#;
      --  Power down deepsleep
      PDDS           : CR_PDDS_Field := 16#0#;
      --  Clear wakeup flag
      CWUF           : CR_CWUF_Field := 16#0#;
      --  Clear standby flag
      CSBF           : CR_CSBF_Field := 16#0#;
      --  Power voltage detector enable
      PVDE           : CR_PVDE_Field := 16#0#;
      --  PVD level selection
      PLS            : CR_PLS_Field := 16#0#;
      --  Disable backup domain write protection
      DBP            : CR_DBP_Field := 16#0#;
      --  Ultralow power mode
      ULP            : CR_ULP_Field := 16#0#;
      --  Fast wakeup
      FWU            : CR_FWU_Field := 16#0#;
      --  Voltage scaling range selection
      VOS            : CR_VOS_Field := 16#2#;
      --  unspecified
      Reserved_13_13 : STM32L151.Bit := 16#0#;
      --  Low power run mode
      LPRUN          : CR_LPRUN_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32L151.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      LPSDSR         at 0 range 0 .. 0;
      PDDS           at 0 range 1 .. 1;
      CWUF           at 0 range 2 .. 2;
      CSBF           at 0 range 3 .. 3;
      PVDE           at 0 range 4 .. 4;
      PLS            at 0 range 5 .. 7;
      DBP            at 0 range 8 .. 8;
      ULP            at 0 range 9 .. 9;
      FWU            at 0 range 10 .. 10;
      VOS            at 0 range 11 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      LPRUN          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype CSR_WUF_Field is STM32L151.Bit;
   subtype CSR_SBF_Field is STM32L151.Bit;
   subtype CSR_PVDO_Field is STM32L151.Bit;
   subtype CSR_VREFINTRDYF_Field is STM32L151.Bit;
   subtype CSR_VOSF_Field is STM32L151.Bit;
   subtype CSR_REGLPF_Field is STM32L151.Bit;
   --  CSR_EWUP array element
   subtype CSR_EWUP_Element is STM32L151.Bit;

   --  CSR_EWUP array
   type CSR_EWUP_Field_Array is array (1 .. 3) of CSR_EWUP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CSR_EWUP
   type CSR_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : STM32L151.UInt3;
         when True =>
            --  EWUP as an array
            Arr : CSR_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CSR_EWUP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  power control/status register
   type CSR_Register is record
      --  Read-only. Wakeup flag
      WUF            : CSR_WUF_Field := 16#0#;
      --  Read-only. Standby flag
      SBF            : CSR_SBF_Field := 16#0#;
      --  Read-only. PVD output
      PVDO           : CSR_PVDO_Field := 16#0#;
      --  Read-only. Internal voltage reference (VREFINT) ready flag
      VREFINTRDYF    : CSR_VREFINTRDYF_Field := 16#1#;
      --  Read-only. Voltage Scaling select flag
      VOSF           : CSR_VOSF_Field := 16#0#;
      --  Read-only. Regulator LP flag
      REGLPF         : CSR_REGLPF_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32L151.UInt2 := 16#0#;
      --  Enable WKUP pin 1
      EWUP           : CSR_EWUP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : STM32L151.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      WUF            at 0 range 0 .. 0;
      SBF            at 0 range 1 .. 1;
      PVDO           at 0 range 2 .. 2;
      VREFINTRDYF    at 0 range 3 .. 3;
      VOSF           at 0 range 4 .. 4;
      REGLPF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EWUP           at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  power control register
      CR  : aliased CR_Register;
      --  power control/status register
      CSR : aliased CSR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CSR at 16#4# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end STM32L151.PWR;
