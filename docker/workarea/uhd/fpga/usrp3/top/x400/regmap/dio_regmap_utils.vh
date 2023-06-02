//
// Copyright 2022 Ettus Research, A National Instruments Company
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//
// Module: dio_regmap_utils.vh
// Description:
// The constants in this file are autogenerated by XmlParse.

//===============================================================================
// A numerically ordered list of registers and their HDL source files
//===============================================================================

  // DIO_MASTER_REGISTER    : 0x0 (x4xx_dio.v)
  // DIO_DIRECTION_REGISTER : 0x4 (x4xx_dio.v)
  // DIO_INPUT_REGISTER     : 0x8 (x4xx_dio.v)
  // DIO_OUTPUT_REGISTER    : 0xC (x4xx_dio.v)
  // DIO_SOURCE_REGISTER    : 0x10 (x4xx_dio.v)
  // RADIO_SOURCE_REGISTER  : 0x14 (x4xx_dio.v)
  // INTERFACE_DIO_SELECT   : 0x18 (x4xx_dio.v)
  // DIO_OVERRIDE           : 0x1C (x4xx_dio.v)
  // SW_DIO_CONTROL         : 0x20 (x4xx_dio.v)

//===============================================================================
// RegTypes
//===============================================================================

  // DIO_CONTROL_REG Type (from x4xx_dio.v)
  localparam DIO_CONTROL_REG_SIZE = 32;
  localparam DIO_CONTROL_REG_MASK = 32'hFFF0FFF;
  localparam DIO_PORT_A_SIZE = 12;  //DIO_CONTROL_REG:DIO_PORT_A
  localparam DIO_PORT_A_MSB  = 11;  //DIO_CONTROL_REG:DIO_PORT_A
  localparam DIO_PORT_A      =  0;  //DIO_CONTROL_REG:DIO_PORT_A
  localparam DIO_PORT_B_SIZE = 12;  //DIO_CONTROL_REG:DIO_PORT_B
  localparam DIO_PORT_B_MSB  = 27;  //DIO_CONTROL_REG:DIO_PORT_B
  localparam DIO_PORT_B      = 16;  //DIO_CONTROL_REG:DIO_PORT_B

//===============================================================================
// Register Group DIO_REGS
//===============================================================================

  // DIO_MASTER_REGISTER Register (from x4xx_dio.v)
  localparam DIO_MASTER_REGISTER = 'h0; // Register Offset
  localparam DIO_MASTER_REGISTER_SIZE = 32;  // register width in bits

  // DIO_DIRECTION_REGISTER Register (from x4xx_dio.v)
  localparam DIO_DIRECTION_REGISTER = 'h4; // Register Offset
  localparam DIO_DIRECTION_REGISTER_SIZE = 32;  // register width in bits

  // DIO_INPUT_REGISTER Register (from x4xx_dio.v)
  localparam DIO_INPUT_REGISTER = 'h8; // Register Offset
  localparam DIO_INPUT_REGISTER_SIZE = 32;  // register width in bits

  // DIO_OUTPUT_REGISTER Register (from x4xx_dio.v)
  localparam DIO_OUTPUT_REGISTER = 'hC; // Register Offset
  localparam DIO_OUTPUT_REGISTER_SIZE = 32;  // register width in bits

  // DIO_SOURCE_REGISTER Register (from x4xx_dio.v)
  localparam DIO_SOURCE_REGISTER = 'h10; // Register Offset
  localparam DIO_SOURCE_REGISTER_SIZE = 32;  // register width in bits

  // RADIO_SOURCE_REGISTER Register (from x4xx_dio.v)
  localparam RADIO_SOURCE_REGISTER = 'h14; // Register Offset
  localparam RADIO_SOURCE_REGISTER_SIZE = 32;  // register width in bits

  // INTERFACE_DIO_SELECT Register (from x4xx_dio.v)
  localparam INTERFACE_DIO_SELECT = 'h18; // Register Offset
  localparam INTERFACE_DIO_SELECT_SIZE = 32;  // register width in bits

  // DIO_OVERRIDE Register (from x4xx_dio.v)
  localparam DIO_OVERRIDE = 'h1C; // Register Offset
  localparam DIO_OVERRIDE_SIZE = 32;  // register width in bits

  // SW_DIO_CONTROL Register (from x4xx_dio.v)
  localparam SW_DIO_CONTROL = 'h20; // Register Offset
  localparam SW_DIO_CONTROL_SIZE = 32;  // register width in bits