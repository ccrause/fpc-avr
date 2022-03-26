unit mpu6050;

interface

uses
  i2c;

type
  TMPUGyroFullScale = (MPUGyro_250=0, MPUGyro_500, MPUGyro_1000, MPUGyro_2000);
  TMPUAccelFullScale = (MPUAccel_2g=0, MPUAccel_4g, MPUAccel_8g, MPUAccel_16g);
  TMPUClockSource = (MPUClockInternal=0, MPUClockXGyro, MPUClockYGyro,
                     MPUClockZGyro, MPUClockExt32K, MPUClockExt19M, MPUClockStop=7);
  TMPUExternalSync = (MPUExtSyncDisabled=0, MPUExtSyncTempOut, MPUExtSyncGyroXOut,
                      MPUExtSyncGyroYOut, MPUExtSyncGyroZOut, MPUExtSyncAccelXOut,
                      MPUExtSyncAccelYOut, MPUExtSyncAccelZOut);
  TMPUDLPFCfg = (MPUDLPF0=0, MPUDLPF1, MPUDLPF2, MPUDLPF3, MPUDLPF4, MPUDLPF5,
                 MPUDLPF6);

  { TMPU }
  TDataRecord = record
    ax, ay, az, t, gx, gy, gz: int16;
  end;

  Tesp_err = int8;

  TMPU = object
    i2cOK: boolean;
    procedure Initialize(Ai2c: TI2CMaster);
    procedure DMPInitialize();
    function testI2cConnection: boolean;
    function getData(out sensorData: TDataRecord{ax, ay, az, t, gx, gy, gz: int16}): boolean;
    function getAccelData(out ax, ay, az: int16): boolean;
    function getGyroData(out gx, gy, gz: int16): boolean;

    // TODO: provide single axis access methods
    procedure getGyroMaxScale(out max: TMPUGyroFullScale);
    procedure setGyroMaxScale(max: TMPUGyroFullScale);
    procedure getAccelMaxScale(var max: TMPUAccelFullScale);
    procedure setAccelMaxScale(max: TMPUAccelFullScale);

    procedure getAccelOffsets(out axOffset, ayOffset, azOffset: int16);
    procedure setAccelOffsets(const axOffset, ayOffset, azOffset: int16);

    procedure getGyroOffsets(out gxOffset, gyOffset, gzOffset: int16);
    procedure setGyroOffsets(const gxOffset, gyOffset, gzOffset: int16);

    procedure reset;
    procedure getSleepEnabled(out enabled: boolean);
    procedure setSleepEnabled(const enabled: boolean);

    procedure getClockSource(out src: TMPUClockSource);
    procedure setClockSource(const src: TMPUClockSource);

    procedure getMemoryBank(out bank: byte; out prefetchEnabled, userBank: boolean);
    procedure setMemoryBank(bank: byte; prefetchEnabled: boolean = false; userBank: boolean = false);
    procedure getMemoryStartAddress(out memAddr: byte);
    procedure setMemoryStartAddress(memAddr: byte);
    procedure readMemoryByte(out b: byte);
    procedure setIntEnabled(enabled: byte);
    function getOTPBankValid: boolean;
    procedure setSampleRate(rate: byte);
    procedure setExternalFrameSync(sync: TMPUExternalSync);
    procedure setDLPFMode(mode: TMPUDLPFCfg);
    function writeProgMemoryBlock(data: PByte; dataSize: uint16; bank,
      address: byte; verify: boolean): boolean;

    procedure setSlaveAddress(num, address: byte);
    procedure setI2CMasterModeEnabled(enabled: boolean);
    procedure resetI2CMaster;
    procedure setDMPConfig1(config: byte);
    procedure setDMPConfig2(config: byte);
    procedure setOTPBankValid(enabled: boolean);
    procedure setMotionDetectionThreshold(threshold: byte);
    procedure setZeroMotionDetectionThreshold(threshold: byte);
    procedure setMotionDetectionDuration(duration: byte);
    procedure setZeroMotionDetectionDuration(duration: byte);
    procedure setFIFOEnabled(enabled: boolean);
    procedure resetDMP;
    procedure setDMPEnabled(enabled: boolean);
    procedure resetFIFO;
    function getIntStatus: byte;

    function readMemoryBlock(data: PByte; dataSize: uint16; bank, address: byte): boolean;
    function dmpGetFIFOPacketSize: uint16;
    function getFIFOCount: uint16;
    procedure getFIFOBytes(data: PByte; size: uint16);
    procedure dmpGetQuaternion(data: puint32; packet: PByte);

    function writeMemoryBlock(data: PByte; dataSize: uint16; bank, address: byte; verify: boolean; progmem: boolean): boolean;
  private
    fi2c: TI2cMaster;
    dmpPacketSize: byte;
    procedure writeError(Msg: string);
    procedure writebits(const regAddr, bitstart, len, data: byte);
    procedure readbits(const regAddr, bitstart, len: byte; out data: byte);
    //function writeMemoryBlock(data: PByte; dataSize: uint16; bank, address: byte; verify: boolean): boolean;
  end;

  const
  MPU6050_ADDRESS_AD0_LOW = $68 shl 1;
  MPU6050_ADDRESS_AD0_HIGH = $69 shl 1;
  MPU6050_DEFAULT_ADDRESS = MPU6050_ADDRESS_AD0_LOW;
  MPU6050_RA_XG_OFFS_TC = $00;
  MPU6050_RA_YG_OFFS_TC = $01;
  MPU6050_RA_ZG_OFFS_TC = $02;
  MPU6050_RA_X_FINE_GAIN = $03;
  MPU6050_RA_Y_FINE_GAIN = $04;
  MPU6050_RA_Z_FINE_GAIN = $05;
  MPU6050_RA_XA_OFFS_H = $06;
  MPU6050_RA_XA_OFFS_L_TC = $07;
  MPU6050_RA_YA_OFFS_H = $08;
  MPU6050_RA_YA_OFFS_L_TC = $09;
  MPU6050_RA_ZA_OFFS_H = $0A;
  MPU6050_RA_ZA_OFFS_L_TC = $0B;
  MPU6050_RA_SELF_TEST_X = $0D;
  MPU6050_RA_SELF_TEST_Y = $0E;
  MPU6050_RA_SELF_TEST_Z = $0F;
  MPU6050_RA_SELF_TEST_A = $10;
  MPU6050_RA_XG_OFFS_USRH = $13;
  MPU6050_RA_XG_OFFS_USRL = $14;
  MPU6050_RA_YG_OFFS_USRH = $15;
  MPU6050_RA_YG_OFFS_USRL = $16;
  MPU6050_RA_ZG_OFFS_USRH = $17;
  MPU6050_RA_ZG_OFFS_USRL = $18;
  MPU6050_RA_SMPLRT_DIV = $19;
  MPU6050_RA_CONFIG = $1A;
  MPU6050_RA_GYRO_CONFIG = $1B;
  MPU6050_RA_ACCEL_CONFIG = $1C;
  MPU6050_RA_FF_THR = $1D;
  MPU6050_RA_FF_DUR = $1E;
  MPU6050_RA_MOT_THR = $1F;
  MPU6050_RA_MOT_DUR = $20;
  MPU6050_RA_ZRMOT_THR = $21;
  MPU6050_RA_ZRMOT_DUR = $22;
  MPU6050_RA_FIFO_EN = $23;
  MPU6050_RA_I2C_MST_CTRL = $24;
  MPU6050_RA_I2C_SLV0_ADDR = $25;
  MPU6050_RA_I2C_SLV0_REG = $26;
  MPU6050_RA_I2C_SLV0_CTRL = $27;
  MPU6050_RA_I2C_SLV1_ADDR = $28;
  MPU6050_RA_I2C_SLV1_REG = $29;
  MPU6050_RA_I2C_SLV1_CTRL = $2A;
  MPU6050_RA_I2C_SLV2_ADDR = $2B;
  MPU6050_RA_I2C_SLV2_REG = $2C;
  MPU6050_RA_I2C_SLV2_CTRL = $2D;
  MPU6050_RA_I2C_SLV3_ADDR = $2E;
  MPU6050_RA_I2C_SLV3_REG = $2F;
  MPU6050_RA_I2C_SLV3_CTRL = $30;
  MPU6050_RA_I2C_SLV4_ADDR = $31;
  MPU6050_RA_I2C_SLV4_REG = $32;
  MPU6050_RA_I2C_SLV4_DO = $33;
  MPU6050_RA_I2C_SLV4_CTRL = $34;
  MPU6050_RA_I2C_SLV4_DI = $35;
  MPU6050_RA_I2C_MST_STATUS = $36;
  MPU6050_RA_INT_PIN_CFG = $37;
  MPU6050_RA_INT_ENABLE = $38;
  MPU6050_RA_DMP_INT_STATUS = $39;
  MPU6050_RA_INT_STATUS = $3A;
  MPU6050_RA_ACCEL_XOUT_H = $3B;
  MPU6050_RA_ACCEL_XOUT_L = $3C;
  MPU6050_RA_ACCEL_YOUT_H = $3D;
  MPU6050_RA_ACCEL_YOUT_L = $3E;
  MPU6050_RA_ACCEL_ZOUT_H = $3F;
  MPU6050_RA_ACCEL_ZOUT_L = $40;
  MPU6050_RA_TEMP_OUT_H = $41;
  MPU6050_RA_TEMP_OUT_L = $42;
  MPU6050_RA_GYRO_XOUT_H = $43;
  MPU6050_RA_GYRO_XOUT_L = $44;
  MPU6050_RA_GYRO_YOUT_H = $45;
  MPU6050_RA_GYRO_YOUT_L = $46;
  MPU6050_RA_GYRO_ZOUT_H = $47;
  MPU6050_RA_GYRO_ZOUT_L = $48;
  MPU6050_RA_EXT_SENS_DATA_00 = $49;
  MPU6050_RA_EXT_SENS_DATA_01 = $4A;
  MPU6050_RA_EXT_SENS_DATA_02 = $4B;
  MPU6050_RA_EXT_SENS_DATA_03 = $4C;
  MPU6050_RA_EXT_SENS_DATA_04 = $4D;
  MPU6050_RA_EXT_SENS_DATA_05 = $4E;
  MPU6050_RA_EXT_SENS_DATA_06 = $4F;
  MPU6050_RA_EXT_SENS_DATA_07 = $50;
  MPU6050_RA_EXT_SENS_DATA_08 = $51;
  MPU6050_RA_EXT_SENS_DATA_09 = $52;
  MPU6050_RA_EXT_SENS_DATA_10 = $53;
  MPU6050_RA_EXT_SENS_DATA_11 = $54;
  MPU6050_RA_EXT_SENS_DATA_12 = $55;
  MPU6050_RA_EXT_SENS_DATA_13 = $56;
  MPU6050_RA_EXT_SENS_DATA_14 = $57;
  MPU6050_RA_EXT_SENS_DATA_15 = $58;
  MPU6050_RA_EXT_SENS_DATA_16 = $59;
  MPU6050_RA_EXT_SENS_DATA_17 = $5A;
  MPU6050_RA_EXT_SENS_DATA_18 = $5B;
  MPU6050_RA_EXT_SENS_DATA_19 = $5C;
  MPU6050_RA_EXT_SENS_DATA_20 = $5D;
  MPU6050_RA_EXT_SENS_DATA_21 = $5E;
  MPU6050_RA_EXT_SENS_DATA_22 = $5F;
  MPU6050_RA_EXT_SENS_DATA_23 = $60;
  MPU6050_RA_MOT_DETECT_STATUS = $61;
  MPU6050_RA_I2C_SLV0_DO = $63;
  MPU6050_RA_I2C_SLV1_DO = $64;
  MPU6050_RA_I2C_SLV2_DO = $65;
  MPU6050_RA_I2C_SLV3_DO = $66;
  MPU6050_RA_I2C_MST_DELAY_CTRL = $67;
  MPU6050_RA_SIGNAL_PATH_RESET = $68;
  MPU6050_RA_MOT_DETECT_CTRL = $69;
  MPU6050_RA_USER_CTRL = $6A;
  MPU6050_RA_PWR_MGMT_1 = $6B;
  MPU6050_RA_PWR_MGMT_2 = $6C;
  MPU6050_RA_BANK_SEL = $6D;
  MPU6050_RA_MEM_START_ADDR = $6E;
  MPU6050_RA_MEM_R_W = $6F;
  MPU6050_RA_DMP_CFG_1 = $70;
  MPU6050_RA_DMP_CFG_2 = $71;
  MPU6050_RA_FIFO_COUNTH = $72;
  MPU6050_RA_FIFO_COUNTL = $73;
  MPU6050_RA_FIFO_R_W = $74;
  MPU6050_RA_WHO_AM_I = $75;
  MPU6050_SELF_TEST_XA_1_BIT = $07;
  MPU6050_SELF_TEST_XA_1_LENGTH = $03;
  MPU6050_SELF_TEST_XA_2_BIT = $05;
  MPU6050_SELF_TEST_XA_2_LENGTH = $02;
  MPU6050_SELF_TEST_YA_1_BIT = $07;
  MPU6050_SELF_TEST_YA_1_LENGTH = $03;
  MPU6050_SELF_TEST_YA_2_BIT = $03;
  MPU6050_SELF_TEST_YA_2_LENGTH = $02;
  MPU6050_SELF_TEST_ZA_1_BIT = $07;
  MPU6050_SELF_TEST_ZA_1_LENGTH = $03;
  MPU6050_SELF_TEST_ZA_2_BIT = $01;
  MPU6050_SELF_TEST_ZA_2_LENGTH = $02;
  MPU6050_SELF_TEST_XG_1_BIT = $04;
  MPU6050_SELF_TEST_XG_1_LENGTH = $05;
  MPU6050_SELF_TEST_YG_1_BIT = $04;
  MPU6050_SELF_TEST_YG_1_LENGTH = $05;
  MPU6050_SELF_TEST_ZG_1_BIT = $04;
  MPU6050_SELF_TEST_ZG_1_LENGTH = $05;
  MPU6050_TC_PWR_MODE_BIT = 7;
  MPU6050_TC_OFFSET_BIT = 6;
  MPU6050_TC_OFFSET_LENGTH = 6;
  MPU6050_TC_OTP_BNK_VLD_BIT = 0;
  MPU6050_VDDIO_LEVEL_VLOGIC = 0;
  MPU6050_VDDIO_LEVEL_VDD = 1;
  MPU6050_CFG_EXT_SYNC_SET_BIT = 5;
  MPU6050_CFG_EXT_SYNC_SET_LENGTH = 3;
  MPU6050_CFG_DLPF_CFG_BIT = 2;
  MPU6050_CFG_DLPF_CFG_LENGTH = 3;
  MPU6050_EXT_SYNC_DISABLED = $0;
  MPU6050_EXT_SYNC_TEMP_OUT_L = $1;
  MPU6050_EXT_SYNC_GYRO_XOUT_L = $2;
  MPU6050_EXT_SYNC_GYRO_YOUT_L = $3;
  MPU6050_EXT_SYNC_GYRO_ZOUT_L = $4;
  MPU6050_EXT_SYNC_ACCEL_XOUT_L = $5;
  MPU6050_EXT_SYNC_ACCEL_YOUT_L = $6;
  MPU6050_EXT_SYNC_ACCEL_ZOUT_L = $7;
  MPU6050_DLPF_BW_256 = $00;
  MPU6050_DLPF_BW_188 = $01;
  MPU6050_DLPF_BW_98 = $02;
  MPU6050_DLPF_BW_42 = $03;
  MPU6050_DLPF_BW_20 = $04;
  MPU6050_DLPF_BW_10 = $05;
  MPU6050_DLPF_BW_5 = $06;
  MPU6050_GCONFIG_FS_SEL_BIT = 4;
  MPU6050_GCONFIG_FS_SEL_LENGTH = 2;
  MPU6050_GYRO_FS_250 = $00;
  MPU6050_GYRO_FS_500 = $01;
  MPU6050_GYRO_FS_1000 = $02;
  MPU6050_GYRO_FS_2000 = $03;
  MPU6050_ACONFIG_XA_ST_BIT = 7;
  MPU6050_ACONFIG_YA_ST_BIT = 6;
  MPU6050_ACONFIG_ZA_ST_BIT = 5;
  MPU6050_ACONFIG_AFS_SEL_BIT = 4;
  MPU6050_ACONFIG_AFS_SEL_LENGTH = 2;
  MPU6050_ACONFIG_ACCEL_HPF_BIT = 2;
  MPU6050_ACONFIG_ACCEL_HPF_LENGTH = 3;
  MPU6050_ACCEL_FS_2 = $00;
  MPU6050_ACCEL_FS_4 = $01;
  MPU6050_ACCEL_FS_8 = $02;
  MPU6050_ACCEL_FS_16 = $03;
  MPU6050_DHPF_RESET = $00;
  MPU6050_DHPF_5 = $01;
  MPU6050_DHPF_2P5 = $02;
  MPU6050_DHPF_1P25 = $03;
  MPU6050_DHPF_0P63 = $04;
  MPU6050_DHPF_HOLD = $07;
  MPU6050_TEMP_FIFO_EN_BIT = 7;
  MPU6050_XG_FIFO_EN_BIT = 6;
  MPU6050_YG_FIFO_EN_BIT = 5;
  MPU6050_ZG_FIFO_EN_BIT = 4;
  MPU6050_ACCEL_FIFO_EN_BIT = 3;
  MPU6050_SLV2_FIFO_EN_BIT = 2;
  MPU6050_SLV1_FIFO_EN_BIT = 1;
  MPU6050_SLV0_FIFO_EN_BIT = 0;
  MPU6050_MULT_MST_EN_BIT = 7;
  MPU6050_WAIT_FOR_ES_BIT = 6;
  MPU6050_SLV_3_FIFO_EN_BIT = 5;
  MPU6050_I2C_MST_P_NSR_BIT = 4;
  MPU6050_I2C_MST_CLK_BIT = 3;
  MPU6050_I2C_MST_CLK_LENGTH = 4;
  MPU6050_CLOCK_DIV_348 = $0;
  MPU6050_CLOCK_DIV_333 = $1;
  MPU6050_CLOCK_DIV_320 = $2;
  MPU6050_CLOCK_DIV_308 = $3;
  MPU6050_CLOCK_DIV_296 = $4;
  MPU6050_CLOCK_DIV_286 = $5;
  MPU6050_CLOCK_DIV_276 = $6;
  MPU6050_CLOCK_DIV_267 = $7;
  MPU6050_CLOCK_DIV_258 = $8;
  MPU6050_CLOCK_DIV_500 = $9;
  MPU6050_CLOCK_DIV_471 = $A;
  MPU6050_CLOCK_DIV_444 = $B;
  MPU6050_CLOCK_DIV_421 = $C;
  MPU6050_CLOCK_DIV_400 = $D;
  MPU6050_CLOCK_DIV_381 = $E;
  MPU6050_CLOCK_DIV_364 = $F;
  MPU6050_I2C_SLV_RW_BIT = 7;
  MPU6050_I2C_SLV_ADDR_BIT = 6;
  MPU6050_I2C_SLV_ADDR_LENGTH = 7;
  MPU6050_I2C_SLV_EN_BIT = 7;
  MPU6050_I2C_SLV_BYTE_SW_BIT = 6;
  MPU6050_I2C_SLV_REG_DIS_BIT = 5;
  MPU6050_I2C_SLV_GRP_BIT = 4;
  MPU6050_I2C_SLV_LEN_BIT = 3;
  MPU6050_I2C_SLV_LEN_LENGTH = 4;
  MPU6050_I2C_SLV4_RW_BIT = 7;
  MPU6050_I2C_SLV4_ADDR_BIT = 6;
  MPU6050_I2C_SLV4_ADDR_LENGTH = 7;
  MPU6050_I2C_SLV4_EN_BIT = 7;
  MPU6050_I2C_SLV4_INT_EN_BIT = 6;
  MPU6050_I2C_SLV4_REG_DIS_BIT = 5;
  MPU6050_I2C_SLV4_MST_DLY_BIT = 4;
  MPU6050_I2C_SLV4_MST_DLY_LENGTH = 5;
  MPU6050_MST_PASS_THROUGH_BIT = 7;
  MPU6050_MST_I2C_SLV4_DONE_BIT = 6;
  MPU6050_MST_I2C_LOST_ARB_BIT = 5;
  MPU6050_MST_I2C_SLV4_NACK_BIT = 4;
  MPU6050_MST_I2C_SLV3_NACK_BIT = 3;
  MPU6050_MST_I2C_SLV2_NACK_BIT = 2;
  MPU6050_MST_I2C_SLV1_NACK_BIT = 1;
  MPU6050_MST_I2C_SLV0_NACK_BIT = 0;
  MPU6050_INTCFG_INT_LEVEL_BIT = 7;
  MPU6050_INTCFG_INT_OPEN_BIT = 6;
  MPU6050_INTCFG_LATCH_INT_EN_BIT = 5;
  MPU6050_INTCFG_INT_RD_CLEAR_BIT = 4;
  MPU6050_INTCFG_FSYNC_INT_LEVEL_BIT = 3;
  MPU6050_INTCFG_FSYNC_INT_EN_BIT = 2;
  MPU6050_INTCFG_I2C_BYPASS_EN_BIT = 1;
  MPU6050_INTCFG_CLKOUT_EN_BIT = 0;
  MPU6050_INTMODE_ACTIVEHIGH = $00;
  MPU6050_INTMODE_ACTIVELOW = $01;
  MPU6050_INTDRV_PUSHPULL = $00;
  MPU6050_INTDRV_OPENDRAIN = $01;
  MPU6050_INTLATCH_50USPULSE = $00;
  MPU6050_INTLATCH_WAITCLEAR = $01;
  MPU6050_INTCLEAR_STATUSREAD = $00;
  MPU6050_INTCLEAR_ANYREAD = $01;
  MPU6050_INTERRUPT_FF_BIT = 7;
  MPU6050_INTERRUPT_MOT_BIT = 6;
  MPU6050_INTERRUPT_ZMOT_BIT = 5;
  MPU6050_INTERRUPT_FIFO_OFLOW_BIT = 4;
  MPU6050_INTERRUPT_I2C_MST_INT_BIT = 3;
  MPU6050_INTERRUPT_PLL_RDY_INT_BIT = 2;
  MPU6050_INTERRUPT_DMP_INT_BIT = 1;
  MPU6050_INTERRUPT_DATA_RDY_BIT = 0;
  MPU6050_DMPINT_5_BIT = 5;
  MPU6050_DMPINT_4_BIT = 4;
  MPU6050_DMPINT_3_BIT = 3;
  MPU6050_DMPINT_2_BIT = 2;
  MPU6050_DMPINT_1_BIT = 1;
  MPU6050_DMPINT_0_BIT = 0;
  MPU6050_MOTION_MOT_XNEG_BIT = 7;
  MPU6050_MOTION_MOT_XPOS_BIT = 6;
  MPU6050_MOTION_MOT_YNEG_BIT = 5;
  MPU6050_MOTION_MOT_YPOS_BIT = 4;
  MPU6050_MOTION_MOT_ZNEG_BIT = 3;
  MPU6050_MOTION_MOT_ZPOS_BIT = 2;
  MPU6050_MOTION_MOT_ZRMOT_BIT = 0;
  MPU6050_DELAYCTRL_DELAY_ES_SHADOW_BIT = 7;
  MPU6050_DELAYCTRL_I2C_SLV4_DLY_EN_BIT = 4;
  MPU6050_DELAYCTRL_I2C_SLV3_DLY_EN_BIT = 3;
  MPU6050_DELAYCTRL_I2C_SLV2_DLY_EN_BIT = 2;
  MPU6050_DELAYCTRL_I2C_SLV1_DLY_EN_BIT = 1;
  MPU6050_DELAYCTRL_I2C_SLV0_DLY_EN_BIT = 0;
  MPU6050_PATHRESET_GYRO_RESET_BIT = 2;
  MPU6050_PATHRESET_ACCEL_RESET_BIT = 1;
  MPU6050_PATHRESET_TEMP_RESET_BIT = 0;
  MPU6050_DETECT_ACCEL_ON_DELAY_BIT = 5;
  MPU6050_DETECT_ACCEL_ON_DELAY_LENGTH = 2;
  MPU6050_DETECT_FF_COUNT_BIT = 3;
  MPU6050_DETECT_FF_COUNT_LENGTH = 2;
  MPU6050_DETECT_MOT_COUNT_BIT = 1;
  MPU6050_DETECT_MOT_COUNT_LENGTH = 2;
  MPU6050_DETECT_DECREMENT_RESET = $0;
  MPU6050_DETECT_DECREMENT_1 = $1;
  MPU6050_DETECT_DECREMENT_2 = $2;
  MPU6050_DETECT_DECREMENT_4 = $3;
  MPU6050_USERCTRL_DMP_EN_BIT = 7;
  MPU6050_USERCTRL_FIFO_EN_BIT = 6;
  MPU6050_USERCTRL_I2C_MST_EN_BIT = 5;
  MPU6050_USERCTRL_I2C_IF_DIS_BIT = 4;
  MPU6050_USERCTRL_DMP_RESET_BIT = 3;
  MPU6050_USERCTRL_FIFO_RESET_BIT = 2;
  MPU6050_USERCTRL_I2C_MST_RESET_BIT = 1;
  MPU6050_USERCTRL_SIG_COND_RESET_BIT = 0;
  MPU6050_PWR1_DEVICE_RESET_BIT = 7;
  MPU6050_PWR1_SLEEP_BIT = 6;
  MPU6050_PWR1_CYCLE_BIT = 5;
  MPU6050_PWR1_TEMP_DIS_BIT = 3;
  MPU6050_PWR1_CLKSEL_BIT = 2;
  MPU6050_PWR1_CLKSEL_LENGTH = 3;
  MPU6050_CLOCK_INTERNAL = $00;
  MPU6050_CLOCK_PLL_XGYRO = $01;
  MPU6050_CLOCK_PLL_YGYRO = $02;
  MPU6050_CLOCK_PLL_ZGYRO = $03;
  MPU6050_CLOCK_PLL_EXT32K = $04;
  MPU6050_CLOCK_PLL_EXT19M = $05;
  MPU6050_CLOCK_KEEP_RESET = $07;
  MPU6050_PWR2_LP_WAKE_CTRL_BIT = 7;
  MPU6050_PWR2_LP_WAKE_CTRL_LENGTH = 2;
  MPU6050_PWR2_STBY_XA_BIT = 5;
  MPU6050_PWR2_STBY_YA_BIT = 4;
  MPU6050_PWR2_STBY_ZA_BIT = 3;
  MPU6050_PWR2_STBY_XG_BIT = 2;
  MPU6050_PWR2_STBY_YG_BIT = 1;
  MPU6050_PWR2_STBY_ZG_BIT = 0;
  MPU6050_WAKE_FREQ_1P25 = $0;
  MPU6050_WAKE_FREQ_2P5 = $1;
  MPU6050_WAKE_FREQ_5 = $2;
  MPU6050_WAKE_FREQ_10 = $3;
  MPU6050_BANKSEL_PRFTCH_EN_BIT = 6;
  MPU6050_BANKSEL_CFG_USER_BANK_BIT = 5;
  MPU6050_BANKSEL_MEM_SEL_BIT = 4;
  MPU6050_BANKSEL_MEM_SEL_LENGTH = 5;
  MPU6050_WHO_AM_I_BIT = 6;
  MPU6050_WHO_AM_I_LENGTH = 6;
  MPU6050_DMP_MEMORY_BANKS = 8;
  MPU6050_DMP_MEMORY_BANK_SIZE = 256;
  MPU6050_DMP_MEMORY_CHUNK_SIZE = 16;

  // Update rate is 200 Hz / (1 + divisor)
  // https://github.com/jrowberg/i2cdevlib/issues/93#issuecomment-80985222
  // 1 = 100 Hz (default)
  // 3 = 50 Hz
  // 9 = 20 Hz
  MPU6050_DMP_FIFO_RATE_DIVISOR  = 9;

implementation

uses
  delay, uart;

const
  MPU6050_DMP_CODE_SIZE = 1929;
  dmpMemory: array[0..MPU6050_DMP_CODE_SIZE-1] of byte = (
	{ bank # 0 }
	$FB, $00, $00, $3E, $00, $0B, $00, $36, $00, $01, $00, $02, $00, $03, $00, $00,
	$00, $65, $00, $54, $FF, $EF, $00, $00, $FA, $80, $00, $0B, $12, $82, $00, $01,
	$00, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $28, $00, $00, $FF, $FF, $45, $81, $FF, $FF, $FA, $72, $00, $00, $00, $00,
	$00, $00, $03, $E8, $00, $00, $00, $01, $00, $01, $7F, $FF, $FF, $FE, $80, $01,
	$00, $1B, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $40, $00, $00, $40, $00, $00, $00, $02, $CB, $47, $A2, $20, $00, $00, $00,
	$20, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $60, $00, $00, $00,
	$41, $FF, $00, $00, $00, $00, $0B, $2A, $00, $00, $16, $55, $00, $00, $21, $82,
	$FD, $87, $26, $50, $FD, $80, $00, $00, $00, $1F, $00, $00, $00, $05, $80, $00,
	$00, $00, $00, $00, $00, $01, $00, $00, $00, $02, $00, $00, $00, $03, $00, $00,
	$40, $00, $00, $00, $00, $00, $04, $6F, $00, $02, $65, $32, $00, $00, $5E, $C0,
	$40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$FB, $8C, $6F, $5D, $FD, $5D, $08, $D9, $00, $7C, $73, $3B, $00, $6C, $12, $CC,
	$32, $00, $13, $9D, $32, $00, $D0, $D6, $32, $00, $08, $00, $40, $00, $01, $F4,
	$FF, $E6, $80, $79, $02, $00, $00, $00, $00, $00, $D0, $D6, $00, $00, $27, $10,
	{ bank # 1 }
	$FB, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $00,
	$00, $00, $FA, $36, $FF, $BC, $30, $8E, $00, $05, $FB, $F0, $FF, $D9, $5B, $C8,
	$FF, $D0, $9A, $BE, $00, $00, $10, $A9, $FF, $F4, $1E, $B2, $00, $CE, $BB, $F7,
	$00, $00, $00, $01, $00, $00, $00, $04, $00, $02, $00, $02, $02, $00, $00, $0C,
	$FF, $C2, $80, $00, $00, $01, $80, $00, $00, $CF, $80, $00, $40, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $00, $00, $00, $00, $14,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$09, $23, $A1, $35, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $03, $3F, $68, $B6, $79, $35, $28, $BC, $C6, $7E, $D1, $6C,
	$80, $00, $FF, $FF, $40, $00, $00, $00, $00, $00, $B2, $6A, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3F, $F0, $00, $00, $00, $30,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $00,
	$00, $00, $25, $4D, $00, $2F, $70, $6D, $00, $00, $05, $AE, $00, $0C, $02, $D0,
	{ bank # 2 }
	$00, $00, $00, $00, $00, $65, $00, $54, $FF, $EF, $00, $00, $00, $00, $00, $00,
	$00, $00, $01, $00, $00, $44, $00, $01, $00, $05, $8B, $C1, $00, $00, $01, $00,   // byte $17 sets update freq. of DMP
	$00, $00, $00, $00, $00, $65, $00, $00, $00, $54, $00, $00, $FF, $EF, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $01, $00, $00, $00, $02, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $1B, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $1B, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	$00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
	{ bank # 3 }
	$D8, $DC, $BA, $A2, $F1, $DE, $B2, $B8, $B4, $A8, $81, $91, $F7, $4A, $90, $7F,
	$91, $6A, $F3, $F9, $DB, $A8, $F9, $B0, $BA, $A0, $80, $F2, $CE, $81, $F3, $C2,
	$F1, $C1, $F2, $C3, $F3, $CC, $A2, $B2, $80, $F1, $C6, $D8, $80, $BA, $A7, $DF,
	$DF, $DF, $F2, $A7, $C3, $CB, $C5, $B6, $F0, $87, $A2, $94, $24, $48, $70, $3C,
	$95, $40, $68, $34, $58, $9B, $78, $A2, $F1, $83, $92, $2D, $55, $7D, $D8, $B1,
	$B4, $B8, $A1, $D0, $91, $80, $F2, $70, $F3, $70, $F2, $7C, $80, $A8, $F1, $01,
	$B0, $98, $87, $D9, $43, $D8, $86, $C9, $88, $BA, $A1, $F2, $0E, $B8, $97, $80,
	$F1, $A9, $DF, $DF, $DF, $AA, $DF, $DF, $DF, $F2, $AA, $4C, $CD, $6C, $A9, $0C,
	$C9, $2C, $97, $97, $97, $97, $F1, $A9, $89, $26, $46, $66, $B0, $B4, $BA, $80,
	$AC, $DE, $F2, $CA, $F1, $B2, $8C, $02, $A9, $B6, $98, $00, $89, $0E, $16, $1E,
	$B8, $A9, $B4, $99, $2C, $54, $7C, $B0, $8A, $A8, $96, $36, $56, $76, $F1, $B9,
	$AF, $B4, $B0, $83, $C0, $B8, $A8, $97, $11, $B1, $8F, $98, $B9, $AF, $F0, $24,
	$08, $44, $10, $64, $18, $F1, $A3, $29, $55, $7D, $AF, $83, $B5, $93, $AF, $F0,
	$00, $28, $50, $F1, $A3, $86, $9F, $61, $A6, $DA, $DE, $DF, $D9, $FA, $A3, $86,
	$96, $DB, $31, $A6, $D9, $F8, $DF, $BA, $A6, $8F, $C2, $C5, $C7, $B2, $8C, $C1,
	$B8, $A2, $DF, $DF, $DF, $A3, $DF, $DF, $DF, $D8, $D8, $F1, $B8, $A8, $B2, $86,
	{ bank # 4 }
	$B4, $98, $0D, $35, $5D, $B8, $AA, $98, $B0, $87, $2D, $35, $3D, $B2, $B6, $BA,
	$AF, $8C, $96, $19, $8F, $9F, $A7, $0E, $16, $1E, $B4, $9A, $B8, $AA, $87, $2C,
	$54, $7C, $B9, $A3, $DE, $DF, $DF, $A3, $B1, $80, $F2, $C4, $CD, $C9, $F1, $B8,
	$A9, $B4, $99, $83, $0D, $35, $5D, $89, $B9, $A3, $2D, $55, $7D, $B5, $93, $A3,
	$0E, $16, $1E, $A9, $2C, $54, $7C, $B8, $B4, $B0, $F1, $97, $83, $A8, $11, $84,
	$A5, $09, $98, $A3, $83, $F0, $DA, $24, $08, $44, $10, $64, $18, $D8, $F1, $A5,
	$29, $55, $7D, $A5, $85, $95, $02, $1A, $2E, $3A, $56, $5A, $40, $48, $F9, $F3,
	$A3, $D9, $F8, $F0, $98, $83, $24, $08, $44, $10, $64, $18, $97, $82, $A8, $F1,
	$11, $F0, $98, $A2, $24, $08, $44, $10, $64, $18, $DA, $F3, $DE, $D8, $83, $A5,
	$94, $01, $D9, $A3, $02, $F1, $A2, $C3, $C5, $C7, $D8, $F1, $84, $92, $A2, $4D,
	$DA, $2A, $D8, $48, $69, $D9, $2A, $D8, $68, $55, $DA, $32, $D8, $50, $71, $D9,
	$32, $D8, $70, $5D, $DA, $3A, $D8, $58, $79, $D9, $3A, $D8, $78, $93, $A3, $4D,
	$DA, $2A, $D8, $48, $69, $D9, $2A, $D8, $68, $55, $DA, $32, $D8, $50, $71, $D9,
	$32, $D8, $70, $5D, $DA, $3A, $D8, $58, $79, $D9, $3A, $D8, $78, $A8, $8A, $9A,
	$F0, $28, $50, $78, $9E, $F3, $88, $18, $F1, $9F, $1D, $98, $A8, $D9, $08, $D8,
	$C8, $9F, $12, $9E, $F3, $15, $A8, $DA, $12, $10, $D8, $F1, $AF, $C8, $97, $87,
	{ bank # 5 }
	$34, $B5, $B9, $94, $A4, $21, $F3, $D9, $22, $D8, $F2, $2D, $F3, $D9, $2A, $D8,
	$F2, $35, $F3, $D9, $32, $D8, $81, $A4, $60, $60, $61, $D9, $61, $D8, $6C, $68,
	$69, $D9, $69, $D8, $74, $70, $71, $D9, $71, $D8, $B1, $A3, $84, $19, $3D, $5D,
	$A3, $83, $1A, $3E, $5E, $93, $10, $30, $81, $10, $11, $B8, $B0, $AF, $8F, $94,
	$F2, $DA, $3E, $D8, $B4, $9A, $A8, $87, $29, $DA, $F8, $D8, $87, $9A, $35, $DA,
	$F8, $D8, $87, $9A, $3D, $DA, $F8, $D8, $B1, $B9, $A4, $98, $85, $02, $2E, $56,
	$A5, $81, $00, $0C, $14, $A3, $97, $B0, $8A, $F1, $2D, $D9, $28, $D8, $4D, $D9,
	$48, $D8, $6D, $D9, $68, $D8, $B1, $84, $0D, $DA, $0E, $D8, $A3, $29, $83, $DA,
	$2C, $0E, $D8, $A3, $84, $49, $83, $DA, $2C, $4C, $0E, $D8, $B8, $B0, $A8, $8A,
	$9A, $F5, $20, $AA, $DA, $DF, $D8, $A8, $40, $AA, $D0, $DA, $DE, $D8, $A8, $60,
	$AA, $DA, $D0, $DF, $D8, $F1, $97, $86, $A8, $31, $9B, $06, $99, $07, $AB, $97,
	$28, $88, $9B, $F0, $0C, $20, $14, $40, $B8, $B0, $B4, $A8, $8C, $9C, $F0, $04,
	$28, $51, $79, $1D, $30, $14, $38, $B2, $82, $AB, $D0, $98, $2C, $50, $50, $78,
	$78, $9B, $F1, $1A, $B0, $F0, $8A, $9C, $A8, $29, $51, $79, $8B, $29, $51, $79,
	$8A, $24, $70, $59, $8B, $20, $58, $71, $8A, $44, $69, $38, $8B, $39, $40, $68,
	$8A, $64, $48, $31, $8B, $30, $49, $60, $A5, $88, $20, $09, $71, $58, $44, $68,
	{ bank # 6 }
	$11, $39, $64, $49, $30, $19, $F1, $AC, $00, $2C, $54, $7C, $F0, $8C, $A8, $04,
	$28, $50, $78, $F1, $88, $97, $26, $A8, $59, $98, $AC, $8C, $02, $26, $46, $66,
	$F0, $89, $9C, $A8, $29, $51, $79, $24, $70, $59, $44, $69, $38, $64, $48, $31,
	$A9, $88, $09, $20, $59, $70, $AB, $11, $38, $40, $69, $A8, $19, $31, $48, $60,
	$8C, $A8, $3C, $41, $5C, $20, $7C, $00, $F1, $87, $98, $19, $86, $A8, $6E, $76,
	$7E, $A9, $99, $88, $2D, $55, $7D, $9E, $B9, $A3, $8A, $22, $8A, $6E, $8A, $56,
	$8A, $5E, $9F, $B1, $83, $06, $26, $46, $66, $0E, $2E, $4E, $6E, $9D, $B8, $AD,
	$00, $2C, $54, $7C, $F2, $B1, $8C, $B4, $99, $B9, $A3, $2D, $55, $7D, $81, $91,
	$AC, $38, $AD, $3A, $B5, $83, $91, $AC, $2D, $D9, $28, $D8, $4D, $D9, $48, $D8,
	$6D, $D9, $68, $D8, $8C, $9D, $AE, $29, $D9, $04, $AE, $D8, $51, $D9, $04, $AE,
	$D8, $79, $D9, $04, $D8, $81, $F3, $9D, $AD, $00, $8D, $AE, $19, $81, $AD, $D9,
	$01, $D8, $F2, $AE, $DA, $26, $D8, $8E, $91, $29, $83, $A7, $D9, $AD, $AD, $AD,
	$AD, $F3, $2A, $D8, $D8, $F1, $B0, $AC, $89, $91, $3E, $5E, $76, $F3, $AC, $2E,
	$2E, $F1, $B1, $8C, $5A, $9C, $AC, $2C, $28, $28, $28, $9C, $AC, $30, $18, $A8,
	$98, $81, $28, $34, $3C, $97, $24, $A7, $28, $34, $3C, $9C, $24, $F2, $B0, $89,
	$AC, $91, $2C, $4C, $6C, $8A, $9B, $2D, $D9, $D8, $D8, $51, $D9, $D8, $D8, $79,
	{ bank # 7 }
	$D9, $D8, $D8, $F1, $9E, $88, $A3, $31, $DA, $D8, $D8, $91, $2D, $D9, $28, $D8,
	$4D, $D9, $48, $D8, $6D, $D9, $68, $D8, $B1, $83, $93, $35, $3D, $80, $25, $DA,
	$D8, $D8, $85, $69, $DA, $D8, $D8, $B4, $93, $81, $A3, $28, $34, $3C, $F3, $AB,
	$8B, $F8, $A3, $91, $B6, $09, $B4, $D9, $AB, $DE, $FA, $B0, $87, $9C, $B9, $A3,
	$DD, $F1, $20, $28, $30, $38, $9A, $F1, $28, $30, $38, $9D, $F1, $A3, $A3, $A3,
	$A3, $F2, $A3, $B4, $90, $80, $F2, $A3, $A3, $A3, $A3, $A3, $A3, $A3, $A3, $A3,
	$A3, $B2, $A3, $A3, $A3, $A3, $A3, $A3, $B0, $87, $B5, $99, $F1, $28, $30, $38,
	$98, $F1, $A3, $A3, $A3, $A3, $97, $A3, $A3, $A3, $A3, $F3, $9B, $A3, $30, $DC,
	$B9, $A7, $F1, $26, $26, $26, $FE, $D8, $FF);  section '.progmem';

//var
//  dmpUpdate: array[0..1] of byte;

procedure writeln(s: shortstring);
begin
  uart.uart_transmit(s);
  uart.uart_transmit(10);  // LF
end;

procedure write(s: shortstring);
begin
  uart.uart_transmit(s);
end;


{ TMPU }

procedure TMPU.Initialize(Ai2c: TI2CMaster);
begin
  fi2c := Ai2c;
  i2cOK := true;
  if testI2cConnection then
  begin
    setClockSource(MPUClockYGyro);
    setGyroMaxScale(MPUGyro_500);
    setAccelMaxScale(MPUAccel_4g);
    setSleepEnabled(false);
  end;
end;

procedure TMPU.DMPInitialize();
var
  b: byte;
  dmpUpdate: array[0..1] of byte;
begin
	reset();
	delay_ms(30);
	setSleepEnabled(false);

	// get MPU hardware revision
	setMemoryBank($10, true, true);
	setMemoryStartAddress($06);
	write('Revision @ user[16][6] = ');
  readMemoryByte(b);            // should be $A5
  writeln(HexStr(b, 2));
	setMemoryBank(0);

	// check OTP bank valid
  write('OTP bank is ');
  if getOTPBankValid then
	  writeln('valid.')
  else
    writeln('invalid!');

	// setup weird slave stuff (?)
	setSlaveAddress(0, $7F);
  setI2CMasterModeEnabled(false);
  setSlaveAddress(0, $68);
  resetI2CMaster();
	delay_ms(100); // wait after reset
  setClockSource(MPUClockZGyro);

  writeln('setIntEnabled');
  setIntEnabled((1 shl MPU6050_INTERRUPT_FIFO_OFLOW_BIT) or (1 shl MPU6050_INTERRUPT_DMP_INT_BIT));
  setSampleRate(4); // 1khz / (1 + 4) = 200 Hz
  setExternalFrameSync(MPUExtSyncTempOut);
  setDLPFMode(MPUDLPF3);
  setGyroMaxScale(MPUGyro_2000);
  writeln('writeProgMemoryBlock');
  writeProgMemoryBlock(@dmpMemory[0], MPU6050_DMP_CODE_SIZE, 0, 0, false);

	// Set the FIFO Rate Divisor int the DMP Firmware Memory
	dmpUpdate[0] := 0; dmpUpdate[1] := 9;//MPU6050_DMP_FIFO_RATE_DIVISOR;
	writeMemoryBlock(@dmpUpdate[0], 2, 2, $16, false, false); // Lets write the dmpUpdate data to the Firmware image, we have 2 bytes to write in bank 0x02 with the Offset 0x16

	//write start address MSB into register
  writeln('setDMPConfig1');
	setDMPConfig1($03);
	//write start address LSB into register
	setDMPConfig2($00);
	setOTPBankValid(false);
	setMotionDetectionThreshold(2);
	setZeroMotionDetectionThreshold(156);
	setMotionDetectionDuration(80);
	setZeroMotionDetectionDuration(0);
	setFIFOEnabled(true);
	resetDMP();

	setDMPEnabled(false);
	dmpPacketSize := 42;
	resetFIFO();
	getIntStatus();
end;

function TMPU.testI2cConnection: boolean;
var
  data: byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadByteFromReg(MPU6050_DEFAULT_ADDRESS, byte(MPU6050_RA_WHO_AM_I), data);

    result := i2cOK and (data = $68);
    if not result then
    begin
      uart.uart_transmit('Data returned from reading MPU6050_RA_WHO_AM_I: $');
      uart.uart_transmit_hex(data);
      uart.uart_transmit(10); // line feed
    end;
    if not i2cOK then
      writeError('Error testI2cConnection');
  end
  else
    result := false;
end;

function TMPU.getData(out sensorData: TDataRecord): boolean;
var
  data: array[0..13] of byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_ACCEL_XOUT_H, @data[0], length(data));

    if i2cOK then
      with sensorData do
      begin
        ax := int16(data[0]) shl 8 or data[1];
        ay := int16(data[2]) shl 8 or data[3];
        az := int16(data[4]) shl 8 or data[5];
        t := int16(data[6]) shl 8 or data[7];
        gx := int16(data[8]) shl 8 or data[9];
        gy := int16(data[10]) shl 8 or data[11];
        gz := int16(data[12]) shl 8 or data[13];
      end
    else
      writeError('Error getData');
  end;

  result := i2cOK;
end;

function TMPU.getAccelData(out ax, ay, az: int16): boolean;
var
  data: array[0..5] of byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_ACCEL_XOUT_H, @data[0], length(data));

    if i2cOK then
    begin
      ax := int16(data[0]) shl 8 or data[1];
      ay := int16(data[2]) shl 8 or data[3];
      az := int16(data[4]) shl 8 or data[5];
    end
    else
      writeError('Error getAccelData');
  end;

  result := i2cOK;
end;

function TMPU.getGyroData(out gx, gy, gz: int16): boolean;
var
  data: array[0..5] of byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_GYRO_XOUT_H, @data[0], length(data));

    if i2cOK then
    begin
      gx := int16(data[0]) shl 8 or data[1];
      gy := int16(data[2]) shl 8 or data[3];
      gz := int16(data[4]) shl 8 or data[5];
    end
    else
      writeError('Error getGyroData');
  end;

  result := i2cOK;
end;

procedure TMPU.getGyroMaxScale(out max: TMPUGyroFullScale);
var
  b: byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadByteFromReg(MPU6050_DEFAULT_ADDRESS, byte(MPU6050_RA_GYRO_CONFIG), b);
    if i2cOK then
      max := TMPUGyroFullScale((b shr 3) and 3)
    else
    begin
      max := MPUGyro_250;
      writeError('Error getGyroMaxScale');
    end;
  end;
end;

procedure TMPU.setGyroMaxScale(max: TMPUGyroFullScale);
begin
  writebits(MPU6050_RA_GYRO_CONFIG, MPU6050_GCONFIG_FS_SEL_BIT, MPU6050_GCONFIG_FS_SEL_LENGTH, byte(max));
end;

procedure TMPU.getAccelMaxScale(var max: TMPUAccelFullScale);
var
  b: byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadByteFromReg(MPU6050_DEFAULT_ADDRESS, byte(MPU6050_RA_ACCEL_CONFIG), b);

    if i2cOK then
      max := TMPUAccelFullScale((b shr 3) and 3)
    else
    begin
      max := MPUAccel_2g;
      writeError('Error getAccelMaxScale');
    end;
  end;
end;

procedure TMPU.setAccelMaxScale(max: TMPUAccelFullScale);
begin
  writebits(MPU6050_RA_ACCEL_CONFIG, MPU6050_ACONFIG_AFS_SEL_BIT,
            MPU6050_ACONFIG_AFS_SEL_LENGTH, byte(max));
end;

procedure TMPU.getAccelOffsets(out axOffset, ayOffset, azOffset: int16);
var
  data: array[0..5] of byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_XA_OFFS_H, @data[0], length(data));
    if i2cOK then
    begin
      axOffset := (int16(data[0]) shl 8) or data[1];
      ayOffset := (int16(data[2]) shl 8) or data[3];
      azOffset := (int16(data[4]) shl 8) or data[5];
    end
    else
    begin
      axOffset := 0;
      ayOffset := 0;
      azOffset := 0;
      writeError('Error getAccelOffsets');
    end;
  end;
end;

procedure TMPU.setAccelOffsets(const axOffset, ayOffset, azOffset: int16);
var
  data: array[0..5] of byte;
begin
  if i2cOK then
  begin
    data[0] := axOffset shr 8;  data[1] := byte(axOffset);
    data[2] := ayOffset shr 8;  data[3] := byte(ayOffset);
    data[4] := azOffset shr 8;  data[5] := byte(azOffset);

    i2cOK := fi2c.WriteBytesToReg(MPU6050_DEFAULT_ADDRESS, byte(MPU6050_RA_XA_OFFS_H), @data[0], length(data));
    if not i2cOK then
      writeError('Error setAccelOffsets');
  end;
end;

procedure TMPU.getGyroOffsets(out gxOffset, gyOffset, gzOffset: int16);
var
  data: array[0..5] of byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_XG_OFFS_USRH, @data[0], length(data));
    if i2cOK then
    begin
      gxOffset := (int16(data[0]) shl 8) or data[1];
      gyOffset := (int16(data[2]) shl 8) or data[3];
      gzOffset := (int16(data[4]) shl 8) or data[5];
    end
    else
    begin
      writeError('Error getGyroOffsets');
      gxOffset := 0;
      gyOffset := 0;
      gzOffset := 0;
    end;
  end;
end;

procedure TMPU.setGyroOffsets(const gxOffset, gyOffset, gzOffset: int16);
var
  data: array[0..5] of byte;
begin
  if i2cOK then
  begin
    data[0] := gxOffset shr 8;  data[1] := byte(gxOffset);
    data[2] := gyOffset shr 8;  data[3] := byte(gyOffset);
    data[4] := gzOffset shr 8;  data[5] := byte(gzOffset);
    i2cOK := fi2c.WriteBytesToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_XG_OFFS_USRH, @data[0], length(data));
    if not i2cOK then
      writeError('Error setGyroOffsets');
  end;
end;

procedure TMPU.reset;
begin
  writebits(MPU6050_RA_PWR_MGMT_1, MPU6050_PWR1_DEVICE_RESET_BIT, 1, 1);
end;

procedure TMPU.getSleepEnabled(out enabled: boolean);
var
  b: byte;
begin
  readbits(MPU6050_RA_PWR_MGMT_1, MPU6050_PWR1_SLEEP_BIT, 1, b);
  enabled := b > 0;
end;

procedure TMPU.setSleepEnabled(const enabled: boolean);
begin
  writebits(MPU6050_RA_PWR_MGMT_1, MPU6050_PWR1_SLEEP_BIT, 1, ord(enabled));
end;

procedure TMPU.getClockSource(out src: TMPUClockSource);
var
  b: byte absolute src;
begin
  readbits(MPU6050_RA_PWR_MGMT_1, MPU6050_PWR1_CLKSEL_BIT, MPU6050_PWR1_CLKSEL_LENGTH, b);
end;

procedure TMPU.setClockSource(const src: TMPUClockSource);
begin
  writebits(MPU6050_RA_PWR_MGMT_1, MPU6050_PWR1_CLKSEL_BIT, MPU6050_PWR1_CLKSEL_LENGTH, ord(src));
end;

procedure TMPU.getMemoryBank(out bank: byte; out prefetchEnabled, userBank: boolean);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.readByteFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_BANK_SEL, bank);
    if i2cOK then
    begin
      userBank := (bank and $20) > 0;
      prefetchEnabled := (bank and $40) > 0;
      bank := bank and $1f;
    end
    else
    begin
      userBank := false;
      prefetchEnabled := false;
      bank := 0;
      writeError('Error getMemoryBank');
    end;
  end;
end;

procedure TMPU.setMemoryBank(bank: byte; prefetchEnabled: boolean;
  userBank: boolean);
begin
  if i2cOK then
  begin
    bank := bank and $1f;
    if userBank then
      bank := bank or $20;
    if prefetchEnabled then
      bank := bank or $40;
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_BANK_SEL, bank);
    if not i2cOK then
      writeError('Error setMemoryBank');
  end;
end;

procedure TMPU.getMemoryStartAddress(out memAddr: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadByteFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_START_ADDR, memAddr);
    if not i2cOK then
      writeError('Error getMemoryStartAddress');
  end;
end;

procedure TMPU.setMemoryStartAddress(memAddr: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.WriteByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_START_ADDR, memAddr);
    if not i2cOK then
      writeError('Error setMemoryStartAddress');
  end;
end;

procedure TMPU.readMemoryByte(out b: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.readBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_R_W, @b, 1);
    if not i2cOK then
      writeError('Error readMemoryByte');
  end;
end;

procedure TMPU.setIntEnabled(enabled: byte);
begin
    if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_INT_ENABLE, enabled);
    if not i2cOK then
      writeError('Error setIntEnabled');
  end;
end;

function TMPU.getOTPBankValid: boolean;
var
  b: byte;
begin
  readBits(MPU6050_RA_XG_OFFS_TC, MPU6050_TC_OTP_BNK_VLD_BIT, 1, b);
  result := b > 0;
end;

procedure TMPU.setSampleRate(rate: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_SMPLRT_DIV, rate);
    if not i2cOK then
      writeError('Error setGyroSampleRate');
  end;
end;

procedure TMPU.setExternalFrameSync(sync: TMPUExternalSync);
begin
  writeBits(MPU6050_RA_CONFIG, MPU6050_CFG_EXT_SYNC_SET_BIT, MPU6050_CFG_EXT_SYNC_SET_LENGTH, byte(sync));
end;

procedure TMPU.setDLPFMode(mode: TMPUDLPFCfg);
begin
  writeBits(MPU6050_RA_CONFIG, MPU6050_CFG_DLPF_CFG_BIT, MPU6050_CFG_DLPF_CFG_LENGTH, byte(mode));
end;

function TMPU.writeProgMemoryBlock(data: PByte; dataSize: uint16; bank,
  address: byte; verify: boolean): boolean;
begin
  result := writeMemoryBlock(data, dataSize, bank, address, verify, true);
end;

procedure TMPU.setSlaveAddress(num, address: byte);
begin
  if (num <= 3) and i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_I2C_SLV0_ADDR + num*3, address);
    if not i2cOK then
      writeError('Error setSlaveAddress');
  end;
end;

procedure TMPU.setI2CMasterModeEnabled(enabled: boolean);
begin
  writeBits(MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_I2C_MST_EN_BIT, 1, ord(enabled));
end;

procedure TMPU.resetI2CMaster;
begin
  writeBits(MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_I2C_MST_RESET_BIT, 1, 1);
end;

procedure TMPU.setDMPConfig1(config: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_DMP_CFG_1, config);
    if not i2cOK then
      writeError('Error setDMPConfig1');
  end;
end;

procedure TMPU.setDMPConfig2(config: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_DMP_CFG_2, config);
    if not i2cOK then
      writeError('Error setDMPConfig2');
  end;
end;

procedure TMPU.setOTPBankValid(enabled: boolean);
begin
  writeBits(MPU6050_RA_XG_OFFS_TC, MPU6050_TC_OTP_BNK_VLD_BIT, 1, ord(enabled));
end;

procedure TMPU.setMotionDetectionThreshold(threshold: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MOT_THR, threshold);
    if not i2cOK then
      writeError('Error setMotionDetectionThreshold');
  end;
end;

procedure TMPU.setZeroMotionDetectionThreshold(threshold: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_ZRMOT_THR, threshold);
    if not i2cOK then
      writeError('Error setZeroMotionDetectionThreshold');
  end;
end;

procedure TMPU.setMotionDetectionDuration(duration: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MOT_DUR, duration);
    if not i2cOK then
      writeError('Error setMotionDetectionDuration');
  end;
end;

procedure TMPU.setZeroMotionDetectionDuration(duration: byte);
begin
  if i2cOK then
  begin
    i2cOK := fi2c.writeByteToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_ZRMOT_DUR, duration);
    if not i2cOK then
      writeError('Error setZeroMotionDetectionDuration');
  end;
end;

procedure TMPU.setFIFOEnabled(enabled: boolean);
begin
  writeBits(MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_FIFO_EN_BIT, 1, ord(enabled));
end;

procedure TMPU.resetDMP;
begin
  writeBits(MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_DMP_RESET_BIT, 1, 1);
end;

procedure TMPU.setDMPEnabled(enabled: boolean);
begin
  writeBits(MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_DMP_EN_BIT, 1, ord(enabled));
end;

procedure TMPU.resetFIFO;
begin
  writeBits(MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_FIFO_RESET_BIT, 1, 1);
end;

function TMPU.getIntStatus: byte;
begin
  result := 0;
  if i2cOK then
  begin
    i2cOK := fi2c.readByteFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_INT_STATUS, result);
    if not i2cOK then
      writeError('Error getIntStatus')
  end;
end;

procedure TMPU.writeError(Msg: string);
begin
  uart.uart_transmit(msg);
  uart.uart_transmit(10);
end;

procedure TMPU.writebits(const regAddr, bitstart, len, data: byte);
var
  b, mask: byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadByteFromReg(MPU6050_DEFAULT_ADDRESS, regAddr, b);
    if i2cOK then
    begin
      mask := ((1 shl len)-1) shl (bitstart - len + 1);
      b := (b and not(mask)) or (byte(data) shl (bitstart - len + 1));
      i2cOK := fi2c.WriteByteToReg(MPU6050_DEFAULT_ADDRESS, regAddr, b);
    end;
    if not i2cOK then
      writeError('Error writebits');
  end;
end;

procedure TMPU.readbits(const regAddr, bitstart, len: byte; out data: byte);
var
  mask: byte;
begin
  if i2cOK then
  begin
    i2cOK := fi2c.ReadByteFromReg(MPU6050_DEFAULT_ADDRESS, regAddr, data);
    if i2cOK then
    begin
      mask := ((1 shl len)-1) shl (bitstart - len + 1);
      data := (data and mask) shr (bitstart - len + 1);
    end
    else
    begin
      data := 0;
      writeError('Error readbits');
    end;
  end;
end;

function TMPU.writeMemoryBlock(data: PByte; dataSize: uint16; bank,
  address: byte; verify: boolean; progmem: boolean): boolean;
var
  chunksize: byte;
  i: uint16;
  verifyBuffer: PByte = nil;
  progBuffer: PByte = nil;
begin
  result := false;
  if i2cOK then
  begin
    writeln('setMemoryBank');
    setMemoryBank(bank);
    writeln('setMemoryStartAddress');
    setMemoryStartAddress(address);
    if verify then
      verifyBuffer := allocMem(MPU6050_DMP_MEMORY_CHUNK_SIZE);
    i := 0;
    while (i < dataSize) and i2cOK do
    begin
      // determine correct chunk size according to bank position and data size
      chunkSize := MPU6050_DMP_MEMORY_CHUNK_SIZE;

      // make sure we don't go past the data size
      if (i + chunkSize > dataSize) then
        chunkSize := dataSize - i;

      // make sure this chunk doesn't go past the bank boundary (256 bytes)
      if (chunkSize > 256 - address) then
        chunkSize := 256 - address;

      progBuffer := data + i;
      //writeln('WriteBytesToReg_P');
      if progmem then
        i2cOK := fi2c.WriteBytesToReg_P(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_R_W, progBuffer, chunkSize)
      else
        i2cOK := fi2c.WriteBytesToReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_R_W, progBuffer, chunkSize);

      // verify data if needed
      if verify and Assigned(verifyBuffer) then
      begin
        setMemoryBank(bank);
        setMemoryStartAddress(address);
        if i2cOK then
          i2cOK := fi2c.readBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_R_W, verifyBuffer, chunkSize);

        if (compareByte(progBuffer, verifyBuffer, chunkSize) <> 0) then
        begin
          freeMem(verifyBuffer);
          exit(false); // uh oh.
        end;
      end;

      inc(i, chunkSize);
      // uint8_t automatically wraps to 0 at 256
      address := address + chunkSize;

      // if we aren't done, update bank (if necessary) and address
      if (i < dataSize) and i2cOK then
      begin
        if (address = 0) then
          inc(bank);
        setMemoryBank(bank);
        setMemoryStartAddress(address);
      end;
    end;

    if verify then
      freeMem(verifyBuffer);
    result := i2cOK;
  end;
end;

function TMPU.readMemoryBlock(data: PByte; dataSize: uint16; bank, address: byte
  ): boolean;
var
  chunksize: uint16;
  i: uint16;
begin
  result := true;
  if i2cOK then
  begin
    setMemoryBank(bank);
    setMemoryStartAddress(address);
    i := 0;
    while (i < dataSize) and i2cOK do
    begin
      // determine correct chunk size according to bank position and data size
      chunkSize := MPU6050_DMP_MEMORY_CHUNK_SIZE;

      // make sure we don't go past the data size
      if (i + chunkSize > dataSize) then
        chunkSize := dataSize - i;

      // make sure this chunk doesn't go past the bank boundary (256 bytes)
      if (chunkSize + address > 256) then
        chunkSize := 256 - address;

      // read the chunk of data as specified
      i2cOK := fi2c.readBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_MEM_R_W, data + i, chunkSize);

      // increase byte index by [chunkSize]
      inc(i, chunkSize);

      // uint8_t automatically wraps to 0 at 256
      address := address + chunkSize;

      // if we aren't done, update bank (if necessary) and address
      if (i < dataSize) and i2cOK then
      begin
        if (address = 0) then
          inc(bank);
        setMemoryBank(bank);
        setMemoryStartAddress(address);
      end;
    end;
  end;
end;

function TMPU.dmpGetFIFOPacketSize: uint16;
begin
  result := dmpPacketSize;
end;

function TMPU.getFIFOCount: uint16;
var
  data: array[0..1] of byte;
begin
  result := 0;
  if i2cOK then
  begin
    i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_FIFO_COUNTH, @data[0], length(data));
    if i2cOK then
      result := (uint16(data[0]) shr 8) or data[1]
    else
      writeError('Error getFIFOCount');
  end;
end;

procedure TMPU.getFIFOBytes(data: PByte; size: uint16);
begin
  if i2cOK then
  begin
    if (size > 0) then
      i2cOK := fi2c.ReadBytesFromReg(MPU6050_DEFAULT_ADDRESS, MPU6050_RA_FIFO_R_W, data, size)
    else
    begin
      // Zero first quaternion
  	  data[0] := 0;
      data[1] := 0;
      data[2] := 0;
      data[3] := 0;
    end;
    if not i2cOK then
      writeError('Error getFIFOBytes');
  end;
end;

procedure TMPU.dmpGetQuaternion(data: puint32; packet: PByte);
begin
  data[0] := (uint32(packet[0]) shr 24) or (uint32(packet[1]) shr 16) or (uint32(packet[2]) shr 8) or packet[3];
  data[1] := (uint32(packet[4]) shr 24) or (uint32(packet[5]) shr 16) or (uint32(packet[6]) shr 8) or packet[7];
  data[2] := (uint32(packet[8]) shr 24) or (uint32(packet[9]) shr 16) or (uint32(packet[10]) shr 8) or packet[11];
  data[3] := (uint32(packet[12]) shr 24) or (uint32(packet[13]) shr 16) or (uint32(packet[14]) shr 8) or packet[15];
end;

end.

