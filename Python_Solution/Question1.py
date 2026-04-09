minutes = int(input("Enter total minutes: "))

hours = minutes // 60
remaining_minutes = minutes % 60

# Formatting output properly
if hours > 0 and remaining_minutes > 0:
    print(f"{hours} hr{'s' if hours > 1 else ''} {remaining_minutes} minute{'s' if remaining_minutes > 1 else ''}")
elif hours > 0:
    print(f"{hours} hr{'s' if hours > 1 else ''}")
else:
    print(f"{remaining_minutes} minute{'s' if remaining_minutes > 1 else ''}")