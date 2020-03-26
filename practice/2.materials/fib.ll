define i32 @fib(i32 %n) nounwind {
entry:
  %cmp = icmp ult i32 %n, 2
  br i1 %cmp, label %if.end, label %if.else

if.else:
  %sub = add i32 %n, -1
  %call = call i32 @fib(i32 %sub)
  %sub1 = add i32 %n, -2
  %call2 = call i32 @fib(i32 %sub1)
  %add = add i32 %call2, %call
  br label %if.end

if.end:
  %answ.0 = phi i32 [ %add, %if.else ], [ %n, %entry ]
  ret i32 %answ.0
}
