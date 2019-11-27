import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(
        hanoi([
          [3, 4],
          [1, 2],
          []
        ]),
        [
          [
            [4],
            [1, 2],
            [3]
          ],
          [
            [1, 3, 4],
            [2],
            []
          ],
          [
            [3, 4],
            [2],
            [1]
          ]
        ]);
    expect(
        hanoi([
          [3, 4],
          [],
          [1, 2]
        ]),
        [
          [
            [4],
            [3],
            [1, 2]
          ],
          [
            [1, 3, 4],
            [],
            [2]
          ],
          [
            [3, 4],
            [1],
            [2]
          ]
        ]);
    expect(
        hanoi([
          [],
          [],
          [1]
        ]),
        [
          [
            [1],
            [],
            []
          ],
          [
            [],
            [1],
            []
          ]
        ]);
    expect(
        hanoi([
          [3],
          [3],
          [3]
        ]),
        []);
  });
}
