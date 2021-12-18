---
title: "Code Example Post"
category: test
tags: [travel, conference]
series: [travel-2021]
---

이것은 코드를 스타일을 위한 예시 포스트 입니다.

## html

```html
<html>
  <head>
  </head>
  <body>
    <p>Hello, World!</p>
  </body>
</html>
```

## javascript

```javascript
function animate({ timing, draw, duration }) {
  let start = performance.now();
  requestAnimationFrame(function animate(time) {
    let timeFraction = (time - start) / duration;
    if (timeFraction > 1) timeFraction = 1;
    let progress = timing(timeFraction);
    draw(progress);
    if (timeFraction < 1) {
      requestAnimationFrame(animate);
    }
  });
}
```

## python

```python
def animate( timing, draw):
    print("Hello World")
    return draw
```

### C

```c
int example(int a){
    printf(a);
    return a;
}
```
