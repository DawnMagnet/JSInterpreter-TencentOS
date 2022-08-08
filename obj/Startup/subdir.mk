################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Startup/startup_ch32v30x.S 

OBJS += \
./Startup/startup_ch32v30x.o 

S_UPPER_DEPS += \
./Startup/startup_ch32v30x.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.S
	@	@	riscv-none-embed-gcc -march=rv32imafcxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -x assembler-with-cpp -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\Startup" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\arch\risc-v\common\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\arch\risc-v\rv32\gcc" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\core\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\hal\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\pm\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\TOS_CONFIG" -I"C:\Users\a1885\scoop\apps\gcc\current\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\tos_js" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

