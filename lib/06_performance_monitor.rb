def measure(count=1)

answer = 0
  count.times do
  start = Time.now

    yield

  end1 = Time.now
    answer += end1 - start
  end
answer / count

end
