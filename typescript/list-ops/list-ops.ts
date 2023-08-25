export class List {
  public static create(...values: unknown[]): unknown {
    // Do *not* construct any array literal ([]) in your solution.
    // Do *not* construct any arrays through new Array in your solution.
    // DO *not* use any of the Array.prototype methods in your solution.

    // You may use the destructuring and spreading (...) syntax from Iterable.
    return [...values];
  }

  public static append(list1, list2) {
    return [...list1, ...list2];
  }
}
