# cuda

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with cuda](#setup)
    * [What cuda affects](#what-cuda-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with cuda](#beginning-with-cuda)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Puppet module to manage Nvidia's CUDA installation and configuration.

## Module Description

The Compute Unified Device Architecture (CUDA) enables NVIDIA graphics processing units (GPUs) to be used for massively parallel general purpose computation.

This module manages CUDA's installation and configuration, including toolkits, runtime libraries, and drivers.

*NOTE* This module does **NOT** manage the CUDA package repositories. You many need to set this up before using this module to make the required packages available.

*NOTE* This module **reboots your system**.

## Setup

### What cuda affects

- Linux kernel modification - **reboots your system**
- Nvidia's GPU driver installation and configuration
- CUDA toolkit installation
- CUDA runtime libraries
- Nvidia's OpenCL implementation and ICD

### Beginning with cuda

To get started using CUDA with default configurations, simply include the module in your manifest:

```puppet
include ::cuda
```

## Usage

## Reference

### Public Classes

`cuda`: Accepts and validates parameters; initializes module and manages both the CUDA toolkits and runtime libraries and drivers.

### Private Classes

`cuda::toolkit`: Manages the CUDA toolkit installation and configuration.

`cuda::runtime`: Manages the CUDA runtime libraries and drivers installation and configuration.

### Parameters

##### ::cuda

`ensure`: Whether to install or remove CUDA from the system. Can be `present` or `absent`. Defaults to `present`.

`release`: The CUDA release to manage. Defaults to '7-0'.

`version`: The version of the CUDA release to manage. Default's to `latest`.

## Limitations

This module currenly only supports Ubuntu Trusty.

## Development

Pull requests are always awesome.
