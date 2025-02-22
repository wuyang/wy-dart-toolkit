/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
        int carry = 0;
        ListNode? dummy_head = new ListNode(0);
        ListNode? tail = dummy_head;

        while (l1 != null ||  l2 != null || carry > 0) {
            int sum = carry;
            if (l1 != null) {
                sum += l1.val;
                l1 = l1.next;
            }
            if (l2 != null) {
                sum += l2.val;
                l2 = l2.next;
            }
            carry = sum ~/ 10;
            tail?.next = new ListNode(sum % 10);
            tail = tail?.next;
        }
        return dummy_head.next;
  }
}