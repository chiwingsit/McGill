import java.io.*;
import java.util.StringTokenizer;

// The BinTree class should be well known to you.  It just implements binary trees.
class Bintree {

	// Instance Variables

	private Object node;
	private Bintree left, right;

	// Constructors

	public Bintree(Object root){ node = root; left = null; right = null;};

	public Bintree(Object root, Bintree l, Bintree r){
		node = root;
		left = l;
		right = r; };

		// Instance Methods

		public Object root(){ return node;};

		public Bintree left(){ return left;};

		public Bintree right(){ return right;};

		public void SetRoot(Object x){ node = x;};

		public void SetLeft(Bintree t){ left = t;};

		public void SetRight(Bintree t){ right = t;};

		public boolean IsLeaf(){ return ((right == null) && (left == null));};

		public void preorder(){
			System.out.print(node);
			if (left != null) left.preorder();
			if (right != null) right.preorder();};

			public void inorder(){
				if (left != null) left.inorder();
				System.out.print(node);
				if (right != null) right.inorder();};

				public void postorder(){
					if (left != null) left.postorder();
					if (right != null) right.postorder();
					System.out.print(node);};

}

// Expression trees are just binary trees so we extend Bintree to Exptree.  
// We could have just defined Exptree directly but this allows me to reuse 
// a class that I had already implemented for other reasons.  The code in main 
// was just to test that things were working.  Feel free to delete it or just leave
// it there.

class Exptree extends Bintree {
	public Exptree(Object root){super(root);};
	public Exptree(Object root, Exptree l, Exptree r){super(root,l,r);};

	public static void main(String[] args){
		Exptree e = new Exptree(new Character('+'));
		e.SetLeft(new Exptree(new Integer(2)));
		e.SetRight(new Exptree(new Integer(3)));
		e.inorder();
		System.out.println(" ");
		e.preorder(); System.out.println(" ");
	};

}

// This reads a file name from the terminal and then reads input from that file.
// If there is an error it prints a message on the terminal and exits.

class Tokenizer {
	private static String fname;
	private static FileInputStream inputData;
	private static int maxsize = 100;
	private static char[] exp = new char[maxsize];

	public static char[] scan() {
		try {
			BufferedReader stdin = new BufferedReader (new InputStreamReader(System.in)); 
			System.out.println("Enter the name of the expression file:");
			fname = stdin.readLine(); 
			inputData = new FileInputStream(fname);
			BufferedReader filein = new BufferedReader(new InputStreamReader(inputData));
			int n = filein.read(exp, 0, maxsize);
		} catch(IOException exception){
			System.out.println("Input problem. Terminating.");
			System.exit(0);}
		return exp;
	};
}

// The different kinds of nodes that appear in the tree are different classes that
// extend Exptree.  The oper node has a character in its root and two subtrees while
// the var node just has a character in its root.  Variable names are single characters!
// The point is that the type can be used in the parser to switch between the cases.
// Make sure you understand how instanceof works.

class Oper extends Exptree{
	public Oper(Character o,Exptree l, Exptree r){super(o,l,r);};}

class Var extends Exptree{
	public Var (Character q){super(q);};}

// This is the class that does the parsing.  It includes the code for getting
// each symbol from the input file.

class Parser {
	private char[] tokens;
	private int cursor;
	private char sym;

	private void getsym(){
		//    System.out.println("Entering getsym " + cursor + " " + sym);
		cursor++; sym = tokens[cursor]; };
		private void error(){System.out.println("Parsing error occurred.");};

		public Parser(char[] A){tokens = A; cursor = 0; sym = tokens[cursor];};

		public Exptree parse(){
			Exptree result = null, temp = null;
			// System.out.println("Entering parse " + cursor + " " + sym);
			// This code has been removed.  You have to do it.
			//temp = term();
			result = term();
			while(sym == '+'){
				temp = result;
				getsym();
				result = new Oper('+', temp, term());
			}
			return result;
		}

		public Exptree term(){

			Exptree result, temp;
			//    System.out.println("Entering term " + cursor + " " + sym);
			// This code has been removed.  You have to do it. 
			//temp = primary();
			result = primary();
			while(sym == '*'){
				temp = result;
				getsym();
				result = new Oper('*', temp, primary());
				
			}
			return result;
		}

		public Exptree primary(){
			Exptree result = null;
			//    System.out.println("Entering primary " + cursor + " " + sym);
			// This code has been removed.  You have to do it.
			if(Character.isLetter(sym)){//Character.isLetter(sym)){
				result = new Var(sym);
				getsym();
				return result;
			}
			else if(sym == '('){
				getsym();
				result = parse();
				if(sym != ')'){
					error();
					return null;
				}
				else{
					getsym();
					return result;
				}
			}
			error();
			return null;
		}

		// This reads a file name from the terminal, then reads the data from the
		// file, then constructs the parse tree and prints preorder and inorder
		// traversals of the parse tree.  The inorder traversal should look exactly
		// like the input expression.

		public static void main(String[] args){
			//     char[] Data = new char[12];
			//     Data[0] = '('; Data[1] = 'A'; Data[2] = '+'; Data[3] = 'B'; Data[4] = ')';
			//     Data[5] = '*'; Data[6] = '('; Data[7] = 'C'; Data[8] = '+'; Data[9] = 'D';
			//     Data[10] = ')'; Data[11] = '$';
			char[] Data = Tokenizer.scan();
			Parser P = new Parser(Data);
			System.out.print(Data);
			Exptree E = P.parse();
			System.out.println();
			E.preorder();System.out.println();
			E.inorder();System.out.println();};

}

//  This is the code generator.
class Codegen {
	private int tempstore;
	private Exptree tree;
	private String outFilename;
	private PrintWriter out;

	public Codegen(Exptree t){
		tree = t;
		tempstore = 0;

	};


	// This generates the code to a file.  It first asks for a file name to be 
	// entered at the terminal.  The "=" symbol gives context information, as
	// explained in class.  Here I am using it instead of the dollar sign.

	public void generateToFile() {
		FileInputStream inputData;
		try {
			BufferedReader stdin = new BufferedReader (new InputStreamReader(System.in)); 
			System.out.println("Enter the name of the file for the output:");
			outFilename = stdin.readLine();
			out = new PrintWriter (new FileWriter(outFilename));
			codegen('=',tree);
			out.close();
		} catch(IOException exception){
			System.out.println("IO problem. Terminating.");
			System.exit(0);}
	};

	// This is the real code generator.  I have written the Var case for you.
	private void codegen(char operator, Exptree t){

		if (t instanceof Var) {
			switch ((int) operator) {
			case ((int) '=') : out.println("LOAD " + t.root()); break;
			case ((int) '+') : out.println("ADD " + t.root()); break;
			case ((int) '*') : out.println("MUL " + t.root()); break;
			}}
		else {
			// This code is deleted.  You have to do it.
			if(t.right() instanceof Oper){
				tempstore++;
				codegen('=', (Exptree) (t.left()));
				out.println("STORE " + tempstore);
				codegen('=', (Exptree) (t.right()));
				if(t.root().equals(new Character('+')))
					out.println("ADD " + tempstore);
				if(t.root().equals(new Character('*')))
					out.println("MUL " + tempstore);
				tempstore--;
			}
			else{
				codegen(operator, (Exptree) (t.left()));
				codegen((char) t.root(), (Exptree) (t.right()));
			}
		}
	};

	// This is what we will test.  Please do NOT alter it.
	// The first line will trigger the tokenizer, which asks you for a filename
	// at the terminal and then reads the expression from that file.  The rest
	// should be clear.
	public static void main(String[] args){
		char[] Data = Tokenizer.scan();
		Parser P = new Parser(Data);
		Exptree E = P.parse();
		Codegen G = new Codegen(E);
		G.generateToFile();
	};
}