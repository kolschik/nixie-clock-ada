pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_HSION_Field is STM32L151.Bit;
   subtype CR_HSIRDY_Field is STM32L151.Bit;
   subtype CR_MSION_Field is STM32L151.Bit;
   subtype CR_MSIRDY_Field is STM32L151.Bit;
   subtype CR_HSEON_Field is STM32L151.Bit;
   subtype CR_HSERDY_Field is STM32L151.Bit;
   subtype CR_HSEBYP_Field is STM32L151.Bit;
   subtype CR_PLLON_Field is STM32L151.Bit;
   subtype CR_PLLRDY_Field is STM32L151.Bit;
   subtype CR_CSSON_Field is STM32L151.Bit;
   --  CR_RTCPRE array element
   subtype CR_RTCPRE_Element is STM32L151.Bit;

   --  CR_RTCPRE array
   type CR_RTCPRE_Field_Array is array (0 .. 1) of CR_RTCPRE_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CR_RTCPRE
   type CR_RTCPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RTCPRE as a value
            Val : STM32L151.UInt2;
         when True =>
            --  RTCPRE as an array
            Arr : CR_RTCPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CR_RTCPRE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Clock control register
   type CR_Register is record
      --  Internal high-speed clock enable
      HSION          : CR_HSION_Field := 16#0#;
      --  Read-only. Internal high-speed clock ready flag
      HSIRDY         : CR_HSIRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : STM32L151.UInt6 := 16#0#;
      --  MSI clock enable
      MSION          : CR_MSION_Field := 16#1#;
      --  Read-only. MSI clock ready flag
      MSIRDY         : CR_MSIRDY_Field := 16#1#;
      --  unspecified
      Reserved_10_15 : STM32L151.UInt6 := 16#0#;
      --  HSE clock enable
      HSEON          : CR_HSEON_Field := 16#0#;
      --  Read-only. HSE clock ready flag
      HSERDY         : CR_HSERDY_Field := 16#0#;
      --  HSE clock bypass
      HSEBYP         : CR_HSEBYP_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : STM32L151.UInt5 := 16#0#;
      --  PLL enable
      PLLON          : CR_PLLON_Field := 16#0#;
      --  Read-only. PLL clock ready flag
      PLLRDY         : CR_PLLRDY_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : STM32L151.UInt2 := 16#0#;
      --  Clock security system enable
      CSSON          : CR_CSSON_Field := 16#0#;
      --  RTCPRE0
      RTCPRE         : CR_RTCPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : STM32L151.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MSION          at 0 range 8 .. 8;
      MSIRDY         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CSSON          at 0 range 28 .. 28;
      RTCPRE         at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ICSCR_HSICAL_Field is STM32L151.UInt8;
   subtype ICSCR_HSITRIM_Field is STM32L151.UInt5;
   subtype ICSCR_MSIRANGE_Field is STM32L151.UInt3;
   subtype ICSCR_MSICAL_Field is STM32L151.UInt8;
   subtype ICSCR_MSITRIM_Field is STM32L151.UInt8;

   --  Internal clock sources calibration register
   type ICSCR_Register is record
      --  Read-only. nternal high speed clock calibration
      HSICAL   : ICSCR_HSICAL_Field := 16#0#;
      --  High speed internal clock trimming
      HSITRIM  : ICSCR_HSITRIM_Field := 16#10#;
      --  MSI clock ranges
      MSIRANGE : ICSCR_MSIRANGE_Field := 16#5#;
      --  Read-only. MSI clock calibration
      MSICAL   : ICSCR_MSICAL_Field := 16#0#;
      --  MSI clock trimming
      MSITRIM  : ICSCR_MSITRIM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSCR_Register use record
      HSICAL   at 0 range 0 .. 7;
      HSITRIM  at 0 range 8 .. 12;
      MSIRANGE at 0 range 13 .. 15;
      MSICAL   at 0 range 16 .. 23;
      MSITRIM  at 0 range 24 .. 31;
   end record;

   subtype CFGR_SW_Field is STM32L151.UInt2;
   subtype CFGR_SWS_Field is STM32L151.UInt2;
   subtype CFGR_HPRE_Field is STM32L151.UInt4;
   --  CFGR_PPRE array element
   subtype CFGR_PPRE_Element is STM32L151.UInt3;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of CFGR_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : STM32L151.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR_PLLSRC_Field is STM32L151.Bit;
   subtype CFGR_PLLMUL_Field is STM32L151.UInt4;
   subtype CFGR_PLLDIV_Field is STM32L151.UInt2;
   subtype CFGR_MCOSEL_Field is STM32L151.UInt3;
   subtype CFGR_MCOPRE_Field is STM32L151.UInt3;

   --  Clock configuration register
   type CFGR_Register is record
      --  System clock switch
      SW             : CFGR_SW_Field := 16#0#;
      --  Read-only. System clock switch status
      SWS            : CFGR_SWS_Field := 16#0#;
      --  AHB prescaler
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  APB low-speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_15 : STM32L151.UInt2 := 16#0#;
      --  PLL entry clock source
      PLLSRC         : CFGR_PLLSRC_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : STM32L151.Bit := 16#0#;
      --  PLL multiplication factor
      PLLMUL         : CFGR_PLLMUL_Field := 16#0#;
      --  PLL output division
      PLLDIV         : CFGR_PLLDIV_Field := 16#0#;
      --  Microcontroller clock output selection
      MCOSEL         : CFGR_MCOSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : STM32L151.Bit := 16#0#;
      --  Microcontroller clock output prescaler
      MCOPRE         : CFGR_MCOPRE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32L151.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PLLSRC         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PLLMUL         at 0 range 18 .. 21;
      PLLDIV         at 0 range 22 .. 23;
      MCOSEL         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MCOPRE         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CIR_LSIRDYF_Field is STM32L151.Bit;
   subtype CIR_LSERDYF_Field is STM32L151.Bit;
   subtype CIR_HSIRDYF_Field is STM32L151.Bit;
   subtype CIR_HSERDYF_Field is STM32L151.Bit;
   subtype CIR_PLLRDYF_Field is STM32L151.Bit;
   subtype CIR_MSIRDYF_Field is STM32L151.Bit;
   subtype CIR_CSSF_Field is STM32L151.Bit;
   subtype CIR_LSIRDYIE_Field is STM32L151.Bit;
   subtype CIR_LSERDYIE_Field is STM32L151.Bit;
   subtype CIR_HSIRDYIE_Field is STM32L151.Bit;
   subtype CIR_HSERDYIE_Field is STM32L151.Bit;
   subtype CIR_PLLRDYIE_Field is STM32L151.Bit;
   subtype CIR_MSIRDYIE_Field is STM32L151.Bit;
   subtype CIR_LSIRDYC_Field is STM32L151.Bit;
   subtype CIR_LSERDYC_Field is STM32L151.Bit;
   subtype CIR_HSIRDYC_Field is STM32L151.Bit;
   subtype CIR_HSERDYC_Field is STM32L151.Bit;
   subtype CIR_PLLRDYC_Field is STM32L151.Bit;
   subtype CIR_MSIRDYC_Field is STM32L151.Bit;
   subtype CIR_CSSC_Field is STM32L151.Bit;

   --  Clock interrupt register
   type CIR_Register is record
      --  Read-only. LSI ready interrupt flag
      LSIRDYF        : CIR_LSIRDYF_Field := 16#0#;
      --  Read-only. LSE ready interrupt flag
      LSERDYF        : CIR_LSERDYF_Field := 16#0#;
      --  Read-only. HSI ready interrupt flag
      HSIRDYF        : CIR_HSIRDYF_Field := 16#0#;
      --  Read-only. HSE ready interrupt flag
      HSERDYF        : CIR_HSERDYF_Field := 16#0#;
      --  Read-only. PLL ready interrupt flag
      PLLRDYF        : CIR_PLLRDYF_Field := 16#0#;
      --  Read-only. MSI ready interrupt flag
      MSIRDYF        : CIR_MSIRDYF_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : STM32L151.Bit := 16#0#;
      --  Read-only. Clock security system interrupt flag
      CSSF           : CIR_CSSF_Field := 16#0#;
      --  LSI ready interrupt enable
      LSIRDYIE       : CIR_LSIRDYIE_Field := 16#0#;
      --  LSE ready interrupt enable
      LSERDYIE       : CIR_LSERDYIE_Field := 16#0#;
      --  HSI ready interrupt enable
      HSIRDYIE       : CIR_HSIRDYIE_Field := 16#0#;
      --  HSE ready interrupt enable
      HSERDYIE       : CIR_HSERDYIE_Field := 16#0#;
      --  PLL ready interrupt enable
      PLLRDYIE       : CIR_PLLRDYIE_Field := 16#0#;
      --  MSI ready interrupt enable
      MSIRDYIE       : CIR_MSIRDYIE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32L151.UInt2 := 16#0#;
      --  Write-only. LSI ready interrupt clear
      LSIRDYC        : CIR_LSIRDYC_Field := 16#0#;
      --  Write-only. LSE ready interrupt clear
      LSERDYC        : CIR_LSERDYC_Field := 16#0#;
      --  Write-only. HSI ready interrupt clear
      HSIRDYC        : CIR_HSIRDYC_Field := 16#0#;
      --  Write-only. HSE ready interrupt clear
      HSERDYC        : CIR_HSERDYC_Field := 16#0#;
      --  Write-only. PLL ready interrupt clear
      PLLRDYC        : CIR_PLLRDYC_Field := 16#0#;
      --  Write-only. MSI ready interrupt clear
      MSIRDYC        : CIR_MSIRDYC_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : STM32L151.Bit := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : CIR_CSSC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32L151.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      MSIRDYF        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      LSERDYIE       at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      MSIRDYIE       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      LSERDYC        at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      MSIRDYC        at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype AHBRSTR_GPIOARST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIOBRST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIOCRST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIODRST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIOERST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIOHRST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIOFRST_Field is STM32L151.Bit;
   subtype AHBRSTR_GPIOGRST_Field is STM32L151.Bit;
   subtype AHBRSTR_CRCRST_Field is STM32L151.Bit;
   subtype AHBRSTR_FLITFRST_Field is STM32L151.Bit;
   subtype AHBRSTR_DMA1RST_Field is STM32L151.Bit;
   subtype AHBRSTR_DMA2RST_Field is STM32L151.Bit;
   subtype AHBRSTR_FSMCRST_Field is STM32L151.Bit;

   --  AHB peripheral reset register
   type AHBRSTR_Register is record
      --  IO port A reset
      GPIOARST       : AHBRSTR_GPIOARST_Field := 16#0#;
      --  IO port B reset
      GPIOBRST       : AHBRSTR_GPIOBRST_Field := 16#0#;
      --  IO port C reset
      GPIOCRST       : AHBRSTR_GPIOCRST_Field := 16#0#;
      --  IO port D reset
      GPIODRST       : AHBRSTR_GPIODRST_Field := 16#0#;
      --  IO port E reset
      GPIOERST       : AHBRSTR_GPIOERST_Field := 16#0#;
      --  IO port H reset
      GPIOHRST       : AHBRSTR_GPIOHRST_Field := 16#0#;
      --  IO port F reset
      GPIOFRST       : AHBRSTR_GPIOFRST_Field := 16#0#;
      --  IO port G reset
      GPIOGRST       : AHBRSTR_GPIOGRST_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32L151.UInt4 := 16#0#;
      --  CRC reset
      CRCRST         : AHBRSTR_CRCRST_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : STM32L151.UInt2 := 16#0#;
      --  FLITF reset
      FLITFRST       : AHBRSTR_FLITFRST_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : STM32L151.UInt8 := 16#0#;
      --  DMA1 reset
      DMA1RST        : AHBRSTR_DMA1RST_Field := 16#0#;
      --  DMA2 reset
      DMA2RST        : AHBRSTR_DMA2RST_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32L151.UInt4 := 16#0#;
      --  FSMC reset
      FSMCRST        : AHBRSTR_FSMCRST_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32L151.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBRSTR_Register use record
      GPIOARST       at 0 range 0 .. 0;
      GPIOBRST       at 0 range 1 .. 1;
      GPIOCRST       at 0 range 2 .. 2;
      GPIODRST       at 0 range 3 .. 3;
      GPIOERST       at 0 range 4 .. 4;
      GPIOHRST       at 0 range 5 .. 5;
      GPIOFRST       at 0 range 6 .. 6;
      GPIOGRST       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCRST         at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFRST       at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      DMA1RST        at 0 range 24 .. 24;
      DMA2RST        at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      FSMCRST        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype APB2RSTR_SYSCFGRST_Field is STM32L151.Bit;
   subtype APB2RSTR_TIM9RST_Field is STM32L151.Bit;
   subtype APB2RSTR_TM10RST_Field is STM32L151.Bit;
   subtype APB2RSTR_TM11RST_Field is STM32L151.Bit;
   subtype APB2RSTR_ADC1RST_Field is STM32L151.Bit;
   subtype APB2RSTR_SDIORST_Field is STM32L151.Bit;
   subtype APB2RSTR_SPI1RST_Field is STM32L151.Bit;
   subtype APB2RSTR_USART1RST_Field is STM32L151.Bit;

   --  APB2 peripheral reset register
   type APB2RSTR_Register is record
      --  SYSCFGRST
      SYSCFGRST      : APB2RSTR_SYSCFGRST_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : STM32L151.Bit := 16#0#;
      --  TIM9RST
      TIM9RST        : APB2RSTR_TIM9RST_Field := 16#0#;
      --  TM10RST
      TM10RST        : APB2RSTR_TM10RST_Field := 16#0#;
      --  TM11RST
      TM11RST        : APB2RSTR_TM11RST_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : STM32L151.UInt4 := 16#0#;
      --  ADC1RST
      ADC1RST        : APB2RSTR_ADC1RST_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32L151.Bit := 16#0#;
      --  SDIORST
      SDIORST        : APB2RSTR_SDIORST_Field := 16#0#;
      --  SPI1RST
      SPI1RST        : APB2RSTR_SPI1RST_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32L151.Bit := 16#0#;
      --  USART1RST
      USART1RST      : APB2RSTR_USART1RST_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32L151.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM9RST        at 0 range 2 .. 2;
      TM10RST        at 0 range 3 .. 3;
      TM11RST        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      ADC1RST        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SDIORST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype APB1RSTR_TIM2RST_Field is STM32L151.Bit;
   subtype APB1RSTR_TIM3RST_Field is STM32L151.Bit;
   subtype APB1RSTR_TIM4RST_Field is STM32L151.Bit;
   subtype APB1RSTR_TIM5RST_Field is STM32L151.Bit;
   subtype APB1RSTR_TIM6RST_Field is STM32L151.Bit;
   subtype APB1RSTR_TIM7RST_Field is STM32L151.Bit;
   subtype APB1RSTR_LCDRST_Field is STM32L151.Bit;
   subtype APB1RSTR_WWDRST_Field is STM32L151.Bit;
   subtype APB1RSTR_SPI2RST_Field is STM32L151.Bit;
   subtype APB1RSTR_SPI3RST_Field is STM32L151.Bit;
   subtype APB1RSTR_USART2RST_Field is STM32L151.Bit;
   subtype APB1RSTR_USART3RST_Field is STM32L151.Bit;
   subtype APB1RSTR_UART4RST_Field is STM32L151.Bit;
   subtype APB1RSTR_UART5RST_Field is STM32L151.Bit;
   subtype APB1RSTR_I2C1RST_Field is STM32L151.Bit;
   subtype APB1RSTR_I2C2RST_Field is STM32L151.Bit;
   subtype APB1RSTR_USBRST_Field is STM32L151.Bit;
   subtype APB1RSTR_PWRRST_Field is STM32L151.Bit;
   subtype APB1RSTR_DACRST_Field is STM32L151.Bit;
   subtype APB1RSTR_COMPRST_Field is STM32L151.Bit;

   --  APB1 peripheral reset register
   type APB1RSTR_Register is record
      --  Timer 2 reset
      TIM2RST        : APB1RSTR_TIM2RST_Field := 16#0#;
      --  Timer 3 reset
      TIM3RST        : APB1RSTR_TIM3RST_Field := 16#0#;
      --  Timer 4 reset
      TIM4RST        : APB1RSTR_TIM4RST_Field := 16#0#;
      --  Timer 5 reset
      TIM5RST        : APB1RSTR_TIM5RST_Field := 16#0#;
      --  Timer 6reset
      TIM6RST        : APB1RSTR_TIM6RST_Field := 16#0#;
      --  Timer 7 reset
      TIM7RST        : APB1RSTR_TIM7RST_Field := 16#0#;
      --  unspecified
      Reserved_6_8   : STM32L151.UInt3 := 16#0#;
      --  LCD reset
      LCDRST         : APB1RSTR_LCDRST_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32L151.Bit := 16#0#;
      --  Window watchdog reset
      WWDRST         : APB1RSTR_WWDRST_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : STM32L151.UInt2 := 16#0#;
      --  SPI 2 reset
      SPI2RST        : APB1RSTR_SPI2RST_Field := 16#0#;
      --  SPI 3 reset
      SPI3RST        : APB1RSTR_SPI3RST_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : STM32L151.Bit := 16#0#;
      --  USART 2 reset
      USART2RST      : APB1RSTR_USART2RST_Field := 16#0#;
      --  USART 3 reset
      USART3RST      : APB1RSTR_USART3RST_Field := 16#0#;
      --  UART 4 reset
      UART4RST       : APB1RSTR_UART4RST_Field := 16#0#;
      --  UART 5 reset
      UART5RST       : APB1RSTR_UART5RST_Field := 16#0#;
      --  I2C 1 reset
      I2C1RST        : APB1RSTR_I2C1RST_Field := 16#0#;
      --  I2C 2 reset
      I2C2RST        : APB1RSTR_I2C2RST_Field := 16#0#;
      --  USB reset
      USBRST         : APB1RSTR_USBRST_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : STM32L151.UInt4 := 16#0#;
      --  Power interface reset
      PWRRST         : APB1RSTR_PWRRST_Field := 16#0#;
      --  DAC interface reset
      DACRST         : APB1RSTR_DACRST_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : STM32L151.Bit := 16#0#;
      --  COMP interface reset
      COMPRST        : APB1RSTR_COMPRST_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LCDRST         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDRST         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      USBRST         at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DACRST         at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMPRST        at 0 range 31 .. 31;
   end record;

   subtype AHBENR_GPIOPAEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPBEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPCEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPDEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPEEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPHEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPFEN_Field is STM32L151.Bit;
   subtype AHBENR_GPIOPGEN_Field is STM32L151.Bit;
   subtype AHBENR_CRCEN_Field is STM32L151.Bit;
   subtype AHBENR_FLITFEN_Field is STM32L151.Bit;
   subtype AHBENR_DMA1EN_Field is STM32L151.Bit;
   subtype AHBENR_DMA2EN_Field is STM32L151.Bit;
   subtype AHBENR_FSMCEN_Field is STM32L151.Bit;

   --  AHB peripheral clock enable register
   type AHBENR_Register is record
      --  IO port A clock enable
      GPIOPAEN       : AHBENR_GPIOPAEN_Field := 16#0#;
      --  IO port B clock enable
      GPIOPBEN       : AHBENR_GPIOPBEN_Field := 16#0#;
      --  IO port C clock enable
      GPIOPCEN       : AHBENR_GPIOPCEN_Field := 16#0#;
      --  IO port D clock enable
      GPIOPDEN       : AHBENR_GPIOPDEN_Field := 16#0#;
      --  IO port E clock enable
      GPIOPEEN       : AHBENR_GPIOPEEN_Field := 16#0#;
      --  IO port H clock enable
      GPIOPHEN       : AHBENR_GPIOPHEN_Field := 16#0#;
      --  IO port F clock enable
      GPIOPFEN       : AHBENR_GPIOPFEN_Field := 16#0#;
      --  IO port G clock enable
      GPIOPGEN       : AHBENR_GPIOPGEN_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32L151.UInt4 := 16#0#;
      --  CRC clock enable
      CRCEN          : AHBENR_CRCEN_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : STM32L151.UInt2 := 16#0#;
      --  FLITF clock enable
      FLITFEN        : AHBENR_FLITFEN_Field := 16#1#;
      --  unspecified
      Reserved_16_23 : STM32L151.UInt8 := 16#0#;
      --  DMA1 clock enable
      DMA1EN         : AHBENR_DMA1EN_Field := 16#0#;
      --  DMA2 clock enable
      DMA2EN         : AHBENR_DMA2EN_Field := 16#0#;
      --  unspecified
      Reserved_26_29 : STM32L151.UInt4 := 16#0#;
      --  FSMCEN
      FSMCEN         : AHBENR_FSMCEN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32L151.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBENR_Register use record
      GPIOPAEN       at 0 range 0 .. 0;
      GPIOPBEN       at 0 range 1 .. 1;
      GPIOPCEN       at 0 range 2 .. 2;
      GPIOPDEN       at 0 range 3 .. 3;
      GPIOPEEN       at 0 range 4 .. 4;
      GPIOPHEN       at 0 range 5 .. 5;
      GPIOPFEN       at 0 range 6 .. 6;
      GPIOPGEN       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCEN          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFEN        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      DMA1EN         at 0 range 24 .. 24;
      DMA2EN         at 0 range 25 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      FSMCEN         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype APB2ENR_SYSCFGEN_Field is STM32L151.Bit;
   subtype APB2ENR_TIM9EN_Field is STM32L151.Bit;
   subtype APB2ENR_TIM10EN_Field is STM32L151.Bit;
   subtype APB2ENR_TIM11EN_Field is STM32L151.Bit;
   subtype APB2ENR_ADC1EN_Field is STM32L151.Bit;
   subtype APB2ENR_SDIOEN_Field is STM32L151.Bit;
   subtype APB2ENR_SPI1EN_Field is STM32L151.Bit;
   subtype APB2ENR_USART1EN_Field is STM32L151.Bit;

   --  APB2 peripheral clock enable register
   type APB2ENR_Register is record
      --  System configuration controller clock enable
      SYSCFGEN       : APB2ENR_SYSCFGEN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : STM32L151.Bit := 16#0#;
      --  TIM9 timer clock enable
      TIM9EN         : APB2ENR_TIM9EN_Field := 16#0#;
      --  TIM10 timer clock enable
      TIM10EN        : APB2ENR_TIM10EN_Field := 16#0#;
      --  TIM11 timer clock enable
      TIM11EN        : APB2ENR_TIM11EN_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : STM32L151.UInt4 := 16#0#;
      --  ADC1 interface clock enable
      ADC1EN         : APB2ENR_ADC1EN_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32L151.Bit := 16#0#;
      --  SDIO clock enable
      SDIOEN         : APB2ENR_SDIOEN_Field := 16#0#;
      --  SPI 1 clock enable
      SPI1EN         : APB2ENR_SPI1EN_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32L151.Bit := 16#0#;
      --  USART1 clock enable
      USART1EN       : APB2ENR_USART1EN_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32L151.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM9EN         at 0 range 2 .. 2;
      TIM10EN        at 0 range 3 .. 3;
      TIM11EN        at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      ADC1EN         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SDIOEN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype APB1ENR_TIM2EN_Field is STM32L151.Bit;
   subtype APB1ENR_TIM3EN_Field is STM32L151.Bit;
   subtype APB1ENR_TIM4EN_Field is STM32L151.Bit;
   subtype APB1ENR_TIM5EN_Field is STM32L151.Bit;
   subtype APB1ENR_TIM6EN_Field is STM32L151.Bit;
   subtype APB1ENR_TIM7EN_Field is STM32L151.Bit;
   subtype APB1ENR_LCDEN_Field is STM32L151.Bit;
   subtype APB1ENR_WWDGEN_Field is STM32L151.Bit;
   subtype APB1ENR_SPI2EN_Field is STM32L151.Bit;
   subtype APB1ENR_SPI3EN_Field is STM32L151.Bit;
   subtype APB1ENR_USART2EN_Field is STM32L151.Bit;
   subtype APB1ENR_USART3EN_Field is STM32L151.Bit;
   subtype APB1ENR_USART4EN_Field is STM32L151.Bit;
   subtype APB1ENR_USART5EN_Field is STM32L151.Bit;
   subtype APB1ENR_I2C1EN_Field is STM32L151.Bit;
   subtype APB1ENR_I2C2EN_Field is STM32L151.Bit;
   subtype APB1ENR_USBEN_Field is STM32L151.Bit;
   subtype APB1ENR_PWREN_Field is STM32L151.Bit;
   subtype APB1ENR_DACEN_Field is STM32L151.Bit;
   subtype APB1ENR_COMPEN_Field is STM32L151.Bit;

   --  APB1 peripheral clock enable register
   type APB1ENR_Register is record
      --  Timer 2 clock enable
      TIM2EN         : APB1ENR_TIM2EN_Field := 16#0#;
      --  Timer 3 clock enable
      TIM3EN         : APB1ENR_TIM3EN_Field := 16#0#;
      --  Timer 4 clock enable
      TIM4EN         : APB1ENR_TIM4EN_Field := 16#0#;
      --  Timer 5 clock enable
      TIM5EN         : APB1ENR_TIM5EN_Field := 16#0#;
      --  Timer 6 clock enable
      TIM6EN         : APB1ENR_TIM6EN_Field := 16#0#;
      --  Timer 7 clock enable
      TIM7EN         : APB1ENR_TIM7EN_Field := 16#0#;
      --  unspecified
      Reserved_6_8   : STM32L151.UInt3 := 16#0#;
      --  LCD clock enable
      LCDEN          : APB1ENR_LCDEN_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32L151.Bit := 16#0#;
      --  Window watchdog clock enable
      WWDGEN         : APB1ENR_WWDGEN_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : STM32L151.UInt2 := 16#0#;
      --  SPI 2 clock enable
      SPI2EN         : APB1ENR_SPI2EN_Field := 16#0#;
      --  SPI 3 clock enable
      SPI3EN         : APB1ENR_SPI3EN_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : STM32L151.Bit := 16#0#;
      --  USART 2 clock enable
      USART2EN       : APB1ENR_USART2EN_Field := 16#0#;
      --  USART 3 clock enable
      USART3EN       : APB1ENR_USART3EN_Field := 16#0#;
      --  UART 4 clock enable
      USART4EN       : APB1ENR_USART4EN_Field := 16#0#;
      --  UART 5 clock enable
      USART5EN       : APB1ENR_USART5EN_Field := 16#0#;
      --  I2C 1 clock enable
      I2C1EN         : APB1ENR_I2C1EN_Field := 16#0#;
      --  I2C 2 clock enable
      I2C2EN         : APB1ENR_I2C2EN_Field := 16#0#;
      --  USB clock enable
      USBEN          : APB1ENR_USBEN_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : STM32L151.UInt4 := 16#0#;
      --  Power interface clock enable
      PWREN          : APB1ENR_PWREN_Field := 16#0#;
      --  DAC interface clock enable
      DACEN          : APB1ENR_DACEN_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : STM32L151.Bit := 16#0#;
      --  COMP interface clock enable
      COMPEN         : APB1ENR_COMPEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LCDEN          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      USART4EN       at 0 range 19 .. 19;
      USART5EN       at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      USBEN          at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWREN          at 0 range 28 .. 28;
      DACEN          at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMPEN         at 0 range 31 .. 31;
   end record;

   subtype AHBLPENR_GPIOALPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIOBLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIOCLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIODLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIOELPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIOHLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIOFLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_GPIOGLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_CRCLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_FLITFLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_SRAMLPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_DMA1LPEN_Field is STM32L151.Bit;
   subtype AHBLPENR_DMA2LPEN_Field is STM32L151.Bit;

   --  AHB peripheral clock enable in low power mode register
   type AHBLPENR_Register is record
      --  IO port A clock enable during Sleep mode
      GPIOALPEN      : AHBLPENR_GPIOALPEN_Field := 16#1#;
      --  IO port B clock enable during Sleep mode
      GPIOBLPEN      : AHBLPENR_GPIOBLPEN_Field := 16#1#;
      --  IO port C clock enable during Sleep mode
      GPIOCLPEN      : AHBLPENR_GPIOCLPEN_Field := 16#1#;
      --  IO port D clock enable during Sleep mode
      GPIODLPEN      : AHBLPENR_GPIODLPEN_Field := 16#1#;
      --  IO port E clock enable during Sleep mode
      GPIOELPEN      : AHBLPENR_GPIOELPEN_Field := 16#1#;
      --  IO port H clock enable during Sleep mode
      GPIOHLPEN      : AHBLPENR_GPIOHLPEN_Field := 16#1#;
      --  IO port F clock enable during Sleep mode
      GPIOFLPEN      : AHBLPENR_GPIOFLPEN_Field := 16#0#;
      --  IO port G clock enable during Sleep mode
      GPIOGLPEN      : AHBLPENR_GPIOGLPEN_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : STM32L151.UInt4 := 16#0#;
      --  CRC clock enable during Sleep mode
      CRCLPEN        : AHBLPENR_CRCLPEN_Field := 16#1#;
      --  unspecified
      Reserved_13_14 : STM32L151.UInt2 := 16#0#;
      --  FLITF clock enable during Sleep mode
      FLITFLPEN      : AHBLPENR_FLITFLPEN_Field := 16#1#;
      --  SRAM clock enable during Sleep mode
      SRAMLPEN       : AHBLPENR_SRAMLPEN_Field := 16#1#;
      --  unspecified
      Reserved_17_23 : STM32L151.UInt7 := 16#0#;
      --  DMA1 clock enable during Sleep mode
      DMA1LPEN       : AHBLPENR_DMA1LPEN_Field := 16#1#;
      --  DMA2 clock enable during Sleep mode
      DMA2LPEN       : AHBLPENR_DMA2LPEN_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : STM32L151.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBLPENR_Register use record
      GPIOALPEN      at 0 range 0 .. 0;
      GPIOBLPEN      at 0 range 1 .. 1;
      GPIOCLPEN      at 0 range 2 .. 2;
      GPIODLPEN      at 0 range 3 .. 3;
      GPIOELPEN      at 0 range 4 .. 4;
      GPIOHLPEN      at 0 range 5 .. 5;
      GPIOFLPEN      at 0 range 6 .. 6;
      GPIOGLPEN      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CRCLPEN        at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLITFLPEN      at 0 range 15 .. 15;
      SRAMLPEN       at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DMA1LPEN       at 0 range 24 .. 24;
      DMA2LPEN       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype APB2LPENR_SYSCFGLPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_TIM9LPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_TIM10LPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_TIM11LPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_ADC1LPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_SDIOLPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_SPI1LPEN_Field is STM32L151.Bit;
   subtype APB2LPENR_USART1LPEN_Field is STM32L151.Bit;

   --  APB2 peripheral clock enable in low power mode register
   type APB2LPENR_Register is record
      --  System configuration controller clock enable during Sleep mode
      SYSCFGLPEN     : APB2LPENR_SYSCFGLPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : STM32L151.Bit := 16#0#;
      --  TIM9 timer clock enable during Sleep mode
      TIM9LPEN       : APB2LPENR_TIM9LPEN_Field := 16#0#;
      --  TIM10 timer clock enable during Sleep mode
      TIM10LPEN      : APB2LPENR_TIM10LPEN_Field := 16#0#;
      --  TIM11 timer clock enable during Sleep mode
      TIM11LPEN      : APB2LPENR_TIM11LPEN_Field := 16#0#;
      --  unspecified
      Reserved_5_8   : STM32L151.UInt4 := 16#0#;
      --  ADC1 interface clock enable during Sleep mode
      ADC1LPEN       : APB2LPENR_ADC1LPEN_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32L151.Bit := 16#0#;
      --  SDIO clock enable during Sleep mode
      SDIOLPEN       : APB2LPENR_SDIOLPEN_Field := 16#0#;
      --  SPI 1 clock enable during Sleep mode
      SPI1LPEN       : APB2LPENR_SPI1LPEN_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32L151.Bit := 16#0#;
      --  USART1 clock enable during Sleep mode
      USART1LPEN     : APB2LPENR_USART1LPEN_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32L151.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2LPENR_Register use record
      SYSCFGLPEN     at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TIM9LPEN       at 0 range 2 .. 2;
      TIM10LPEN      at 0 range 3 .. 3;
      TIM11LPEN      at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      ADC1LPEN       at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      SDIOLPEN       at 0 range 11 .. 11;
      SPI1LPEN       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1LPEN     at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype APB1LPENR_TIM2LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_TIM3LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_TIM4LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_TIM6LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_TIM7LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_LCDLPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_WWDGLPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_SPI2LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_USART2LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_USART3LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_I2C1LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_I2C2LPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_USBLPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_PWRLPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_DACLPEN_Field is STM32L151.Bit;
   subtype APB1LPENR_COMPLPEN_Field is STM32L151.Bit;

   --  APB1 peripheral clock enable in low power mode register
   type APB1LPENR_Register is record
      --  Timer 2 clock enable during Sleep mode
      TIM2LPEN       : APB1LPENR_TIM2LPEN_Field := 16#0#;
      --  Timer 3 clock enable during Sleep mode
      TIM3LPEN       : APB1LPENR_TIM3LPEN_Field := 16#0#;
      --  Timer 4 clock enable during Sleep mode
      TIM4LPEN       : APB1LPENR_TIM4LPEN_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : STM32L151.Bit := 16#0#;
      --  Timer 6 clock enable during Sleep mode
      TIM6LPEN       : APB1LPENR_TIM6LPEN_Field := 16#0#;
      --  Timer 7 clock enable during Sleep mode
      TIM7LPEN       : APB1LPENR_TIM7LPEN_Field := 16#0#;
      --  unspecified
      Reserved_6_8   : STM32L151.UInt3 := 16#0#;
      --  LCD clock enable during Sleep mode
      LCDLPEN        : APB1LPENR_LCDLPEN_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : STM32L151.Bit := 16#0#;
      --  Window watchdog clock enable during Sleep mode
      WWDGLPEN       : APB1LPENR_WWDGLPEN_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : STM32L151.UInt2 := 16#0#;
      --  SPI 2 clock enable during Sleep mode
      SPI2LPEN       : APB1LPENR_SPI2LPEN_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : STM32L151.UInt2 := 16#0#;
      --  USART 2 clock enable during Sleep mode
      USART2LPEN     : APB1LPENR_USART2LPEN_Field := 16#0#;
      --  USART 3 clock enable during Sleep mode
      USART3LPEN     : APB1LPENR_USART3LPEN_Field := 16#0#;
      --  unspecified
      Reserved_19_20 : STM32L151.UInt2 := 16#0#;
      --  I2C 1 clock enable during Sleep mode
      I2C1LPEN       : APB1LPENR_I2C1LPEN_Field := 16#0#;
      --  I2C 2 clock enable during Sleep mode
      I2C2LPEN       : APB1LPENR_I2C2LPEN_Field := 16#0#;
      --  USB clock enable during Sleep mode
      USBLPEN        : APB1LPENR_USBLPEN_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : STM32L151.UInt4 := 16#0#;
      --  Power interface clock enable during Sleep mode
      PWRLPEN        : APB1LPENR_PWRLPEN_Field := 16#0#;
      --  DAC interface clock enable during Sleep mode
      DACLPEN        : APB1LPENR_DACLPEN_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : STM32L151.Bit := 16#0#;
      --  COMP interface clock enable during Sleep mode
      COMPLPEN       : APB1LPENR_COMPLPEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1LPENR_Register use record
      TIM2LPEN       at 0 range 0 .. 0;
      TIM3LPEN       at 0 range 1 .. 1;
      TIM4LPEN       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6LPEN       at 0 range 4 .. 4;
      TIM7LPEN       at 0 range 5 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      LCDLPEN        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGLPEN       at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2LPEN       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      USART2LPEN     at 0 range 17 .. 17;
      USART3LPEN     at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      I2C1LPEN       at 0 range 21 .. 21;
      I2C2LPEN       at 0 range 22 .. 22;
      USBLPEN        at 0 range 23 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PWRLPEN        at 0 range 28 .. 28;
      DACLPEN        at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMPLPEN       at 0 range 31 .. 31;
   end record;

   subtype CSR_LSION_Field is STM32L151.Bit;
   subtype CSR_LSIRDY_Field is STM32L151.Bit;
   subtype CSR_LSEON_Field is STM32L151.Bit;
   subtype CSR_LSERDY_Field is STM32L151.Bit;
   subtype CSR_LSEBYP_Field is STM32L151.Bit;
   subtype CSR_RTCSEL_Field is STM32L151.UInt2;
   subtype CSR_RTCEN_Field is STM32L151.Bit;
   subtype CSR_RTCRST_Field is STM32L151.Bit;
   subtype CSR_RMVF_Field is STM32L151.Bit;
   subtype CSR_PINRSTF_Field is STM32L151.Bit;
   subtype CSR_PORRSTF_Field is STM32L151.Bit;
   subtype CSR_SFTRSTF_Field is STM32L151.Bit;
   subtype CSR_IWDGRSTF_Field is STM32L151.Bit;
   subtype CSR_WWDGRSTF_Field is STM32L151.Bit;
   subtype CSR_LPWRSTF_Field is STM32L151.Bit;

   --  Control/status register
   type CSR_Register is record
      --  Internal low-speed oscillator enable
      LSION          : CSR_LSION_Field := 16#0#;
      --  Read-only. Internal low-speed oscillator ready
      LSIRDY         : CSR_LSIRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : STM32L151.UInt6 := 16#0#;
      --  External low-speed oscillator enable
      LSEON          : CSR_LSEON_Field := 16#0#;
      --  Read-only. External low-speed oscillator ready
      LSERDY         : CSR_LSERDY_Field := 16#0#;
      --  External low-speed oscillator bypass
      LSEBYP         : CSR_LSEBYP_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : STM32L151.UInt5 := 16#0#;
      --  RTC and LCD clock source selection
      RTCSEL         : CSR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : STM32L151.UInt4 := 16#0#;
      --  RTC clock enable
      RTCEN          : CSR_RTCEN_Field := 16#0#;
      --  RTC software reset
      RTCRST         : CSR_RTCRST_Field := 16#0#;
      --  Remove reset flag
      RMVF           : CSR_RMVF_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : STM32L151.Bit := 16#0#;
      --  PIN reset flag
      PINRSTF        : CSR_PINRSTF_Field := 16#0#;
      --  POR/PDR reset flag
      PORRSTF        : CSR_PORRSTF_Field := 16#0#;
      --  Software reset flag
      SFTRSTF        : CSR_SFTRSTF_Field := 16#0#;
      --  Independent watchdog reset flag
      IWDGRSTF       : CSR_IWDGRSTF_Field := 16#0#;
      --  Window watchdog reset flag
      WWDGRSTF       : CSR_WWDGRSTF_Field := 16#0#;
      --  Low-power reset flag
      LPWRSTF        : CSR_LPWRSTF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION          at 0 range 0 .. 0;
      LSIRDY         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LSEON          at 0 range 8 .. 8;
      LSERDY         at 0 range 9 .. 9;
      LSEBYP         at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RTCSEL         at 0 range 16 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      RTCEN          at 0 range 22 .. 22;
      RTCRST         at 0 range 23 .. 23;
      RMVF           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      PINRSTF        at 0 range 26 .. 26;
      PORRSTF        at 0 range 27 .. 27;
      SFTRSTF        at 0 range 28 .. 28;
      IWDGRSTF       at 0 range 29 .. 29;
      WWDGRSTF       at 0 range 30 .. 30;
      LPWRSTF        at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CR        : aliased CR_Register;
      --  Internal clock sources calibration register
      ICSCR     : aliased ICSCR_Register;
      --  Clock configuration register
      CFGR      : aliased CFGR_Register;
      --  Clock interrupt register
      CIR       : aliased CIR_Register;
      --  AHB peripheral reset register
      AHBRSTR   : aliased AHBRSTR_Register;
      --  APB2 peripheral reset register
      APB2RSTR  : aliased APB2RSTR_Register;
      --  APB1 peripheral reset register
      APB1RSTR  : aliased APB1RSTR_Register;
      --  AHB peripheral clock enable register
      AHBENR    : aliased AHBENR_Register;
      --  APB2 peripheral clock enable register
      APB2ENR   : aliased APB2ENR_Register;
      --  APB1 peripheral clock enable register
      APB1ENR   : aliased APB1ENR_Register;
      --  AHB peripheral clock enable in low power mode register
      AHBLPENR  : aliased AHBLPENR_Register;
      --  APB2 peripheral clock enable in low power mode register
      APB2LPENR : aliased APB2LPENR_Register;
      --  APB1 peripheral clock enable in low power mode register
      APB1LPENR : aliased APB1LPENR_Register;
      --  Control/status register
      CSR       : aliased CSR_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      ICSCR     at 16#4# range 0 .. 31;
      CFGR      at 16#8# range 0 .. 31;
      CIR       at 16#C# range 0 .. 31;
      AHBRSTR   at 16#10# range 0 .. 31;
      APB2RSTR  at 16#14# range 0 .. 31;
      APB1RSTR  at 16#18# range 0 .. 31;
      AHBENR    at 16#1C# range 0 .. 31;
      APB2ENR   at 16#20# range 0 .. 31;
      APB1ENR   at 16#24# range 0 .. 31;
      AHBLPENR  at 16#28# range 0 .. 31;
      APB2LPENR at 16#2C# range 0 .. 31;
      APB1LPENR at 16#30# range 0 .. 31;
      CSR       at 16#34# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end STM32L151.RCC;
