```ruby
class Person
  attr_reader = :name
  attr_writer = :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end
```
Is the more faster way of writing
```ruby
class Person
  def initialize(name, job)
    @name = name
    @job = job
  end
  
  def name
    @name
  end
  
  def job=(new_job)
    @job = new_job
  end
end
```
