import Foundation

// https://leetcode.com/problems/merge-two-binary-trees/description/
class MergeTwoBinaryTrees {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard let node1 = t1, let node2 = t2 else {
            return t1 ?? t2
        }

        let node = TreeNode(node1.val + node2.val)
        node.left = mergeTrees(node1.left, node2.left)
        node.right = mergeTrees(node1.right, node2.right)

        return node
    }
}
