# Check all animals named "pimpek" and prevent them from growing up
execute as @e[type=#babyforever:ageable_mobs,name="pimpek",predicate=babyforever:is_baby] run data merge entity @s {Age:-2147483648,AgeLocked:1b}

# Check all animals named "flux", rejuvenate them, lock age, and rename to "pimpek"
execute as @e[type=#babyforever:ageable_mobs,name="flux"] run data merge entity @s {Age:-2147483648,AgeLocked:1b,CustomName:"{\"text\":\"pimpek\"}"}

# Schedule next execution in 20 ticks (1 second)
schedule function babyforever:tick 20t replace
