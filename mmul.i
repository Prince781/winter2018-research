func mmul(N) {
    A = span(0, pi, N)(, -:1:N)
    B = span(0, pi, N)(, -:1:N)
    start = array(double, 3)
    end = array(double, 3)

    timer, start
    C = A(+,) * B(,+)
    timer, end

    return (end - start)
}

func mmul_test(minN, maxN) {
    write, ["size", "cpu (s)", "system (s)", "wall (s)"]
    for (i=minN; i<=maxN; i=i*2) {
        col=[i + 0.0f]
        grow, col, mmul(i)
        write, col
    }
}
