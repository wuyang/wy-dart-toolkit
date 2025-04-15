class Solution {
  int maxArea(List<int> height) {
    int max_area = 0, left = 0, right = height.length - 1;
    while (right > left) {
        max_area = max(max_area,
                       (right - left) * min(height[left], height[right]));
        if (height[left] > height[right]) {
            right--;
        } else {
            left++;
        }
    }
    return max_area;
  }
}
