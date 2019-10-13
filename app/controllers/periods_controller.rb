class PeriodsController < ApplicationController
  def measure
  	earth_radius = 6370
  	earth_mass = 6 * 10**24
  	pi = 3.14159265359 
  	grav_constant = 6.67 * 10**-11
    @orbit_radius = (params[:height].to_f)
    @orbit_period = Integer.sqrt(4*pi**2 * @orbit_radius**3/grav_constant * earth_mass)
    return @orbit_period.to_f 

    
  end
  def check_measure
  	if @orbit_period.to_f > 1000
  	 @prompt = "You will be waiting for a while ;("
  	 return true
  	end
  	return

  end

end
