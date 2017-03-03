/**
 * \file
 * \brief Declaration of buttons for NUCLEO-F103RB
 *
 * \author Copyright (C) 2016 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#ifndef SOURCE_BOARD_STM32_STM32F1_NUCLEO_F103RB_INCLUDE_DISTORTOS_BOARD_BUTTONS_HPP_
#define SOURCE_BOARD_STM32_STM32F1_NUCLEO_F103RB_INCLUDE_DISTORTOS_BOARD_BUTTONS_HPP_

#include "distortos/chip/STM32-GPIOv1.hpp"

#include <array>

namespace distortos
{

#ifdef CONFIG_BOARD_BUTTONS_ENABLE

namespace chip
{

class ChipInputPin;

}	// namespace chip

#endif	// def CONFIG_BOARD_BUTTONS_ENABLE

namespace board
{

/*---------------------------------------------------------------------------------------------------------------------+
| button indexes
+---------------------------------------------------------------------------------------------------------------------*/

enum ButtonIndexes
{
#ifdef CONFIG_CHIP_STM32_GPIOV1_GPIOC_ENABLE
		/// index of B1 button
		b1ButtonIndex,
#endif	// def CONFIG_CHIP_STM32_GPIOV1_GPIOC_ENABLE
		/// total number of buttons on the board
		totalButtons
};

#ifdef CONFIG_BOARD_BUTTONS_ENABLE

/*---------------------------------------------------------------------------------------------------------------------+
| indexed access to button objects
+---------------------------------------------------------------------------------------------------------------------*/

/// array with all button objects
extern const chip::ChipInputPin buttons[totalButtons];

#endif	// def CONFIG_BOARD_BUTTONS_ENABLE

}	// namespace board

}	// namespace distortos

#endif	// SOURCE_BOARD_STM32_STM32F1_NUCLEO_F103RB_INCLUDE_DISTORTOS_BOARD_BUTTONS_HPP_
