def solution(a, b):
    
    days = ['FRI','SAT','SUN','MON','TUE','WED','THU']
    months = [31, 29, 31, 30, 31, 30,31, 31, 30, 31, 30, 31]
    
    answer = sum(months[:a-1])
    
    answer += b-1
    answer = answer%7
    
    return days[answer]