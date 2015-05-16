# == Class: cuda
#
# Accepts and validates parameters; initializes module and manages
# both the CUDA toolkit and runtime libraries and drivers.
#
# === Parameters
#
# [*ensure*]
#   Whether to install or remove CUDA from the system.
#   Can be `present` or `absent`. Defaults to `present`.
#
# [*release*]
#   The CUDA release to manage. Defaults to '7-0'.
#
# [*version*]
#   The version of the CUDA release to manage. Default's to `latest`.
#
class cuda (
  
  $ensure = 'present',
  $release = $cuda::params::cuda_release,
  $version = $cuda::params::cuda_version,
  
  ) inherits cuda::params {
    
    validate_string($ensure)
    validate_string($release)
    validate_string($version)
    
    class{'cuda::runtime':} -> class{'cuda::toolkit':}
}
