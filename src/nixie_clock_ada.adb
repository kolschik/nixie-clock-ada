with STM32L151.RCC; use STM32L151.RCC;
with STM32L151.GPIO; use STM32L151.GPIO;

procedure Nixie_Clock_Ada is

   procedure Init_Periph (LED_Pin : Integer) is
   begin
      RCC_Periph.AHBENR.GPIOPAEN := 1;
      RCC_Periph.AHBENR.GPIOPBEN := 1;
      RCC_Periph.AHBENR.GPIOPHEN := 1;

      GPIOB_Periph.MODER.Arr (LED_Pin) := 1;
      GPIOB_Periph.OTYPER.OT.Arr (LED_Pin) := 0;
      GPIOB_Periph.OSPEEDER.Arr (LED_Pin) := 1;
      GPIOB_Periph.PUPDR.Arr (LED_Pin) := 0;
   end Init_Periph;

   procedure Delay_Ms is
      foo : Integer := 0;
   begin
      for I in 0 .. 100_000 loop
         foo := foo + 1;
      end loop;
   end Delay_Ms;

   LED_GPIO_Num : constant := 1;

begin
   Init_Periph (LED_GPIO_Num);

   loop
      GPIOB_Periph.ODR.ODR.Arr (LED_GPIO_Num) := 1;
      Delay_Ms;
      GPIOB_Periph.ODR.ODR.Arr (LED_GPIO_Num) := 0;
      Delay_Ms;
   end loop;

end Nixie_Clock_Ada;
