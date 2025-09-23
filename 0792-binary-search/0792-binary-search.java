import java.util.*;

class Solution {
    public int search(int[] nums, int target) {
        int idx = Arrays.binarySearch(nums, target);
        return idx >= 0 ? idx : -1;
    }
}