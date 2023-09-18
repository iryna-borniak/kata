def locker_run(lockers)
  (1..Math.sqrt(lockers)).map { |num| num**2 }
end
