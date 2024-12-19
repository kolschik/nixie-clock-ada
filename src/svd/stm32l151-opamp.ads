pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.OPAMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CSR_OPA1PD_Field is STM32L151.Bit;
   subtype CSR_S3SEL1_Field is STM32L151.Bit;
   subtype CSR_S4SEL1_Field is STM32L151.Bit;
   subtype CSR_S5SEL1_Field is STM32L151.Bit;
   subtype CSR_S6SEL1_Field is STM32L151.Bit;
   subtype CSR_OPA1CAL_L_Field is STM32L151.Bit;
   subtype CSR_OPA1CAL_H_Field is STM32L151.Bit;
   subtype CSR_OPA1LPM_Field is STM32L151.Bit;
   subtype CSR_OPA2PD_Field is STM32L151.Bit;
   subtype CSR_S3SEL2_Field is STM32L151.Bit;
   subtype CSR_S4SEL2_Field is STM32L151.Bit;
   subtype CSR_S5SEL2_Field is STM32L151.Bit;
   subtype CSR_S6SEL2_Field is STM32L151.Bit;
   subtype CSR_OPA2CAL_L_Field is STM32L151.Bit;
   subtype CSR_OPA2CAL_H_Field is STM32L151.Bit;
   subtype CSR_OPA2LPM_Field is STM32L151.Bit;
   subtype CSR_OPA3PD_Field is STM32L151.Bit;
   subtype CSR_S3SEL3_Field is STM32L151.Bit;
   subtype CSR_S4SEL3_Field is STM32L151.Bit;
   subtype CSR_S5SEL3_Field is STM32L151.Bit;
   subtype CSR_S6SEL3_Field is STM32L151.Bit;
   subtype CSR_OPA3CAL_L_Field is STM32L151.Bit;
   subtype CSR_OPA3CAL_H_Field is STM32L151.Bit;
   subtype CSR_OPA3LPM_Field is STM32L151.Bit;
   --  CSR_ANAWSEL array element
   subtype CSR_ANAWSEL_Element is STM32L151.Bit;

   --  CSR_ANAWSEL array
   type CSR_ANAWSEL_Field_Array is array (1 .. 3) of CSR_ANAWSEL_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CSR_ANAWSEL
   type CSR_ANAWSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ANAWSEL as a value
            Val : STM32L151.UInt3;
         when True =>
            --  ANAWSEL as an array
            Arr : CSR_ANAWSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CSR_ANAWSEL_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CSR_S7SEL2_Field is STM32L151.Bit;
   subtype CSR_AOP_RANGE_Field is STM32L151.Bit;
   subtype CSR_OPA1CALOUT_Field is STM32L151.Bit;
   subtype CSR_OPA2CALOUT_Field is STM32L151.Bit;
   subtype CSR_OPA3CALOUT_Field is STM32L151.Bit;

   --  control/status register
   type CSR_Register is record
      --  OPAMP1 power down
      OPA1PD     : CSR_OPA1PD_Field := 16#1#;
      --  Switch 3 for OPAMP1 enable
      S3SEL1     : CSR_S3SEL1_Field := 16#0#;
      --  Switch 4 for OPAMP1 enable
      S4SEL1     : CSR_S4SEL1_Field := 16#0#;
      --  Switch 5 for OPAMP1 enable
      S5SEL1     : CSR_S5SEL1_Field := 16#0#;
      --  Switch 6 for OPAMP1 enable
      S6SEL1     : CSR_S6SEL1_Field := 16#0#;
      --  OPAMP1 offset calibration for P differential pair
      OPA1CAL_L  : CSR_OPA1CAL_L_Field := 16#0#;
      --  OPAMP1 offset calibration for N differential pair
      OPA1CAL_H  : CSR_OPA1CAL_H_Field := 16#0#;
      --  OPAMP1 low power mode
      OPA1LPM    : CSR_OPA1LPM_Field := 16#0#;
      --  OPAMP2 power down
      OPA2PD     : CSR_OPA2PD_Field := 16#1#;
      --  Switch 3 for OPAMP2 enable
      S3SEL2     : CSR_S3SEL2_Field := 16#0#;
      --  Switch 4 for OPAMP2 enable
      S4SEL2     : CSR_S4SEL2_Field := 16#0#;
      --  Switch 5 for OPAMP2 enable
      S5SEL2     : CSR_S5SEL2_Field := 16#0#;
      --  Switch 6 for OPAMP2 enable
      S6SEL2     : CSR_S6SEL2_Field := 16#0#;
      --  OPAMP2 offset Calibration for P differential pair
      OPA2CAL_L  : CSR_OPA2CAL_L_Field := 16#0#;
      --  OPAMP2 offset calibration for N differential pair
      OPA2CAL_H  : CSR_OPA2CAL_H_Field := 16#0#;
      --  OPAMP2 low power mode
      OPA2LPM    : CSR_OPA2LPM_Field := 16#0#;
      --  OPAMP3 power down
      OPA3PD     : CSR_OPA3PD_Field := 16#1#;
      --  Switch 3 for OPAMP3 Enable
      S3SEL3     : CSR_S3SEL3_Field := 16#0#;
      --  Switch 4 for OPAMP3 enable
      S4SEL3     : CSR_S4SEL3_Field := 16#0#;
      --  Switch 5 for OPAMP3 enable
      S5SEL3     : CSR_S5SEL3_Field := 16#0#;
      --  Switch 6 for OPAMP3 enable
      S6SEL3     : CSR_S6SEL3_Field := 16#0#;
      --  OPAMP3 offset Calibration for P differential pair
      OPA3CAL_L  : CSR_OPA3CAL_L_Field := 16#0#;
      --  OPAMP3 offset calibration for N differential pair
      OPA3CAL_H  : CSR_OPA3CAL_H_Field := 16#0#;
      --  OPAMP3 low power mode
      OPA3LPM    : CSR_OPA3LPM_Field := 16#0#;
      --  Switch SanA enable for OPAMP1
      ANAWSEL    : CSR_ANAWSEL_Field := (As_Array => False, Val => 16#0#);
      --  Switch 7 for OPAMP2 enable
      S7SEL2     : CSR_S7SEL2_Field := 16#0#;
      --  Power range selection
      AOP_RANGE  : CSR_AOP_RANGE_Field := 16#0#;
      --  OPAMP1 calibration output
      OPA1CALOUT : CSR_OPA1CALOUT_Field := 16#0#;
      --  OPAMP2 calibration output
      OPA2CALOUT : CSR_OPA2CALOUT_Field := 16#0#;
      --  OPAMP3 calibration output
      OPA3CALOUT : CSR_OPA3CALOUT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      OPA1PD     at 0 range 0 .. 0;
      S3SEL1     at 0 range 1 .. 1;
      S4SEL1     at 0 range 2 .. 2;
      S5SEL1     at 0 range 3 .. 3;
      S6SEL1     at 0 range 4 .. 4;
      OPA1CAL_L  at 0 range 5 .. 5;
      OPA1CAL_H  at 0 range 6 .. 6;
      OPA1LPM    at 0 range 7 .. 7;
      OPA2PD     at 0 range 8 .. 8;
      S3SEL2     at 0 range 9 .. 9;
      S4SEL2     at 0 range 10 .. 10;
      S5SEL2     at 0 range 11 .. 11;
      S6SEL2     at 0 range 12 .. 12;
      OPA2CAL_L  at 0 range 13 .. 13;
      OPA2CAL_H  at 0 range 14 .. 14;
      OPA2LPM    at 0 range 15 .. 15;
      OPA3PD     at 0 range 16 .. 16;
      S3SEL3     at 0 range 17 .. 17;
      S4SEL3     at 0 range 18 .. 18;
      S5SEL3     at 0 range 19 .. 19;
      S6SEL3     at 0 range 20 .. 20;
      OPA3CAL_L  at 0 range 21 .. 21;
      OPA3CAL_H  at 0 range 22 .. 22;
      OPA3LPM    at 0 range 23 .. 23;
      ANAWSEL    at 0 range 24 .. 26;
      S7SEL2     at 0 range 27 .. 27;
      AOP_RANGE  at 0 range 28 .. 28;
      OPA1CALOUT at 0 range 29 .. 29;
      OPA2CALOUT at 0 range 30 .. 30;
      OPA3CALOUT at 0 range 31 .. 31;
   end record;

   subtype OTR_AO1_OPT_OFFSET_TRIM_Field is STM32L151.UInt10;
   subtype OTR_AO2_OPT_OFFSET_TRIM_Field is STM32L151.UInt10;
   subtype OTR_AO3_OPT_OFFSET_TRIM_Field is STM32L151.UInt10;
   subtype OTR_OT_USER_Field is STM32L151.Bit;

   --  offset trimming register for normal mode
   type OTR_Register is record
      --  OPAMP1, 10-bit offset trim value for normal mode
      AO1_OPT_OFFSET_TRIM : OTR_AO1_OPT_OFFSET_TRIM_Field := 16#0#;
      --  OPAMP2, 10-bit offset trim value for normal mode
      AO2_OPT_OFFSET_TRIM : OTR_AO2_OPT_OFFSET_TRIM_Field := 16#0#;
      --  OPAMP3, 10-bit offset trim value for normal mode
      AO3_OPT_OFFSET_TRIM : OTR_AO3_OPT_OFFSET_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_30_30      : STM32L151.Bit := 16#0#;
      --  Select user or factory trimming value
      OT_USER             : OTR_OT_USER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTR_Register use record
      AO1_OPT_OFFSET_TRIM at 0 range 0 .. 9;
      AO2_OPT_OFFSET_TRIM at 0 range 10 .. 19;
      AO3_OPT_OFFSET_TRIM at 0 range 20 .. 29;
      Reserved_30_30      at 0 range 30 .. 30;
      OT_USER             at 0 range 31 .. 31;
   end record;

   subtype LPOTR_AO1_OPT_OFFSET_TRIM_LP_Field is STM32L151.UInt10;
   subtype LPOTR_AO2_OPT_OFFSET_TRIM_LP_Field is STM32L151.UInt10;
   subtype LPOTR_AO3_OPT_OFFSET_TRIM_LP_Field is STM32L151.UInt10;

   --  OPAMP offset trimming register for low power mode
   type LPOTR_Register is record
      --  OPAMP1, 10-bit offset trim value for low power mode
      AO1_OPT_OFFSET_TRIM_LP : LPOTR_AO1_OPT_OFFSET_TRIM_LP_Field := 16#0#;
      --  OPAMP2, 10-bit offset trim value for low power mode
      AO2_OPT_OFFSET_TRIM_LP : LPOTR_AO2_OPT_OFFSET_TRIM_LP_Field := 16#0#;
      --  OPAMP3, 10-bit offset trim value for low power mode
      AO3_OPT_OFFSET_TRIM_LP : LPOTR_AO3_OPT_OFFSET_TRIM_LP_Field := 16#0#;
      --  unspecified
      Reserved_30_31         : STM32L151.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPOTR_Register use record
      AO1_OPT_OFFSET_TRIM_LP at 0 range 0 .. 9;
      AO2_OPT_OFFSET_TRIM_LP at 0 range 10 .. 19;
      AO3_OPT_OFFSET_TRIM_LP at 0 range 20 .. 29;
      Reserved_30_31         at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Operational amplifiers
   type OPAMP_Peripheral is record
      --  control/status register
      CSR   : aliased CSR_Register;
      --  offset trimming register for normal mode
      OTR   : aliased OTR_Register;
      --  OPAMP offset trimming register for low power mode
      LPOTR : aliased LPOTR_Register;
   end record
     with Volatile;

   for OPAMP_Peripheral use record
      CSR   at 16#0# range 0 .. 31;
      OTR   at 16#4# range 0 .. 31;
      LPOTR at 16#8# range 0 .. 31;
   end record;

   --  Operational amplifiers
   OPAMP_Periph : aliased OPAMP_Peripheral
     with Import, Address => OPAMP_Base;

end STM32L151.OPAMP;
