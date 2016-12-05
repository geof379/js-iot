/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <zephyr.h>

#include <misc/printk.h>
#define PRINT           printk
#include <sys_clock.h>

//#define SLEEPTICKS	SECONDS(1)

#define INTERVAL  200	// measure every 2ms
#define SLEEPTICKS (INTERVAL * sys_clock_ticks_per_sec / 1000)

/*
 * @file
 * @brief Hello World demo
 * Nanokernel version of hello world demo
 */


void main(void)
{
	struct nano_timer timer;
	void *timer_data[1];
	
	nano_timer_init(&timer, timer_data);

	int v1 = 0;
	int v2 = 100;
	while(1) {
		PRINT("{\"ch-1\": %d, \"ch-2\": %d}\n", v1++, v2++);
		nano_timer_start(&timer, SLEEPTICKS);
		nano_timer_test(&timer, TICKS_UNLIMITED);
	}
}

