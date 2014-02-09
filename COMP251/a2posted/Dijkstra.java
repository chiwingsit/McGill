/*
 * Chi-Wing Sit
 * 260482136
 * 
 */

package a2posted;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class Dijkstra {

	private IndexedHeap  pq;	
	private static int edgeCount = 0;               //  Use this to give names to the edges.										
	private HashMap<String,Edge>  edges = new HashMap<String,Edge>();

	private HashMap<String,String>   parent;
	private HashMap<String,Double>   dist;  //  This is variable "d" in lecture notes
	private String 					 startingVertex;	
	
	HashSet<String>  setS      ;
	HashSet<String>  setVminusS;

	public Dijkstra(){
		pq    		= new IndexedHeap()  ;		
		setS        = new HashSet<String>();
		setVminusS  = new HashSet<String>();		
		parent  = new HashMap<String,String>();
		dist 	= new HashMap<String,Double>();
	}
	
	/*
	 * Run Dijkstra's algorithm from a vertex whose name is given by the string s.
	 */
	
	public void dijkstraVertices(Graph graph, String s){
		
		//  temporary variables
		
		String u;	
		double  distToU,
				costUV;		
		
		HashMap<String,Double>    uAdjList;		
		initialize(graph,s);
		
		parent.put( s, null );
		pq.add(s, 0.0);   // shortest path from s to s is 0.
		this.startingVertex = s;

		//  --------- BEGIN: ADD YOUR CODE HERE  -----------------------
		
		while(!pq.isEmpty()){ // while priority queue is not empty
			
			// retrieve minimum distance and the name of the vertex
			distToU = pq.getMinPriority();
			u = pq.removeMin(); // remove the minimum weight vertex from the queue
			
			setS.add(u); // add the vertex to the set S
 			setVminusS.remove(u); // remove the vertex from the set V\S
			
			uAdjList = graph.getAdjList().get(u); // get all vertices adjacent to u
			
			//////////////////////////////////////////////////////////////
			// for every vertices v adjacent to u
			// add or update the priority queue if v is inside
			// the set V\S and if distToV is less than its current priority
			for(String v : uAdjList.keySet()){
				if(setVminusS.contains(v)){
					
					costUV = uAdjList.get(v); // get the weight from u to v
					double tmpDistToV = distToU + costUV; // tmp variable for the distance from the starting vertex to v
					
					// if v is not in pq, add v to the priority queue and update the dist and parent HashMaps
					if(!pq.contains(v)){
						pq.add(v, tmpDistToV);
						dist.put(v, tmpDistToV);
						parent.put(v, u);
					}
					// else if the distance to v is less than its current priority, update its priority
					// with its distance from the starting vertex and update the dist and parent HashMaps
					else if(tmpDistToV < pq.getPriority(v)){
						pq.changePriority(v, tmpDistToV);
						dist.put(v, tmpDistToV);
						parent.put(v, u);
					}
				}
			}
		}

		//  --------- END:  ADD YOUR CODE HERE  -----------------------
	}
	
	
	public void dijkstraEdges(Graph graph, String startingVertex){

		//  Makes sets of the names of vertices,  rather than vertices themselves.
		//  (Could have done it either way.)
		
		//  temporary variables
		
		Edge e;
		String u,v;
		double tmpDistToV;
		
		initialize(graph, startingVertex);

		//  --------- BEGIN: ADD YOUR CODE HERE  -----------------------
		
		pqAddEdgesFrom(graph, startingVertex); // add all the edges from the starting vertex to the priority queue
		
		while(!pq.isEmpty()){ // while priority queue is not empty
			
			tmpDistToV = pq.getMinPriority(); // get the minimum distance from the priority queue
			e = edges.get(pq.removeMin()); // get the corresponding edge
			
			u = e.getStartVertex(); // set u as the start vertex of the edge e
			v = e.getEndVertex(); // set v as the end vertex of the edge e
			
			// if v is inside the set V\S then remove it from V\S and add it to the set S
			// then update the parent and dist HashMaps and add all adjacent edge from v
			// to the priority queue
			if(setVminusS.contains(v)){
				setS.add(v); // add v to s
				setVminusS.remove(v); // remove v from V\S
				
				parent.put(v, u); // update v parent
				dist.put(v, tmpDistToV); // update v's distance
				
				pqAddEdgesFrom(graph, v); // add all adjacent edges from v to the priority queue
			}
			
			
		}
		
		//  --------- END:  ADD YOUR CODE HERE  -----------------------

	}
	
	/*
	 *   This initialization code is common to both of the methods that you need to implement so
	 *   I just factored it out.
	 */

	private void initialize(Graph graph, String startingVertex){
		//  initialization of sets V and VminusS,  dist, parent variables
		//

		for (String v : graph.getVertices()){
			setVminusS.add( v );
			dist.put(v, Double.POSITIVE_INFINITY);
			parent.put(v, null);
		}
		this.startingVertex = startingVertex;

		//   Transfer the starting vertex from VminusS to S and  

		setVminusS.remove(startingVertex);
		setS.add(startingVertex);
		dist.put(startingVertex, 0.0);
		parent.put(startingVertex, null);
	}

    /*  
	 *  helper method for dijkstraEdges:   Whenever we move a vertex u from V\S to S,  
	 *  add all edges (u,v) in E to the priority queue of edges.
	 *  
	 *  For each edge (u,v), if this edge gave a shorter total distance to v than any
	 *  previous paths that terminate at v,  then this edge will be removed from the priority
	 *  queue before these other vertices. 
	 *  
	 */
	
	public void pqAddEdgesFrom(Graph g, String u){
		double distToU = dist.get(u); 
		for (String v : g.getAdjList().get(u).keySet()  ){  //  all edges of form (u, v) 
			
			edgeCount++;
			Edge e = new Edge( edgeCount, u, v );
			edges.put( e.getName(), e );
			pq.add( e.getName() ,  distToU + g.getAdjList().get(u).get(v) );
		}
	}

	// -------------------------------------------------------------------------------------------
	
	public String toString(){
		String s = "";
		s += "\nRan Dijkstra from vertex " + startingVertex + "\n";
		for (String v : parent.keySet()){
			s += v + "'s parent is " +   parent.get(v) ;
			s += "   and pathlength is "  + dist.get(v) + "\n" ;
		}
		return s;
	}

	//  This class is used only to keep track of edges in the priority queue. 
	
	private class Edge{
		
		private String edgeName;
		private String u, v;
		
		Edge(int i, String u, String v){
			this.edgeName = "e_" + Integer.toString(i);
			this.u = u;
			this.v = v;
		}
		
		public String getName(){
			return edgeName;
		}
		
		String getStartVertex(){
			return u;
		}

		String getEndVertex(){
			return v;
		}
		
		public String toString(){
			return 	edgeName + " : " + u + " " + v;
		}
	}
	

}
