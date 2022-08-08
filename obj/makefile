################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include TencentOS_Tiny/tos_js/subdir.mk
-include TencentOS_Tiny/kernel/pm/subdir.mk
-include TencentOS_Tiny/kernel/core/subdir.mk
-include TencentOS_Tiny/arch/risc-v/rv32/gcc/subdir.mk
-include TencentOS_Tiny/arch/risc-v/common/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
JSInterpreter-TencentOS.hex \

SECONDARY_LIST += \
JSInterpreter-TencentOS.lst \

SECONDARY_SIZE += \
JSInterpreter-TencentOS.siz \


# 所有目标
all: JSInterpreter-TencentOS.elf secondary-outputs

# 工具调用
JSInterpreter-TencentOS.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imafcxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -T "C:\MRS_DATA\workspace\JSInterpreter-TencentOS\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"JSInterpreter-TencentOS.map" --specs=nano.specs -u _printf_float -u _scanf_float --specs=nosys.specs -o "JSInterpreter-TencentOS.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
JSInterpreter-TencentOS.hex: JSInterpreter-TencentOS.elf
	@	riscv-none-embed-objcopy -O ihex "JSInterpreter-TencentOS.elf"  "JSInterpreter-TencentOS.hex"
	@	@
JSInterpreter-TencentOS.lst: JSInterpreter-TencentOS.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "JSInterpreter-TencentOS.elf" > "JSInterpreter-TencentOS.lst"
	@	@
JSInterpreter-TencentOS.siz: JSInterpreter-TencentOS.elf
	@	riscv-none-embed-size --format=berkeley "JSInterpreter-TencentOS.elf"
	@	@
# 其他目标
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) JSInterpreter-TencentOS.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
