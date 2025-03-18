from collections import deque
from time import sleep

import numpy as np

x = 10

def topo(G, ind=None, Q=[1]):
    global controlFlag
    controlFlag = 10

    if ind == None:
        ind = [0] * (len(G) + 1)  # this is a comment
        for u in G:
            for v in G[u]:
                ind[v] += 1
        Q = deque()
        for i in G:
            if ind[min(i)] == 0:
                Q.append(i)
    if len(Q) == 0:
        return
    v = Q.popleft()
    print(v)
    for w in G[v]:
        ind[w] -= 1
        if ind[w] == 0:
            Q.append(w)
            sleep(1)
    topo(G, ind, Q)


class SomeClass:
    def create_arr(self):  # An instance method
        self.arr = np.array([1,2,3])

    def insert_to_arr(self, value):  # An instance method
        self.arr.append(value)

    @classmethod
    def class_method(cls):
        print("the class method was called")
