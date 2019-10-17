class PeriodsController < ApplicationController
  def measure
    earth_radius = 6370000
    earth_mass = 6 * 10**24
    pi = 3.14159265359 
    grav_constant = 6.67 * 10**(-11)
    @orbit_radius = (params[:height].to_f)
    @orbit_period = Math.sqrt(4*pi**2 * (@orbit_radius*1000 + earth_radius)**3 /(grav_constant * earth_mass))
    @orbit_period_transformed = "%02d:%02d:%02d" % [@orbit_period / 3600, @orbit_period / 60 % 60, @orbit_period % 60]
    return @orbit_period_transformed

    
  end
  def check_measure
  	if @orbit_period.to_f > 1000
  	 @prompt = "You will be waiting for a while ;("
  	 return true
  	end
  	return

  end

end
