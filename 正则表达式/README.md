# 基础
## Q1
```/[Aa]ndroid\s[A-Za-z0-9]*/```

## Q2
```/\*\s-?(\d{1,3},?)*\.?\d?[Ee]?-?\d*/```

# 进阶
## Q1
```/(\d\s)?\(?(\d{3}).*/```
```\2```

## Q2
```/\b([A-Za-z0-9]+)@([A-Za-z]+)\.[A-Za-z]{2,4}\b/```
```\1 \2```

## Q3
```/<([a-z]+).*>.*</\1>/```
```\1```

## Q4
```/(\w+)\.(jpg|png|gif|jepg)/```
```\1 \2```

## Q5
```/([a-z]+)://(.+)(:\d)?/.*/```
```\1 \2 \3```

## Q6
```/E/\(\s1553\):\s{3}at widget\.List\.(\w+)\((\w+\.\w+):(\d+)\)/```
```\1 \2 \3```
