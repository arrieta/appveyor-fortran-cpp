module foo

  use iso_c_binding

  implicit none

contains

  subroutine bar(x) bind(c, name="bar")
    real(c_double), value :: x
    print *, 'The value of x: ', x
  end subroutine bar

end module foo
