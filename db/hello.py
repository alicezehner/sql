from faker import Faker
fake = Faker()
# generate random names
print(fake.first_name(), fake.last_name())
print(fake.job())

# push fake data into database
