pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32L151.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32L151.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_PE_Field is STM32L151.Bit;
   subtype CR1_SMBUS_Field is STM32L151.Bit;
   subtype CR1_SMBTYPE_Field is STM32L151.Bit;
   subtype CR1_ENARP_Field is STM32L151.Bit;
   subtype CR1_ENPEC_Field is STM32L151.Bit;
   subtype CR1_ENGC_Field is STM32L151.Bit;
   subtype CR1_NOSTRETCH_Field is STM32L151.Bit;
   subtype CR1_START_Field is STM32L151.Bit;
   subtype CR1_STOP_Field is STM32L151.Bit;
   subtype CR1_ACK_Field is STM32L151.Bit;
   subtype CR1_POS_Field is STM32L151.Bit;
   subtype CR1_PEC_Field is STM32L151.Bit;
   subtype CR1_ALERT_Field is STM32L151.Bit;
   subtype CR1_SWRST_Field is STM32L151.Bit;

   --  CR1
   type CR1_Register is record
      --  Peripheral enable
      PE             : CR1_PE_Field := 16#0#;
      --  SMBus mode
      SMBUS          : CR1_SMBUS_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32L151.Bit := 16#0#;
      --  SMBus type
      SMBTYPE        : CR1_SMBTYPE_Field := 16#0#;
      --  ARP enable
      ENARP          : CR1_ENARP_Field := 16#0#;
      --  PEC enable
      ENPEC          : CR1_ENPEC_Field := 16#0#;
      --  General call enable
      ENGC           : CR1_ENGC_Field := 16#0#;
      --  Clock stretching disable (Slave mode)
      NOSTRETCH      : CR1_NOSTRETCH_Field := 16#0#;
      --  Start generation
      START          : CR1_START_Field := 16#0#;
      --  Stop generation
      STOP           : CR1_STOP_Field := 16#0#;
      --  Acknowledge enable
      ACK            : CR1_ACK_Field := 16#0#;
      --  Acknowledge/PEC Position (for data reception)
      POS            : CR1_POS_Field := 16#0#;
      --  Packet error checking
      PEC            : CR1_PEC_Field := 16#0#;
      --  SMBus alert
      ALERT          : CR1_ALERT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : STM32L151.Bit := 16#0#;
      --  Software reset
      SWRST          : CR1_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PE             at 0 range 0 .. 0;
      SMBUS          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SMBTYPE        at 0 range 3 .. 3;
      ENARP          at 0 range 4 .. 4;
      ENPEC          at 0 range 5 .. 5;
      ENGC           at 0 range 6 .. 6;
      NOSTRETCH      at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ACK            at 0 range 10 .. 10;
      POS            at 0 range 11 .. 11;
      PEC            at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2_FREQ_Field is STM32L151.UInt6;
   subtype CR2_ITERREN_Field is STM32L151.Bit;
   subtype CR2_ITEVTEN_Field is STM32L151.Bit;
   subtype CR2_ITBUFEN_Field is STM32L151.Bit;
   subtype CR2_DMAEN_Field is STM32L151.Bit;
   subtype CR2_LAST_Field is STM32L151.Bit;

   --  CR2
   type CR2_Register is record
      --  Peripheral clock frequency
      FREQ           : CR2_FREQ_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32L151.UInt2 := 16#0#;
      --  Error interrupt enable
      ITERREN        : CR2_ITERREN_Field := 16#0#;
      --  Event interrupt enable
      ITEVTEN        : CR2_ITEVTEN_Field := 16#0#;
      --  Buffer interrupt enable
      ITBUFEN        : CR2_ITBUFEN_Field := 16#0#;
      --  DMA requests enable
      DMAEN          : CR2_DMAEN_Field := 16#0#;
      --  DMA last transfer
      LAST           : CR2_LAST_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32L151.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      FREQ           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ITERREN        at 0 range 8 .. 8;
      ITEVTEN        at 0 range 9 .. 9;
      ITBUFEN        at 0 range 10 .. 10;
      DMAEN          at 0 range 11 .. 11;
      LAST           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OAR1_ADD_0_Field is STM32L151.Bit;
   subtype OAR1_ADD_1_7_Field is STM32L151.UInt7;
   subtype OAR1_ADD_8_9_Field is STM32L151.UInt2;
   subtype OAR1_ADDMODE_Field is STM32L151.Bit;

   --  OAR1
   type OAR1_Register is record
      --  Interface address
      ADD_0          : OAR1_ADD_0_Field := 16#0#;
      --  Interface address
      ADD_1_7        : OAR1_ADD_1_7_Field := 16#0#;
      --  Interface address
      ADD_8_9        : OAR1_ADD_8_9_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : STM32L151.UInt5 := 16#0#;
      --  ADDMODE
      ADDMODE        : OAR1_ADDMODE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register use record
      ADD_0          at 0 range 0 .. 0;
      ADD_1_7        at 0 range 1 .. 7;
      ADD_8_9        at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      ADDMODE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_ENDUAL_Field is STM32L151.Bit;
   subtype OAR2_ADD2_Field is STM32L151.UInt7;

   --  OAR2
   type OAR2_Register is record
      --  Dual addressing mode enable
      ENDUAL        : OAR2_ENDUAL_Field := 16#0#;
      --  Interface address
      ADD2          : OAR2_ADD2_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32L151.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register use record
      ENDUAL        at 0 range 0 .. 0;
      ADD2          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DR_DR_Field is STM32L151.UInt8;

   --  DR
   type DR_Register is record
      --  -bit data register
      DR            : DR_DR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32L151.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SR1_SB_Field is STM32L151.Bit;
   subtype SR1_ADDR_Field is STM32L151.Bit;
   subtype SR1_BTF_Field is STM32L151.Bit;
   subtype SR1_ADD10_Field is STM32L151.Bit;
   subtype SR1_STOPF_Field is STM32L151.Bit;
   subtype SR1_RxNE_Field is STM32L151.Bit;
   subtype SR1_TxE_Field is STM32L151.Bit;
   subtype SR1_BERR_Field is STM32L151.Bit;
   subtype SR1_ARLO_Field is STM32L151.Bit;
   subtype SR1_AF_Field is STM32L151.Bit;
   subtype SR1_OVR_Field is STM32L151.Bit;
   subtype SR1_PECERR_Field is STM32L151.Bit;
   subtype SR1_TIMEOUT_Field is STM32L151.Bit;
   subtype SR1_SMBALERT_Field is STM32L151.Bit;

   --  SR1
   type SR1_Register is record
      --  Read-only. Start bit (Master mode)
      SB             : SR1_SB_Field := 16#0#;
      --  Read-only. Address sent (master mode)/matched (slave mode)
      ADDR           : SR1_ADDR_Field := 16#0#;
      --  Read-only. Byte transfer finished
      BTF            : SR1_BTF_Field := 16#0#;
      --  Read-only. 10-bit header sent (Master mode)
      ADD10          : SR1_ADD10_Field := 16#0#;
      --  Read-only. Stop detection (slave mode)
      STOPF          : SR1_STOPF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32L151.Bit := 16#0#;
      --  Read-only. Data register not empty (receivers)
      RxNE           : SR1_RxNE_Field := 16#0#;
      --  Read-only. Data register empty (transmitters)
      TxE            : SR1_TxE_Field := 16#0#;
      --  Bus error
      BERR           : SR1_BERR_Field := 16#0#;
      --  Arbitration lost (master mode)
      ARLO           : SR1_ARLO_Field := 16#0#;
      --  Acknowledge failure
      AF             : SR1_AF_Field := 16#0#;
      --  Overrun/Underrun
      OVR            : SR1_OVR_Field := 16#0#;
      --  PEC Error in reception
      PECERR         : SR1_PECERR_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32L151.Bit := 16#0#;
      --  Timeout or Tlow error
      TIMEOUT        : SR1_TIMEOUT_Field := 16#0#;
      --  SMBus alert
      SMBALERT       : SR1_SMBALERT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      SB             at 0 range 0 .. 0;
      ADDR           at 0 range 1 .. 1;
      BTF            at 0 range 2 .. 2;
      ADD10          at 0 range 3 .. 3;
      STOPF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RxNE           at 0 range 6 .. 6;
      TxE            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      AF             at 0 range 10 .. 10;
      OVR            at 0 range 11 .. 11;
      PECERR         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TIMEOUT        at 0 range 14 .. 14;
      SMBALERT       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SR2_MSL_Field is STM32L151.Bit;
   subtype SR2_BUSY_Field is STM32L151.Bit;
   subtype SR2_TRA_Field is STM32L151.Bit;
   subtype SR2_GENCALL_Field is STM32L151.Bit;
   subtype SR2_SMBDEFAULT_Field is STM32L151.Bit;
   subtype SR2_SMBHOST_Field is STM32L151.Bit;
   subtype SR2_DUALF_Field is STM32L151.Bit;
   subtype SR2_PEC_Field is STM32L151.UInt8;

   --  SR2
   type SR2_Register is record
      --  Read-only. Master/slave
      MSL            : SR2_MSL_Field;
      --  Read-only. Bus busy
      BUSY           : SR2_BUSY_Field;
      --  Read-only. Transmitter/receiver
      TRA            : SR2_TRA_Field;
      --  unspecified
      Reserved_3_3   : STM32L151.Bit;
      --  Read-only. General call address (Slave mode)
      GENCALL        : SR2_GENCALL_Field;
      --  Read-only. SMBus device default address (Slave mode)
      SMBDEFAULT     : SR2_SMBDEFAULT_Field;
      --  Read-only. SMBus host header (Slave mode)
      SMBHOST        : SR2_SMBHOST_Field;
      --  Read-only. Dual flag (Slave mode)
      DUALF          : SR2_DUALF_Field;
      --  Read-only. acket error checking register
      PEC            : SR2_PEC_Field;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      MSL            at 0 range 0 .. 0;
      BUSY           at 0 range 1 .. 1;
      TRA            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GENCALL        at 0 range 4 .. 4;
      SMBDEFAULT     at 0 range 5 .. 5;
      SMBHOST        at 0 range 6 .. 6;
      DUALF          at 0 range 7 .. 7;
      PEC            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR_CCR_Field is STM32L151.UInt12;
   subtype CCR_DUTY_Field is STM32L151.Bit;
   subtype CCR_F_S_Field is STM32L151.Bit;

   --  CCR
   type CCR_Register is record
      --  Clock control register in Fast/Standard mode (Master mode)
      CCR            : CCR_CCR_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : STM32L151.UInt2 := 16#0#;
      --  Fast mode duty cycle
      DUTY           : CCR_DUTY_Field := 16#0#;
      --  I2C master mode selection
      F_S            : CCR_F_S_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32L151.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CCR            at 0 range 0 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DUTY           at 0 range 14 .. 14;
      F_S            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRISE_TRISE_Field is STM32L151.UInt6;

   --  TRISE
   type TRISE_Register is record
      --  Maximum rise time in Fast/Standard mode (Master mode)
      TRISE         : TRISE_TRISE_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : STM32L151.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRISE_Register use record
      TRISE         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Inter-integrated circuit
   type I2C_Peripheral is record
      --  CR1
      CR1   : aliased CR1_Register;
      --  CR2
      CR2   : aliased CR2_Register;
      --  OAR1
      OAR1  : aliased OAR1_Register;
      --  OAR2
      OAR2  : aliased OAR2_Register;
      --  DR
      DR    : aliased DR_Register;
      --  SR1
      SR1   : aliased SR1_Register;
      --  SR2
      SR2   : aliased SR2_Register;
      --  CCR
      CCR   : aliased CCR_Register;
      --  TRISE
      TRISE : aliased TRISE_Register;
   end record
     with Volatile;

   for I2C_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      OAR1  at 16#8# range 0 .. 31;
      OAR2  at 16#C# range 0 .. 31;
      DR    at 16#10# range 0 .. 31;
      SR1   at 16#14# range 0 .. 31;
      SR2   at 16#18# range 0 .. 31;
      CCR   at 16#1C# range 0 .. 31;
      TRISE at 16#20# range 0 .. 31;
   end record;

   --  Inter-integrated circuit
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_Base;

   --  Inter-integrated circuit
   I2C2_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_Base;

end STM32L151.I2C;
