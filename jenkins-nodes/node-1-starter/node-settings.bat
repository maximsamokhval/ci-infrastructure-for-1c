SET node_name=ubuntu-interactive-1
SET version_of_1c_platform_with_underscores=8_3_15_1656
SET version_of_vm_os_with_underscore=19_04
SET version_of_postgresql_with_underscores=10_10_4

REM Заменить на имя Вашего сервера
if "%computername%"=="SERVER-HOSTNAME" (
goto :working_server_config
) else if "%computername%"=="HOST" (
goto :development_config
) else (
goto :end
)

:working_server_config
REM Заменить на имя Вашего контроллера
SET host_phisical_adapter_name_for_bridge_connection=NVIDIA nForce (Networking Controller)
SET ram_memory_size_mb=6144
SET cpu_count=3
goto :end

:development_config
REM Заменить на Ваш IP-адрес, если Linux-машина не видит хостовую по имени компьютера
SET host_machine_ip_or_hostname=192.168.1.64
REM Заменить на имя Вашего контроллера
SET host_phisical_adapter_name_for_bridge_connection=Realtek PCIe GBE Family Controller
SET ram_memory_size_mb=2048
SET cpu_count=2
goto :end

:end
