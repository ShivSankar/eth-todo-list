// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    constructor() {
        createTask("Mapping, functions learning");
    }

    mapping(uint256 => Task) public Tasks;

    function createTask(string memory _content) public {
        taskCount++;
        Tasks[taskCount] = Task(taskCount, _content, false);
    }
}
