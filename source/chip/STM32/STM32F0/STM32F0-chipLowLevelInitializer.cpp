/**
 * \file
 * \brief Low-level chip initializer for STM32F0
 *
 * \author Copyright (C) 2016-2018 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#include "distortos/chip/clocks.hpp"
#include "distortos/chip/CMSIS-proxy.h"
#include "distortos/chip/STM32F0-FLASH.hpp"
#include "distortos/chip/STM32F0-RCC.hpp"

#include "distortos/BIND_LOW_LEVEL_INITIALIZER.h"

namespace distortos
{

namespace chip
{

namespace
{

/*---------------------------------------------------------------------------------------------------------------------+
| local functions
+---------------------------------------------------------------------------------------------------------------------*/

/**
 * \brief Low-level chip initializer for STM32F0
 *
 * This function is called before constructors for global and static objects via BIND_LOW_LEVEL_INITIALIZER().
 */

void chipLowLevelInitializer()
{
#ifdef CONFIG_CHIP_STM32F0_FLASH_PREFETCH_ENABLE
	configurePrefetchBuffer(true);
#else	// !def CONFIG_CHIP_STM32F0_FLASH_PREFETCH_ENABLE
	configurePrefetchBuffer(false);
#endif	// !def CONFIG_CHIP_STM32F0_FLASH_PREFETCH_ENABLE

#ifdef CONFIG_CHIP_STM32F0_STANDARD_CLOCK_CONFIGURATION_ENABLE

#ifdef CONFIG_CHIP_STM32F0_RCC_HSE_ENABLE

#ifdef CONFIG_CHIP_STM32F0_RCC_HSE_CLOCK_BYPASS
	enableHse(true);
#else	// !def CONFIG_CHIP_STM32F0_RCC_HSE_CLOCK_BYPASS
	enableHse(false);
#endif	// !def CONFIG_CHIP_STM32F0_RCC_HSE_CLOCK_BYPASS

#endif	// def CONFIG_CHIP_STM32F0_RCC_HSE_ENABLE

#ifdef CONFIG_CHIP_STM32F0_RCC_HSI48_ENABLE
	enableHsi48();
#endif	// def CONFIG_CHIP_STM32F0_RCC_HSI48_ENABLE

#ifdef CONFIG_CHIP_STM32F0_RCC_PLL_ENABLE

#if defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSIPREDIV) || defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSEPREDIV) || \
		defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSI48PREDIV)
	configurePrediv(CONFIG_CHIP_STM32F0_RCC_PREDIV);
#endif	// defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSIPREDIV) || defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSEPREDIV) ||
		// defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSI48PREDIV)

#if defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSIDIV2)
	enablePll(PllClockSource::hsiDiv2, CONFIG_CHIP_STM32F0_RCC_PLLMUL);
#elif defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSIPREDIV)
	enablePll(PllClockSource::hsiPrediv, CONFIG_CHIP_STM32F0_RCC_PLLMUL);
#elif defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSEPREDIV)
	enablePll(PllClockSource::hsePrediv, CONFIG_CHIP_STM32F0_RCC_PLLMUL);
#elif defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSI48PREDIV)
	enablePll(PllClockSource::hsi48Prediv, CONFIG_CHIP_STM32F0_RCC_PLLMUL);
#endif	// defined(CONFIG_CHIP_STM32F0_RCC_PLLSRC_HSI48PREDIV)

#endif	// def CONFIG_CHIP_STM32F0_RCC_PLL_ENABLE

	configureAhbClockDivider(CONFIG_CHIP_STM32F0_RCC_HPRE);
	configureApbClockDivider(CONFIG_CHIP_STM32F0_RCC_PPRE);

	constexpr uint8_t flashLatency {(sysclkFrequency - 1) / 24000000};
	static_assert(flashLatency <= maxFlashLatency, "Invalid flash latency!");
	configureFlashLatency(flashLatency);

#if defined(CONFIG_CHIP_STM32F0_RCC_SYSCLK_HSI)
	switchSystemClock(SystemClockSource::hsi);
#elif defined(CONFIG_CHIP_STM32F0_RCC_SYSCLK_HSE)
	switchSystemClock(SystemClockSource::hse);
#elif defined(CONFIG_CHIP_STM32F0_RCC_SYSCLK_PLL)
	switchSystemClock(SystemClockSource::pll);
#elif defined(CONFIG_CHIP_STM32F0_RCC_SYSCLK_HSI48)
	switchSystemClock(SystemClockSource::hsi48);
#endif	// defined(CONFIG_CHIP_STM32F0_RCC_SYSCLK_HSI48)

#endif	// def CONFIG_CHIP_STM32F0_STANDARD_CLOCK_CONFIGURATION_ENABLE

	RCC->AHBENR |=
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOA_ENABLE
			RCC_AHBENR_GPIOAEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOA_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOB_ENABLE
			RCC_AHBENR_GPIOBEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOB_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOC_ENABLE
			RCC_AHBENR_GPIOCEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOC_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOD_ENABLE
			RCC_AHBENR_GPIODEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOD_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOE_ENABLE
			RCC_AHBENR_GPIOEEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOE_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOF_ENABLE
			RCC_AHBENR_GPIOFEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOF_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOG_ENABLE
			RCC_AHBENR_GPIOGEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOG_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOH_ENABLE
			RCC_AHBENR_GPIOHEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOH_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOI_ENABLE
			RCC_AHBENR_GPIOIEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOI_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOJ_ENABLE
			RCC_AHBENR_GPIOJEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOJ_ENABLE
#ifdef CONFIG_CHIP_STM32_GPIO_V2_GPIOK_ENABLE
			RCC_AHBENR_GPIOKEN |
#endif	// def CONFIG_CHIP_STM32_GPIO_V2_GPIOK_ENABLE
			0;
}

BIND_LOW_LEVEL_INITIALIZER(40, chipLowLevelInitializer);

}	// namespace

}	// namespace chip

}	// namespace distortos
