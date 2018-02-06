import Foundation

class InvertBinaryTree {
    func invertTreeI(_ root: TreeNode?) -> TreeNode? {
        helper(root)
        return root
    }

    // recursive
    func helper(_ node: TreeNode?) {
        guard let node = node else { return }

        let tmp = node.left
        node.left = node.right
        node.right = tmp

        helper(node.left)
        helper(node.right)
    }

    // iterative. Ideally, the complexity can be O(n), n is number of nodes.
    // Since there is no stack in the swift, and removeFirst in swift array is O(n) complexity
    // the complexity here is O(n2)
    func invertTreeII(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        var queue: [TreeNode] = [root]

        while !queue.isEmpty {
            let node = queue.removeFirst()

            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }

            let tmp = node.left
            node.left = node.right
            node.right = tmp
        }

        return root
    }
}
