pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.RI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ICR_IC1IOS_Field is STM32L151.UInt4;
   subtype ICR_IC2IOS_Field is STM32L151.UInt4;
   subtype ICR_IC3IOS_Field is STM32L151.UInt4;
   subtype ICR_IC4IOS_Field is STM32L151.UInt4;
   subtype ICR_TIM_Field is STM32L151.UInt2;
   --  ICR_IC array element
   subtype ICR_IC_Element is STM32L151.Bit;

   --  ICR_IC array
   type ICR_IC_Field_Array is array (1 .. 4) of ICR_IC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ICR_IC
   type ICR_IC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IC as a value
            Val : STM32L151.UInt4;
         when True =>
            --  IC as an array
            Arr : ICR_IC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ICR_IC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  RI input capture register
   type ICR_Register is record
      --  Input capture 1 select bits
      IC1IOS         : ICR_IC1IOS_Field := 16#0#;
      --  Input capture 2 select bits
      IC2IOS         : ICR_IC2IOS_Field := 16#0#;
      --  Input capture 3 select bits
      IC3IOS         : ICR_IC3IOS_Field := 16#0#;
      --  Input capture 4 select bits
      IC4IOS         : ICR_IC4IOS_Field := 16#0#;
      --  Timer select bits
      TIM            : ICR_TIM_Field := 16#0#;
      --  IC1
      IC             : ICR_IC_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : STM32L151.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      IC1IOS         at 0 range 0 .. 3;
      IC2IOS         at 0 range 4 .. 7;
      IC3IOS         at 0 range 8 .. 11;
      IC4IOS         at 0 range 12 .. 15;
      TIM            at 0 range 16 .. 17;
      IC             at 0 range 18 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype ASCR1_CH0GR1_1_Field is STM32L151.Bit;
   subtype ASCR1_CH1GR1_2_Field is STM32L151.Bit;
   subtype ASCR1_CH2GR1_3_Field is STM32L151.Bit;
   subtype ASCR1_CH3GR1_4_Field is STM32L151.Bit;
   subtype ASCR1_CH31GR11_5_Field is STM32L151.Bit;
   subtype ASCR1_COMP1_SW1_Field is STM32L151.Bit;
   subtype ASCR1_CH6GR2_1_Field is STM32L151.Bit;
   subtype ASCR1_CH7GR2_2_Field is STM32L151.Bit;
   subtype ASCR1_CH8GR3_1_Field is STM32L151.Bit;
   subtype ASCR1_CH9GR3_2_Field is STM32L151.Bit;
   subtype ASCR1_CH10GR8_1_Field is STM32L151.Bit;
   subtype ASCR1_CH11GR8_2_Field is STM32L151.Bit;
   subtype ASCR1_CH12GR8_3_Field is STM32L151.Bit;
   subtype ASCR1_CH13GR8_4_Field is STM32L151.Bit;
   subtype ASCR1_CH14GR9_1_Field is STM32L151.Bit;
   subtype ASCR1_CH15GR9_2_Field is STM32L151.Bit;
   subtype ASCR1_CH31GR7_1_Field is STM32L151.Bit;
   subtype ASCR1_CH18GR7_1_Field is STM32L151.Bit;
   subtype ASCR1_CH19GR7_2_Field is STM32L151.Bit;
   subtype ASCR1_CH20GR7_3_Field is STM32L151.Bit;
   subtype ASCR1_CH21GR7_4_Field is STM32L151.Bit;
   --  ASCR1_CH array element
   subtype ASCR1_CH_Element is STM32L151.Bit;

   --  ASCR1_CH array
   type ASCR1_CH_Field_Array is array (22 .. 25) of ASCR1_CH_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ASCR1_CH
   type ASCR1_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : STM32L151.UInt4;
         when True =>
            --  CH as an array
            Arr : ASCR1_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ASCR1_CH_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ASCR1_VCOMP_Field is STM32L151.Bit;
   subtype ASCR1_CH27GR11_1_Field is STM32L151.Bit;
   subtype ASCR1_CH28GR11_2_Field is STM32L151.Bit;
   subtype ASCR1_CH29GR11_3_Field is STM32L151.Bit;
   subtype ASCR1_CH30GR11_4_Field is STM32L151.Bit;
   subtype ASCR1_SCM_Field is STM32L151.Bit;

   --  RI analog switches control register 1
   type ASCR1_Register is record
      --  Analog switch control
      CH0GR1_1       : ASCR1_CH0GR1_1_Field := 16#0#;
      --  Analog switch control
      CH1GR1_2       : ASCR1_CH1GR1_2_Field := 16#0#;
      --  Analog switch control
      CH2GR1_3       : ASCR1_CH2GR1_3_Field := 16#0#;
      --  Analog switch control
      CH3GR1_4       : ASCR1_CH3GR1_4_Field := 16#0#;
      --  Analog switch control
      CH31GR11_5     : ASCR1_CH31GR11_5_Field := 16#0#;
      --  Comparator 1 analog switch
      COMP1_SW1      : ASCR1_COMP1_SW1_Field := 16#0#;
      --  Analog switch control
      CH6GR2_1       : ASCR1_CH6GR2_1_Field := 16#0#;
      --  Analog switch control
      CH7GR2_2       : ASCR1_CH7GR2_2_Field := 16#0#;
      --  Analog switch control
      CH8GR3_1       : ASCR1_CH8GR3_1_Field := 16#0#;
      --  Analog switch control
      CH9GR3_2       : ASCR1_CH9GR3_2_Field := 16#0#;
      --  Analog switch control
      CH10GR8_1      : ASCR1_CH10GR8_1_Field := 16#0#;
      --  Analog switch control
      CH11GR8_2      : ASCR1_CH11GR8_2_Field := 16#0#;
      --  Analog switch control
      CH12GR8_3      : ASCR1_CH12GR8_3_Field := 16#0#;
      --  Analog switch control
      CH13GR8_4      : ASCR1_CH13GR8_4_Field := 16#0#;
      --  Analog switch control
      CH14GR9_1      : ASCR1_CH14GR9_1_Field := 16#0#;
      --  Analog switch control
      CH15GR9_2      : ASCR1_CH15GR9_2_Field := 16#0#;
      --  Analog switch control
      CH31GR7_1      : ASCR1_CH31GR7_1_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32L151.Bit := 16#0#;
      --  Analog switch control
      CH18GR7_1      : ASCR1_CH18GR7_1_Field := 16#0#;
      --  Analog switch control
      CH19GR7_2      : ASCR1_CH19GR7_2_Field := 16#0#;
      --  Analog switch control
      CH20GR7_3      : ASCR1_CH20GR7_3_Field := 16#0#;
      --  Analog switch control
      CH21GR7_4      : ASCR1_CH21GR7_4_Field := 16#0#;
      --  Analog I/O switch control of channel CH22
      CH             : ASCR1_CH_Field := (As_Array => False, Val => 16#0#);
      --  ADC analog switch selection for internal node to comparator 1
      VCOMP          : ASCR1_VCOMP_Field := 16#0#;
      --  Analog switch control
      CH27GR11_1     : ASCR1_CH27GR11_1_Field := 16#0#;
      --  Analog switch control
      CH28GR11_2     : ASCR1_CH28GR11_2_Field := 16#0#;
      --  Analog switch control
      CH29GR11_3     : ASCR1_CH29GR11_3_Field := 16#0#;
      --  Analog switch control
      CH30GR11_4     : ASCR1_CH30GR11_4_Field := 16#0#;
      --  Switch control mode
      SCM            : ASCR1_SCM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASCR1_Register use record
      CH0GR1_1       at 0 range 0 .. 0;
      CH1GR1_2       at 0 range 1 .. 1;
      CH2GR1_3       at 0 range 2 .. 2;
      CH3GR1_4       at 0 range 3 .. 3;
      CH31GR11_5     at 0 range 4 .. 4;
      COMP1_SW1      at 0 range 5 .. 5;
      CH6GR2_1       at 0 range 6 .. 6;
      CH7GR2_2       at 0 range 7 .. 7;
      CH8GR3_1       at 0 range 8 .. 8;
      CH9GR3_2       at 0 range 9 .. 9;
      CH10GR8_1      at 0 range 10 .. 10;
      CH11GR8_2      at 0 range 11 .. 11;
      CH12GR8_3      at 0 range 12 .. 12;
      CH13GR8_4      at 0 range 13 .. 13;
      CH14GR9_1      at 0 range 14 .. 14;
      CH15GR9_2      at 0 range 15 .. 15;
      CH31GR7_1      at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CH18GR7_1      at 0 range 18 .. 18;
      CH19GR7_2      at 0 range 19 .. 19;
      CH20GR7_3      at 0 range 20 .. 20;
      CH21GR7_4      at 0 range 21 .. 21;
      CH             at 0 range 22 .. 25;
      VCOMP          at 0 range 26 .. 26;
      CH27GR11_1     at 0 range 27 .. 27;
      CH28GR11_2     at 0 range 28 .. 28;
      CH29GR11_3     at 0 range 29 .. 29;
      CH30GR11_4     at 0 range 30 .. 30;
      SCM            at 0 range 31 .. 31;
   end record;

   subtype ASCR2_GR10_1_Field is STM32L151.Bit;
   subtype ASCR2_GR10_2_Field is STM32L151.Bit;
   subtype ASCR2_GR10_3_Field is STM32L151.Bit;
   subtype ASCR2_GR10_4_Field is STM32L151.Bit;
   subtype ASCR2_GR6_1_Field is STM32L151.Bit;
   subtype ASCR2_GR6_2_Field is STM32L151.Bit;
   subtype ASCR2_GR5_1_Field is STM32L151.Bit;
   subtype ASCR2_GR5_2_Field is STM32L151.Bit;
   subtype ASCR2_GR5_3_Field is STM32L151.Bit;
   subtype ASCR2_GR4_1_Field is STM32L151.Bit;
   subtype ASCR2_GR4_2_Field is STM32L151.Bit;
   subtype ASCR2_GR4_3_Field is STM32L151.Bit;
   subtype ASCR2_GR3_3_Field is STM32L151.Bit;
   subtype ASCR2_GR3_4_Field is STM32L151.Bit;
   subtype ASCR2_GR3_5_Field is STM32L151.Bit;
   subtype ASCR2_GR9_3_Field is STM32L151.Bit;
   subtype ASCR2_GR9_4_Field is STM32L151.Bit;
   subtype ASCR2_GR2_3_Field is STM32L151.Bit;
   subtype ASCR2_GR2_4_Field is STM32L151.Bit;
   subtype ASCR2_GR2_5_Field is STM32L151.Bit;
   subtype ASCR2_GR7_5_Field is STM32L151.Bit;
   subtype ASCR2_GR7_6_Field is STM32L151.Bit;
   subtype ASCR2_GR7_7_Field is STM32L151.Bit;
   subtype ASCR2_GR6_3_Field is STM32L151.Bit;
   subtype ASCR2_GR6_4_Field is STM32L151.Bit;
   subtype ASCR2_GR5_4_Field is STM32L151.Bit;

   --  RI analog switches control register 2
   type ASCR2_Register is record
      --  GR10_1 analog switch control
      GR10_1         : ASCR2_GR10_1_Field := 16#0#;
      --  GR10_2 analog switch control
      GR10_2         : ASCR2_GR10_2_Field := 16#0#;
      --  GR10_3 analog switch control
      GR10_3         : ASCR2_GR10_3_Field := 16#0#;
      --  GR10_4 analog switch control
      GR10_4         : ASCR2_GR10_4_Field := 16#0#;
      --  GR6_1 analog switch control
      GR6_1          : ASCR2_GR6_1_Field := 16#0#;
      --  GR6_2 analog switch control
      GR6_2          : ASCR2_GR6_2_Field := 16#0#;
      --  GR5_1 analog switch control
      GR5_1          : ASCR2_GR5_1_Field := 16#0#;
      --  GR5_2 analog switch control
      GR5_2          : ASCR2_GR5_2_Field := 16#0#;
      --  GR5_3 analog switch control
      GR5_3          : ASCR2_GR5_3_Field := 16#0#;
      --  GR4_1 analog switch control
      GR4_1          : ASCR2_GR4_1_Field := 16#0#;
      --  GR4_2 analog switch control
      GR4_2          : ASCR2_GR4_2_Field := 16#0#;
      --  GR4_3 analog switch control
      GR4_3          : ASCR2_GR4_3_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32L151.UInt4 := 16#0#;
      --  GR3_3 analog switch control
      GR3_3          : ASCR2_GR3_3_Field := 16#0#;
      --  GR3_4 analog switch control
      GR3_4          : ASCR2_GR3_4_Field := 16#0#;
      --  GR3_5 analog switch control
      GR3_5          : ASCR2_GR3_5_Field := 16#0#;
      --  GR9_3 analog switch control
      GR9_3          : ASCR2_GR9_3_Field := 16#0#;
      --  GR9_4 analog switch control
      GR9_4          : ASCR2_GR9_4_Field := 16#0#;
      --  GR2_3 analog switch control
      GR2_3          : ASCR2_GR2_3_Field := 16#0#;
      --  GR2_4 analog switch control
      GR2_4          : ASCR2_GR2_4_Field := 16#0#;
      --  GR2_5 analog switch control
      GR2_5          : ASCR2_GR2_5_Field := 16#0#;
      --  GR7_5 analog switch control
      GR7_5          : ASCR2_GR7_5_Field := 16#0#;
      --  GR7_6 analog switch control
      GR7_6          : ASCR2_GR7_6_Field := 16#0#;
      --  GR7_7 analog switch control
      GR7_7          : ASCR2_GR7_7_Field := 16#0#;
      --  GR6_3 analog switch control
      GR6_3          : ASCR2_GR6_3_Field := 16#0#;
      --  GR6_4 analog switch control
      GR6_4          : ASCR2_GR6_4_Field := 16#0#;
      --  GR5_4 analog switch control
      GR5_4          : ASCR2_GR5_4_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : STM32L151.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASCR2_Register use record
      GR10_1         at 0 range 0 .. 0;
      GR10_2         at 0 range 1 .. 1;
      GR10_3         at 0 range 2 .. 2;
      GR10_4         at 0 range 3 .. 3;
      GR6_1          at 0 range 4 .. 4;
      GR6_2          at 0 range 5 .. 5;
      GR5_1          at 0 range 6 .. 6;
      GR5_2          at 0 range 7 .. 7;
      GR5_3          at 0 range 8 .. 8;
      GR4_1          at 0 range 9 .. 9;
      GR4_2          at 0 range 10 .. 10;
      GR4_3          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      GR3_3          at 0 range 16 .. 16;
      GR3_4          at 0 range 17 .. 17;
      GR3_5          at 0 range 18 .. 18;
      GR9_3          at 0 range 19 .. 19;
      GR9_4          at 0 range 20 .. 20;
      GR2_3          at 0 range 21 .. 21;
      GR2_4          at 0 range 22 .. 22;
      GR2_5          at 0 range 23 .. 23;
      GR7_5          at 0 range 24 .. 24;
      GR7_6          at 0 range 25 .. 25;
      GR7_7          at 0 range 26 .. 26;
      GR6_3          at 0 range 27 .. 27;
      GR6_4          at 0 range 28 .. 28;
      GR5_4          at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype HYSCR1_PA_Field is STM32L151.UInt16;
   subtype HYSCR1_PB_Field is STM32L151.UInt16;

   --  RI hysteresis control register 1
   type HYSCR1_Register is record
      --  Port A hysteresis control on/off
      PA : HYSCR1_PA_Field := 16#0#;
      --  Port B hysteresis control on/off
      PB : HYSCR1_PB_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HYSCR1_Register use record
      PA at 0 range 0 .. 15;
      PB at 0 range 16 .. 31;
   end record;

   subtype HYSCR2_PC_Field is STM32L151.UInt16;
   subtype HYSCR2_PD_Field is STM32L151.UInt16;

   --  RI hysteresis control register 2
   type HYSCR2_Register is record
      --  Port C hysteresis control on/off
      PC : HYSCR2_PC_Field := 16#0#;
      --  Port D hysteresis control on/off
      PD : HYSCR2_PD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HYSCR2_Register use record
      PC at 0 range 0 .. 15;
      PD at 0 range 16 .. 31;
   end record;

   subtype HYSCR3_PE_Field is STM32L151.UInt16;
   subtype HYSCR3_PF_Field is STM32L151.UInt16;

   --  RI hysteresis control register 3
   type HYSCR3_Register is record
      --  Port E hysteresis control on/off
      PE : HYSCR3_PE_Field := 16#0#;
      --  Port F hysteresis control on/off
      PF : HYSCR3_PF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HYSCR3_Register use record
      PE at 0 range 0 .. 15;
      PF at 0 range 16 .. 31;
   end record;

   subtype HYSCR4_PG_Field is STM32L151.UInt16;

   --  Hysteresis control register
   type HYSCR4_Register is record
      --  Port G hysteresis control on/off
      PG             : HYSCR4_PG_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HYSCR4_Register use record
      PG             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ASMR1_PA_Field is STM32L151.UInt16;

   --  Analog switch mode register
   type ASMR1_Register is record
      --  Port A analog switch mode selection
      PA             : ASMR1_PA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASMR1_Register use record
      PA             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMR1_PA_Field is STM32L151.UInt16;

   --  Channel mask register
   type CMR1_Register is record
      --  Port A channel masking
      PA             : CMR1_PA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR1_Register use record
      PA             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CICR1_PA_Field is STM32L151.UInt16;

   --  Channel identification for capture register
   type CICR1_Register is record
      --  Port A channel identification for capture
      PA             : CICR1_PA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR1_Register use record
      PA             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ASMR2_PB_Field is STM32L151.UInt16;

   --  Analog switch mode register
   type ASMR2_Register is record
      --  Port B analog switch mode selection
      PB             : ASMR2_PB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASMR2_Register use record
      PB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMR2_PB_Field is STM32L151.UInt16;

   --  Channel mask register
   type CMR2_Register is record
      --  Port B channel masking
      PB             : CMR2_PB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR2_Register use record
      PB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CICR2_PB_Field is STM32L151.UInt16;

   --  Channel identification for capture register
   type CICR2_Register is record
      --  Port B channel identification for capture
      PB             : CICR2_PB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR2_Register use record
      PB             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ASMR3_PC_Field is STM32L151.UInt16;

   --  Analog switch mode register
   type ASMR3_Register is record
      --  Port C analog switch mode selection
      PC             : ASMR3_PC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASMR3_Register use record
      PC             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMR3_PC_Field is STM32L151.UInt16;

   --  Channel mask register
   type CMR3_Register is record
      --  Port C channel masking
      PC             : CMR3_PC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR3_Register use record
      PC             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CICR3_PC_Field is STM32L151.UInt16;

   --  Channel identification for capture register
   type CICR3_Register is record
      --  Port C channel identification for capture
      PC             : CICR3_PC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR3_Register use record
      PC             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ASMR4_PF_Field is STM32L151.UInt16;

   --  Analog switch mode register
   type ASMR4_Register is record
      --  Port F analog switch mode selection
      PF             : ASMR4_PF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASMR4_Register use record
      PF             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMR4_PF_Field is STM32L151.UInt16;

   --  Channel mask register
   type CMR4_Register is record
      --  Port F channel masking
      PF             : CMR4_PF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR4_Register use record
      PF             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CICR4_PF_Field is STM32L151.UInt16;

   --  Channel identification for capture register
   type CICR4_Register is record
      --  Port F channel identification for capture
      PF             : CICR4_PF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR4_Register use record
      PF             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ASMR5_PG_Field is STM32L151.UInt16;

   --  Analog switch mode register
   type ASMR5_Register is record
      --  Port G analog switch mode selection
      PG             : ASMR5_PG_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASMR5_Register use record
      PG             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMR5_PG_Field is STM32L151.UInt16;

   --  Channel mask register
   type CMR5_Register is record
      --  Port G channel masking
      PG             : CMR5_PG_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR5_Register use record
      PG             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CICR5_PG_Field is STM32L151.UInt16;

   --  Channel identification for capture register
   type CICR5_Register is record
      --  Port G channel identification for capture
      PG             : CICR5_PG_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CICR5_Register use record
      PG             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Routing interface
   type RI_Peripheral is record
      --  RI input capture register
      ICR    : aliased ICR_Register;
      --  RI analog switches control register 1
      ASCR1  : aliased ASCR1_Register;
      --  RI analog switches control register 2
      ASCR2  : aliased ASCR2_Register;
      --  RI hysteresis control register 1
      HYSCR1 : aliased HYSCR1_Register;
      --  RI hysteresis control register 2
      HYSCR2 : aliased HYSCR2_Register;
      --  RI hysteresis control register 3
      HYSCR3 : aliased HYSCR3_Register;
      --  Hysteresis control register
      HYSCR4 : aliased HYSCR4_Register;
      --  Analog switch mode register
      ASMR1  : aliased ASMR1_Register;
      --  Channel mask register
      CMR1   : aliased CMR1_Register;
      --  Channel identification for capture register
      CICR1  : aliased CICR1_Register;
      --  Analog switch mode register
      ASMR2  : aliased ASMR2_Register;
      --  Channel mask register
      CMR2   : aliased CMR2_Register;
      --  Channel identification for capture register
      CICR2  : aliased CICR2_Register;
      --  Analog switch mode register
      ASMR3  : aliased ASMR3_Register;
      --  Channel mask register
      CMR3   : aliased CMR3_Register;
      --  Channel identification for capture register
      CICR3  : aliased CICR3_Register;
      --  Analog switch mode register
      ASMR4  : aliased ASMR4_Register;
      --  Channel mask register
      CMR4   : aliased CMR4_Register;
      --  Channel identification for capture register
      CICR4  : aliased CICR4_Register;
      --  Analog switch mode register
      ASMR5  : aliased ASMR5_Register;
      --  Channel mask register
      CMR5   : aliased CMR5_Register;
      --  Channel identification for capture register
      CICR5  : aliased CICR5_Register;
   end record
     with Volatile;

   for RI_Peripheral use record
      ICR    at 16#0# range 0 .. 31;
      ASCR1  at 16#4# range 0 .. 31;
      ASCR2  at 16#8# range 0 .. 31;
      HYSCR1 at 16#C# range 0 .. 31;
      HYSCR2 at 16#10# range 0 .. 31;
      HYSCR3 at 16#14# range 0 .. 31;
      HYSCR4 at 16#18# range 0 .. 31;
      ASMR1  at 16#1C# range 0 .. 31;
      CMR1   at 16#20# range 0 .. 31;
      CICR1  at 16#24# range 0 .. 31;
      ASMR2  at 16#28# range 0 .. 31;
      CMR2   at 16#2C# range 0 .. 31;
      CICR2  at 16#30# range 0 .. 31;
      ASMR3  at 16#34# range 0 .. 31;
      CMR3   at 16#38# range 0 .. 31;
      CICR3  at 16#3C# range 0 .. 31;
      ASMR4  at 16#40# range 0 .. 31;
      CMR4   at 16#44# range 0 .. 31;
      CICR4  at 16#48# range 0 .. 31;
      ASMR5  at 16#4C# range 0 .. 31;
      CMR5   at 16#50# range 0 .. 31;
      CICR5  at 16#54# range 0 .. 31;
   end record;

   --  Routing interface
   RI_Periph : aliased RI_Peripheral
     with Import, Address => RI_Base;

end STM32L151.RI;
