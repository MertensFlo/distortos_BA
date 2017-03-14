/**
 * \file
 * \brief Definition of LEDs for STM32F4DISCOVERY
 *
 * \author Copyright (C) 2014-2017 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 * \author Copyright (C) 2017 Cezary Gapinski cezary.gapinski@gmail.com
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * \warning
 * Automatically generated file - do not edit!
 *
 * \date 2017-03-15 17:37:30
 */

#include "distortos/board/leds.hpp"

#ifdef CONFIG_BOARD_LEDS_ENABLE

#include "distortos/chip/ChipOutputPin.hpp"

namespace distortos
{

namespace board
{

/*---------------------------------------------------------------------------------------------------------------------+
| global objects
+---------------------------------------------------------------------------------------------------------------------*/

chip::ChipOutputPin leds[totalLeds]
{
#if DISTORTOS_BOARD_LD3_LED_ENABLE == 1
		chip::ChipOutputPin{chip::Pin::pd13, false, chip::PinOutputSpeed::low, chip::PinPull::none, false, false},
#endif	// DISTORTOS_BOARD_LD3_LED_ENABLE == 1
#if DISTORTOS_BOARD_LD4_LED_ENABLE == 1
		chip::ChipOutputPin{chip::Pin::pd12, false, chip::PinOutputSpeed::low, chip::PinPull::none, false, false},
#endif	// DISTORTOS_BOARD_LD4_LED_ENABLE == 1
#if DISTORTOS_BOARD_LD5_LED_ENABLE == 1
		chip::ChipOutputPin{chip::Pin::pd14, false, chip::PinOutputSpeed::low, chip::PinPull::none, false, false},
#endif	// DISTORTOS_BOARD_LD5_LED_ENABLE == 1
#if DISTORTOS_BOARD_LD6_LED_ENABLE == 1
		chip::ChipOutputPin{chip::Pin::pd15, false, chip::PinOutputSpeed::low, chip::PinPull::none, false, false},
#endif	// DISTORTOS_BOARD_LD6_LED_ENABLE == 1
};

}	// namespace board

}	// namespace distortos

#endif	// def CONFIG_BOARD_LEDS_ENABLE
