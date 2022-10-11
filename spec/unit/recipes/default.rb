
# Chef InSpec test for recipe assignment_install_apache_server::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/
  
  
  ######## ATTRIBUTES ########
  PACKAGE = attribute('package', 
                      default: 'mysqldefault',
                      description: 'package name'
                     )
                     
  SERVICE = attribute('service', 
                      default: 'mysqldefault', 
                      description: 'service name'
                     )
  
                     
  ######## TEST CONFIGURATION ########
  #C:\Users\zippyops> Set-NetConnectionProfile -NetworkCategory Private


    
    describe package(PACKAGE) do
    it { should be_installed }
  end
  describe service(SERVICE) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
  ######## TEST PROMISE ########
  describe port(3306) do
    it { should be_listening }
  end
    

  