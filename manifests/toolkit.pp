# == Class: cuda::toolkit
#
# Manages the CUDA toolkit installation and configuration.
#
class cuda::toolkit {
  
  package{$cuda::params::cuda_toolkit_package:
    ensure => $cuda::params::cuda_version,
  }
}
