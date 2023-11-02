# Chiluverichethankumar-MinProject-on-E-Commerce-website


graph={
    1:[2,3,4,5,10,11],
    2:[],
    3:[],
    4:[],
    5:[6,7,8],
    6:[],
    7:[],
    8:[9,16],
    9:[17],
   10:[13,14],
   11:[12],
   12:[18],
   13:[19],
   14:[15],
   15:[20],
   16:[],
   17:[],
   18:[],
   19:[],
   20:[]
}
sink=0
keys=list(graph.keys())
nodes=len(keys)
for i in keys:
  if(len(graph[i])!=0):
    pre=[]
    print("Node:",i)
    for j in keys:
      if(i in graph[j]):
        pre.append(j)
        break
    print("Predecessors:",pre)
    print("Successors:",graph[i])
for k in keys:
  if(len(graph[k])==0):
    sink+=1
sessions=nodes-sink
print("Total test sessions in neighbourhood are:",sessions)
