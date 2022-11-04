import std.stdio : writeln;

struct Node //just node of list
{
	int data;
	Node* next = null;
}

struct List
{
	Node* begin = null;
	Node* end = null;

	bool isEmpty()
	{
		return begin == null;
	}

	void addNoteToEnd(int a)
	{
		Node* nd = new Node(a);
		if (isEmpty())
		{
			begin = nd;
			end = nd;
			return;
		}
		end.next = nd;
		end = nd;
	}

	void addNoteToBeginning(int a)
	{
		Node* nd = new Node(a);
		if (isEmpty())
		{
			begin = nd;
			end = nd;
			return;
		}
		Node* buble = begin;
		begin = nd;
		begin.next = buble;
	}

	void removeFirst()
	{
		if (isEmpty())
			return;
		Node* buble = begin;
		begin = buble.next;
		buble = null;
	}

	void removeLast()
	{
		if (isEmpty())
			return;
		if (end == begin)
		{
			removeFirst();
			return;
		}
		Node* buble = begin;
		while (buble.next != end)
			buble = buble.next;
		buble.next = null;
		end = buble;
		buble = null;
	}

	void printList()
	{
		if (isEmpty())
			return;
		Node* p = begin;
		while (p)
		{
			writeln(p.data);
			p = p.next;
		}
		writeln("FINISH");
	}

}

void main()
{
	List p;
	writeln(p.isEmpty());
	p.addNoteToEnd(3);
	p.addNoteToEnd(18);
	p.addNoteToEnd(235);
	p.addNoteToBeginning(47);
	p.removeLast();
	writeln(p.isEmpty());
	p.printList();

}
