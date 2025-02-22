import 'package:demo/demo.dart' as demo;
import 'package:demo/stack.dart';
import 'package:demo/linked_list.dart' show LinkedList, Node;

void main(List<String> arguments) {
  print('Hello world: ${demo.calculate()}!');

  runStackExample();

  runLinkedListExample();
}

void runLinkedListExample() {
  print('Linked List Example');
  runLinkedListNodesExample();
  runLinkedListPushExample();
  runLinkedListAppendExample();
  runLinkedLisInsertExample();
  runLinkedListPopExample();
  runLinkedListRemoveExample();
  runLinkedListRemoveAfterExample();
  runLinkedListLoopingExample();
}

void runLinkedListLoopingExample() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  for (final element in list) {
    print(element);
  }
}

void runLinkedListRemoveAfterExample() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Before: $list');
  final firstNode = list.nodeAt(0);
  final removedValue = list.removeAfter(firstNode!);
  print('After: $list');
  print('Removed value: $removedValue');
}

void runLinkedListRemoveExample() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Before: $list');
  final removedValue = list.removeLast();
  print('After: $list');
  print('Removed value: $removedValue');
}

void runLinkedListPopExample() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Before: $list');
  final poppedValue = list.pop();
  print('After: $list');
  print('Popped value: $poppedValue');
}

void runLinkedLisInsertExample() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Before: $list');
  var middleNode = list.nodeAt(1)!;
  list.insertAfter(middleNode, 42);
  print('After:$list');
}

void runLinkedListAppendExample() {
  final list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(3);
  print(list);
}

void runLinkedListPushExample() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);
}

void runLinkedListNodesExample() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  node1.next = node2;
  node2.next = node3;
  print(node1);
}

void runStackExample() {
  print('Run Stack Example');
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);

  final element = stack.pop();
  print('Popped: $element');

  print(stack.peek);
  print(stack.isEmpty);
  print(stack.isNotEmpty);

  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  print('Popped: ${smokeStack.pop()}');
}
