################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/ch32v30x_it.c \
../User/main.c \
../User/system_ch32v30x.c 

OBJS += \
./User/ch32v30x_it.o \
./User/main.o \
./User/system_ch32v30x.o 

C_DEPS += \
./User/ch32v30x_it.d \
./User/main.d \
./User/system_ch32v30x.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-embed-gcc -march=rv32imafcxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized  -g -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\Debug" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\Core" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\User" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\Peripheral\inc" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\arch\risc-v\common\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\arch\risc-v\common" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\arch\risc-v\rv32\gcc" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\core\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\core" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\hal\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\hal" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\pm\include" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\kernel\pm" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\TOS_CONFIG" -I"C:\MRS_DATA\workspace\JSInterpreter-TencentOS\TencentOS_Tiny\tos_js" -I"C:\Users\a1885\scoop\apps\gcc\current\include" -std=gnu17 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

