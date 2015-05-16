# == Class: cuda::runtime
#
# Manages the CUDA runtime libraries and drivers installation and configuration.
#
class cuda::runtime {
  
  package{'linux-generic':
    ensure => 'present',
  }
  
  package{$cuda::params::cuda_runtime_package:
    ensure  => $cuda::params::cuda_version,
    require => Package['linux-generic'],
    notify  => Reboot['cuda-reboot'],
  }
  
  reboot{'cuda-reboot':
    apply   => 'finished',
    timeout => 0,
    message => 'Rebooting due to kernel modifications from CUDA drivers installation.'
  }
}
