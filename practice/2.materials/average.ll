@answer = global double 0.000000e+00

define void @average(double* %numbers) {
entry:
  %0 = load double, double* %numbers
  %arrayidx1 = getelementptr inbounds double, double* %numbers, i64 1
  %1 = load double, double* %arrayidx1
  %add = fadd double %0, %1
  %div = fmul double %add, 5.000000e-01
  store double %div, double* @answer
  ret void
}
