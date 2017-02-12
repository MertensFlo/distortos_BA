#
# Automatically generated file; DO NOT EDIT.
# Configuration
#

#
# Board, chip & architecture configuration
#
CONFIG_CHIP_STM32=y
# CONFIG_CHIP_STM32F0 is not set
CONFIG_CHIP_STM32F1=y
# CONFIG_CHIP_STM32F4 is not set
# CONFIG_BOARD_CUSTOM is not set
CONFIG_BOARD_NUCLEO_F103RB=y
CONFIG_BOARD_TOTAL_BUTTONS=1
CONFIG_BOARD_TOTAL_LEDS=1
CONFIG_BOARD_INCLUDES="source/board/STM32/STM32F1/NUCLEO-F103RB/include"
CONFIG_BOARD="NUCLEO-F103RB"

#
# Generic board options
#
CONFIG_BOARD_BUTTONS_ENABLE=y
CONFIG_BOARD_LEDS_ENABLE=y
CONFIG_CHIP_ROM_SIZE=131072
CONFIG_CHIP_ROM_ADDRESS=0x08000000
CONFIG_CHIP="STM32F103RB"
CONFIG_CHIP_INCLUDES="source/chip/STM32/STM32F1/include source/chip/STM32/peripherals/GPIOv1/include source/chip/STM32/peripherals/SPIv1/include source/chip/STM32/peripherals/USARTv1/include external/CMSIS-STM32F1 external/CMSIS"

#
# STM32F1 chip options
#

#
# Clocks configuration
#
CONFIG_CHIP_STM32F1_STANDARD_CLOCK_CONFIGURATION_ENABLE=y
CONFIG_CHIP_STM32F1_RCC_HSE_ENABLE=y
CONFIG_CHIP_STM32F1_RCC_HSE_CLOCK_BYPASS=y
CONFIG_CHIP_STM32F1_RCC_HSE_FREQUENCY=8000000
CONFIG_CHIP_STM32F1_RCC_PLL_ENABLE=y
# CONFIG_CHIP_STM32F1_RCC_PLLSRC_HSIDIV2 is not set
CONFIG_CHIP_STM32F1_RCC_PLLSRC_PREDIV1=y
CONFIG_CHIP_STM32F1_RCC_PREDIV1=1
# CONFIG_CHIP_STM32F1_RCC_PLLMUL2 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL3 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL4 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL5 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL6 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL7 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL8 is not set
CONFIG_CHIP_STM32F1_RCC_PLLMUL9=y
# CONFIG_CHIP_STM32F1_RCC_PLLMUL10 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL11 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL12 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL13 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL14 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL15 is not set
# CONFIG_CHIP_STM32F1_RCC_PLLMUL16 is not set
# CONFIG_CHIP_STM32F1_RCC_SYSCLK_HSI is not set
# CONFIG_CHIP_STM32F1_RCC_SYSCLK_HSE is not set
CONFIG_CHIP_STM32F1_RCC_SYSCLK_PLL=y
CONFIG_CHIP_STM32F1_RCC_AHB_DIV1=y
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV2 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV4 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV8 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV16 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV64 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV128 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV256 is not set
# CONFIG_CHIP_STM32F1_RCC_AHB_DIV512 is not set
# CONFIG_CHIP_STM32F1_RCC_APB1_DIV1 is not set
CONFIG_CHIP_STM32F1_RCC_APB1_DIV2=y
# CONFIG_CHIP_STM32F1_RCC_APB1_DIV4 is not set
# CONFIG_CHIP_STM32F1_RCC_APB1_DIV8 is not set
# CONFIG_CHIP_STM32F1_RCC_APB1_DIV16 is not set
CONFIG_CHIP_STM32F1_RCC_APB2_DIV1=y
# CONFIG_CHIP_STM32F1_RCC_APB2_DIV2 is not set
# CONFIG_CHIP_STM32F1_RCC_APB2_DIV4 is not set
# CONFIG_CHIP_STM32F1_RCC_APB2_DIV8 is not set
# CONFIG_CHIP_STM32F1_RCC_APB2_DIV16 is not set

#
# Memory configuration
#
CONFIG_CHIP_STM32F1_FLASH_PREFETCH_ENABLE=y
# CONFIG_CHIP_STM32F1_FLASH_HALF_CYCLE_ACCESS_ENABLE is not set
CONFIG_CHIP_STM32F10=y
# CONFIG_CHIP_STM32F100 is not set
# CONFIG_CHIP_STM32F100C is not set
# CONFIG_CHIP_STM32F100C4 is not set
# CONFIG_CHIP_STM32F100C6 is not set
# CONFIG_CHIP_STM32F100C8 is not set
# CONFIG_CHIP_STM32F100CB is not set
# CONFIG_CHIP_STM32F100R is not set
# CONFIG_CHIP_STM32F100R4 is not set
# CONFIG_CHIP_STM32F100R6 is not set
# CONFIG_CHIP_STM32F100R8 is not set
# CONFIG_CHIP_STM32F100RB is not set
# CONFIG_CHIP_STM32F100RC is not set
# CONFIG_CHIP_STM32F100RD is not set
# CONFIG_CHIP_STM32F100RE is not set
# CONFIG_CHIP_STM32F100V is not set
# CONFIG_CHIP_STM32F100V8 is not set
# CONFIG_CHIP_STM32F100VB is not set
# CONFIG_CHIP_STM32F100VC is not set
# CONFIG_CHIP_STM32F100VD is not set
# CONFIG_CHIP_STM32F100VE is not set
# CONFIG_CHIP_STM32F100Z is not set
# CONFIG_CHIP_STM32F100ZC is not set
# CONFIG_CHIP_STM32F100ZD is not set
# CONFIG_CHIP_STM32F100ZE is not set
# CONFIG_CHIP_STM32F101 is not set
# CONFIG_CHIP_STM32F101C is not set
# CONFIG_CHIP_STM32F101C4 is not set
# CONFIG_CHIP_STM32F101C6 is not set
# CONFIG_CHIP_STM32F101C8 is not set
# CONFIG_CHIP_STM32F101CB is not set
# CONFIG_CHIP_STM32F101R is not set
# CONFIG_CHIP_STM32F101R4 is not set
# CONFIG_CHIP_STM32F101R6 is not set
# CONFIG_CHIP_STM32F101R8 is not set
# CONFIG_CHIP_STM32F101RB is not set
# CONFIG_CHIP_STM32F101RC is not set
# CONFIG_CHIP_STM32F101RD is not set
# CONFIG_CHIP_STM32F101RE is not set
# CONFIG_CHIP_STM32F101RF is not set
# CONFIG_CHIP_STM32F101RG is not set
# CONFIG_CHIP_STM32F101T is not set
# CONFIG_CHIP_STM32F101T4 is not set
# CONFIG_CHIP_STM32F101T6 is not set
# CONFIG_CHIP_STM32F101T8 is not set
# CONFIG_CHIP_STM32F101TB is not set
# CONFIG_CHIP_STM32F101V is not set
# CONFIG_CHIP_STM32F101V8 is not set
# CONFIG_CHIP_STM32F101VB is not set
# CONFIG_CHIP_STM32F101VC is not set
# CONFIG_CHIP_STM32F101VD is not set
# CONFIG_CHIP_STM32F101VE is not set
# CONFIG_CHIP_STM32F101VF is not set
# CONFIG_CHIP_STM32F101VG is not set
# CONFIG_CHIP_STM32F101Z is not set
# CONFIG_CHIP_STM32F101ZC is not set
# CONFIG_CHIP_STM32F101ZD is not set
# CONFIG_CHIP_STM32F101ZE is not set
# CONFIG_CHIP_STM32F101ZF is not set
# CONFIG_CHIP_STM32F101ZG is not set
# CONFIG_CHIP_STM32F102 is not set
# CONFIG_CHIP_STM32F102C is not set
# CONFIG_CHIP_STM32F102C4 is not set
# CONFIG_CHIP_STM32F102C6 is not set
# CONFIG_CHIP_STM32F102C8 is not set
# CONFIG_CHIP_STM32F102CB is not set
# CONFIG_CHIP_STM32F102R is not set
# CONFIG_CHIP_STM32F102R4 is not set
# CONFIG_CHIP_STM32F102R6 is not set
# CONFIG_CHIP_STM32F102R8 is not set
# CONFIG_CHIP_STM32F102RB is not set
CONFIG_CHIP_STM32F103=y
# CONFIG_CHIP_STM32F103C is not set
# CONFIG_CHIP_STM32F103C4 is not set
# CONFIG_CHIP_STM32F103C6 is not set
# CONFIG_CHIP_STM32F103C8 is not set
# CONFIG_CHIP_STM32F103CB is not set
CONFIG_CHIP_STM32F103R=y
# CONFIG_CHIP_STM32F103R4 is not set
# CONFIG_CHIP_STM32F103R6 is not set
# CONFIG_CHIP_STM32F103R8 is not set
CONFIG_CHIP_STM32F103RB=y
# CONFIG_CHIP_STM32F103RC is not set
# CONFIG_CHIP_STM32F103RD is not set
# CONFIG_CHIP_STM32F103RE is not set
# CONFIG_CHIP_STM32F103RF is not set
# CONFIG_CHIP_STM32F103RG is not set
# CONFIG_CHIP_STM32F103T is not set
# CONFIG_CHIP_STM32F103T4 is not set
# CONFIG_CHIP_STM32F103T6 is not set
# CONFIG_CHIP_STM32F103T8 is not set
# CONFIG_CHIP_STM32F103TB is not set
# CONFIG_CHIP_STM32F103V is not set
# CONFIG_CHIP_STM32F103V8 is not set
# CONFIG_CHIP_STM32F103VB is not set
# CONFIG_CHIP_STM32F103VC is not set
# CONFIG_CHIP_STM32F103VD is not set
# CONFIG_CHIP_STM32F103VE is not set
# CONFIG_CHIP_STM32F103VF is not set
# CONFIG_CHIP_STM32F103VG is not set
# CONFIG_CHIP_STM32F103Z is not set
# CONFIG_CHIP_STM32F103ZC is not set
# CONFIG_CHIP_STM32F103ZD is not set
# CONFIG_CHIP_STM32F103ZE is not set
# CONFIG_CHIP_STM32F103ZF is not set
# CONFIG_CHIP_STM32F103ZG is not set
# CONFIG_CHIP_STM32F105 is not set
# CONFIG_CHIP_STM32F105R is not set
# CONFIG_CHIP_STM32F105R8 is not set
# CONFIG_CHIP_STM32F105RB is not set
# CONFIG_CHIP_STM32F105RC is not set
# CONFIG_CHIP_STM32F105V is not set
# CONFIG_CHIP_STM32F105V8 is not set
# CONFIG_CHIP_STM32F105VB is not set
# CONFIG_CHIP_STM32F105VC is not set
# CONFIG_CHIP_STM32F107 is not set
# CONFIG_CHIP_STM32F107R is not set
# CONFIG_CHIP_STM32F107RB is not set
# CONFIG_CHIP_STM32F107RC is not set
# CONFIG_CHIP_STM32F107V is not set
# CONFIG_CHIP_STM32F107VB is not set
# CONFIG_CHIP_STM32F107VC is not set
CONFIG_CHIP_STM32F1_SRAM_SIZE=20480
CONFIG_CHIP_STM32F1_SRAM_ADDRESS=0x20000000
CONFIG_CHIP_STM32F1_RCC_HSE_CLOCK_BYPASS_CONFIGURABLE=y
# CONFIG_CHIP_STM32F1_RCC_HSE_CLOCK_BYPASS_DEFAULT is not set
CONFIG_CHIP_STM32F1_RCC_HSE_FREQUENCY_CONFIGURABLE=y
CONFIG_CHIP_STM32F1_RCC_HSE_FREQUENCY_DEFAULT=8000000
CONFIG_CHIP_STM32F1_RCC_HPRE=1
CONFIG_CHIP_STM32F1_RCC_PLLMUL_DENOMINATOR=1
CONFIG_CHIP_STM32F1_RCC_PLLMUL_NUMERATOR=9
CONFIG_CHIP_STM32F1_RCC_PPRE1=2
CONFIG_CHIP_STM32F1_RCC_PPRE2=1

#
# Peripherals configuration
#
CONFIG_CHIP_STM32_GPIOV1_GPIOA_ENABLE=y
CONFIG_CHIP_STM32_GPIOV1_GPIOB_ENABLE=y
CONFIG_CHIP_STM32_GPIOV1_GPIOC_ENABLE=y
CONFIG_CHIP_STM32_GPIOV1_GPIOD_ENABLE=y
CONFIG_CHIP_STM32_GPIOV1_GPIOE_ENABLE=y
CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOA=y
CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOB=y
CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOC=y
CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOD=y
CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOE=y
# CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOF is not set
# CONFIG_CHIP_STM32_GPIOV1_HAS_GPIOG is not set
CONFIG_CHIP_STM32_GPIOV1=y
# CONFIG_CHIP_STM32_GPIOV2 is not set
CONFIG_CHIP_STM32_SPIV1=y
# CONFIG_CHIP_STM32_SPIV2 is not set
CONFIG_CHIP_STM32_USARTV1=y
# CONFIG_CHIP_STM32_USARTV2 is not set
# CONFIG_CHIP_STM32_SPIV1_SPI1_ENABLE is not set
# CONFIG_CHIP_STM32_SPIV1_SPI2_ENABLE is not set
CONFIG_CHIP_STM32_SPIV1_HAS_SPI1=y
CONFIG_CHIP_STM32_SPIV1_HAS_SPI2=y
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI3 is not set
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI4 is not set
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI5 is not set
# CONFIG_CHIP_STM32_SPIV1_HAS_SPI6 is not set
# CONFIG_CHIP_STM32_USARTV1_USART1_ENABLE is not set
# CONFIG_CHIP_STM32_USARTV1_USART2_ENABLE is not set
# CONFIG_CHIP_STM32_USARTV1_USART3_ENABLE is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_CR1_OVER8_BIT is not set
CONFIG_CHIP_STM32_USARTV1_HAS_USART1=y
CONFIG_CHIP_STM32_USARTV1_HAS_USART2=y
CONFIG_CHIP_STM32_USARTV1_HAS_USART3=y
# CONFIG_CHIP_STM32_USARTV1_HAS_UART4 is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_UART5 is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_USART6 is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_UART7 is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_UART8 is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_UART9 is not set
# CONFIG_CHIP_STM32_USARTV1_HAS_UART10 is not set

#
# Generic chip options
#
# CONFIG_ARCHITECTURE_ARMV6_M is not set
CONFIG_ARCHITECTURE_ARMV7_M=y
CONFIG_ARCHITECTURE_STACK_ALIGNMENT=8
CONFIG_TOOLCHAIN_PREFIX="arm-none-eabi-"
CONFIG_ARCHITECTURE_FLAGS="-mcpu=cortex-m3 -mthumb"

#
# ARMv7-M architecture options
#
CONFIG_ARCHITECTURE_ARMV7_M_KERNEL_BASEPRI=0
CONFIG_ARCHITECTURE_ARM_CORTEX_M3=y
CONFIG_ARCHITECTURE_ARM_CORTEX_M3_R1P1=y
# CONFIG_ARCHITECTURE_ARM_CORTEX_M3_R2P0 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M3_R2P1 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M4 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M4_R0P0 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M4_R0P1 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M7 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M7_R1P0 is not set
# CONFIG_ARCHITECTURE_ARM_CORTEX_M7_R1P1 is not set
# CONFIG_ARCHITECTURE_HAS_FPV5_D16 is not set
CONFIG_ARCHITECTURE_ARMV6_M_ARMV7_M_MAIN_STACK_SIZE=1024
CONFIG_ARCHITECTURE_INCLUDES="source/architecture/ARM/ARMv6-M-ARMv7-M/include"

#
# Generic architecture options
#
# CONFIG_ARCHITECTURE_ASCENDING_STACK is not set
# CONFIG_ARCHITECTURE_EMPTY_STACK is not set
# CONFIG_ARCHITECTURE_HAS_FPU is not set
CONFIG_ARCHITECTURE_ARM=y
# CONFIG_CHIP_HAS_LFBGA100 is not set
# CONFIG_CHIP_HAS_LFBGA144 is not set
# CONFIG_CHIP_HAS_LQFP32 is not set
# CONFIG_CHIP_HAS_LQFP48 is not set
CONFIG_CHIP_HAS_LQFP64=y
# CONFIG_CHIP_HAS_LQFP100 is not set
# CONFIG_CHIP_HAS_LQFP144 is not set
# CONFIG_CHIP_HAS_LQFP176 is not set
# CONFIG_CHIP_HAS_LQFP208 is not set
CONFIG_CHIP_HAS_TFBGA64=y
# CONFIG_CHIP_HAS_TFBGA216 is not set
# CONFIG_CHIP_HAS_TSSOP20 is not set
# CONFIG_CHIP_HAS_UFBGA64 is not set
# CONFIG_CHIP_HAS_UFBGA100 is not set
# CONFIG_CHIP_HAS_UFBGA144 is not set
# CONFIG_CHIP_HAS_UFBGA169 is not set
# CONFIG_CHIP_HAS_UFBGA176 is not set
# CONFIG_CHIP_HAS_UFQFPN28 is not set
# CONFIG_CHIP_HAS_UFQFPN32 is not set
# CONFIG_CHIP_HAS_UFQFPN48 is not set
# CONFIG_CHIP_HAS_VFQFPN36 is not set
# CONFIG_CHIP_HAS_WLCSP25 is not set
# CONFIG_CHIP_HAS_WLCSP36 is not set
# CONFIG_CHIP_HAS_WLCSP49 is not set
# CONFIG_CHIP_HAS_WLCSP64 is not set
# CONFIG_CHIP_HAS_WLCSP81 is not set
# CONFIG_CHIP_HAS_WLCSP90 is not set
# CONFIG_CHIP_HAS_WLCSP143 is not set
# CONFIG_CHIP_HAS_WLCSP168 is not set
# CONFIG_CHIP_LFBGA100 is not set
# CONFIG_CHIP_LFBGA144 is not set
# CONFIG_CHIP_LQFP32 is not set
# CONFIG_CHIP_LQFP48 is not set
CONFIG_CHIP_LQFP64=y
# CONFIG_CHIP_LQFP100 is not set
# CONFIG_CHIP_LQFP144 is not set
# CONFIG_CHIP_LQFP176 is not set
# CONFIG_CHIP_LQFP208 is not set
# CONFIG_CHIP_TFBGA64 is not set
# CONFIG_CHIP_TFBGA216 is not set
# CONFIG_CHIP_TSSOP20 is not set
# CONFIG_CHIP_UFBGA64 is not set
# CONFIG_CHIP_UFBGA100 is not set
# CONFIG_CHIP_UFBGA144 is not set
# CONFIG_CHIP_UFBGA169 is not set
# CONFIG_CHIP_UFBGA176 is not set
# CONFIG_CHIP_UFQFPN28 is not set
# CONFIG_CHIP_UFQFPN32 is not set
# CONFIG_CHIP_UFQFPN48 is not set
# CONFIG_CHIP_VFQFPN36 is not set
# CONFIG_CHIP_WLCSP25 is not set
# CONFIG_CHIP_WLCSP36 is not set
# CONFIG_CHIP_WLCSP49 is not set
# CONFIG_CHIP_WLCSP64 is not set
# CONFIG_CHIP_WLCSP81 is not set
# CONFIG_CHIP_WLCSP90 is not set
# CONFIG_CHIP_WLCSP143 is not set
# CONFIG_CHIP_WLCSP168 is not set
CONFIG_CHIP_PACKAGE="LQFP64"

#
# Scheduler configuration
#
CONFIG_TICK_FREQUENCY=1000
CONFIG_ROUND_ROBIN_FREQUENCY=10
CONFIG_THREAD_DETACH_ENABLE=y

#
# main() thread options
#
CONFIG_MAIN_THREAD_STACK_SIZE=4096
CONFIG_MAIN_THREAD_PRIORITY=127
CONFIG_MAIN_THREAD_CAN_RECEIVE_SIGNALS=y
CONFIG_MAIN_THREAD_QUEUED_SIGNALS=8
CONFIG_MAIN_THREAD_SIGNAL_ACTIONS=8

#
# Runtime checks
#
CONFIG_CHECK_FUNCTION_CONTEXT_ENABLE=y
CONFIG_CHECK_STACK_POINTER_RANGE_CONTEXT_SWITCH_ENABLE=y
CONFIG_CHECK_STACK_POINTER_RANGE_SYSTEM_TICK_ENABLE=y
CONFIG_CHECK_STACK_GUARD_CONTEXT_SWITCH_ENABLE=y
CONFIG_CHECK_STACK_GUARD_SYSTEM_TICK_ENABLE=y
CONFIG_STACK_GUARD_SIZE=32

#
# Applications configuration
#
CONFIG_TEST_APPLICATION_ENABLE=y

#
# Build configuration
#
# CONFIG_BUILD_OPTIMIZATION_O0 is not set
# CONFIG_BUILD_OPTIMIZATION_O1 is not set
CONFIG_BUILD_OPTIMIZATION_O2=y
# CONFIG_BUILD_OPTIMIZATION_O3 is not set
# CONFIG_BUILD_OPTIMIZATION_OS is not set
# CONFIG_BUILD_OPTIMIZATION_OG is not set
CONFIG_DEBUGGING_INFORMATION_ENABLE=y
CONFIG_ASSERT_ENABLE=y
# CONFIG_LDSCRIPT_ROM_SIZE_MANUAL_CONFIGURATION is not set
CONFIG_LDSCRIPT_ROM_BEGIN=0
CONFIG_LDSCRIPT_ROM_END=131072
CONFIG_BUILD_OPTIMIZATION="-O2"
CONFIG_DEBUGGING_INFORMATION_COMPILATION="-g -ggdb3"
CONFIG_DEBUGGING_INFORMATION_LINKING="-g"
CONFIG_ASSERT=""
