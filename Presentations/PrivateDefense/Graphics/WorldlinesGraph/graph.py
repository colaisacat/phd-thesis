#run graph.py 10 0.12 13

import sys
import numpy as np
import pylab as plt
import networkx as nx
from scipy.sparse import lil_matrix

M = int(sys.argv[1])
p = float(sys.argv[2]) 
gamma_max = int(sys.argv[3])

np.random.seed(574323475)

G = nx.Graph()
G2 = nx.DiGraph()

for gammastar in range(1, gamma_max):
	   
	unstable = np.random.rand(M) < p 
	unstable[:2] = False
	unstable[-2:] = False
	
	for i in xrange(M):
		G.add_node(i + gammastar*M)
		G2.add_node(i + gammastar*M)
		if unstable[i]:
			dest = i + np.random.choice([-2, -1, 1, 2])
			G2.add_edge(i + gammastar*M, dest + (gammastar+1)*(M)) 
		else:
			G.add_edge(i + gammastar*M, i + (gammastar+1)*(M))
			G2.add_edge(i + gammastar*M, i + (gammastar+1)*(M))

	for i in xrange(M):
		G.add_node(i + (2*gamma_max - gammastar - 1)*M)
		if unstable[i]: 
			dest = i + np.random.choice([-2, -1, 1, 2])
			G2.add_edge(i + (2*gamma_max - gammastar - 1)*M, dest + (2*gamma_max - gammastar)*M)
		else:
			G.add_edge(i + (2*gamma_max - gammastar - 1)*M, i + (2*gamma_max - gammastar)*M)
			G2.add_edge(i + (2*gamma_max - gammastar - 1)*M, i + (2*gamma_max - gammastar)*M)
 
def create_pos(M, gamma_max):
	
	pos = {}
	
	for i in xrange(M):
		for t in xrange(2*gamma_max):
			pos[t*M + i] = np.array([t - gamma_max, -i])
			
	return pos
 
posit = create_pos(M, gamma_max)

nx.draw_networkx_nodes(G, pos = posit, node_size = 60, node_color = 'k')

nx.draw_networkx_edges(G, pos = posit, edge_color = 'k', width = 3)
#nx.draw_networkx_edges(G2, pos = posit, edge_color = 'r', width = 1)
G3_nodes = np.append(nx.dfs_successors(G2, 17).values(), 17)
nx.draw_networkx_edges(G2.subgraph(G3_nodes), pos = posit, edge_color = 'r', width = 1.5)

ax = plt.gca()

ax.set_xlim(-gamma_max, gamma_max)
ax.set_ylim(-M, 1)

plt.axvline(0.0, color='g', linewidth = 2)
plt.axvline(-gamma_max + 1, color='r', linewidth = 2)
plt.axvline(gamma_max - 1, color='r', linewidth = 2)

plt.axis('off')

plt.subplots_adjust(left = 0.0, right = 1.0)

plt.savefig('InherentWorldlinesGraph.pdf', figsize=(6,4))

def get_P(G, M, gamma):
	
	P = lil_matrix((M, M))
	
	for i in xrange(M):
		this_node = M + i
		for t in xrange(1, gamma-1):
			this_node = G.successors(this_node)[0]

		P[np.mod(this_node, M), i] = 1
	
	return P

plt.figure(2)

P = get_P(G2, M, 2*gamma_max)
plt.spy(P.todense())
ax = plt.gca()
ax.set_xticks([])
ax.set_yticks([])

#plt.subplots_adjust(left = 0.0, right = 1.0)

#plt.savefig('GraphMatrix.pdf', bbox_inches = 'tight')
