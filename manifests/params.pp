# == Class: cuda::params
#
# Just some params.pp
#
class cuda::params {
  
  $cuda_release = '7-0'
  $cuda_version = 'latest'
  
  case $::operatingsystem {
    'Ubuntu': {
      case $::operatingsystemmajrelease {
        '14.04': {
          $cuda_toolkit_package = "cuda-toolkit-${cuda_release}"
          $cuda_runtime_package = "cuda-runtime-${cuda_release}"
        }
        
        default: {
          fail("Unsupported platform: ${module_name} currently doesn't support ${::operatingsystem} ${::operatingsystemmajrelease}")
        }
      }
    }
    
    default: {
      fail("Unsupported platform: ${module_name} currently doesn't support ${::operatingsystem}")
    }
  }
}
