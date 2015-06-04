class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :id)

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @numbers = []
    @id = @@contacts.length().+(1)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:add_phone) do |phone|
    @numbers.push(phone)
  end

  define_method(:numbers) do
    @numbers
  end
end
