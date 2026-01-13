# Check all animals named "pimpek" and prevent them from growing up
execute as @e[type=#babyforever:ageable_mobs,name="pimpek"] run data merge entity @s {Age:-2147483648,AgeLocked:1b}

# Schedule next execution in 1200 ticks (1 minute)
schedule function babyforever:tick 1200t
